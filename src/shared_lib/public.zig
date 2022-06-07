const std = @import("std");
const mupdf = @import("zmupdf");
const Allocator = std.mem.Allocator;

const page_allocator = std.heap.page_allocator;

pub const CINT_NO_VALUE = -1;

comptime {
    @export(startup, .{ .name = "zmupdf_startup", .linkage = .Strong });
    @export(shutdown, .{ .name = "zmupdf_shutdown", .linkage = .Strong });
    @export(openOutput, .{ .name = "zmupdf_output_open", .linkage = .Strong });
    @export(dropOutput, .{ .name = "zmupdf_output_drop", .linkage = .Strong });
    @export(addToOutput, .{ .name = "zmupdf_output_add", .linkage = .Strong });
    @export(addSelectedToOutput, .{ .name = "zmupdf_output_add_selected", .linkage = .Strong });
    @export(generateOutput, .{ .name = "zmupdf_output_combine", .linkage = .Strong });
    @export(outputSize, .{ .name = "zmupdf_output_size", .linkage = .Strong });
}

pub const ZMuPdfLibError = enum(u32) {
    none,
    unexpected_error,
    invalid_state,
    invalid_parameter,
    buffer_too_small,
    invalid_file_type,
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

pub fn shutdown(ctx: *LibContext) callconv(.C) void {
    ctx.handle.dropOutput();
    ctx.handle.deinit();
    page_allocator.destroy(ctx.handle);
    page_allocator.destroy(ctx);
}

pub fn openOutput(ctx: *LibContext) callconv(.C) ZMuPdfLibError {
    ctx.handle.openOutput() catch return .invalid_state;
    return .none;
}

pub fn dropOutput(ctx: *LibContext) callconv(.C) void {
    ctx.handle.dropOutput();
}

pub fn addSelectedToOutput(ctx: *LibContext, raw_buffer: ?[*]u8, size: usize, raw_min_index: c_int, raw_length: c_int) callconv(.C) ZMuPdfLibError {
    if (raw_buffer == null) return .invalid_parameter;
    if (size > std.math.maxInt(u32)) return .invalid_parameter;
    if (raw_min_index < 0) return .invalid_parameter;

    const buf_ptr = @ptrCast([*]const u8, raw_buffer.?)[0..size];
    const length: ?c_int = if (raw_length <= 0) null else raw_length;
    ctx.handle.addPdf(buf_ptr, raw_min_index, length) catch |e| switch (e) {
        mupdf.MuPdfError.DocumentOpen => return .invalid_file_type,
        mupdf.MuPdfError.IndexOutOfRange => return .invalid_parameter,
        else => return .unexpected_error,
    };
    return .none;
}

pub fn addToOutput(ctx: *LibContext, raw_buffer: ?[*]u8, size: usize) callconv(.C) ZMuPdfLibError {
    if (raw_buffer == null) return .invalid_parameter;
    if (size > std.math.maxInt(u32)) return .invalid_parameter;

    const buf_ptr = @ptrCast([*]const u8, raw_buffer.?)[0..size];
    ctx.handle.addPdf(buf_ptr, null, null) catch |e| switch (e) {
        mupdf.MuPdfError.DocumentOpen => return .invalid_file_type,
        mupdf.MuPdfError.IndexOutOfRange => return .invalid_parameter,
        else => return .unexpected_error,
    };
    return .none;
}

pub fn outputSize(ctx: *LibContext) callconv(.C) u64 {
    return ctx.handle.outputSize();
}

pub fn generateOutput(ctx: *LibContext, output_buffer: ?[*]u8, raw_size: ?*usize, raw_indices: ?[*]usize, num_indices: usize) callconv(.C) ZMuPdfLibError {
    if (num_indices > ctx.handle.batchLength()) return .invalid_parameter;
    if (num_indices != 0 and raw_indices == null) return .invalid_parameter;
    if (num_indices == 0 and raw_indices != null) return .invalid_parameter;
    if (raw_size == null) return .invalid_parameter;
    const size = raw_size.?.*;
    if (size == 0) return .invalid_parameter;
    if (output_buffer == null) return .invalid_parameter;
    const batch_size = ctx.handle.outputSize();
    if (batch_size == 0) return .invalid_state;
    if (size < batch_size) return .buffer_too_small;

    const buf_ptr = @ptrCast([*]u8, output_buffer.?)[0..size];
    const indices = if (raw_indices) |indices| indices[0..num_indices] else &[_]usize{};
    raw_size.?.* = ctx.handle.generateOutput(buf_ptr, indices) catch return .invalid_parameter;
    return .none;
}
