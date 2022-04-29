const std = @import("std");
const mupdf = @import("lib/mupdf.zig");
const Allocator = std.mem.Allocator;

const page_allocator = std.heap.page_allocator;

comptime {
    @export(startup, .{ .name = "zmupdf_startup", .linkage = .Strong });
    @export(shutdown, .{ .name = "zmupdf_shutdown", .linkage = .Strong });
    @export(openBatch, .{ .name = "zmupdf_batch_open", .linkage = .Strong });
    @export(addToBatch, .{ .name = "zmupdf_batch_add_item", .linkage = .Strong });
    @export(combineBatch, .{ .name = "zmupdf_batch_combine", .linkage = .Strong });
}

const LibContext = extern struct { handle: *mupdf.Context };

fn startup() callconv(.C) ?*LibContext {
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

fn shutdown(ctx: *LibContext) callconv(.C) void {
    ctx.handle.deinit();
    page_allocator.destroy(ctx.handle);
    page_allocator.destroy(ctx);
}

const MupdfLibError = enum(u32) {
    none,
    unexpected_error,
    invalid_state,
    invalid_parameter,
    buffer_too_small,
};

fn openBatch(ctx: *LibContext) callconv(.C) MupdfLibError {
    ctx.handle.openBatch() catch return .invalid_state;

    return .none;
}

fn addToBatch(ctx: *LibContext, raw_buffer: ?[*]u8, size: usize) callconv(.C) MupdfLibError {
    if (raw_buffer == null) return .invalid_parameter;
    if (size > std.math.maxInt(u32)) return .invalid_parameter;

    const buf_ptr = @ptrCast([*]const u8, raw_buffer.?)[0..size];
    ctx.handle.addSourceBuffer(buf_ptr);
    return .none;
}

fn readAllBytes(allocator: Allocator, path: [:0]const u8) ![]u8 {
    var file_one = std.fs.cwd().openFile(path, .{}) catch |e| switch (e) {
        error.FileNotFound => {
            std.log.err("input file '{s}' was not found", .{path});
            return e;
        },
        else => return e,
    };
    defer file_one.close();

    return try file_one.readToEndAlloc(allocator, std.math.maxInt(u32));
}

fn batchSize(ctx: *LibContext) callconv(.C) u64 {
    return ctx.handle.batchSize();
}

fn combineBatch(ctx: *LibContext, output_buffer: ?[*]u8, raw_size: ?*usize) callconv(.C) MupdfLibError {
    if (raw_size == null) return .invalid_parameter;
    const size = raw_size.?.*;
    if (size == 0) return .invalid_parameter;
    if (output_buffer == null) return .invalid_parameter;
    const batch_size = ctx.handle.batchSize();
    if (batch_size == 0) return .invalid_state;
    if (size < batch_size) return .buffer_too_small;

    const buf_ptr = @ptrCast([*]u8, output_buffer.?)[0..size];
    raw_size.?.* = ctx.handle.combineBatch(buf_ptr) catch return .unexpected_error;
    return .none;
}

test "startup" {
    const ctx = startup() orelse std.debug.panic("couldn't startup", .{});
    defer shutdown(ctx);
}

test "add item to batch" {
    const ctx = startup() orelse unreachable;
    defer shutdown(ctx);
    try ctx.handle.openBatch();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = MupdfLibError.none;

    const bytes_one = try readAllBytes(allocator, "samples/combineFilesInput1.pdf");
    defer allocator.free(bytes_one);
    err_code = addToBatch(ctx, bytes_one.ptr, bytes_one.len);
    try std.testing.expect(err_code == .none);

    const bytes_two = try readAllBytes(allocator, "samples/combineFilesInput2.pdf");
    defer allocator.free(bytes_two);
    err_code = addToBatch(ctx, bytes_two.ptr, bytes_two.len);
    try std.testing.expect(err_code == .none);

    var buffer_size = batchSize(ctx);
    var output_buf = try allocator.alloc(u8, @intCast(usize, buffer_size));
    defer allocator.free(output_buf);
    err_code = combineBatch(ctx, output_buf.ptr, &buffer_size);
    try std.testing.expect(err_code == .none);

    try std.fs.cwd().writeFile("output.pdf", output_buf[0..buffer_size]);
}
