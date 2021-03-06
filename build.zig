const std = @import("std");
const zbs = std.build;
const CrossTarget = std.zig.CrossTarget;

pub fn build(b: *std.build.Builder) !void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const mupdf_lib_path = "third-party/mupdf/build/release";
    const lib_list = [_][]const u8{ "mupdf", "mupdf-threads", "mupdf-pkcs7", "mupdf-third" };

    const lib = b.addSharedLibrary("zmupdf", "src/shared_lib/public.zig", .unversioned);
    lib.addPackagePath("zmupdf", "src/core/lib.zig");
    lib.setTarget(target);
    lib.linkLibC();
    lib.setBuildMode(mode);
    lib.addLibPath(mupdf_lib_path);
    for (lib_list) |name| {
        lib.linkSystemLibrary(name);
    }
    lib.install();

    const lib_tests = b.addTest("src/shared_lib/tests.zig");
    lib_tests.linkLibC();
    lib_tests.addPackagePath("zmupdf", "src/core/lib.zig");
    lib_tests.addLibPath(mupdf_lib_path);
    lib_tests.setTarget(target);
    for (lib_list) |name| {
        lib_tests.linkSystemLibrary(name);
    }

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&lib_tests.step);
}
