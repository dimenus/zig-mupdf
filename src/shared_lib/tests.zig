const std = @import("std");
const Allocator = std.mem.Allocator;
const public_api = @import("public.zig");

const page_allocator = std.heap.page_allocator;

fn loadSample(ctx: *public_api.LibContext, path: []const u8) !usize {
    var err_code = public_api.ZMuPdfLibError.none;
    var pdf_index: usize = 0;
    err_code = public_api.loadSourcePdfPath(ctx, path.ptr, path.len, &pdf_index);
    try expectNoError(err_code);

    return pdf_index;
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

test "null context checks" {
    public_api.shutdown(null);
    public_api.dropOutput(null);
    try std.testing.expect(public_api.openOutput(null) == .invalid_context);
    try std.testing.expect(public_api.loadSourcePdfPath(null, "asdf", 4, null) == .invalid_context);
    try std.testing.expect(public_api.copyPageRange(null, 42, -1, -1) == .invalid_context);
    try std.testing.expect(public_api.saveOutput(null, null, 42) == .invalid_context);
}

test "create simple output" {
    const ctx = public_api.startup() orelse unreachable;
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    var temp_allocator = std.heap.ArenaAllocator.init(page_allocator);
    defer temp_allocator.deinit();

    const first_pdf = try loadSample(ctx, "samples/combineFilesInput1.pdf");
    const second_pdf = try loadSample(ctx, "samples/combineFilesInput2.pdf");

    try expectNoError(public_api.copyPageRange(ctx, first_pdf, 0, 4));
    try expectNoError(public_api.copyPageRange(ctx, second_pdf, 0, 4));

    const output_filename = "outputs/simple_output.pdf";
    try expectNoError(public_api.saveOutput(ctx, output_filename, output_filename.len));
    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    try std.fs.cwd().deleteFile(output_filename);
}

test "create reordered output" {
    const ctx = public_api.startup() orelse unreachable;
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    var temp_allocator = std.heap.ArenaAllocator.init(page_allocator);
    defer temp_allocator.deinit();

    const first_pdf = try loadSample(ctx, "samples/combineFilesInput1.pdf");
    const second_pdf = try loadSample(ctx, "samples/combineFilesInput2.pdf");

    try expectNoError(public_api.copyPageRange(ctx, second_pdf, 0, 4));
    try expectNoError(public_api.copyPageRange(ctx, first_pdf, 0, 4));

    const output_filename = "outputs/reordered_output.pdf";
    try expectNoError(public_api.saveOutput(ctx, output_filename, output_filename.len));
    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    try std.fs.cwd().deleteFile(output_filename);
}

test "create sliced output" {
    const ctx = public_api.startup() orelse unreachable;
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    var temp_allocator = std.heap.ArenaAllocator.init(page_allocator);
    defer temp_allocator.deinit();

    const first_pdf = try loadSample(ctx, "samples/combineFilesInput1.pdf");
    const second_pdf = try loadSample(ctx, "samples/combineFilesInput2.pdf");

    try expectNoError(public_api.copyPageRange(ctx, second_pdf, 2, 2));
    try expectNoError(public_api.copyPageRange(ctx, first_pdf, 1, -1));

    const output_filename = "outputs/sliced_output.pdf";
    try expectNoError(public_api.saveOutput(ctx, output_filename, output_filename.len));
    const output_file = try std.fs.cwd().openFile(output_filename, .{});
    defer output_file.close();
    //    try std.fs.cwd().deleteFile(output_filename);
}

test "bad file format" {
    const ctx = public_api.startup() orelse unreachable;
    ctx.handle.hideWarnings();
    ctx.handle.hideErrors();
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    const file_path = "samples/foo.json";
    var pdf_handle: usize = 0;
    const err_code = public_api.loadSourcePdfPath(ctx, file_path, file_path.len, &pdf_handle);
    try std.testing.expect(err_code == .invalid_parameter);
}

test "create sliced output" {
    const ctx = public_api.startup() orelse unreachable;
    defer public_api.shutdown(ctx);
    try ctx.handle.openOutput();

    var temp_allocator = std.heap.ArenaAllocator.init(page_allocator);
    defer temp_allocator.deinit();

    const first_pdf = try loadSample(ctx, "samples/combineFilesInput1.pdf");

    const err_code = public_api.copyPageRange(ctx, first_pdf, 2, 4);
    try std.testing.expect(err_code == .invalid_parameter);
}
