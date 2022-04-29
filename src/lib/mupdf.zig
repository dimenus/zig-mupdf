const std = @import("std");
const mupdf = @import("mupdf_raw.zig");
const testing = std.testing;
const fs = std.fs;
const Allocator = std.mem.Allocator;

const file_scope = @This();

const page_allocator = std.heap.page_allocator;

const MuPdfError = error{
    ContextCreate,
    DocumentCreate,
    DocumentOpen,
    DocumentSave,
    DocumentOperation,
};

const BatchItem = struct {
    memory: []const u8,
    handle: *mupdf.fz_stream,
};
const BatchItemList = std.ArrayList(BatchItem);

pub const Context = struct {
    arena_allocator: std.heap.ArenaAllocator,
    handle: *mupdf.fz_context,
    current_batch_items: ?BatchItemList,
    current_batch_size: u64,

    const Self = @This();

    pub fn init(allocator: Allocator) !Self {
        const mupdf_context = try createContext();
        return Self{ .arena_allocator = std.heap.ArenaAllocator.init(allocator), .handle = mupdf_context, .current_batch_items = null, .current_batch_size = 0 };
    }

    pub fn deinit(self: Self) void {
        self.arena_allocator.deinit();
        destroyContext(self.handle);
    }

    pub fn openBatch(self: *Self) !void {
        if (self.current_batch_items) |_| {
            return error.ExistingBatch;
        }

        const allocator = self.arena_allocator.allocator();
        self.current_batch_items = try BatchItemList.initCapacity(allocator, 1024);
    }

    pub fn addSourceBuffer(self: *Self, buffer: []const u8) void {
        const fz_stream = mupdf.fz_open_memory(self.handle, buffer.ptr, buffer.len) orelse unreachable;
        self.current_batch_size += buffer.len;
        self.current_batch_items.?.append(.{ .memory = buffer, .handle = fz_stream }) catch unreachable;
    }

    fn batch(self: *Self) BatchItemList {
        if (self.current_batch_items == null) unreachable;
        return self.current_batch_items.?;
    }

    fn createPdf(self: Self) !*mupdf.pdf_document {
        return file_scope.createPdf(self.handle);
    }

    fn createPdfFromStream(self: Self, batch_item: BatchItem) !*mupdf.pdf_document {
        return file_scope.createPdfFromStream(self.handle, batch_item.handle);
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

    fn copyPagesToPdf(self: *Self, src_pdf: *mupdf.pdf_document, dest_pdf: *mupdf.pdf_document, dest_offset: c_int, num_pages: c_int) !void {
        const num_src_pages = mupdf.pdf_count_pages(self.handle, src_pdf);
        if (num_pages > num_src_pages) return error.InvalidPageCount;
        const graft_map = mupdf.pdf_new_graft_map(self.handle, dest_pdf);
        var dest_index = dest_offset;
        var i: c_int = 0;
        while (i < num_pages) : (i += 1) {
            mupdf.pdf_graft_mapped_page(self.handle, graft_map, dest_index, src_pdf, i);
            dest_index += 1;
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

    pub fn combineBatch(self: *Self, output_buffer: []u8) !u64 {
        var output_doc = self.createPdf() catch |e| {
            std.log.err("received '{s}' from MuPdfWrapper", .{@errorName(e)});
            return MuPdfError.DocumentOperation;
        };
        defer self.destroyPdf(output_doc);

        const fz_buffer = mupdf.fz_new_buffer_from_shared_data(self.handle, output_buffer.ptr, output_buffer.len) orelse unreachable;
        mupdf.fz_clear_buffer(self.handle, fz_buffer);

        const fz_output = mupdf.fz_new_output_with_buffer(self.handle, fz_buffer) orelse unreachable;
        defer {
            mupdf.fz_drop_buffer(self.handle, fz_buffer);
            mupdf.fz_drop_output(self.handle, fz_output);
        }

        var num_output_pages: c_int = 0;
        var total_size: u64 = 0;
        for (self.batch().items) |item| {
            total_size += item.memory.len;
            const src_pdf = self.createPdfFromStream(item) catch unreachable;
            defer self.destroyPdf(src_pdf);
            const num_src_pages = self.getPageCount(src_pdf);
            try copyPagesToPdf(self, src_pdf, output_doc, num_output_pages, num_src_pages);
            num_output_pages += num_src_pages;
        }

        const opts = &mupdf.pdf_default_write_options;
        mupdf.pdf_write_document(self.handle, output_doc, fz_output, opts);
        mupdf.fz_close_output(self.handle, fz_output);

        return @intCast(u64, fz_buffer.len);
    }

    pub fn batchSize(self: Self) u64 {
        return self.current_batch_size;
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

fn createPdfFromStream(ctx: *mupdf.fz_context, stream: *mupdf.fz_stream) !*mupdf.pdf_document {
    var mark: ?*mupdf.sigjmp_buf = null;
    var dest_doc: ?*mupdf.pdf_document = null;
    if (fzTry(ctx, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
        dest_doc = mupdf.pdf_open_document_with_stream(ctx, stream);
    }
    if (fzCatch(ctx)) {
        return error.MuPdfCreateDocument;
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
