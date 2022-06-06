const std = @import("std");
const mupdf = @import("lib/mupdf.zig");
const Allocator = std.mem.Allocator;

const page_allocator = std.heap.page_allocator;

const CINT_NO_VALUE = -1;

comptime {
    @export(startup, .{ .name = "zmupdf_startup", .linkage = .Strong });
    @export(shutdown, .{ .name = "zmupdf_shutdown", .linkage = .Strong });
    @export(openOutput, .{ .name = "zmupdf_output_open", .linkage = .Strong });
    @export(dropOutput, .{ .name = "zmupdf_output_drop", .linkage = .Strong });
    @export(addToOutput, .{ .name = "zmupdf_output_add", .linkage = .Strong });
    @export(addSelectedToOutput, .{ .name = "zmupdf_output_add_selected", .linkage = .Strong });
    @export(generateOutput, .{ .name = "zmupdf_output_combine", .linkage = .Strong });
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
    ctx.handle.dropOutput();
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
    invalid_file_type,
};

fn openOutput(ctx: *LibContext) callconv(.C) MupdfLibError {
    ctx.handle.openOutput() catch return .invalid_state;
    return .none;
}

fn dropOutput(ctx: *LibContext) callconv(.C) void {
    ctx.handle.dropOutput();
}

fn addSelectedToOutput(ctx: *LibContext, raw_buffer: ?[*]u8, size: usize, raw_min_index: c_int, raw_length: c_int) callconv(.C) MupdfLibError {
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

fn addToOutput(ctx: *LibContext, raw_buffer: ?[*]u8, size: usize) callconv(.C) MupdfLibError {
    if (raw_buffer == null) return .invalid_parameter;
    if (size > std.math.maxInt(u32)) return .invalid_parameter;

    const buf_ptr = @ptrCast([*]const u8, raw_buffer.?)[0..size];
    ctx.handle.addPdf(buf_ptr, null, null) catch return .invalid_file_type;
    return .none;
}

fn batchSize(ctx: *LibContext) callconv(.C) u64 {
    return ctx.handle.batchSize();
}

fn generateOutput(ctx: *LibContext, output_buffer: ?[*]u8, raw_size: ?*usize, raw_indices: ?[*]usize, num_indices: usize) callconv(.C) MupdfLibError {
    if (num_indices > ctx.handle.batchLength()) return .invalid_parameter;
    if (num_indices != 0 and raw_indices == null) return .invalid_parameter;
    if (num_indices == 0 and raw_indices != null) return .invalid_parameter;
    if (raw_size == null) return .invalid_parameter;
    const size = raw_size.?.*;
    if (size == 0) return .invalid_parameter;
    if (output_buffer == null) return .invalid_parameter;
    const batch_size = ctx.handle.batchSize();
    if (batch_size == 0) return .invalid_state;
    if (size < batch_size) return .buffer_too_small;

    const buf_ptr = @ptrCast([*]u8, output_buffer.?)[0..size];
    const indices = if (raw_indices) |indices| indices[0..num_indices] else &[_]usize{};
    raw_size.?.* = ctx.handle.generateOutput(buf_ptr, indices) catch return .invalid_parameter;
    return .none;
}

test "startup" {
    const ctx = startup() orelse std.debug.panic("couldn't startup", .{});
    defer shutdown(ctx);
}

fn loadPartialSample(allocator: Allocator, ctx: *LibContext, path: []const u8, min_index: c_int, length: c_int) !void {
    var err_code = MupdfLibError.none;
    const cwd = std.fs.cwd();
    const file_handle = try cwd.openFile(path, .{});
    defer file_handle.close();
    const file_bytes = try file_handle.readToEndAlloc(allocator, std.math.maxInt(u32));
    err_code = addSelectedToOutput(ctx, file_bytes.ptr, file_bytes.len, min_index, length);
    try expectNoError(err_code);
}

fn loadSample(allocator: Allocator, ctx: *LibContext, path: []const u8) !void {
    var err_code = MupdfLibError.none;
    const cwd = std.fs.cwd();
    const file_handle = try cwd.openFile(path, .{});
    defer file_handle.close();
    const file_bytes = try file_handle.readToEndAlloc(allocator, std.math.maxInt(u32));
    err_code = addToOutput(ctx, file_bytes.ptr, file_bytes.len);
    try expectNoError(err_code);
}

test "create simple output" {
    const ctx = startup() orelse unreachable;
    defer shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = MupdfLibError.none;

    try loadSample(allocator, ctx, "samples/combineFilesInput1.pdf");
    try loadSample(allocator, ctx, "samples/combineFilesInput2.pdf");

    var buffer_size = batchSize(ctx);
    var output_buf = try allocator.alloc(u8, @intCast(usize, buffer_size));
    defer allocator.free(output_buf);
    err_code = generateOutput(ctx, output_buf.ptr, &buffer_size, null, 0);
    try expectNoError(err_code);

    const output_filename = "outputs/simple_output.pdf";
    try std.fs.cwd().writeFile(output_filename, output_buf[0..buffer_size]);

    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    try std.testing.expect((try output_file.stat()).size == buffer_size);
    //try std.fs.cwd().deleteFile(output_filename);
}

test "create reordered output" {
    const ctx = startup() orelse unreachable;
    defer shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = MupdfLibError.none;

    try loadSample(allocator, ctx, "samples/combineFilesInput1.pdf");
    try loadSample(allocator, ctx, "samples/combineFilesInput2.pdf");

    var buffer_size = batchSize(ctx);
    var output_buf = try allocator.alloc(u8, @intCast(usize, buffer_size));
    defer allocator.free(output_buf);
    const indices = &[_]usize{ 1, 0 };
    err_code = generateOutput(ctx, output_buf.ptr, &buffer_size, indices, indices.len);
    try expectNoError(err_code);

    const output_filename = "outputs/reordered_output.pdf";
    try std.fs.cwd().writeFile(output_filename, output_buf[0..buffer_size]);

    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    try std.testing.expect((try output_file.stat()).size == buffer_size);
    //try std.fs.cwd().deleteFile(output_filename);
}

test "create sliced output" {
    const ctx = startup() orelse unreachable;
    defer shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = MupdfLibError.none;

    try loadPartialSample(allocator, ctx, "samples/combineFilesInput1.pdf", 2, 2);
    try loadPartialSample(allocator, ctx, "samples/combineFilesInput2.pdf", 1, CINT_NO_VALUE);

    var buffer_size = batchSize(ctx);
    var output_buf = try allocator.alloc(u8, @intCast(usize, buffer_size));
    defer allocator.free(output_buf);
    err_code = generateOutput(ctx, output_buf.ptr, &buffer_size, null, 0);
    try expectNoError(err_code);

    const output_filename = "outputs/sliced_output.pdf";
    try std.fs.cwd().writeFile(output_filename, output_buf[0..buffer_size]);

    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    try std.testing.expect((try output_file.stat()).size == buffer_size);
    //try std.fs.cwd().deleteFile(output_filename);
}

test "bad file format" {
    const ctx = startup() orelse unreachable;
    ctx.handle.hideWarnings();
    ctx.handle.hideErrors();
    defer shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = MupdfLibError.none;
    const cwd = std.fs.cwd();
    const file_handle = try cwd.openFile("samples/foo.json", .{});
    defer file_handle.close();
    const file_bytes = try file_handle.readToEndAlloc(allocator, std.math.maxInt(u32));
    err_code = addToOutput(ctx, file_bytes.ptr, file_bytes.len);

    try std.testing.expect(err_code == .invalid_file_type);
}

test "bad slice values" {
    const ctx = startup() orelse unreachable;
    defer shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = MupdfLibError.none;
    const cwd = std.fs.cwd();
    const file_handle = try cwd.openFile("samples/combineFilesInput1.pdf", .{});
    defer file_handle.close();
    const file_bytes = try file_handle.readToEndAlloc(allocator, std.math.maxInt(u32));
    err_code = addSelectedToOutput(ctx, file_bytes.ptr, file_bytes.len, 5, -1);

    try std.testing.expect(err_code == .invalid_parameter);
}

fn expectNoError(err: MupdfLibError) !void {
    if (err == .none) return;

    std.log.err("received err '{s}'", .{@tagName(err)});
    return error.UnexpectedResult;
}
