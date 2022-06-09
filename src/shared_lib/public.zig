const std = @import("std");
const mupdf = @import("zmupdf");
const Allocator = std.mem.Allocator;

const MAX_PATH_BYTES = std.fs.MAX_PATH_BYTES;

const page_allocator = std.heap.page_allocator;

pub const CINT_NO_VALUE = -1;

comptime {
    @export(startup, .{ .name = "zmupdf_startup", .linkage = .Strong });
    @export(shutdown, .{ .name = "zmupdf_shutdown", .linkage = .Strong });
    @export(openOutput, .{ .name = "zmupdf_output_open", .linkage = .Strong });
    @export(dropOutput, .{ .name = "zmupdf_output_drop", .linkage = .Strong });
    @export(saveOutput, .{ .name = "zmupdf_output_save", .linkage = .Strong });
    @export(openInputPath, .{ .name = "zmupdf_input_open_path", .linkage = .Strong });
    @export(dropInput, .{ .name = "zmupdf_input_drop", .linkage = .Strong });

    @export(copyPageRange, .{ .name = "zmupdf_output_copy_pages", .linkage = .Strong });
}

pub const ZMuPdfLibError = enum(u32) {
    none,
    internal_error,
    invalid_context,
    invalid_operation,
    invalid_parameter,
    operation_error,
};

pub const LibContext = extern struct { handle: *mupdf.Context };

pub fn startup() callconv(.C) ?*LibContext {
    var context = page_allocator.create(LibContext) catch {
        return null;
    };
    var handle_ptr = page_allocator.create(mupdf.Context) catch {
        page_allocator.destroy(context);
        return null;
    };

    handle_ptr.* = mupdf.Context.init(page_allocator) catch {
        page_allocator.destroy(context);
        page_allocator.destroy(handle_ptr);
        return null;
    };

    context.* = .{ .handle = handle_ptr };
    return context;
}

pub fn shutdown(raw_ctx: ?*LibContext) callconv(.C) void {
    const ctx = raw_ctx orelse return;
    ctx.handle.dropOutput();
    ctx.handle.deinit();
    page_allocator.destroy(ctx.handle);
    page_allocator.destroy(ctx);
}

pub fn openOutput(raw_ctx: ?*LibContext) callconv(.C) ZMuPdfLibError {
    const ctx = raw_ctx orelse return .invalid_context;
    ctx.handle.openOutput() catch return .invalid_operation;
    return .none;
}

pub fn dropOutput(raw_ctx: ?*LibContext) callconv(.C) void {
    const ctx = raw_ctx orelse return;
    ctx.handle.dropOutput();
}

pub fn openInputPath(raw_ctx: ?*LibContext, raw_path: ?[*]const u8, length: usize, output_pdf_handle: ?*usize) callconv(.C) ZMuPdfLibError {
    const ctx = raw_ctx orelse return .invalid_context;
    const path = raw_path orelse return .invalid_parameter;
    if (length == 0) return .invalid_parameter;
    if (output_pdf_handle == null) return .invalid_parameter;
    if (length + 1 > MAX_PATH_BYTES) return .internal_error;

    var file_path: [MAX_PATH_BYTES]u8 = undefined;
    std.mem.copy(u8, file_path[0..length], path[0..length]);
    file_path[length] = 0;
    const c_file_path = file_path[0..length :0];
    output_pdf_handle.?.* = ctx.handle.addPdfFile(c_file_path) catch |e| switch (e) {
        mupdf.MuPdfError.DocumentOpen => return .invalid_parameter,
        else => return .internal_error,
    };

    return .none;
}

pub fn dropInput(raw_ctx: ?*LibContext, raw_pdf_handle: usize) callconv(.C) ZMuPdfLibError {
    const ctx = raw_ctx orelse return .invalid_context;
    if (raw_pdf_handle != 0) return .internal_error;
    ctx.handle.releasePdf(raw_pdf_handle) catch return .invalid_parameter;
    ctx.handle.source_list.clearRetainingCapacity();
    return .none;
}

pub fn copyPageRange(raw_ctx: ?*LibContext, src_pdf_index: usize, start_index: c_int, raw_length: c_int) callconv(.C) ZMuPdfLibError {
    const ctx = raw_ctx orelse return .invalid_context;
    if (ctx.handle.dest_pdf == null) return .invalid_operation;
    if (src_pdf_index >= ctx.handle.sourceListLength()) return .invalid_parameter;
    if (start_index < 0) return .invalid_parameter;
    const source_item = ctx.handle.currentSourceItems()[src_pdf_index];
    if (source_item.pdf_handle) |pdf_handle| {
        const num_pages = ctx.handle.getPageCount(pdf_handle);
        const length = if (raw_length > 0) raw_length else (num_pages - start_index);
        if (start_index + length > num_pages) return .invalid_parameter;
        ctx.handle.graftPagesOntoOutput(pdf_handle, ctx.handle.dest_pdf.?, start_index, length) catch unreachable;
    } else return .invalid_parameter;

    return .none;
}

pub fn saveOutput(raw_ctx: ?*LibContext, raw_path: ?[*]u8, length: usize) callconv(.C) ZMuPdfLibError {
    const ctx = raw_ctx orelse return .invalid_context;
    const path = raw_path orelse return .invalid_parameter;
    if (length == 0) return .invalid_parameter;
    if (length + 1 > MAX_PATH_BYTES) return .internal_error;
    if (ctx.handle.dest_pdf) |dest_pdf| {
        var file_path: [MAX_PATH_BYTES]u8 = undefined;
        std.mem.copy(u8, file_path[0..length], path[0..length]);
        file_path[length] = 0;
        ctx.handle.flushToPath(dest_pdf, @ptrCast([*:0]u8, &file_path)) catch return .operation_error;
    } else return .invalid_operation;

    return .none;
}
