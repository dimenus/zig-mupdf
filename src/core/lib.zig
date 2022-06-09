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
    OutOfMemory,
};

const SourceItem = struct {
    pdf_handle: *mupdf.pdf_document,
};

const SourceItemList = std.ArrayList(SourceItem);

pub const Context = struct {
    source_item_arena: std.heap.ArenaAllocator,
    scratch_allocator: std.heap.FixedBufferAllocator,
    handle: *mupdf.fz_context,
    dest_pdf: ?*mupdf.pdf_document = null,
    source_list: SourceItemList,

    const Self = @This();

    pub fn init(base_allocator: Allocator) !Self {
        const mupdf_context = try createContext();
        errdefer destroyContext(mupdf_context);
        var arena = std.heap.ArenaAllocator.init(base_allocator);
        const allocator = arena.allocator();
        const scratch_buffer = try allocator.alloc(u8, 1024 * 1024 * 4);
        errdefer allocator.free(scratch_buffer);
        const source_list = try SourceItemList.initCapacity(allocator, 1024);
        return Self{ .source_item_arena = arena, .scratch_allocator = std.heap.FixedBufferAllocator.init(scratch_buffer), .handle = mupdf_context, .source_list = source_list };
    }

    pub fn hideWarnings(self: *Self) void {
        mupdf.fz_set_warning_callback(self.handle, emptyWarningHandler, null);
    }

    pub fn hideErrors(self: *Self) void {
        mupdf.fz_set_error_callback(self.handle, emptyErrorHandler, null);
    }

    pub fn deinit(self: Self) void {
        for (self.source_list.items) |item| {
            file_scope.dropPdf(self.handle, item.pdf_handle);
        }
        self.source_item_arena.deinit();
        destroyContext(self.handle);
    }

    pub fn openOutput(self: *Self) !void {
        if (self.dest_pdf) |_| {
            return error.ExistingOutput;
        }

        self.dest_pdf = try file_scope.createPdf(self.handle);
    }

    pub fn dropOutput(self: *Self) void {
        if (self.dest_pdf == null) return;
        file_scope.dropPdf(self.handle, self.dest_pdf.?);
        self.dest_pdf = null;
    }

    pub fn addPdfFile(self: *Self, file_path: [*:0]const u8) !usize {
        const pdf_handle = try file_scope.openPdf(self.handle, file_path);
        const pdf_index = self.currentSourceItems().len;

        self.source_list.append(.{ .pdf_handle = pdf_handle }) catch return MuPdfError.OutOfMemory;

        return pdf_index;
    }

    pub fn currentSourceItems(self: *Self) []SourceItem {
        return self.source_list.items;
    }

    pub fn getPageCount(self: Self, src_pdf: *mupdf.pdf_document) c_int {
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

    pub fn graftPagesOntoOutput(self: *Self, src_pdf: *mupdf.pdf_document, dest_pdf: *mupdf.pdf_document, src_offset: c_int, num_pages: c_int) !void {
        const num_src_pages = mupdf.pdf_count_pages(self.handle, src_pdf);
        if (num_pages > num_src_pages) return error.InvalidPageCount;
        const graft_map = mupdf.pdf_new_graft_map(self.handle, dest_pdf);
        var i: c_int = 0;
        while (i < num_pages) : (i += 1) {
            mupdf.pdf_graft_mapped_page(self.handle, graft_map, -1, src_pdf, src_offset + i);
        }
        mupdf.pdf_drop_graft_map(self.handle, graft_map);
    }

    pub fn flushToPath(self: *Self, dest_pdf: *mupdf.pdf_document, path: [*:0]const u8) MuPdfError!void {
        const opts = &mupdf.pdf_default_write_options;
        var mark: ?*mupdf.sigjmp_buf = null;
        if (fzTry(self.handle, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
            mupdf.pdf_save_document(self.handle, dest_pdf, path, opts);
        }
        if (fzCatch(self.handle)) {
            return MuPdfError.DocumentSave;
        }
    }

    pub fn sourceListLength(self: Self) u64 {
        return self.source_list.items.len;
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

fn destroyContext(ctx: *mupdf.fz_context) void {
    mupdf.fz_drop_context(ctx);
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

fn dropPdf(ctx: *mupdf.fz_context, doc: *mupdf.pdf_document) void {
    mupdf.pdf_drop_document(ctx, doc);
}

fn emptyWarningHandler(userdata: ?*anyopaque, msg: [*c]const u8) callconv(.C) void {
    _ = userdata;
    _ = msg;
}

fn emptyErrorHandler(userdata: ?*anyopaque, msg: [*c]const u8) callconv(.C) void {
    _ = userdata;
    _ = msg;
}

fn createPdf(ctx: *mupdf.fz_context) MuPdfError!*mupdf.pdf_document {
    var mark: ?*mupdf.sigjmp_buf = null;
    var dest_doc: ?*mupdf.pdf_document = null;
    if (fzTry(ctx, @ptrCast(**mupdf.sigjmp_buf, &mark))) {
        dest_doc = mupdf.pdf_create_document(ctx);
    }
    if (fzCatch(ctx)) {
        return MuPdfError.DocumentCreate;
    }

    return dest_doc.?;
}
