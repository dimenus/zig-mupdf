const std = @import("std");
const mupdf = @import("mupdf_raw.zig");
const testing = std.testing;
const fs = std.fs;
const Allocator = std.mem.Allocator;

const file_scope = @This();

const page_allocator = std.heap.page_allocator;

pub const MuPdfError = error{
    ContextCreate,
    DocumentCreate,
    DocumentOpen,
    DocumentSave,
    DocumentOperation,
    IndexOutOfRange,
};

const OutputItem = struct {
    memory: []const u8,
    stream_handle: *mupdf.fz_stream,
    pdf_handle: *mupdf.pdf_document,
    page_offset: c_int,
    length: c_int,
};

const PageIndices = struct { start: c_int, length: c_int };

const OutputItemList = std.ArrayList(OutputItem);

pub const Context = struct {
    arena_allocator: std.heap.ArenaAllocator,
    scratch_allocator: std.heap.FixedBufferAllocator,
    handle: *mupdf.fz_context,
    current_output_items: ?OutputItemList,
    current_output_size: u64,

    const Self = @This();

    pub fn init(allocator: Allocator) !Self {
        const mupdf_context = try createContext();
        errdefer destroyContext(mupdf_context);
        var arena = std.heap.ArenaAllocator.init(allocator);
        const scratch_buffer = try arena.allocator().alloc(u8, 1024 * 1024 * 4);
        return Self{ .arena_allocator = std.heap.ArenaAllocator.init(allocator), .scratch_allocator = std.heap.FixedBufferAllocator.init(scratch_buffer), .handle = mupdf_context, .current_output_items = null, .current_output_size = 0 };
    }

    pub fn hideWarnings(self: *Self) void {
        mupdf.fz_set_warning_callback(self.handle, warningHandler, null);
    }

    pub fn hideErrors(self: *Self) void {
        mupdf.fz_set_error_callback(self.handle, errorHandler, null);
    }

    pub fn deinit(self: Self) void {
        self.arena_allocator.deinit();
        destroyContext(self.handle);
    }

    pub fn openOutput(self: *Self) !void {
        if (self.current_output_items) |_| {
            return error.ExistingOutput;
        }

        const allocator = self.arena_allocator.allocator();
        self.current_output_items = try OutputItemList.initCapacity(allocator, 1024);
    }

    pub fn dropOutput(self: *Self) void {
        if (self.current_output_items) |curr_batch| {
            for (curr_batch.items) |item| {
                self.destroyPdf(item.pdf_handle);
                mupdf.fz_drop_stream(self.handle, item.stream_handle);
            }
            self.current_output_items.?.clearRetainingCapacity();
        } else return;
    }

    pub fn addPdf(self: *Self, buffer: []const u8, raw_page_offset: ?c_int, raw_length: ?c_int) MuPdfError!void {
        const fz_stream = mupdf.fz_open_memory(self.handle, buffer.ptr, buffer.len) orelse unreachable;
        errdefer mupdf.fz_drop_stream(self.handle, fz_stream);

        const pdf_handle = try file_scope.createPdfFromStream(self.handle, fz_stream);
        const num_pages = self.getPageCount(pdf_handle);

        const page_offset = min: {
            if (raw_page_offset) |i| {
                if (i < 0 or i >= num_pages) return MuPdfError.IndexOutOfRange;
                break :min i;
            } else break :min 0;
        };

        const length = max: {
            if (raw_length) |i| {
                if (i < 0 or i >= num_pages or (i + page_offset) > num_pages) return MuPdfError.IndexOutOfRange;
                break :max i;
            } else break :max num_pages - page_offset;
        };

        self.current_output_size += buffer.len;
        self.current_output_items.?.append(
            .{ .page_offset = page_offset, .length = length, .memory = buffer, .stream_handle = fz_stream, .pdf_handle = pdf_handle },
        ) catch unreachable;
    }

    fn currentOutputItems(self: *Self) []OutputItem {
        if (self.current_output_items == null) unreachable;
        return self.current_output_items.?.items;
    }

    fn createPdf(self: Self) !*mupdf.pdf_document {
        return file_scope.createPdf(self.handle);
    }

    fn destroyPdf(self: Self, doc: *mupdf.pdf_document) void {
        return file_scope.destroyPdf(self.handle, doc);
    }

    fn getPageCount(self: *Self, src_pdf: *mupdf.pdf_document) c_int {
        var num_pages: ?c_int = null;
        var mark: ?*mupdf.sigjmp_buf = null;
        if (fzTry(self.handle, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
            num_pages = mupdf.pdf_count_pages(self.handle, src_pdf);
        }
        if (fzCatch(self.handle)) unreachable;

        return num_pages.?;
    }

    fn createGraftMap(self: *Self, dest_pdf: *mupdf.pdf_document) MuPdfError!*mupdf.pdf_graft_map {
        var mark: ?*mupdf.sigjmp_buf = null;
        var graft_map: ?*mupdf.pdf_graft_map = null;
        if (fzTry(self.handle, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
            graft_map = mupdf.pdf_new_graft_map(self.handle, dest_pdf);
        }
        if (fzCatch(self.handle)) {
            return MuPdfError.DocumentOperation;
        }
        return graft_map.?;
    }

    fn graftPagesOntoOutput(self: *Self, src_pdf: *mupdf.pdf_document, dest_pdf: *mupdf.pdf_document, src_offset: c_int, num_pages: c_int) !void {
        const num_src_pages = mupdf.pdf_count_pages(self.handle, src_pdf);
        if (num_pages > num_src_pages) return error.InvalidPageCount;
        const graft_map = mupdf.pdf_new_graft_map(self.handle, dest_pdf);
        var i: c_int = 0;
        while (i < num_pages) : (i += 1) {
            mupdf.pdf_graft_mapped_page(self.handle, graft_map, -1, src_pdf, src_offset + i);
        }
        mupdf.pdf_drop_graft_map(self.handle, graft_map);
    }

    fn flushToPath(self: *Self, dest_pdf: *mupdf.pdf_document, path: [*:0]const u8) !void {
        const opts = &mupdf.pdf_default_write_options;
        var mark: ?*mupdf.sigjmp_buf = null;
        if (fzTry(self.handle, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
            mupdf.pdf_save_document(self.handle, dest_pdf, path, opts);
        }
        if (fzCatch(self.handle)) {
            return error.SomethingHappened;
        }
    }

    pub fn generateOutput(self: *Self, output_buffer: []u8, indices: []usize) !u64 {
        const num_pdfs = self.batchLength();
        if (indices.len > 0) {
            for (indices) |item| {
                if (item >= num_pdfs) return MuPdfError.IndexOutOfRange;
            }
        }

        var output_doc = self.createPdf() catch |e| {
            std.log.err("received '{s}' from MuPdfWrapper", .{@errorName(e)});
            return MuPdfError.DocumentOperation;
        };
        defer self.destroyPdf(output_doc);

        const fz_buffer = mupdf.fz_new_buffer_from_shared_data(self.handle, output_buffer.ptr, output_buffer.len) orelse unreachable;
        mupdf.fz_clear_buffer(self.handle, fz_buffer);

        const fz_output = mupdf.fz_new_output_with_buffer(self.handle, fz_buffer) orelse unreachable;
        defer {
            mupdf.fz_drop_output(self.handle, fz_output);
            mupdf.fz_drop_buffer(self.handle, fz_buffer);
        }

        var total_size: u64 = 0;
        if (indices.len > 0) {
            const batch_items = self.currentOutputItems();
            for (indices) |pdf_index| {
                const item = batch_items[pdf_index];
                total_size += item.memory.len;
                try graftPagesOntoOutput(self, item.pdf_handle, output_doc, item.page_offset, item.length);
            }
        } else {
            for (self.currentOutputItems()) |item| {
                total_size += item.memory.len;
                try graftPagesOntoOutput(self, item.pdf_handle, output_doc, item.page_offset, item.length);
            }
        }

        const opts = &mupdf.pdf_default_write_options;
        mupdf.pdf_write_document(self.handle, output_doc, fz_output, opts);
        mupdf.fz_close_output(self.handle, fz_output);

        return @intCast(u64, fz_buffer.len);
    }

    pub fn outputSize(self: Self) u64 {
        return self.current_output_size;
    }

    pub fn batchLength(self: Self) u64 {
        if (self.current_output_items) |batch| {
            return batch.items.len;
        } else return 0;
    }
};

/// This function must be inlined to work correctly with set/longjmp
/// When using it, DO NOT RETURN FROM THE SCOPE
inline fn fzTry(ctx: *mupdf.fz_context, mark: **mupdf.sigjmp_buf) bool {
    mark.* = mupdf.fz_push_try(ctx);
    if (mupdf.__sigsetjmp(mark.*, 0) != 0) return false;
    return mupdf.fz_do_try(ctx) != 0;
}

/// This function must be inlined to work correctly with set/longjmp
inline fn fzCatch(ctx: *mupdf.fz_context) bool {
    return mupdf.fz_do_catch(ctx) != 0;
}

pub fn createContext() MuPdfError!*mupdf.fz_context {
    const ctx = mupdf.fz_new_context(null, null, @as(usize, mupdf.FZ_STORE_DEFAULT));
    if (ctx == null) return MuPdfError.ContextCreate;
    return ctx;
}

fn openPdf(ctx: *mupdf.fz_context, path: [*:0]const u8) MuPdfError!*mupdf.pdf_document {
    var pdf_doc: ?*mupdf.pdf_document = null;
    var mark: ?*mupdf.sigjmp_buf = null;
    if (fzTry(ctx, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
        pdf_doc = mupdf.pdf_open_document(ctx, path);
    }
    if (fzCatch(ctx)) {
        return MuPdfError.DocumentOpen;
    }
    return pdf_doc orelse unreachable;
}

fn destroyPdf(ctx: *mupdf.fz_context, doc: *mupdf.pdf_document) void {
    var mark: ?*mupdf.sigjmp_buf = null;
    if (fzTry(ctx, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
        mupdf.pdf_drop_document(ctx, doc);
    }
    if (fzCatch(ctx)) {
        std.debug.panic("Hit an exception when closing a document", .{});
    }
}

fn destroyContext(ctx: *mupdf.fz_context) void {
    mupdf.fz_drop_context(ctx);
}

fn createPdfFromStream(ctx: *mupdf.fz_context, stream: *mupdf.fz_stream) MuPdfError!*mupdf.pdf_document {
    var mark: ?*mupdf.sigjmp_buf = null;
    var dest_doc: ?*mupdf.pdf_document = null;
    if (fzTry(ctx, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
        dest_doc = mupdf.pdf_open_document_with_stream(ctx, stream);
    }
    if (fzCatch(ctx)) {
        return MuPdfError.DocumentOpen;
    }
    return dest_doc.?;
}

fn createPdf(ctx: *mupdf.fz_context) !*mupdf.pdf_document {
    var mark: ?*mupdf.sigjmp_buf = null;
    var dest_doc: ?*mupdf.pdf_document = null;
    if (fzTry(ctx, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
        dest_doc = mupdf.pdf_create_document(ctx);
    }
    if (fzCatch(ctx)) {
        return error.MuPdfCreateDocument;
    }

    return dest_doc.?;
}

fn warningHandler(userdata: ?*anyopaque, msg: [*c]const u8) callconv(.C) void {
    _ = userdata;
    _ = msg;
}

fn errorHandler(userdata: ?*anyopaque, msg: [*c]const u8) callconv(.C) void {
    _ = userdata;
    _ = msg;
}
