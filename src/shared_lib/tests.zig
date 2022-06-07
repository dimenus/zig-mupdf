const std = @import("std");
const Allocator = std.mem.Allocator;
const public_api = @import("public.zig");

fn loadPartialSample(allocator: Allocator, ctx: *public_api.LibContext, path: []const u8, min_index: c_int, length: c_int) !void {
    var err_code = public_api.ZMuPdfLibError.none;
    const cwd = std.fs.cwd();
    const file_handle = try cwd.openFile(path, .{});
    defer file_handle.close();
    const file_bytes = try file_handle.readToEndAlloc(allocator, std.math.maxInt(u32));
    err_code = public_api.addSelectedToOutput(ctx, file_bytes.ptr, file_bytes.len, min_index, length);
    try expectNoError(err_code);
}

fn loadSample(allocator: Allocator, ctx: *public_api.LibContext, path: []const u8) !void {
    var err_code = public_api.ZMuPdfLibError.none;
    const cwd = std.fs.cwd();
    const file_handle = try cwd.openFile(path, .{});
    defer file_handle.close();
    const file_bytes = try file_handle.readToEndAlloc(allocator, std.math.maxInt(u32));
    err_code = public_api.addToOutput(ctx, file_bytes.ptr, file_bytes.len);
    try expectNoError(err_code);
}

fn expectNoError(err: public_api.ZMuPdfLibError) !void {
    if (err == .none) return;

    std.log.err("received err '{s}'", .{@tagName(err)});
    return error.UnexpectedResult;
}

test "startup" {
    const ctx = public_api.startup() orelse std.debug.panic("couldn't startup", .{});
    defer public_api.shutdown(ctx);
}

test "create simple output" {
    const ctx = public_api.startup() orelse unreachable;
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = public_api.ZMuPdfLibError.none;

    try loadSample(allocator, ctx, "samples/combineFilesInput1.pdf");
    try loadSample(allocator, ctx, "samples/combineFilesInput2.pdf");

    var buffer_size = public_api.outputSize(ctx);
    var output_buf = try allocator.alloc(u8, @intCast(usize, buffer_size));
    defer allocator.free(output_buf);
    err_code = public_api.generateOutput(ctx, output_buf.ptr, &buffer_size, null, 0);
    try expectNoError(err_code);

    const output_filename = "outputs/simple_output.pdf";
    try std.fs.cwd().writeFile(output_filename, output_buf[0..buffer_size]);

    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    try std.testing.expect((try output_file.stat()).size == buffer_size);
    //try std.fs.cwd().deleteFile(output_filename);
}

test "create reordered output" {
    const ctx = public_api.startup() orelse unreachable;
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = public_api.ZMuPdfLibError.none;

    try loadSample(allocator, ctx, "samples/combineFilesInput1.pdf");
    try loadSample(allocator, ctx, "samples/combineFilesInput2.pdf");

    var buffer_size = public_api.outputSize(ctx);
    var output_buf = try allocator.alloc(u8, @intCast(usize, buffer_size));
    defer allocator.free(output_buf);
    const indices = &[_]usize{ 1, 0 };
    err_code = public_api.generateOutput(ctx, output_buf.ptr, &buffer_size, indices, indices.len);
    try expectNoError(err_code);

    const output_filename = "outputs/reordered_output.pdf";
    try std.fs.cwd().writeFile(output_filename, output_buf[0..buffer_size]);

    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    try std.testing.expect((try output_file.stat()).size == buffer_size);
    //try std.fs.cwd().deleteFile(output_filename);
}

test "create sliced output" {
    const ctx = public_api.startup() orelse unreachable;
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = public_api.ZMuPdfLibError.none;

    try loadPartialSample(allocator, ctx, "samples/combineFilesInput1.pdf", 2, 2);
    try loadPartialSample(allocator, ctx, "samples/combineFilesInput2.pdf", 1, public_api.CINT_NO_VALUE);

    var buffer_size = public_api.outputSize(ctx);
    var output_buf = try allocator.alloc(u8, @intCast(usize, buffer_size));
    defer allocator.free(output_buf);
    err_code = public_api.generateOutput(ctx, output_buf.ptr, &buffer_size, null, 0);
    try expectNoError(err_code);

    const output_filename = "outputs/sliced_output.pdf";
    try std.fs.cwd().writeFile(output_filename, output_buf[0..buffer_size]);

    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    try std.testing.expect((try output_file.stat()).size == buffer_size);
    //try std.fs.cwd().deleteFile(output_filename);
}

test "bad file format" {
    const ctx = public_api.startup() orelse unreachable;
    ctx.handle.hideWarnings();
    ctx.handle.hideErrors();
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = public_api.ZMuPdfLibError.none;
    const cwd = std.fs.cwd();
    const file_handle = try cwd.openFile("samples/foo.json", .{});
    defer file_handle.close();
    const file_bytes = try file_handle.readToEndAlloc(allocator, std.math.maxInt(u32));
    err_code = public_api.addToOutput(ctx, file_bytes.ptr, file_bytes.len);

    try std.testing.expect(err_code == .invalid_file_type);
}

test "bad slice values" {
    const ctx = public_api.startup() orelse unreachable;
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    const allocator = ctx.handle.arena_allocator.allocator();

    var err_code = public_api.ZMuPdfLibError.none;
    const cwd = std.fs.cwd();
    const file_handle = try cwd.openFile("samples/combineFilesInput1.pdf", .{});
    defer file_handle.close();
    const file_bytes = try file_handle.readToEndAlloc(allocator, std.math.maxInt(u32));
    err_code = public_api.addSelectedToOutput(ctx, file_bytes.ptr, file_bytes.len, 5, -1);

    try std.testing.expect(err_code == .invalid_parameter);
}
