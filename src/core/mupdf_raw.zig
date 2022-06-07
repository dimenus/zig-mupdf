pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const __jmp_buf = [8]c_long;
pub const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
pub const struct___jmp_buf_tag = extern struct {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
};
pub const jmp_buf = [1]struct___jmp_buf_tag;
pub extern fn setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn __sigsetjmp(__env: [*c]struct___jmp_buf_tag, __savemask: c_int) c_int;
pub extern fn _setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub extern fn _longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const sigjmp_buf = [1]struct___jmp_buf_tag;
pub extern fn siglongjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_1 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: union_unnamed_1,
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*struct__IO_marker,
    _chain: [*c]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: [*c]struct__IO_FILE,
    _freeres_buf: ?*anyopaque,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub fn vprintf(arg___fmt: [*c]const u8, arg___arg: [*c]struct___va_list_tag) callconv(.C) c_int {
    var __fmt = arg___fmt;
    var __arg = arg___arg;
    return vfprintf(stdout, __fmt, __arg);
}
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub fn getchar() callconv(.C) c_int {
    return getc(stdin);
}
pub fn getc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__fp.*._IO_read_ptr >= __fp.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(__fp) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub fn getchar_unlocked() callconv(.C) c_int {
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(stdin.*._IO_read_ptr >= stdin.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(stdin) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &stdin.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub fn fgetc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__fp.*._IO_read_ptr >= __fp.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(__fp) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub fn putchar(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return putc(__c, stdout);
}
pub fn fputc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    var __stream = arg___stream;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__stream.*._IO_write_ptr >= __stream.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(__stream, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub fn putc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    var __stream = arg___stream;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__stream.*._IO_write_ptr >= __stream.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(__stream, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub fn putchar_unlocked(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(stdout.*._IO_write_ptr >= stdout.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(stdout, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &stdout.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub fn feof_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    return @boolToInt((__stream.*._flags & @as(c_int, 16)) != @as(c_int, 0));
}
pub fn ferror_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    return @boolToInt((__stream.*._flags & @as(c_int, 32)) != @as(c_int, 0));
}
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub fn atof(arg___nptr: [*c]const u8) callconv(.C) f64 {
    var __nptr = arg___nptr;
    return strtod(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*anyopaque, @as(c_int, 0)))));
}
pub fn atoi(arg___nptr: [*c]const u8) callconv(.C) c_int {
    var __nptr = arg___nptr;
    return @bitCast(c_int, @truncate(c_int, strtol(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*anyopaque, @as(c_int, 0)))), @as(c_int, 10))));
}
pub fn atol(arg___nptr: [*c]const u8) callconv(.C) c_long {
    var __nptr = arg___nptr;
    return strtol(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*anyopaque, @as(c_int, 0)))), @as(c_int, 10));
}
pub fn atoll(arg___nptr: [*c]const u8) callconv(.C) c_longlong {
    var __nptr = arg___nptr;
    return strtoll(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*anyopaque, @as(c_int, 0)))), @as(c_int, 10));
}
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint16_t, @truncate(c_short, ((@bitCast(c_int, @as(c_uint, __bsx)) >> @intCast(@import("std").math.Log2Int(c_int), 8)) & @as(c_int, 255)) | ((@bitCast(c_int, @as(c_uint, __bsx)) & @as(c_int, 255)) << @intCast(@import("std").math.Log2Int(c_int), 8))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(@import("std").math.Log2Int(c_uint), 24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 255)) << @intCast(@import("std").math.Log2Int(c_uint), 24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint64_t, @truncate(c_ulong, ((((((((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 56)) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 71776119061217280)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 280375465082880)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 1095216660480)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 4278190080)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 16711680)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 65280)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 255)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 56))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    return __x;
}
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_2 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_2,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list,
    __next: [*c]struct___pthread_internal_list,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist,
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [7]u8,
    __pad2: c_ulong,
    __flags: c_uint,
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [2]c_uint,
    __g_size: [2]c_uint,
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [2]c_uint,
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32,
    rptr: [*c]i32,
    state: [*c]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: [*c]i32,
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub fn bsearch(arg___key: ?*const anyopaque, arg___base: ?*const anyopaque, arg___nmemb: usize, arg___size: usize, arg___compar: __compar_fn_t) callconv(.C) ?*anyopaque {
    var __key = arg___key;
    var __base = arg___base;
    var __nmemb = arg___nmemb;
    var __size = arg___size;
    var __compar = arg___compar;
    var __l: usize = undefined;
    var __u: usize = undefined;
    var __idx: usize = undefined;
    var __p: ?*const anyopaque = undefined;
    var __comparison: c_int = undefined;
    __l = 0;
    __u = __nmemb;
    while (__l < __u) {
        __idx = (__l +% __u) / @bitCast(c_ulong, @as(c_long, @as(c_int, 2)));
        __p = @ptrCast(?*const anyopaque, @ptrCast([*c]const u8, @alignCast(@import("std").meta.alignment(u8), __base)) + (__idx *% __size));
        __comparison = __compar.?(__key, __p);
        if (__comparison < @as(c_int, 0)) {
            __u = __idx;
        } else if (__comparison > @as(c_int, 0)) {
            __l = __idx +% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
        } else {
            return @intToPtr(?*anyopaque, @ptrToInt(__p));
        }
    }
    return @intToPtr(?*anyopaque, @as(c_int, 0));
}
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub extern fn Memento_checkBlock(?*anyopaque) c_int;
pub extern fn Memento_checkAllMemory() c_int;
pub extern fn Memento_check() c_int;
pub extern fn Memento_setParanoia(c_int) c_int;
pub extern fn Memento_paranoidAt(c_int) c_int;
pub extern fn Memento_breakAt(c_int) c_int;
pub extern fn Memento_breakOnFree(a: ?*anyopaque) void;
pub extern fn Memento_breakOnRealloc(a: ?*anyopaque) void;
pub extern fn Memento_getBlockNum(?*anyopaque) c_int;
pub extern fn Memento_find(a: ?*anyopaque) c_int;
pub extern fn Memento_breakpoint() void;
pub extern fn Memento_failAt(c_int) c_int;
pub extern fn Memento_failThisEvent() c_int;
pub extern fn Memento_listBlocks() void;
pub extern fn Memento_listNewBlocks() void;
pub extern fn Memento_setMax(usize) usize;
pub extern fn Memento_stats() void;
pub extern fn Memento_label(?*anyopaque, [*c]const u8) ?*anyopaque;
pub extern fn Memento_tick() void;
pub extern fn Memento_malloc(s: usize) ?*anyopaque;
pub extern fn Memento_realloc(?*anyopaque, s: usize) ?*anyopaque;
pub extern fn Memento_free(?*anyopaque) void;
pub extern fn Memento_calloc(usize, usize) ?*anyopaque;
pub extern fn Memento_strdup([*c]const u8) [*c]u8;
pub extern fn Memento_asprintf(ret: [*c][*c]u8, format: [*c]const u8, ...) c_int;
pub extern fn Memento_vasprintf(ret: [*c][*c]u8, format: [*c]const u8, ap: [*c]struct___va_list_tag) c_int;
pub extern fn Memento_info(addr: ?*anyopaque) void;
pub extern fn Memento_listBlockInfo() void;
pub extern fn Memento_blockInfo(blk: ?*anyopaque) void;
pub extern fn Memento_takeByteRef(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_dropByteRef(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_takeShortRef(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_dropShortRef(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_takeIntRef(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_dropIntRef(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_takeRef(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_dropRef(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_adjustRef(blk: ?*anyopaque, adjust: c_int) ?*anyopaque;
pub extern fn Memento_reference(blk: ?*anyopaque) ?*anyopaque;
pub extern fn Memento_checkPointerOrNull(blk: ?*anyopaque) c_int;
pub extern fn Memento_checkBytePointerOrNull(blk: ?*anyopaque) c_int;
pub extern fn Memento_checkShortPointerOrNull(blk: ?*anyopaque) c_int;
pub extern fn Memento_checkIntPointerOrNull(blk: ?*anyopaque) c_int;
pub extern fn Memento_startLeaking() void;
pub extern fn Memento_stopLeaking() void;
pub extern fn Memento_sequence() c_int;
pub extern fn Memento_squeezing() c_int;
pub extern fn Memento_fin() void;
pub extern fn Memento_bt() void;
pub const fz_jmp_buf = sigjmp_buf;
pub extern fn fz_stat_ctime(path: [*c]const u8) i64;
pub extern fn fz_stat_mtime(path: [*c]const u8) i64;
pub fn fz_is_pow2(arg_a: c_int) callconv(.C) c_int {
    var a = arg_a;
    return @boolToInt((a != @as(c_int, 0)) and ((a & (a - @as(c_int, 1))) == @as(c_int, 0)));
}
pub extern fn __assert_fail(__assertion: [*c]const u8, __file: [*c]const u8, __line: c_uint, __function: [*c]const u8) noreturn;
pub extern fn __assert_perror_fail(__errnum: c_int, __file: [*c]const u8, __line: c_uint, __function: [*c]const u8) noreturn;
pub extern fn __assert(__assertion: [*c]const u8, __file: [*c]const u8, __line: c_int) noreturn;
pub fn fz_mul255(arg_a: c_int, arg_b: c_int) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    var x: c_int = (a * b) + @as(c_int, 128);
    x += x >> @intCast(@import("std").math.Log2Int(c_int), 8);
    return x >> @intCast(@import("std").math.Log2Int(c_int), 8);
}
pub fn fz_div255(arg_c: c_int, arg_a: c_int) callconv(.C) c_int {
    var c = arg_c;
    var a = arg_a;
    return if (a != 0) (c * @divTrunc(@as(c_int, 255) * @as(c_int, 256), a)) >> @intCast(@import("std").math.Log2Int(c_int), 8) else @as(c_int, 0);
}
pub extern fn fz_atof(s: [*c]const u8) f32;
pub extern fn fz_atoi(s: [*c]const u8) c_int;
pub extern fn fz_atoi64(s: [*c]const u8) i64;
pub fn fz_abs(arg_f: f32) callconv(.C) f32 {
    var f = arg_f;
    return if (f < @intToFloat(f32, @as(c_int, 0))) -f else f;
}
pub fn fz_absi(arg_i: c_int) callconv(.C) c_int {
    var i = arg_i;
    return if (i < @as(c_int, 0)) -i else i;
}
pub fn fz_min(arg_a: f32, arg_b: f32) callconv(.C) f32 {
    var a = arg_a;
    var b = arg_b;
    return if (a < b) a else b;
}
pub fn fz_mini(arg_a: c_int, arg_b: c_int) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    return if (a < b) a else b;
}
pub fn fz_minz(arg_a: usize, arg_b: usize) callconv(.C) usize {
    var a = arg_a;
    var b = arg_b;
    return if (a < b) a else b;
}
pub fn fz_mini64(arg_a: i64, arg_b: i64) callconv(.C) i64 {
    var a = arg_a;
    var b = arg_b;
    return if (a < b) a else b;
}
pub fn fz_max(arg_a: f32, arg_b: f32) callconv(.C) f32 {
    var a = arg_a;
    var b = arg_b;
    return if (a > b) a else b;
}
pub fn fz_maxi(arg_a: c_int, arg_b: c_int) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    return if (a > b) a else b;
}
pub fn fz_maxz(arg_a: usize, arg_b: usize) callconv(.C) usize {
    var a = arg_a;
    var b = arg_b;
    return if (a > b) a else b;
}
pub fn fz_maxi64(arg_a: i64, arg_b: i64) callconv(.C) i64 {
    var a = arg_a;
    var b = arg_b;
    return if (a > b) a else b;
}
pub fn fz_clamp(arg_f: f32, arg_min: f32, arg_max: f32) callconv(.C) f32 {
    var f = arg_f;
    var min = arg_min;
    var max = arg_max;
    return if (f > min) if (f < max) f else max else min;
}
pub fn fz_clampi(arg_i: c_int, arg_min: c_int, arg_max: c_int) callconv(.C) c_int {
    var i = arg_i;
    var min = arg_min;
    var max = arg_max;
    return if (i > min) if (i < max) i else max else min;
}
pub fn fz_clampd(arg_d: f64, arg_min: f64, arg_max: f64) callconv(.C) f64 {
    var d = arg_d;
    var min = arg_min;
    var max = arg_max;
    return if (d > min) if (d < max) d else max else min;
}
pub fn fz_clampp(arg_p: ?*anyopaque, arg_min: ?*anyopaque, arg_max: ?*anyopaque) callconv(.C) ?*anyopaque {
    var p = arg_p;
    var min = arg_min;
    var max = arg_max;
    return if (p > min) if (p < max) p else max else min;
}
pub const fz_point = extern struct {
    x: f32,
    y: f32,
};
pub fn fz_make_point(arg_x: f32, arg_y: f32) callconv(.C) fz_point {
    var x = arg_x;
    var y = arg_y;
    var p: fz_point = fz_point{
        .x = x,
        .y = y,
    };
    return p;
}
pub const fz_rect = extern struct {
    x0: f32,
    y0: f32,
    x1: f32,
    y1: f32,
};
pub fn fz_make_rect(arg_x0: f32, arg_y0: f32, arg_x1: f32, arg_y1: f32) callconv(.C) fz_rect {
    var x0 = arg_x0;
    var y0 = arg_y0;
    var x1 = arg_x1;
    var y1 = arg_y1;
    var r: fz_rect = fz_rect{
        .x0 = x0,
        .y0 = y0,
        .x1 = x1,
        .y1 = y1,
    };
    return r;
}
pub const fz_irect = extern struct {
    x0: c_int,
    y0: c_int,
    x1: c_int,
    y1: c_int,
};
pub fn fz_make_irect(arg_x0: c_int, arg_y0: c_int, arg_x1: c_int, arg_y1: c_int) callconv(.C) fz_irect {
    var x0 = arg_x0;
    var y0 = arg_y0;
    var x1 = arg_x1;
    var y1 = arg_y1;
    var r: fz_irect = fz_irect{
        .x0 = x0,
        .y0 = y0,
        .x1 = x1,
        .y1 = y1,
    };
    return r;
}
pub extern const fz_unit_rect: fz_rect;
pub extern const fz_empty_rect: fz_rect;
pub extern const fz_empty_irect: fz_irect;
pub extern const fz_infinite_rect: fz_rect;
pub extern const fz_infinite_irect: fz_irect;
pub fn fz_is_empty_rect(arg_r: fz_rect) callconv(.C) c_int {
    var r = arg_r;
    return @boolToInt((r.x0 >= r.x1) or (r.y0 >= r.y1));
}
pub fn fz_is_empty_irect(arg_r: fz_irect) callconv(.C) c_int {
    var r = arg_r;
    return @boolToInt((r.x0 >= r.x1) or (r.y0 >= r.y1));
}
pub fn fz_is_infinite_rect(arg_r: fz_rect) callconv(.C) c_int {
    var r = arg_r;
    return @boolToInt((((r.x0 == @intToFloat(f32, @bitCast(c_int, @as(c_uint, 2147483648)))) and (r.x1 == @intToFloat(f32, @as(c_int, 2147483520)))) and (r.y0 == @intToFloat(f32, @bitCast(c_int, @as(c_uint, 2147483648))))) and (r.y1 == @intToFloat(f32, @as(c_int, 2147483520))));
}
pub fn fz_is_infinite_irect(arg_r: fz_irect) callconv(.C) c_int {
    var r = arg_r;
    return @boolToInt((((r.x0 == @bitCast(c_int, @as(c_uint, 2147483648))) and (r.x1 == @as(c_int, 2147483520))) and (r.y0 == @bitCast(c_int, @as(c_uint, 2147483648)))) and (r.y1 == @as(c_int, 2147483520)));
}
pub fn fz_is_valid_rect(arg_r: fz_rect) callconv(.C) c_int {
    var r = arg_r;
    return @boolToInt((r.x0 <= r.x1) and (r.y0 <= r.y1));
}
pub fn fz_is_valid_irect(arg_r: fz_irect) callconv(.C) c_int {
    var r = arg_r;
    return @boolToInt((r.x0 <= r.x1) and (r.y0 <= r.y1));
}
pub fn fz_irect_width(arg_r: fz_irect) callconv(.C) c_uint {
    var r = arg_r;
    var w: c_uint = undefined;
    if (r.x0 >= r.x1) return 0;
    w = @bitCast(c_uint, r.x1) -% @bitCast(c_uint, r.x0);
    _ = blk: {
        _ = @sizeOf(c_int);
        break :blk blk_1: {
            break :blk_1 if (@bitCast(c_int, w) >= @as(c_int, 0)) {} else {
                __assert_fail("(int)w >= 0", "third-party/mupdf/include/mupdf/fitz/geometry.h", @bitCast(c_uint, @as(c_int, 325)), "unsigned int fz_irect_width(fz_irect)");
            };
        };
    };
    if (@bitCast(c_int, w) < @as(c_int, 0)) return 0;
    return @bitCast(c_uint, @bitCast(c_int, w));
}
pub fn fz_irect_height(arg_r: fz_irect) callconv(.C) c_int {
    var r = arg_r;
    var h: c_uint = undefined;
    if (r.y0 >= r.y1) return 0;
    h = @bitCast(c_uint, r.y1 - r.y0);
    _ = blk: {
        _ = @sizeOf(c_int);
        break :blk blk_1: {
            break :blk_1 if (@bitCast(c_int, h) >= @as(c_int, 0)) {} else {
                __assert_fail("(int)h >= 0", "third-party/mupdf/include/mupdf/fitz/geometry.h", @bitCast(c_uint, @as(c_int, 344)), "int fz_irect_height(fz_irect)");
            };
        };
    };
    if (@bitCast(c_int, h) < @as(c_int, 0)) return 0;
    return @bitCast(c_int, h);
}
pub const fz_matrix = extern struct {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
    f: f32,
};
pub extern const fz_identity: fz_matrix;
pub fn fz_make_matrix(arg_a: f32, arg_b: f32, arg_c: f32, arg_d: f32, arg_e: f32, arg_f: f32) callconv(.C) fz_matrix {
    var a = arg_a;
    var b = arg_b;
    var c = arg_c;
    var d = arg_d;
    var e = arg_e;
    var f = arg_f;
    var m: fz_matrix = fz_matrix{
        .a = a,
        .b = b,
        .c = c,
        .d = d,
        .e = e,
        .f = f,
    };
    return m;
}
pub fn fz_is_identity(arg_m: fz_matrix) callconv(.C) c_int {
    var m = arg_m;
    return @boolToInt((((((m.a == @intToFloat(f32, @as(c_int, 1))) and (m.b == @intToFloat(f32, @as(c_int, 0)))) and (m.c == @intToFloat(f32, @as(c_int, 0)))) and (m.d == @intToFloat(f32, @as(c_int, 1)))) and (m.e == @intToFloat(f32, @as(c_int, 0)))) and (m.f == @intToFloat(f32, @as(c_int, 0))));
}
pub extern fn fz_concat(left: fz_matrix, right: fz_matrix) fz_matrix;
pub extern fn fz_scale(sx: f32, sy: f32) fz_matrix;
pub extern fn fz_pre_scale(m: fz_matrix, sx: f32, sy: f32) fz_matrix;
pub extern fn fz_post_scale(m: fz_matrix, sx: f32, sy: f32) fz_matrix;
pub extern fn fz_shear(sx: f32, sy: f32) fz_matrix;
pub extern fn fz_pre_shear(m: fz_matrix, sx: f32, sy: f32) fz_matrix;
pub extern fn fz_rotate(degrees: f32) fz_matrix;
pub extern fn fz_pre_rotate(m: fz_matrix, degrees: f32) fz_matrix;
pub extern fn fz_translate(tx: f32, ty: f32) fz_matrix;
pub extern fn fz_pre_translate(m: fz_matrix, tx: f32, ty: f32) fz_matrix;
pub extern fn fz_transform_page(mediabox: fz_rect, resolution: f32, rotate: f32) fz_matrix;
pub extern fn fz_invert_matrix(matrix: fz_matrix) fz_matrix;
pub extern fn fz_try_invert_matrix(inv: [*c]fz_matrix, src: fz_matrix) c_int;
pub extern fn fz_is_rectilinear(m: fz_matrix) c_int;
pub extern fn fz_matrix_expansion(m: fz_matrix) f32;
pub extern fn fz_intersect_rect(a: fz_rect, b: fz_rect) fz_rect;
pub extern fn fz_intersect_irect(a: fz_irect, b: fz_irect) fz_irect;
pub extern fn fz_union_rect(a: fz_rect, b: fz_rect) fz_rect;
pub extern fn fz_irect_from_rect(rect: fz_rect) fz_irect;
pub extern fn fz_round_rect(rect: fz_rect) fz_irect;
pub extern fn fz_rect_from_irect(bbox: fz_irect) fz_rect;
pub extern fn fz_expand_rect(b: fz_rect, expand: f32) fz_rect;
pub extern fn fz_expand_irect(a: fz_irect, expand: c_int) fz_irect;
pub extern fn fz_include_point_in_rect(r: fz_rect, p: fz_point) fz_rect;
pub extern fn fz_translate_rect(a: fz_rect, xoff: f32, yoff: f32) fz_rect;
pub extern fn fz_translate_irect(a: fz_irect, xoff: c_int, yoff: c_int) fz_irect;
pub extern fn fz_contains_rect(a: fz_rect, b: fz_rect) c_int;
pub extern fn fz_transform_point(point: fz_point, m: fz_matrix) fz_point;
pub extern fn fz_transform_point_xy(x: f32, y: f32, m: fz_matrix) fz_point;
pub extern fn fz_transform_vector(vector: fz_point, m: fz_matrix) fz_point;
pub extern fn fz_transform_rect(rect: fz_rect, m: fz_matrix) fz_rect;
pub extern fn fz_normalize_vector(p: fz_point) fz_point;
pub extern fn fz_gridfit_matrix(as_tiled: c_int, m: fz_matrix) fz_matrix;
pub extern fn fz_matrix_max_expansion(m: fz_matrix) f32;
pub const fz_quad = extern struct {
    ul: fz_point,
    ur: fz_point,
    ll: fz_point,
    lr: fz_point,
};
pub fn fz_make_quad(arg_ul_x: f32, arg_ul_y: f32, arg_ur_x: f32, arg_ur_y: f32, arg_ll_x: f32, arg_ll_y: f32, arg_lr_x: f32, arg_lr_y: f32) callconv(.C) fz_quad {
    var ul_x = arg_ul_x;
    var ul_y = arg_ul_y;
    var ur_x = arg_ur_x;
    var ur_y = arg_ur_y;
    var ll_x = arg_ll_x;
    var ll_y = arg_ll_y;
    var lr_x = arg_lr_x;
    var lr_y = arg_lr_y;
    var q: fz_quad = fz_quad{
        .ul = fz_point{
            .x = ul_x,
            .y = ul_y,
        },
        .ur = fz_point{
            .x = ur_x,
            .y = ur_y,
        },
        .ll = fz_point{
            .x = ll_x,
            .y = ll_y,
        },
        .lr = fz_point{
            .x = lr_x,
            .y = lr_y,
        },
    };
    return q;
}
pub extern fn fz_quad_from_rect(r: fz_rect) fz_quad;
pub extern fn fz_rect_from_quad(q: fz_quad) fz_rect;
pub extern fn fz_transform_quad(q: fz_quad, m: fz_matrix) fz_quad;
pub extern fn fz_is_point_inside_quad(p: fz_point, q: fz_quad) c_int;
pub extern fn fz_is_point_inside_rect(p: fz_point, r: fz_rect) c_int;
pub extern fn fz_is_point_inside_irect(x: c_int, y: c_int, r: fz_irect) c_int;
pub extern fn fz_is_quad_inside_quad(needle: fz_quad, haystack: fz_quad) c_int;
pub extern fn fz_is_quad_intersecting_quad(a: fz_quad, b: fz_quad) c_int;
pub const struct_fz_font_context = opaque {};
pub const fz_font_context = struct_fz_font_context;
pub const struct_fz_colorspace_context = opaque {};
pub const fz_colorspace_context = struct_fz_colorspace_context;
pub const struct_fz_style_context = opaque {};
pub const fz_style_context = struct_fz_style_context;
pub const struct_fz_tuning_context = opaque {};
pub const fz_tuning_context = struct_fz_tuning_context;
pub const struct_fz_store = opaque {};
pub const fz_store = struct_fz_store;
pub const struct_fz_glyph_cache = opaque {};
pub const fz_glyph_cache = struct_fz_glyph_cache;
pub const struct_fz_document_handler_context = opaque {};
pub const fz_document_handler_context = struct_fz_document_handler_context;
pub const fz_output = struct_fz_output;
pub const struct_fz_context = extern struct {
    user: ?*anyopaque,
    alloc: fz_alloc_context,
    locks: fz_locks_context,
    @"error": fz_error_context,
    warn: fz_warn_context,
    aa: fz_aa_context,
    seed48: [7]u16,
    icc_enabled: c_int,
    throw_on_repair: c_int,
    handler: ?*fz_document_handler_context,
    style: ?*fz_style_context,
    tuning: ?*fz_tuning_context,
    stddbg: [*c]fz_output,
    font: ?*fz_font_context,
    colorspace: ?*fz_colorspace_context,
    store: ?*fz_store,
    glyph_cache: ?*fz_glyph_cache,
};
pub const fz_context = struct_fz_context;
pub const fz_output_write_fn = fn ([*c]fz_context, ?*anyopaque, ?*const anyopaque, usize) callconv(.C) void;
pub const fz_output_seek_fn = fn ([*c]fz_context, ?*anyopaque, i64, c_int) callconv(.C) void;
pub const fz_output_tell_fn = fn ([*c]fz_context, ?*anyopaque) callconv(.C) i64;
pub const fz_output_close_fn = fn ([*c]fz_context, ?*anyopaque) callconv(.C) void;
pub const fz_output_drop_fn = fn ([*c]fz_context, ?*anyopaque) callconv(.C) void;
pub const fz_stream_next_fn = fn ([*c]fz_context, [*c]fz_stream, usize) callconv(.C) c_int;
pub const fz_stream_drop_fn = fn ([*c]fz_context, ?*anyopaque) callconv(.C) void;
pub const fz_stream_seek_fn = fn ([*c]fz_context, [*c]fz_stream, i64, c_int) callconv(.C) void;
pub const struct_fz_stream = extern struct {
    refs: c_int,
    @"error": c_int,
    eof: c_int,
    progressive: c_int,
    pos: i64,
    avail: c_int,
    bits: c_int,
    rp: [*c]u8,
    wp: [*c]u8,
    state: ?*anyopaque,
    next: ?fz_stream_next_fn,
    drop: ?fz_stream_drop_fn,
    seek: ?fz_stream_seek_fn,
};
pub const fz_stream = struct_fz_stream;
pub const fz_stream_from_output_fn = fn ([*c]fz_context, ?*anyopaque) callconv(.C) [*c]fz_stream;
pub const fz_truncate_fn = fn ([*c]fz_context, ?*anyopaque) callconv(.C) void;
pub const struct_fz_output = extern struct {
    state: ?*anyopaque,
    write: ?fz_output_write_fn,
    seek: ?fz_output_seek_fn,
    tell: ?fz_output_tell_fn,
    close: ?fz_output_close_fn,
    drop: ?fz_output_drop_fn,
    as_stream: ?fz_stream_from_output_fn,
    truncate: ?fz_truncate_fn,
    bp: [*c]u8,
    wp: [*c]u8,
    ep: [*c]u8,
};
pub const fz_alloc_context = extern struct {
    user: ?*anyopaque,
    malloc: ?fn (?*anyopaque, usize) callconv(.C) ?*anyopaque,
    realloc: ?fn (?*anyopaque, ?*anyopaque, usize) callconv(.C) ?*anyopaque,
    free: ?fn (?*anyopaque, ?*anyopaque) callconv(.C) void,
};
pub extern fn fz_vthrow(ctx: [*c]fz_context, errcode: c_int, [*c]const u8, ap: [*c]struct___va_list_tag) noreturn;
pub extern fn fz_throw(ctx: [*c]fz_context, errcode: c_int, [*c]const u8, ...) noreturn;
pub extern fn fz_rethrow(ctx: [*c]fz_context) noreturn;
pub extern fn fz_vwarn(ctx: [*c]fz_context, fmt: [*c]const u8, ap: [*c]struct___va_list_tag) void;
pub extern fn fz_warn(ctx: [*c]fz_context, fmt: [*c]const u8, ...) void;
pub extern fn fz_caught_message(ctx: [*c]fz_context) [*c]const u8;
pub extern fn fz_caught(ctx: [*c]fz_context) c_int;
pub extern fn fz_rethrow_if(ctx: [*c]fz_context, errcode: c_int) void;
pub extern fn fz_start_throw_on_repair(ctx: [*c]fz_context) void;
pub extern fn fz_end_throw_on_repair(ctx: [*c]fz_context) void;
pub const FZ_ERROR_NONE: c_int = 0;
pub const FZ_ERROR_MEMORY: c_int = 1;
pub const FZ_ERROR_GENERIC: c_int = 2;
pub const FZ_ERROR_SYNTAX: c_int = 3;
pub const FZ_ERROR_MINOR: c_int = 4;
pub const FZ_ERROR_TRYLATER: c_int = 5;
pub const FZ_ERROR_ABORT: c_int = 6;
pub const FZ_ERROR_REPAIRED: c_int = 7;
pub const FZ_ERROR_COUNT: c_int = 8;
const enum_unnamed_3 = c_uint;
pub extern fn fz_flush_warnings(ctx: [*c]fz_context) void;
pub const fz_locks_context = extern struct {
    user: ?*anyopaque,
    lock: ?fn (?*anyopaque, c_int) callconv(.C) void,
    unlock: ?fn (?*anyopaque, c_int) callconv(.C) void,
};
pub const FZ_LOCK_ALLOC: c_int = 0;
pub const FZ_LOCK_FREETYPE: c_int = 1;
pub const FZ_LOCK_GLYPHCACHE: c_int = 2;
pub const FZ_LOCK_MAX: c_int = 3;
const enum_unnamed_4 = c_uint;
pub extern fn fz_assert_lock_held(ctx: [*c]fz_context, lock: c_int) void;
pub extern fn fz_assert_lock_not_held(ctx: [*c]fz_context, lock: c_int) void;
pub extern fn fz_lock_debug_lock(ctx: [*c]fz_context, lock: c_int) void;
pub extern fn fz_lock_debug_unlock(ctx: [*c]fz_context, lock: c_int) void;
pub const FZ_STORE_UNLIMITED: c_int = 0;
pub const FZ_STORE_DEFAULT: c_int = 268435456;
const enum_unnamed_5 = c_uint;
pub extern fn fz_clone_context(ctx: [*c]fz_context) [*c]fz_context;
pub extern fn fz_drop_context(ctx: [*c]fz_context) void;
pub extern fn fz_set_user_context(ctx: [*c]fz_context, user: ?*anyopaque) void;
pub extern fn fz_user_context(ctx: [*c]fz_context) ?*anyopaque;
pub extern fn fz_default_error_callback(user: ?*anyopaque, message: [*c]const u8) void;
pub extern fn fz_default_warning_callback(user: ?*anyopaque, message: [*c]const u8) void;
pub const fz_error_cb = fn (?*anyopaque, [*c]const u8) callconv(.C) void;
pub const fz_warning_cb = fn (?*anyopaque, [*c]const u8) callconv(.C) void;
pub extern fn fz_set_error_callback(ctx: [*c]fz_context, error_cb: ?fz_error_cb, user: ?*anyopaque) void;
pub extern fn fz_error_callback(ctx: [*c]fz_context, user: [*c]?*anyopaque) ?fz_error_cb;
pub extern fn fz_set_warning_callback(ctx: [*c]fz_context, warning_cb: ?fz_warning_cb, user: ?*anyopaque) void;
pub extern fn fz_warning_callback(ctx: [*c]fz_context, user: [*c]?*anyopaque) ?fz_warning_cb;
pub const fz_tune_image_decode_fn = fn (?*anyopaque, c_int, c_int, c_int, [*c]fz_irect) callconv(.C) void;
pub const fz_tune_image_scale_fn = fn (?*anyopaque, c_int, c_int, c_int, c_int) callconv(.C) c_int;
pub extern fn fz_tune_image_decode(ctx: [*c]fz_context, image_decode: ?fz_tune_image_decode_fn, arg: ?*anyopaque) void;
pub extern fn fz_tune_image_scale(ctx: [*c]fz_context, image_scale: ?fz_tune_image_scale_fn, arg: ?*anyopaque) void;
pub extern fn fz_aa_level(ctx: [*c]fz_context) c_int;
pub extern fn fz_set_aa_level(ctx: [*c]fz_context, bits: c_int) void;
pub extern fn fz_text_aa_level(ctx: [*c]fz_context) c_int;
pub extern fn fz_set_text_aa_level(ctx: [*c]fz_context, bits: c_int) void;
pub extern fn fz_graphics_aa_level(ctx: [*c]fz_context) c_int;
pub extern fn fz_set_graphics_aa_level(ctx: [*c]fz_context, bits: c_int) void;
pub extern fn fz_graphics_min_line_width(ctx: [*c]fz_context) f32;
pub extern fn fz_set_graphics_min_line_width(ctx: [*c]fz_context, min_line_width: f32) void;
pub extern fn fz_user_css(ctx: [*c]fz_context) [*c]const u8;
pub extern fn fz_set_user_css(ctx: [*c]fz_context, text: [*c]const u8) void;
pub extern fn fz_use_document_css(ctx: [*c]fz_context) c_int;
pub extern fn fz_set_use_document_css(ctx: [*c]fz_context, use: c_int) void;
pub extern fn fz_enable_icc(ctx: [*c]fz_context) void;
pub extern fn fz_disable_icc(ctx: [*c]fz_context) void;
pub extern fn fz_malloc(ctx: [*c]fz_context, size: usize) ?*anyopaque;
pub extern fn fz_calloc(ctx: [*c]fz_context, count: usize, size: usize) ?*anyopaque;
pub extern fn fz_realloc(ctx: [*c]fz_context, p: ?*anyopaque, size: usize) ?*anyopaque;
pub extern fn fz_free(ctx: [*c]fz_context, p: ?*anyopaque) void;
pub extern fn fz_malloc_no_throw(ctx: [*c]fz_context, size: usize) ?*anyopaque;
pub extern fn fz_calloc_no_throw(ctx: [*c]fz_context, count: usize, size: usize) ?*anyopaque;
pub extern fn fz_realloc_no_throw(ctx: [*c]fz_context, p: ?*anyopaque, size: usize) ?*anyopaque;
pub extern fn fz_strdup(ctx: [*c]fz_context, s: [*c]const u8) [*c]u8;
pub extern fn fz_memrnd(ctx: [*c]fz_context, block: [*c]u8, len: c_int) void;
pub extern fn fz_var_imp(?*anyopaque) void;
pub extern fn fz_push_try(ctx: [*c]fz_context) [*c]fz_jmp_buf;
pub extern fn fz_do_try(ctx: [*c]fz_context) c_int;
pub extern fn fz_do_always(ctx: [*c]fz_context) c_int;
pub extern fn fz_do_catch(ctx: [*c]fz_context) c_int;
pub const fz_error_stack_slot = extern struct {
    buffer: fz_jmp_buf,
    state: c_int,
    code: c_int,
    padding: [24]u8,
};
pub const fz_error_context = extern struct {
    top: [*c]fz_error_stack_slot,
    stack: [256]fz_error_stack_slot,
    padding: fz_error_stack_slot,
    stack_base: [*c]fz_error_stack_slot,
    errcode: c_int,
    print_user: ?*anyopaque,
    print: ?fn (?*anyopaque, [*c]const u8) callconv(.C) void,
    message: [256]u8,
};
pub const fz_warn_context = extern struct {
    print_user: ?*anyopaque,
    print: ?fn (?*anyopaque, [*c]const u8) callconv(.C) void,
    count: c_int,
    message: [256]u8,
};
pub const fz_aa_context = extern struct {
    hscale: c_int,
    vscale: c_int,
    scale: c_int,
    bits: c_int,
    text_bits: c_int,
    min_line_width: f32,
};
pub extern fn fz_new_context_imp(alloc: [*c]const fz_alloc_context, locks: [*c]const fz_locks_context, max_store: usize, version: [*c]const u8) [*c]fz_context;
pub fn fz_lock(arg_ctx: [*c]fz_context, arg_lock: c_int) callconv(.C) void {
    var ctx = arg_ctx;
    var lock = arg_lock;
    fz_lock_debug_lock(ctx, lock);
    ctx.*.locks.lock.?(ctx.*.locks.user, lock);
}
pub fn fz_unlock(arg_ctx: [*c]fz_context, arg_lock: c_int) callconv(.C) void {
    var ctx = arg_ctx;
    var lock = arg_lock;
    fz_lock_debug_unlock(ctx, lock);
    ctx.*.locks.unlock.?(ctx.*.locks.user, lock);
}
pub fn fz_keep_imp(arg_ctx: [*c]fz_context, arg_p: ?*anyopaque, arg_refs: [*c]c_int) callconv(.C) ?*anyopaque {
    var ctx = arg_ctx;
    var p = arg_p;
    var refs = arg_refs;
    if (p != null) {
        _ = @as(c_int, 0);
        fz_lock(ctx, FZ_LOCK_ALLOC);
        if (refs.* > @as(c_int, 0)) {
            _ = p;
            refs.* += 1;
        }
        fz_unlock(ctx, FZ_LOCK_ALLOC);
    }
    return p;
}
pub fn fz_keep_imp_locked(arg_ctx: [*c]fz_context, arg_p: ?*anyopaque, arg_refs: [*c]c_int) callconv(.C) ?*anyopaque {
    var ctx = arg_ctx;
    _ = ctx;
    var p = arg_p;
    var refs = arg_refs;
    if (p != null) {
        _ = @as(c_int, 0);
        if (refs.* > @as(c_int, 0)) {
            _ = p;
            refs.* += 1;
        }
    }
    return p;
}
pub fn fz_keep_imp8(arg_ctx: [*c]fz_context, arg_p: ?*anyopaque, arg_refs: [*c]i8) callconv(.C) ?*anyopaque {
    var ctx = arg_ctx;
    var p = arg_p;
    var refs = arg_refs;
    if (p != null) {
        _ = @as(c_int, 0);
        fz_lock(ctx, FZ_LOCK_ALLOC);
        if (@bitCast(c_int, @as(c_int, refs.*)) > @as(c_int, 0)) {
            _ = p;
            refs.* += 1;
        }
        fz_unlock(ctx, FZ_LOCK_ALLOC);
    }
    return p;
}
pub fn fz_keep_imp16(arg_ctx: [*c]fz_context, arg_p: ?*anyopaque, arg_refs: [*c]i16) callconv(.C) ?*anyopaque {
    var ctx = arg_ctx;
    var p = arg_p;
    var refs = arg_refs;
    if (p != null) {
        _ = @as(c_int, 0);
        fz_lock(ctx, FZ_LOCK_ALLOC);
        if (@bitCast(c_int, @as(c_int, refs.*)) > @as(c_int, 0)) {
            _ = p;
            refs.* += 1;
        }
        fz_unlock(ctx, FZ_LOCK_ALLOC);
    }
    return p;
}
pub fn fz_drop_imp(arg_ctx: [*c]fz_context, arg_p: ?*anyopaque, arg_refs: [*c]c_int) callconv(.C) c_int {
    var ctx = arg_ctx;
    var p = arg_p;
    var refs = arg_refs;
    if (p != null) {
        var drop: c_int = undefined;
        _ = @as(c_int, 0);
        fz_lock(ctx, FZ_LOCK_ALLOC);
        if (refs.* > @as(c_int, 0)) {
            _ = p;
            drop = @boolToInt((blk: {
                const ref = &refs.*;
                ref.* -= 1;
                break :blk ref.*;
            }) == @as(c_int, 0));
        } else {
            drop = 0;
        }
        fz_unlock(ctx, FZ_LOCK_ALLOC);
        return drop;
    }
    return 0;
}
pub fn fz_drop_imp8(arg_ctx: [*c]fz_context, arg_p: ?*anyopaque, arg_refs: [*c]i8) callconv(.C) c_int {
    var ctx = arg_ctx;
    var p = arg_p;
    var refs = arg_refs;
    if (p != null) {
        var drop: c_int = undefined;
        _ = @as(c_int, 0);
        fz_lock(ctx, FZ_LOCK_ALLOC);
        if (@bitCast(c_int, @as(c_int, refs.*)) > @as(c_int, 0)) {
            _ = p;
            drop = @boolToInt(@bitCast(c_int, @as(c_int, blk: {
                const ref = &refs.*;
                ref.* -= 1;
                break :blk ref.*;
            })) == @as(c_int, 0));
        } else {
            drop = 0;
        }
        fz_unlock(ctx, FZ_LOCK_ALLOC);
        return drop;
    }
    return 0;
}
pub fn fz_drop_imp16(arg_ctx: [*c]fz_context, arg_p: ?*anyopaque, arg_refs: [*c]i16) callconv(.C) c_int {
    var ctx = arg_ctx;
    var p = arg_p;
    var refs = arg_refs;
    if (p != null) {
        var drop: c_int = undefined;
        _ = @as(c_int, 0);
        fz_lock(ctx, FZ_LOCK_ALLOC);
        if (@bitCast(c_int, @as(c_int, refs.*)) > @as(c_int, 0)) {
            _ = p;
            drop = @boolToInt(@bitCast(c_int, @as(c_int, blk: {
                const ref = &refs.*;
                ref.* -= 1;
                break :blk ref.*;
            })) == @as(c_int, 0));
        } else {
            drop = 0;
        }
        fz_unlock(ctx, FZ_LOCK_ALLOC);
        return drop;
    }
    return 0;
}
pub const fz_buffer = extern struct {
    refs: c_int,
    data: [*c]u8,
    cap: usize,
    len: usize,
    unused_bits: c_int,
    shared: c_int,
};
pub extern fn fz_keep_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) [*c]fz_buffer;
pub extern fn fz_drop_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) void;
pub extern fn fz_buffer_storage(ctx: [*c]fz_context, buf: [*c]fz_buffer, datap: [*c][*c]u8) usize;
pub extern fn fz_string_from_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) [*c]const u8;
pub extern fn fz_new_buffer(ctx: [*c]fz_context, capacity: usize) [*c]fz_buffer;
pub extern fn fz_new_buffer_from_data(ctx: [*c]fz_context, data: [*c]u8, size: usize) [*c]fz_buffer;
pub extern fn fz_new_buffer_from_shared_data(ctx: [*c]fz_context, data: [*c]const u8, size: usize) ?*fz_buffer;
pub extern fn fz_new_buffer_from_copied_data(ctx: [*c]fz_context, data: [*c]const u8, size: usize) [*c]fz_buffer;
pub extern fn fz_new_buffer_from_base64(ctx: [*c]fz_context, data: [*c]const u8, size: usize) [*c]fz_buffer;
pub extern fn fz_resize_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer, capacity: usize) void;
pub extern fn fz_grow_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) void;
pub extern fn fz_trim_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) void;
pub extern fn fz_clear_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) void;
pub extern fn fz_append_buffer(ctx: [*c]fz_context, destination: [*c]fz_buffer, source: [*c]fz_buffer) void;
pub extern fn fz_append_data(ctx: [*c]fz_context, buf: [*c]fz_buffer, data: ?*const anyopaque, len: usize) void;
pub extern fn fz_append_string(ctx: [*c]fz_context, buf: [*c]fz_buffer, data: [*c]const u8) void;
pub extern fn fz_append_byte(ctx: [*c]fz_context, buf: [*c]fz_buffer, c: c_int) void;
pub extern fn fz_append_rune(ctx: [*c]fz_context, buf: [*c]fz_buffer, c: c_int) void;
pub extern fn fz_append_int32_le(ctx: [*c]fz_context, buf: [*c]fz_buffer, x: c_int) void;
pub extern fn fz_append_int16_le(ctx: [*c]fz_context, buf: [*c]fz_buffer, x: c_int) void;
pub extern fn fz_append_int32_be(ctx: [*c]fz_context, buf: [*c]fz_buffer, x: c_int) void;
pub extern fn fz_append_int16_be(ctx: [*c]fz_context, buf: [*c]fz_buffer, x: c_int) void;
pub extern fn fz_append_bits(ctx: [*c]fz_context, buf: [*c]fz_buffer, value: c_int, count: c_int) void;
pub extern fn fz_append_bits_pad(ctx: [*c]fz_context, buf: [*c]fz_buffer) void;
pub extern fn fz_append_pdf_string(ctx: [*c]fz_context, buffer: [*c]fz_buffer, text: [*c]const u8) void;
pub extern fn fz_append_printf(ctx: [*c]fz_context, buffer: [*c]fz_buffer, fmt: [*c]const u8, ...) void;
pub extern fn fz_append_vprintf(ctx: [*c]fz_context, buffer: [*c]fz_buffer, fmt: [*c]const u8, args: [*c]struct___va_list_tag) void;
pub extern fn fz_terminate_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) void;
pub extern fn fz_md5_buffer(ctx: [*c]fz_context, buffer: [*c]fz_buffer, digest: [*c]u8) void;
pub extern fn fz_buffer_extract(ctx: [*c]fz_context, buf: [*c]fz_buffer, data: [*c][*c]u8) usize;
pub extern fn fz_strnlen(s: [*c]const u8, maxlen: usize) usize;
pub extern fn fz_strsep(stringp: [*c][*c]u8, delim: [*c]const u8) [*c]u8;
pub extern fn fz_strlcpy(dst: [*c]u8, src: [*c]const u8, n: usize) usize;
pub extern fn fz_strlcat(dst: [*c]u8, src: [*c]const u8, n: usize) usize;
pub extern fn fz_memmem(haystack: ?*const anyopaque, haystacklen: usize, needle: ?*const anyopaque, needlelen: usize) ?*anyopaque;
pub extern fn fz_dirname(dir: [*c]u8, path: [*c]const u8, dirsize: usize) void;
pub extern fn fz_urldecode(url: [*c]u8) [*c]u8;
pub extern fn fz_format_output_path(ctx: [*c]fz_context, path: [*c]u8, size: usize, fmt: [*c]const u8, page: c_int) void;
pub extern fn fz_cleanname(name: [*c]u8) [*c]u8;
pub extern fn fz_realpath(path: [*c]const u8, resolved_path: [*c]u8) [*c]u8;
pub extern fn fz_strcasecmp(a: [*c]const u8, b: [*c]const u8) c_int;
pub extern fn fz_strncasecmp(a: [*c]const u8, b: [*c]const u8, n: usize) c_int;
pub const FZ_UTFMAX: c_int = 4;
const enum_unnamed_6 = c_uint;
pub extern fn fz_chartorune(rune: [*c]c_int, str: [*c]const u8) c_int;
pub extern fn fz_runetochar(str: [*c]u8, rune: c_int) c_int;
pub extern fn fz_runelen(rune: c_int) c_int;
pub extern fn fz_runeidx(str: [*c]const u8, p: [*c]const u8) c_int;
pub extern fn fz_runeptr(str: [*c]const u8, idx: c_int) [*c]const u8;
pub extern fn fz_utflen(s: [*c]const u8) c_int;
pub extern fn fz_strtof(s: [*c]const u8, es: [*c][*c]u8) f32;
pub extern fn fz_grisu(f: f32, s: [*c]u8, exp: [*c]c_int) c_int;
pub extern fn fz_is_page_range(ctx: [*c]fz_context, s: [*c]const u8) c_int;
pub extern fn fz_parse_page_range(ctx: [*c]fz_context, s: [*c]const u8, a: [*c]c_int, b: [*c]c_int, n: c_int) [*c]const u8;
pub extern fn fz_tolower(c: c_int) c_int;
pub extern fn fz_toupper(c: c_int) c_int;
pub extern fn fz_file_exists(ctx: [*c]fz_context, path: [*c]const u8) c_int;
pub extern fn fz_open_file(ctx: [*c]fz_context, filename: [*c]const u8) [*c]fz_stream;
pub extern fn fz_open_memory(ctx: [*c]fz_context, data: [*c]const u8, len: usize) [*c]fz_stream;
pub extern fn fz_open_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) [*c]fz_stream;
pub extern fn fz_open_leecher(ctx: [*c]fz_context, chain: [*c]fz_stream, buf: [*c]fz_buffer) [*c]fz_stream;
pub extern fn fz_keep_stream(ctx: [*c]fz_context, stm: [*c]fz_stream) [*c]fz_stream;
pub extern fn fz_drop_stream(ctx: [*c]fz_context, stm: [*c]fz_stream) void;
pub extern fn fz_tell(ctx: [*c]fz_context, stm: [*c]fz_stream) i64;
pub extern fn fz_seek(ctx: [*c]fz_context, stm: [*c]fz_stream, offset: i64, whence: c_int) void;
pub extern fn fz_read(ctx: [*c]fz_context, stm: [*c]fz_stream, data: [*c]u8, len: usize) usize;
pub extern fn fz_skip(ctx: [*c]fz_context, stm: [*c]fz_stream, len: usize) usize;
pub extern fn fz_read_all(ctx: [*c]fz_context, stm: [*c]fz_stream, initial: usize) [*c]fz_buffer;
pub extern fn fz_read_file(ctx: [*c]fz_context, filename: [*c]const u8) [*c]fz_buffer;
pub extern fn fz_read_uint16(ctx: [*c]fz_context, stm: [*c]fz_stream) u16;
pub extern fn fz_read_uint24(ctx: [*c]fz_context, stm: [*c]fz_stream) u32;
pub extern fn fz_read_uint32(ctx: [*c]fz_context, stm: [*c]fz_stream) u32;
pub extern fn fz_read_uint64(ctx: [*c]fz_context, stm: [*c]fz_stream) u64;
pub extern fn fz_read_uint16_le(ctx: [*c]fz_context, stm: [*c]fz_stream) u16;
pub extern fn fz_read_uint24_le(ctx: [*c]fz_context, stm: [*c]fz_stream) u32;
pub extern fn fz_read_uint32_le(ctx: [*c]fz_context, stm: [*c]fz_stream) u32;
pub extern fn fz_read_uint64_le(ctx: [*c]fz_context, stm: [*c]fz_stream) u64;
pub extern fn fz_read_int16(ctx: [*c]fz_context, stm: [*c]fz_stream) i16;
pub extern fn fz_read_int32(ctx: [*c]fz_context, stm: [*c]fz_stream) i32;
pub extern fn fz_read_int64(ctx: [*c]fz_context, stm: [*c]fz_stream) i64;
pub extern fn fz_read_int16_le(ctx: [*c]fz_context, stm: [*c]fz_stream) i16;
pub extern fn fz_read_int32_le(ctx: [*c]fz_context, stm: [*c]fz_stream) i32;
pub extern fn fz_read_int64_le(ctx: [*c]fz_context, stm: [*c]fz_stream) i64;
pub extern fn fz_read_float_le(ctx: [*c]fz_context, stm: [*c]fz_stream) f32;
pub extern fn fz_read_float(ctx: [*c]fz_context, stm: [*c]fz_stream) f32;
pub extern fn fz_read_string(ctx: [*c]fz_context, stm: [*c]fz_stream, buffer: [*c]u8, len: c_int) void;
pub extern fn fz_new_stream(ctx: [*c]fz_context, state: ?*anyopaque, next: ?fz_stream_next_fn, drop: ?fz_stream_drop_fn) [*c]fz_stream;
pub extern fn fz_read_best(ctx: [*c]fz_context, stm: [*c]fz_stream, initial: usize, truncated: [*c]c_int) [*c]fz_buffer;
pub extern fn fz_read_line(ctx: [*c]fz_context, stm: [*c]fz_stream, buf: [*c]u8, max: usize) [*c]u8;
pub extern fn fz_skip_string(ctx: [*c]fz_context, stm: [*c]fz_stream, str: [*c]const u8) c_int;
pub extern fn fz_skip_space(ctx: [*c]fz_context, stm: [*c]fz_stream) void;
pub extern fn fz_open_file_ptr_no_close(ctx: [*c]fz_context, file: [*c]FILE) [*c]fz_stream;
pub extern fn fz_new_output(ctx: [*c]fz_context, bufsiz: c_int, state: ?*anyopaque, write: ?fz_output_write_fn, close: ?fz_output_close_fn, drop: ?fz_output_drop_fn) [*c]fz_output;
pub extern fn fz_new_output_with_path([*c]fz_context, filename: [*c]const u8, append: c_int) [*c]fz_output;
pub extern fn fz_new_output_with_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer) [*c]fz_output;
pub extern fn fz_stdout(ctx: [*c]fz_context) [*c]fz_output;
pub extern fn fz_stderr(ctx: [*c]fz_context) [*c]fz_output;
pub extern fn fz_set_stddbg(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_stddbg(ctx: [*c]fz_context) [*c]fz_output;
pub extern fn fz_write_printf(ctx: [*c]fz_context, out: [*c]fz_output, fmt: [*c]const u8, ...) void;
pub extern fn fz_write_vprintf(ctx: [*c]fz_context, out: [*c]fz_output, fmt: [*c]const u8, ap: [*c]struct___va_list_tag) void;
pub extern fn fz_seek_output(ctx: [*c]fz_context, out: [*c]fz_output, off: i64, whence: c_int) void;
pub extern fn fz_tell_output(ctx: [*c]fz_context, out: [*c]fz_output) i64;
pub extern fn fz_flush_output(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_close_output([*c]fz_context, [*c]fz_output) void;
pub extern fn fz_drop_output([*c]fz_context, [*c]fz_output) void;
pub extern fn fz_output_supports_stream(ctx: [*c]fz_context, out: [*c]fz_output) c_int;
pub extern fn fz_stream_from_output([*c]fz_context, [*c]fz_output) [*c]fz_stream;
pub extern fn fz_truncate_output([*c]fz_context, [*c]fz_output) void;
pub extern fn fz_write_data(ctx: [*c]fz_context, out: [*c]fz_output, data: ?*const anyopaque, size: usize) void;
pub extern fn fz_write_string(ctx: [*c]fz_context, out: [*c]fz_output, s: [*c]const u8) void;
pub extern fn fz_write_int32_be(ctx: [*c]fz_context, out: [*c]fz_output, x: c_int) void;
pub extern fn fz_write_int32_le(ctx: [*c]fz_context, out: [*c]fz_output, x: c_int) void;
pub extern fn fz_write_uint32_be(ctx: [*c]fz_context, out: [*c]fz_output, x: c_uint) void;
pub extern fn fz_write_uint32_le(ctx: [*c]fz_context, out: [*c]fz_output, x: c_uint) void;
pub extern fn fz_write_int16_be(ctx: [*c]fz_context, out: [*c]fz_output, x: c_int) void;
pub extern fn fz_write_int16_le(ctx: [*c]fz_context, out: [*c]fz_output, x: c_int) void;
pub extern fn fz_write_uint16_be(ctx: [*c]fz_context, out: [*c]fz_output, x: c_uint) void;
pub extern fn fz_write_uint16_le(ctx: [*c]fz_context, out: [*c]fz_output, x: c_uint) void;
pub extern fn fz_write_char(ctx: [*c]fz_context, out: [*c]fz_output, x: u8) void;
pub extern fn fz_write_byte(ctx: [*c]fz_context, out: [*c]fz_output, x: u8) void;
pub extern fn fz_write_float_be(ctx: [*c]fz_context, out: [*c]fz_output, f: f32) void;
pub extern fn fz_write_float_le(ctx: [*c]fz_context, out: [*c]fz_output, f: f32) void;
pub extern fn fz_write_rune(ctx: [*c]fz_context, out: [*c]fz_output, rune: c_int) void;
pub extern fn fz_write_base64(ctx: [*c]fz_context, out: [*c]fz_output, data: [*c]const u8, size: usize, newline: c_int) void;
pub extern fn fz_write_base64_buffer(ctx: [*c]fz_context, out: [*c]fz_output, data: [*c]fz_buffer, newline: c_int) void;
pub extern fn fz_format_string(ctx: [*c]fz_context, user: ?*anyopaque, emit: ?fn ([*c]fz_context, ?*anyopaque, c_int) callconv(.C) void, fmt: [*c]const u8, args: [*c]struct___va_list_tag) void;
pub extern fn fz_vsnprintf(buffer: [*c]u8, space: usize, fmt: [*c]const u8, args: [*c]struct___va_list_tag) usize;
pub extern fn fz_snprintf(buffer: [*c]u8, space: usize, fmt: [*c]const u8, ...) usize;
pub extern fn fz_asprintf(ctx: [*c]fz_context, fmt: [*c]const u8, ...) [*c]u8;
pub extern fn fz_save_buffer(ctx: [*c]fz_context, buf: [*c]fz_buffer, filename: [*c]const u8) void;
pub extern fn fz_new_asciihex_output(ctx: [*c]fz_context, chain: [*c]fz_output) [*c]fz_output;
pub extern fn fz_new_ascii85_output(ctx: [*c]fz_context, chain: [*c]fz_output) [*c]fz_output;
pub extern fn fz_new_rle_output(ctx: [*c]fz_context, chain: [*c]fz_output) [*c]fz_output;
pub extern fn fz_new_arc4_output(ctx: [*c]fz_context, chain: [*c]fz_output, key: [*c]u8, keylen: usize) [*c]fz_output;
pub extern fn fz_new_deflate_output(ctx: [*c]fz_context, chain: [*c]fz_output, effort: c_int, raw: c_int) [*c]fz_output;
pub extern fn fz_log(ctx: [*c]fz_context, fmt: [*c]const u8, ...) void;
pub extern fn fz_log_module(ctx: [*c]fz_context, module: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn fz_new_log_for_module(ctx: [*c]fz_context, module: [*c]const u8) [*c]fz_output;
pub const fz_md5 = extern struct {
    lo: u32,
    hi: u32,
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    buffer: [64]u8,
};
pub extern fn fz_md5_init(state: [*c]fz_md5) void;
pub extern fn fz_md5_update(state: [*c]fz_md5, input: [*c]const u8, inlen: usize) void;
pub extern fn fz_md5_update_int64(state: [*c]fz_md5, i: i64) void;
pub extern fn fz_md5_final(state: [*c]fz_md5, digest: [*c]u8) void;
const union_unnamed_7 = extern union {
    u8: [64]u8,
    u32: [16]c_uint,
};
pub const fz_sha256 = extern struct {
    state: [8]c_uint,
    count: [2]c_uint,
    buffer: union_unnamed_7,
};
pub extern fn fz_sha256_init(state: [*c]fz_sha256) void;
pub extern fn fz_sha256_update(state: [*c]fz_sha256, input: [*c]const u8, inlen: usize) void;
pub extern fn fz_sha256_final(state: [*c]fz_sha256, digest: [*c]u8) void;
const union_unnamed_8 = extern union {
    u8: [128]u8,
    u64: [16]u64,
};
pub const fz_sha512 = extern struct {
    state: [8]u64,
    count: [2]c_uint,
    buffer: union_unnamed_8,
};
pub extern fn fz_sha512_init(state: [*c]fz_sha512) void;
pub extern fn fz_sha512_update(state: [*c]fz_sha512, input: [*c]const u8, inlen: usize) void;
pub extern fn fz_sha512_final(state: [*c]fz_sha512, digest: [*c]u8) void;
pub const fz_sha384 = fz_sha512;
pub extern fn fz_sha384_init(state: [*c]fz_sha384) void;
pub extern fn fz_sha384_update(state: [*c]fz_sha384, input: [*c]const u8, inlen: usize) void;
pub extern fn fz_sha384_final(state: [*c]fz_sha384, digest: [*c]u8) void;
pub const fz_arc4 = extern struct {
    x: c_uint,
    y: c_uint,
    state: [256]u8,
};
pub extern fn fz_arc4_init(state: [*c]fz_arc4, key: [*c]const u8, len: usize) void;
pub extern fn fz_arc4_encrypt(state: [*c]fz_arc4, dest: [*c]u8, src: [*c]const u8, len: usize) void;
pub extern fn fz_arc4_final(state: [*c]fz_arc4) void;
pub const fz_aes = extern struct {
    nr: c_int,
    rk: [*c]u32,
    buf: [68]u32,
};
pub extern fn fz_aes_setkey_enc(ctx: [*c]fz_aes, key: [*c]const u8, keysize: c_int) c_int;
pub extern fn fz_aes_setkey_dec(ctx: [*c]fz_aes, key: [*c]const u8, keysize: c_int) c_int;
pub extern fn fz_aes_crypt_cbc(ctx: [*c]fz_aes, mode: c_int, length: usize, iv: [*c]u8, input: [*c]const u8, output: [*c]u8) void;
pub extern fn fz_getopt(nargc: c_int, nargv: [*c]const [*c]u8, ostr: [*c]const u8) c_int;
pub extern var fz_optind: c_int;
pub extern var fz_optarg: [*c]u8;
pub const struct_fz_hash_table = opaque {};
pub const fz_hash_table = struct_fz_hash_table;
pub const fz_hash_table_drop_fn = fn ([*c]fz_context, ?*anyopaque) callconv(.C) void;
pub extern fn fz_new_hash_table(ctx: [*c]fz_context, initialsize: c_int, keylen: c_int, lock: c_int, drop_val: ?fz_hash_table_drop_fn) ?*fz_hash_table;
pub extern fn fz_drop_hash_table(ctx: [*c]fz_context, table: ?*fz_hash_table) void;
pub extern fn fz_hash_find(ctx: [*c]fz_context, table: ?*fz_hash_table, key: ?*const anyopaque) ?*anyopaque;
pub extern fn fz_hash_insert(ctx: [*c]fz_context, table: ?*fz_hash_table, key: ?*const anyopaque, val: ?*anyopaque) ?*anyopaque;
pub extern fn fz_hash_remove(ctx: [*c]fz_context, table: ?*fz_hash_table, key: ?*const anyopaque) void;
pub const fz_hash_table_for_each_fn = fn ([*c]fz_context, ?*anyopaque, ?*anyopaque, c_int, ?*anyopaque) callconv(.C) void;
pub extern fn fz_hash_for_each(ctx: [*c]fz_context, table: ?*fz_hash_table, state: ?*anyopaque, callback: ?fz_hash_table_for_each_fn) void;
pub const fz_hash_table_filter_fn = fn ([*c]fz_context, ?*anyopaque, ?*anyopaque, c_int, ?*anyopaque) callconv(.C) c_int;
pub extern fn fz_hash_filter(ctx: [*c]fz_context, table: ?*fz_hash_table, state: ?*anyopaque, callback: ?fz_hash_table_filter_fn) void;
pub const struct_fz_pool = opaque {};
pub const fz_pool = struct_fz_pool;
pub extern fn fz_new_pool(ctx: [*c]fz_context) ?*fz_pool;
pub extern fn fz_pool_alloc(ctx: [*c]fz_context, pool: ?*fz_pool, size: usize) ?*anyopaque;
pub extern fn fz_pool_strdup(ctx: [*c]fz_context, pool: ?*fz_pool, s: [*c]const u8) [*c]u8;
pub extern fn fz_pool_size(ctx: [*c]fz_context, pool: ?*fz_pool) usize;
pub extern fn fz_drop_pool(ctx: [*c]fz_context, pool: ?*fz_pool) void;
pub const struct_fz_tree = opaque {};
pub const fz_tree = struct_fz_tree;
pub extern fn fz_tree_lookup(ctx: [*c]fz_context, node: ?*fz_tree, key: [*c]const u8) ?*anyopaque;
pub extern fn fz_tree_insert(ctx: [*c]fz_context, root: ?*fz_tree, key: [*c]const u8, value: ?*anyopaque) ?*fz_tree;
pub extern fn fz_drop_tree(ctx: [*c]fz_context, node: ?*fz_tree, dropfunc: ?fn ([*c]fz_context, ?*anyopaque) callconv(.C) void) void;
pub const FZ_BIDI_LTR: c_int = 0;
pub const FZ_BIDI_RTL: c_int = 1;
pub const FZ_BIDI_NEUTRAL: c_int = 2;
pub const fz_bidi_direction = c_uint;
pub const FZ_BIDI_CLASSIFY_WHITE_SPACE: c_int = 1;
pub const FZ_BIDI_REPLACE_TAB: c_int = 2;
pub const fz_bidi_flags = c_uint;
pub const fz_bidi_fragment_fn = fn ([*c]const u32, usize, c_int, c_int, ?*anyopaque) callconv(.C) void;
pub extern fn fz_bidi_fragment_text(ctx: [*c]fz_context, text: [*c]const u32, textlen: usize, baseDir: [*c]fz_bidi_direction, callback: ?fz_bidi_fragment_fn, arg: ?*anyopaque, flags: c_int) void;
pub const struct_fz_xml_doc = opaque {};
pub const fz_xml_doc = struct_fz_xml_doc;
pub const struct_fz_xml = opaque {};
pub const fz_xml = struct_fz_xml;
pub extern fn fz_parse_xml(ctx: [*c]fz_context, buf: [*c]fz_buffer, preserve_white: c_int) ?*fz_xml_doc;
pub extern fn fz_parse_xml_from_html5(ctx: [*c]fz_context, buf: [*c]fz_buffer) ?*fz_xml_doc;
pub extern fn fz_drop_xml(ctx: [*c]fz_context, xml: ?*fz_xml_doc) void;
pub extern fn fz_detach_xml(ctx: [*c]fz_context, xml: ?*fz_xml_doc, node: ?*fz_xml) void;
pub extern fn fz_xml_root(xml: ?*fz_xml_doc) ?*fz_xml;
pub extern fn fz_xml_prev(item: ?*fz_xml) ?*fz_xml;
pub extern fn fz_xml_next(item: ?*fz_xml) ?*fz_xml;
pub extern fn fz_xml_up(item: ?*fz_xml) ?*fz_xml;
pub extern fn fz_xml_down(item: ?*fz_xml) ?*fz_xml;
pub extern fn fz_xml_is_tag(item: ?*fz_xml, name: [*c]const u8) c_int;
pub extern fn fz_xml_tag(item: ?*fz_xml) [*c]u8;
pub extern fn fz_xml_att(item: ?*fz_xml, att: [*c]const u8) [*c]u8;
pub extern fn fz_xml_att_alt(item: ?*fz_xml, one: [*c]const u8, two: [*c]const u8) [*c]u8;
pub extern fn fz_xml_att_eq(item: ?*fz_xml, name: [*c]const u8, match: [*c]const u8) c_int;
pub extern fn fz_xml_text(item: ?*fz_xml) [*c]u8;
pub extern fn fz_debug_xml(item: ?*fz_xml, level: c_int) void;
pub extern fn fz_xml_find(item: ?*fz_xml, tag: [*c]const u8) ?*fz_xml;
pub extern fn fz_xml_find_next(item: ?*fz_xml, tag: [*c]const u8) ?*fz_xml;
pub extern fn fz_xml_find_down(item: ?*fz_xml, tag: [*c]const u8) ?*fz_xml;
pub extern fn fz_xml_find_match(item: ?*fz_xml, tag: [*c]const u8, att: [*c]const u8, match: [*c]const u8) ?*fz_xml;
pub extern fn fz_xml_find_next_match(item: ?*fz_xml, tag: [*c]const u8, att: [*c]const u8, match: [*c]const u8) ?*fz_xml;
pub extern fn fz_xml_find_down_match(item: ?*fz_xml, tag: [*c]const u8, att: [*c]const u8, match: [*c]const u8) ?*fz_xml;
pub const FZ_DEFLATE_NONE: c_int = 0;
pub const FZ_DEFLATE_BEST_SPEED: c_int = 1;
pub const FZ_DEFLATE_BEST: c_int = 9;
pub const FZ_DEFLATE_DEFAULT: c_int = -1;
pub const fz_deflate_level = c_int;
pub extern fn fz_deflate_bound(ctx: [*c]fz_context, size: usize) usize;
pub extern fn fz_deflate(ctx: [*c]fz_context, dest: [*c]u8, compressed_length: [*c]usize, source: [*c]const u8, source_length: usize, level: fz_deflate_level) void;
pub extern fn fz_new_deflated_data(ctx: [*c]fz_context, compressed_length: [*c]usize, source: [*c]const u8, source_length: usize, level: fz_deflate_level) [*c]u8;
pub extern fn fz_new_deflated_data_from_buffer(ctx: [*c]fz_context, compressed_length: [*c]usize, buffer: [*c]fz_buffer, level: fz_deflate_level) [*c]u8;
pub extern fn fz_compress_ccitt_fax_g3(ctx: [*c]fz_context, data: [*c]const u8, columns: c_int, rows: c_int) [*c]fz_buffer;
pub extern fn fz_compress_ccitt_fax_g4(ctx: [*c]fz_context, data: [*c]const u8, columns: c_int, rows: c_int) [*c]fz_buffer;
pub const fz_storable = struct_fz_storable;
pub const fz_store_drop_fn = fn ([*c]fz_context, [*c]fz_storable) callconv(.C) void;
pub const struct_fz_storable = extern struct {
    refs: c_int,
    drop: ?fz_store_drop_fn,
};
pub const fz_key_storable = extern struct {
    storable: fz_storable,
    store_key_refs: c_short,
};
pub extern fn fz_keep_storable([*c]fz_context, [*c]const fz_storable) ?*anyopaque;
pub extern fn fz_drop_storable([*c]fz_context, [*c]const fz_storable) void;
pub extern fn fz_keep_key_storable([*c]fz_context, [*c]const fz_key_storable) ?*anyopaque;
pub extern fn fz_drop_key_storable([*c]fz_context, [*c]const fz_key_storable) void;
pub extern fn fz_keep_key_storable_key([*c]fz_context, [*c]const fz_key_storable) ?*anyopaque;
pub extern fn fz_drop_key_storable_key([*c]fz_context, [*c]const fz_key_storable) void;
const struct_unnamed_10 = extern struct {
    ptr: ?*const anyopaque,
    i: c_int,
};
const struct_unnamed_11 = extern struct {
    ptr: ?*const anyopaque,
    i: c_int,
    r: fz_irect,
};
const struct_unnamed_12 = extern struct {
    id: c_int,
    has_shape: u8,
    has_group_alpha: u8,
    m: [4]f32,
    ptr: ?*anyopaque,
}; // third-party/mupdf/include/mupdf/fitz/store.h:231:17: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_13 = opaque {};
const union_unnamed_9 = extern union {
    pi: struct_unnamed_10,
    pir: struct_unnamed_11,
    im: struct_unnamed_12,
    link: struct_unnamed_13,
};
pub const fz_store_hash = extern struct {
    drop: ?fz_store_drop_fn,
    u: union_unnamed_9,
};
pub const fz_store_type = extern struct {
    name: [*c]const u8,
    make_hash_key: ?fn ([*c]fz_context, [*c]fz_store_hash, ?*anyopaque) callconv(.C) c_int,
    keep_key: ?fn ([*c]fz_context, ?*anyopaque) callconv(.C) ?*anyopaque,
    drop_key: ?fn ([*c]fz_context, ?*anyopaque) callconv(.C) void,
    cmp_key: ?fn ([*c]fz_context, ?*anyopaque, ?*anyopaque) callconv(.C) c_int,
    format_key: ?fn ([*c]fz_context, [*c]u8, usize, ?*anyopaque) callconv(.C) void,
    needs_reap: ?fn ([*c]fz_context, ?*anyopaque) callconv(.C) c_int,
};
pub extern fn fz_new_store_context(ctx: [*c]fz_context, max: usize) void;
pub extern fn fz_keep_store_context(ctx: [*c]fz_context) ?*fz_store;
pub extern fn fz_drop_store_context(ctx: [*c]fz_context) void;
pub extern fn fz_store_item(ctx: [*c]fz_context, key: ?*anyopaque, val: ?*anyopaque, itemsize: usize, @"type": [*c]const fz_store_type) ?*anyopaque;
pub extern fn fz_find_item(ctx: [*c]fz_context, drop: ?fz_store_drop_fn, key: ?*anyopaque, @"type": [*c]const fz_store_type) ?*anyopaque;
pub extern fn fz_remove_item(ctx: [*c]fz_context, drop: ?fz_store_drop_fn, key: ?*anyopaque, @"type": [*c]const fz_store_type) void;
pub extern fn fz_empty_store(ctx: [*c]fz_context) void;
pub extern fn fz_store_scavenge(ctx: [*c]fz_context, size: usize, phase: [*c]c_int) c_int;
pub extern fn fz_store_scavenge_external(ctx: [*c]fz_context, size: usize, phase: [*c]c_int) c_int;
pub extern fn fz_shrink_store(ctx: [*c]fz_context, percent: c_uint) c_int;
pub const fz_store_filter_fn = fn ([*c]fz_context, ?*anyopaque, ?*anyopaque) callconv(.C) c_int;
pub extern fn fz_filter_store(ctx: [*c]fz_context, @"fn": ?fz_store_filter_fn, arg: ?*anyopaque, @"type": [*c]const fz_store_type) void;
pub extern fn fz_debug_store(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_defer_reap_start(ctx: [*c]fz_context) void;
pub extern fn fz_defer_reap_end(ctx: [*c]fz_context) void;
pub const struct_fz_jbig2_globals = opaque {};
pub const fz_jbig2_globals = struct_fz_jbig2_globals;
pub const fz_range = extern struct {
    offset: i64,
    length: u64,
};
pub extern fn fz_open_null_filter(ctx: [*c]fz_context, chain: [*c]fz_stream, len: u64, offset: i64) [*c]fz_stream;
pub extern fn fz_open_range_filter(ctx: [*c]fz_context, chain: [*c]fz_stream, ranges: [*c]fz_range, nranges: c_int) [*c]fz_stream;
pub extern fn fz_open_endstream_filter(ctx: [*c]fz_context, chain: [*c]fz_stream, len: u64, offset: i64) [*c]fz_stream;
pub extern fn fz_open_concat(ctx: [*c]fz_context, max: c_int, pad: c_int) [*c]fz_stream;
pub extern fn fz_concat_push_drop(ctx: [*c]fz_context, concat: [*c]fz_stream, chain: [*c]fz_stream) void;
pub extern fn fz_open_arc4(ctx: [*c]fz_context, chain: [*c]fz_stream, key: [*c]u8, keylen: c_uint) [*c]fz_stream;
pub extern fn fz_open_aesd(ctx: [*c]fz_context, chain: [*c]fz_stream, key: [*c]u8, keylen: c_uint) [*c]fz_stream;
pub extern fn fz_open_a85d(ctx: [*c]fz_context, chain: [*c]fz_stream) [*c]fz_stream;
pub extern fn fz_open_ahxd(ctx: [*c]fz_context, chain: [*c]fz_stream) [*c]fz_stream;
pub extern fn fz_open_rld(ctx: [*c]fz_context, chain: [*c]fz_stream) [*c]fz_stream;
pub extern fn fz_open_dctd(ctx: [*c]fz_context, chain: [*c]fz_stream, color_transform: c_int, l2factor: c_int, jpegtables: [*c]fz_stream) [*c]fz_stream;
pub extern fn fz_open_faxd(ctx: [*c]fz_context, chain: [*c]fz_stream, k: c_int, end_of_line: c_int, encoded_byte_align: c_int, columns: c_int, rows: c_int, end_of_block: c_int, black_is_1: c_int) [*c]fz_stream;
pub extern fn fz_open_flated(ctx: [*c]fz_context, chain: [*c]fz_stream, window_bits: c_int) [*c]fz_stream;
pub extern fn fz_open_lzwd(ctx: [*c]fz_context, chain: [*c]fz_stream, early_change: c_int, min_bits: c_int, reverse_bits: c_int, old_tiff: c_int) [*c]fz_stream;
pub extern fn fz_open_predict(ctx: [*c]fz_context, chain: [*c]fz_stream, predictor: c_int, columns: c_int, colors: c_int, bpc: c_int) [*c]fz_stream;
pub extern fn fz_open_jbig2d(ctx: [*c]fz_context, chain: [*c]fz_stream, globals: ?*fz_jbig2_globals, embedded: c_int) [*c]fz_stream;
pub extern fn fz_load_jbig2_globals(ctx: [*c]fz_context, buf: [*c]fz_buffer) ?*fz_jbig2_globals;
pub extern fn fz_keep_jbig2_globals(ctx: [*c]fz_context, globals: ?*fz_jbig2_globals) ?*fz_jbig2_globals;
pub extern fn fz_drop_jbig2_globals(ctx: [*c]fz_context, globals: ?*fz_jbig2_globals) void;
pub extern fn fz_drop_jbig2_globals_imp(ctx: [*c]fz_context, globals: [*c]fz_storable) void;
pub extern fn fz_jbig2_globals_data(ctx: [*c]fz_context, globals: ?*fz_jbig2_globals) [*c]fz_buffer;
pub extern fn fz_open_sgilog16(ctx: [*c]fz_context, chain: [*c]fz_stream, w: c_int) [*c]fz_stream;
pub extern fn fz_open_sgilog24(ctx: [*c]fz_context, chain: [*c]fz_stream, w: c_int) [*c]fz_stream;
pub extern fn fz_open_sgilog32(ctx: [*c]fz_context, chain: [*c]fz_stream, w: c_int) [*c]fz_stream;
pub extern fn fz_open_thunder(ctx: [*c]fz_context, chain: [*c]fz_stream, w: c_int) [*c]fz_stream;
const struct_unnamed_15 = extern struct {
    color_transform: c_int,
};
const struct_unnamed_16 = extern struct {
    smask_in_data: c_int,
};
const struct_unnamed_17 = extern struct {
    globals: ?*fz_jbig2_globals,
    embedded: c_int,
};
const struct_unnamed_18 = extern struct {
    columns: c_int,
    rows: c_int,
    k: c_int,
    end_of_line: c_int,
    encoded_byte_align: c_int,
    end_of_block: c_int,
    black_is_1: c_int,
    damaged_rows_before_error: c_int,
};
const struct_unnamed_19 = extern struct {
    columns: c_int,
    colors: c_int,
    predictor: c_int,
    bpc: c_int,
};
const struct_unnamed_20 = extern struct {
    columns: c_int,
    colors: c_int,
    predictor: c_int,
    bpc: c_int,
    early_change: c_int,
};
const union_unnamed_14 = extern union {
    jpeg: struct_unnamed_15,
    jpx: struct_unnamed_16,
    jbig2: struct_unnamed_17,
    fax: struct_unnamed_18,
    flate: struct_unnamed_19,
    lzw: struct_unnamed_20,
};
pub const fz_compression_params = extern struct {
    type: c_int,
    u: union_unnamed_14,
};
pub const fz_compressed_buffer = extern struct {
    params: fz_compression_params,
    buffer: [*c]fz_buffer,
};
pub extern fn fz_compressed_buffer_size(buffer: [*c]fz_compressed_buffer) usize;
pub extern fn fz_open_compressed_buffer(ctx: [*c]fz_context, [*c]fz_compressed_buffer) [*c]fz_stream;
pub extern fn fz_open_image_decomp_stream_from_buffer(ctx: [*c]fz_context, [*c]fz_compressed_buffer, l2factor: [*c]c_int) [*c]fz_stream;
pub extern fn fz_open_image_decomp_stream(ctx: [*c]fz_context, [*c]fz_stream, [*c]fz_compression_params, l2factor: [*c]c_int) [*c]fz_stream;
pub extern fn fz_recognize_image_format(ctx: [*c]fz_context, p: [*c]u8) c_int;
pub const FZ_IMAGE_UNKNOWN: c_int = 0;
pub const FZ_IMAGE_RAW: c_int = 1;
pub const FZ_IMAGE_FAX: c_int = 2;
pub const FZ_IMAGE_FLATE: c_int = 3;
pub const FZ_IMAGE_LZW: c_int = 4;
pub const FZ_IMAGE_RLD: c_int = 5;
pub const FZ_IMAGE_BMP: c_int = 6;
pub const FZ_IMAGE_GIF: c_int = 7;
pub const FZ_IMAGE_JBIG2: c_int = 8;
pub const FZ_IMAGE_JPEG: c_int = 9;
pub const FZ_IMAGE_JPX: c_int = 10;
pub const FZ_IMAGE_JXR: c_int = 11;
pub const FZ_IMAGE_PNG: c_int = 12;
pub const FZ_IMAGE_PNM: c_int = 13;
pub const FZ_IMAGE_TIFF: c_int = 14;
const enum_unnamed_21 = c_uint;
pub extern fn fz_drop_compressed_buffer(ctx: [*c]fz_context, buf: [*c]fz_compressed_buffer) void;
pub const fz_archive = struct_fz_archive;
pub const struct_fz_archive = extern struct {
    file: [*c]fz_stream,
    format: [*c]const u8,
    drop_archive: ?fn ([*c]fz_context, [*c]fz_archive) callconv(.C) void,
    count_entries: ?fn ([*c]fz_context, [*c]fz_archive) callconv(.C) c_int,
    list_entry: ?fn ([*c]fz_context, [*c]fz_archive, c_int) callconv(.C) [*c]const u8,
    has_entry: ?fn ([*c]fz_context, [*c]fz_archive, [*c]const u8) callconv(.C) c_int,
    read_entry: ?fn ([*c]fz_context, [*c]fz_archive, [*c]const u8) callconv(.C) [*c]fz_buffer,
    open_entry: ?fn ([*c]fz_context, [*c]fz_archive, [*c]const u8) callconv(.C) [*c]fz_stream,
};
pub extern fn fz_open_archive(ctx: [*c]fz_context, filename: [*c]const u8) [*c]fz_archive;
pub extern fn fz_open_archive_with_stream(ctx: [*c]fz_context, file: [*c]fz_stream) [*c]fz_archive;
pub extern fn fz_open_directory(ctx: [*c]fz_context, path: [*c]const u8) [*c]fz_archive;
pub extern fn fz_is_directory(ctx: [*c]fz_context, path: [*c]const u8) c_int;
pub extern fn fz_drop_archive(ctx: [*c]fz_context, arch: [*c]fz_archive) void;
pub extern fn fz_archive_format(ctx: [*c]fz_context, arch: [*c]fz_archive) [*c]const u8;
pub extern fn fz_count_archive_entries(ctx: [*c]fz_context, arch: [*c]fz_archive) c_int;
pub extern fn fz_list_archive_entry(ctx: [*c]fz_context, arch: [*c]fz_archive, idx: c_int) [*c]const u8;
pub extern fn fz_has_archive_entry(ctx: [*c]fz_context, arch: [*c]fz_archive, name: [*c]const u8) c_int;
pub extern fn fz_open_archive_entry(ctx: [*c]fz_context, arch: [*c]fz_archive, name: [*c]const u8) [*c]fz_stream;
pub extern fn fz_read_archive_entry(ctx: [*c]fz_context, arch: [*c]fz_archive, name: [*c]const u8) [*c]fz_buffer;
pub extern fn fz_is_tar_archive(ctx: [*c]fz_context, file: [*c]fz_stream) c_int;
pub extern fn fz_open_tar_archive(ctx: [*c]fz_context, filename: [*c]const u8) [*c]fz_archive;
pub extern fn fz_open_tar_archive_with_stream(ctx: [*c]fz_context, file: [*c]fz_stream) [*c]fz_archive;
pub extern fn fz_is_zip_archive(ctx: [*c]fz_context, file: [*c]fz_stream) c_int;
pub extern fn fz_open_zip_archive(ctx: [*c]fz_context, path: [*c]const u8) [*c]fz_archive;
pub extern fn fz_open_zip_archive_with_stream(ctx: [*c]fz_context, file: [*c]fz_stream) [*c]fz_archive;
pub const struct_fz_zip_writer = opaque {};
pub const fz_zip_writer = struct_fz_zip_writer;
pub extern fn fz_new_zip_writer(ctx: [*c]fz_context, filename: [*c]const u8) ?*fz_zip_writer;
pub extern fn fz_new_zip_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output) ?*fz_zip_writer;
pub extern fn fz_write_zip_entry(ctx: [*c]fz_context, zip: ?*fz_zip_writer, name: [*c]const u8, buf: [*c]fz_buffer, compress: c_int) void;
pub extern fn fz_close_zip_writer(ctx: [*c]fz_context, zip: ?*fz_zip_writer) void;
pub extern fn fz_drop_zip_writer(ctx: [*c]fz_context, zip: ?*fz_zip_writer) void;
pub extern fn fz_new_archive_of_size(ctx: [*c]fz_context, file: [*c]fz_stream, size: c_int) [*c]fz_archive;
pub const struct_fz_icc_profile = opaque {};
pub const fz_icc_profile = struct_fz_icc_profile;
pub const FZ_COLORSPACE_NONE: c_int = 0;
pub const FZ_COLORSPACE_GRAY: c_int = 1;
pub const FZ_COLORSPACE_RGB: c_int = 2;
pub const FZ_COLORSPACE_BGR: c_int = 3;
pub const FZ_COLORSPACE_CMYK: c_int = 4;
pub const FZ_COLORSPACE_LAB: c_int = 5;
pub const FZ_COLORSPACE_INDEXED: c_int = 6;
pub const FZ_COLORSPACE_SEPARATION: c_int = 7;
pub const enum_fz_colorspace_type = c_uint;
const struct_unnamed_23 = extern struct {
    buffer: [*c]fz_buffer,
    md5: [16]u8,
    profile: ?*fz_icc_profile,
};
pub const fz_colorspace = struct_fz_colorspace;
const struct_unnamed_24 = extern struct {
    base: [*c]fz_colorspace,
    high: c_int,
    lookup: [*c]u8,
};
const struct_unnamed_25 = extern struct {
    base: [*c]fz_colorspace,
    eval: ?fn ([*c]fz_context, ?*anyopaque, [*c]const f32, c_int, [*c]f32, c_int) callconv(.C) void,
    drop: ?fn ([*c]fz_context, ?*anyopaque) callconv(.C) void,
    tint: ?*anyopaque,
    colorant: [32][*c]u8,
};
const union_unnamed_22 = extern union {
    icc: struct_unnamed_23,
    indexed: struct_unnamed_24,
    separation: struct_unnamed_25,
};
pub const struct_fz_colorspace = extern struct {
    key_storable: fz_key_storable,
    type: enum_fz_colorspace_type,
    flags: c_int,
    n: c_int,
    name: [*c]u8,
    u: union_unnamed_22,
};
pub const struct_fz_separations = opaque {};
pub const fz_separations = struct_fz_separations;
pub const fz_pixmap = struct_fz_pixmap;
pub const struct_fz_pixmap = extern struct {
    storable: fz_storable,
    x: c_int,
    y: c_int,
    w: c_int,
    h: c_int,
    n: u8,
    s: u8,
    alpha: u8,
    flags: u8,
    stride: ptrdiff_t,
    seps: ?*fz_separations,
    xres: c_int,
    yres: c_int,
    colorspace: [*c]fz_colorspace,
    samples: [*c]u8,
    underlying: [*c]fz_pixmap,
};
pub const FZ_RI_PERCEPTUAL: c_int = 0;
pub const FZ_RI_RELATIVE_COLORIMETRIC: c_int = 1;
pub const FZ_RI_SATURATION: c_int = 2;
pub const FZ_RI_ABSOLUTE_COLORIMETRIC: c_int = 3;
const enum_unnamed_26 = c_uint;
pub const fz_color_params = extern struct {
    ri: u8,
    bp: u8,
    op: u8,
    opm: u8,
};
pub extern const fz_default_color_params: fz_color_params;
pub extern fn fz_lookup_rendering_intent(name: [*c]const u8) c_int;
pub extern fn fz_rendering_intent_name(ri: c_int) [*c]const u8;
pub const FZ_MAX_COLORS: c_int = 32;
const enum_unnamed_27 = c_uint;
pub const FZ_COLORSPACE_IS_DEVICE: c_int = 1;
pub const FZ_COLORSPACE_IS_ICC: c_int = 2;
pub const FZ_COLORSPACE_HAS_CMYK: c_int = 4;
pub const FZ_COLORSPACE_HAS_SPOTS: c_int = 8;
pub const FZ_COLORSPACE_HAS_CMYK_AND_SPOTS: c_int = 12;
const enum_unnamed_28 = c_uint;
pub extern fn fz_new_colorspace(ctx: [*c]fz_context, @"type": enum_fz_colorspace_type, flags: c_int, n: c_int, name: [*c]const u8) [*c]fz_colorspace;
pub extern fn fz_keep_colorspace(ctx: [*c]fz_context, colorspace: [*c]fz_colorspace) [*c]fz_colorspace;
pub extern fn fz_drop_colorspace(ctx: [*c]fz_context, colorspace: [*c]fz_colorspace) void;
pub extern fn fz_new_indexed_colorspace(ctx: [*c]fz_context, base: [*c]fz_colorspace, high: c_int, lookup: [*c]u8) [*c]fz_colorspace;
pub extern fn fz_new_icc_colorspace(ctx: [*c]fz_context, @"type": enum_fz_colorspace_type, flags: c_int, name: [*c]const u8, buf: [*c]fz_buffer) [*c]fz_colorspace;
pub extern fn fz_new_cal_gray_colorspace(ctx: [*c]fz_context, wp: [*c]f32, bp: [*c]f32, gamma: f32) [*c]fz_colorspace;
pub extern fn fz_new_cal_rgb_colorspace(ctx: [*c]fz_context, wp: [*c]f32, bp: [*c]f32, gamma: [*c]f32, matrix: [*c]f32) [*c]fz_colorspace;
pub extern fn fz_colorspace_type(ctx: [*c]fz_context, cs: [*c]fz_colorspace) enum_fz_colorspace_type;
pub extern fn fz_colorspace_name(ctx: [*c]fz_context, cs: [*c]fz_colorspace) [*c]const u8;
pub extern fn fz_colorspace_n(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_subtractive(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_device_n_has_only_cmyk(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_device_n_has_cmyk(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_gray(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_rgb(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_cmyk(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_lab(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_indexed(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_device_n(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_device(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_device_gray(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_device_cmyk(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_colorspace_is_lab_icc(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_is_valid_blend_colorspace(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn fz_device_gray(ctx: [*c]fz_context) [*c]fz_colorspace;
pub extern fn fz_device_rgb(ctx: [*c]fz_context) [*c]fz_colorspace;
pub extern fn fz_device_bgr(ctx: [*c]fz_context) [*c]fz_colorspace;
pub extern fn fz_device_cmyk(ctx: [*c]fz_context) [*c]fz_colorspace;
pub extern fn fz_device_lab(ctx: [*c]fz_context) [*c]fz_colorspace;
pub extern fn fz_colorspace_name_colorant(ctx: [*c]fz_context, cs: [*c]fz_colorspace, n: c_int, name: [*c]const u8) void;
pub extern fn fz_colorspace_colorant(ctx: [*c]fz_context, cs: [*c]fz_colorspace, n: c_int) [*c]const u8;
pub extern fn fz_clamp_color(ctx: [*c]fz_context, cs: [*c]fz_colorspace, in: [*c]const f32, out: [*c]f32) void;
pub extern fn fz_convert_color(ctx: [*c]fz_context, ss: [*c]fz_colorspace, sv: [*c]const f32, ds: [*c]fz_colorspace, dv: [*c]f32, is: [*c]fz_colorspace, params: fz_color_params) void;
pub const fz_default_colorspaces = extern struct {
    refs: c_int,
    gray: [*c]fz_colorspace,
    rgb: [*c]fz_colorspace,
    cmyk: [*c]fz_colorspace,
    oi: [*c]fz_colorspace,
};
pub extern fn fz_new_default_colorspaces(ctx: [*c]fz_context) [*c]fz_default_colorspaces;
pub extern fn fz_keep_default_colorspaces(ctx: [*c]fz_context, default_cs: [*c]fz_default_colorspaces) [*c]fz_default_colorspaces;
pub extern fn fz_drop_default_colorspaces(ctx: [*c]fz_context, default_cs: [*c]fz_default_colorspaces) void;
pub extern fn fz_clone_default_colorspaces(ctx: [*c]fz_context, base: [*c]fz_default_colorspaces) [*c]fz_default_colorspaces;
pub extern fn fz_default_gray(ctx: [*c]fz_context, default_cs: [*c]const fz_default_colorspaces) [*c]fz_colorspace;
pub extern fn fz_default_rgb(ctx: [*c]fz_context, default_cs: [*c]const fz_default_colorspaces) [*c]fz_colorspace;
pub extern fn fz_default_cmyk(ctx: [*c]fz_context, default_cs: [*c]const fz_default_colorspaces) [*c]fz_colorspace;
pub extern fn fz_default_output_intent(ctx: [*c]fz_context, default_cs: [*c]const fz_default_colorspaces) [*c]fz_colorspace;
pub extern fn fz_set_default_gray(ctx: [*c]fz_context, default_cs: [*c]fz_default_colorspaces, cs: [*c]fz_colorspace) void;
pub extern fn fz_set_default_rgb(ctx: [*c]fz_context, default_cs: [*c]fz_default_colorspaces, cs: [*c]fz_colorspace) void;
pub extern fn fz_set_default_cmyk(ctx: [*c]fz_context, default_cs: [*c]fz_default_colorspaces, cs: [*c]fz_colorspace) void;
pub extern fn fz_set_default_output_intent(ctx: [*c]fz_context, default_cs: [*c]fz_default_colorspaces, cs: [*c]fz_colorspace) void;
pub extern fn fz_drop_colorspace_imp(ctx: [*c]fz_context, cs_: [*c]fz_storable) void;
pub const FZ_MAX_SEPARATIONS: c_int = 64;
const enum_unnamed_29 = c_uint;
pub const FZ_SEPARATION_COMPOSITE: c_int = 0;
pub const FZ_SEPARATION_SPOT: c_int = 1;
pub const FZ_SEPARATION_DISABLED: c_int = 2;
pub const fz_separation_behavior = c_uint;
pub extern fn fz_new_separations(ctx: [*c]fz_context, controllable: c_int) ?*fz_separations;
pub extern fn fz_keep_separations(ctx: [*c]fz_context, sep: ?*fz_separations) ?*fz_separations;
pub extern fn fz_drop_separations(ctx: [*c]fz_context, sep: ?*fz_separations) void;
pub extern fn fz_add_separation(ctx: [*c]fz_context, sep: ?*fz_separations, name: [*c]const u8, cs: [*c]fz_colorspace, cs_channel: c_int) void;
pub extern fn fz_add_separation_equivalents(ctx: [*c]fz_context, sep: ?*fz_separations, rgba: u32, cmyk: u32, name: [*c]const u8) void;
pub extern fn fz_set_separation_behavior(ctx: [*c]fz_context, sep: ?*fz_separations, separation: c_int, behavior: fz_separation_behavior) void;
pub extern fn fz_separation_current_behavior(ctx: [*c]fz_context, sep: ?*const fz_separations, separation: c_int) fz_separation_behavior;
pub extern fn fz_separation_name(ctx: [*c]fz_context, sep: ?*const fz_separations, separation: c_int) [*c]const u8;
pub extern fn fz_count_separations(ctx: [*c]fz_context, sep: ?*const fz_separations) c_int;
pub extern fn fz_count_active_separations(ctx: [*c]fz_context, seps: ?*const fz_separations) c_int;
pub extern fn fz_clone_separations_for_overprint(ctx: [*c]fz_context, seps: ?*fz_separations) ?*fz_separations;
pub extern fn fz_convert_separation_colors(ctx: [*c]fz_context, src_cs: [*c]fz_colorspace, src_color: [*c]const f32, dst_seps: ?*fz_separations, dst_cs: [*c]fz_colorspace, dst_color: [*c]f32, color_params: fz_color_params) void;
pub extern fn fz_separation_equivalent(ctx: [*c]fz_context, seps: ?*const fz_separations, idx: c_int, dst_cs: [*c]fz_colorspace, dst_color: [*c]f32, prf: [*c]fz_colorspace, color_params: fz_color_params) void;
pub const struct_fz_overprint = opaque {};
pub const fz_overprint = struct_fz_overprint;
pub extern fn fz_pixmap_bbox(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) fz_irect;
pub extern fn fz_pixmap_width(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_pixmap_height(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_pixmap_x(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_pixmap_y(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_new_pixmap(ctx: [*c]fz_context, cs: [*c]fz_colorspace, w: c_int, h: c_int, seps: ?*fz_separations, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_with_bbox(ctx: [*c]fz_context, colorspace: [*c]fz_colorspace, bbox: fz_irect, seps: ?*fz_separations, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_with_data(ctx: [*c]fz_context, colorspace: [*c]fz_colorspace, w: c_int, h: c_int, seps: ?*fz_separations, alpha: c_int, stride: c_int, samples: [*c]u8) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_with_bbox_and_data(ctx: [*c]fz_context, colorspace: [*c]fz_colorspace, rect: fz_irect, seps: ?*fz_separations, alpha: c_int, samples: [*c]u8) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_pixmap(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, rect: [*c]const fz_irect) [*c]fz_pixmap;
pub extern fn fz_clone_pixmap(ctx: [*c]fz_context, old: [*c]const fz_pixmap) [*c]fz_pixmap;
pub extern fn fz_keep_pixmap(ctx: [*c]fz_context, pix: [*c]fz_pixmap) [*c]fz_pixmap;
pub extern fn fz_drop_pixmap(ctx: [*c]fz_context, pix: [*c]fz_pixmap) void;
pub extern fn fz_pixmap_colorspace(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) [*c]fz_colorspace;
pub extern fn fz_pixmap_components(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_pixmap_colorants(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_pixmap_spots(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_pixmap_alpha(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_pixmap_samples(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) [*c]u8;
pub extern fn fz_pixmap_stride(ctx: [*c]fz_context, pix: [*c]const fz_pixmap) c_int;
pub extern fn fz_set_pixmap_resolution(ctx: [*c]fz_context, pix: [*c]fz_pixmap, xres: c_int, yres: c_int) void;
pub extern fn fz_clear_pixmap_with_value(ctx: [*c]fz_context, pix: [*c]fz_pixmap, value: c_int) void;
pub extern fn fz_fill_pixmap_with_color(ctx: [*c]fz_context, pix: [*c]fz_pixmap, colorspace: [*c]fz_colorspace, color: [*c]f32, color_params: fz_color_params) void;
pub extern fn fz_clear_pixmap_rect_with_value(ctx: [*c]fz_context, pix: [*c]fz_pixmap, value: c_int, r: fz_irect) void;
pub extern fn fz_clear_pixmap(ctx: [*c]fz_context, pix: [*c]fz_pixmap) void;
pub extern fn fz_invert_pixmap(ctx: [*c]fz_context, pix: [*c]fz_pixmap) void;
pub extern fn fz_invert_pixmap_alpha(ctx: [*c]fz_context, pix: [*c]fz_pixmap) void;
pub extern fn fz_invert_pixmap_luminance(ctx: [*c]fz_context, pix: [*c]fz_pixmap) void;
pub extern fn fz_tint_pixmap(ctx: [*c]fz_context, pix: [*c]fz_pixmap, black: c_int, white: c_int) void;
pub extern fn fz_invert_pixmap_rect(ctx: [*c]fz_context, image: [*c]fz_pixmap, rect: fz_irect) void;
pub extern fn fz_gamma_pixmap(ctx: [*c]fz_context, pix: [*c]fz_pixmap, gamma: f32) void;
pub extern fn fz_convert_pixmap(ctx: [*c]fz_context, pix: [*c]const fz_pixmap, cs_des: [*c]fz_colorspace, prf: [*c]fz_colorspace, default_cs: [*c]fz_default_colorspaces, color_params: fz_color_params, keep_alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_is_pixmap_monochrome(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap) c_int;
pub extern fn fz_alpha_from_gray(ctx: [*c]fz_context, gray: [*c]fz_pixmap) [*c]fz_pixmap;
pub extern fn fz_decode_tile(ctx: [*c]fz_context, pix: [*c]fz_pixmap, decode: [*c]const f32) void;
pub extern fn fz_md5_pixmap(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, digest: [*c]u8) void;
pub extern fn fz_unpack_stream(ctx: [*c]fz_context, src: [*c]fz_stream, depth: c_int, w: c_int, h: c_int, n: c_int, indexed: c_int, pad: c_int, skip: c_int) [*c]fz_stream;
pub const FZ_PIXMAP_FLAG_INTERPOLATE: c_int = 1;
pub const FZ_PIXMAP_FLAG_FREE_SAMPLES: c_int = 2;
const enum_unnamed_30 = c_uint;
pub extern fn fz_warp_pixmap(ctx: [*c]fz_context, src: [*c]fz_pixmap, points: [*c]const fz_point, width: c_int, height: c_int) [*c]fz_pixmap;
pub extern fn fz_clone_pixmap_area_with_different_seps(ctx: [*c]fz_context, src: [*c]fz_pixmap, bbox: [*c]const fz_irect, dcs: [*c]fz_colorspace, seps: ?*fz_separations, color_params: fz_color_params, default_cs: [*c]fz_default_colorspaces) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_alpha_channel(ctx: [*c]fz_context, src: [*c]fz_pixmap) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_color_and_mask(ctx: [*c]fz_context, color: [*c]fz_pixmap, mask: [*c]fz_pixmap) [*c]fz_pixmap;
pub const fz_bitmap = extern struct {
    refs: c_int,
    w: c_int,
    h: c_int,
    stride: c_int,
    n: c_int,
    xres: c_int,
    yres: c_int,
    samples: [*c]u8,
};
pub extern fn fz_keep_bitmap(ctx: [*c]fz_context, bit: [*c]fz_bitmap) [*c]fz_bitmap;
pub extern fn fz_drop_bitmap(ctx: [*c]fz_context, bit: [*c]fz_bitmap) void;
pub const struct_fz_halftone = opaque {};
pub const fz_halftone = struct_fz_halftone;
pub extern fn fz_new_bitmap_from_pixmap(ctx: [*c]fz_context, pix: [*c]fz_pixmap, ht: ?*fz_halftone) [*c]fz_bitmap;
pub extern fn fz_new_bitmap_from_pixmap_band(ctx: [*c]fz_context, pix: [*c]fz_pixmap, ht: ?*fz_halftone, band_start: c_int) [*c]fz_bitmap;
pub extern fn fz_new_bitmap(ctx: [*c]fz_context, w: c_int, h: c_int, n: c_int, xres: c_int, yres: c_int) [*c]fz_bitmap;
pub extern fn fz_bitmap_details(bitmap: [*c]fz_bitmap, w: [*c]c_int, h: [*c]c_int, n: [*c]c_int, stride: [*c]c_int) void;
pub extern fn fz_clear_bitmap(ctx: [*c]fz_context, bit: [*c]fz_bitmap) void;
pub extern fn fz_default_halftone(ctx: [*c]fz_context, num_comps: c_int) ?*fz_halftone;
pub extern fn fz_keep_halftone(ctx: [*c]fz_context, half: ?*fz_halftone) ?*fz_halftone;
pub extern fn fz_drop_halftone(ctx: [*c]fz_context, ht: ?*fz_halftone) void; // third-party/mupdf/include/mupdf/fitz/image.h:326:15: warning: struct demoted to opaque type - has bitfield
pub const struct_fz_image = opaque {};
pub const fz_image = struct_fz_image;
pub const struct_fz_compressed_image = opaque {};
pub const fz_compressed_image = struct_fz_compressed_image;
pub const struct_fz_pixmap_image = opaque {};
pub const fz_pixmap_image = struct_fz_pixmap_image;
pub extern fn fz_get_pixmap_from_image(ctx: [*c]fz_context, image: ?*fz_image, subarea: [*c]const fz_irect, ctm: [*c]fz_matrix, w: [*c]c_int, h: [*c]c_int) [*c]fz_pixmap;
pub extern fn fz_get_unscaled_pixmap_from_image(ctx: [*c]fz_context, image: ?*fz_image) [*c]fz_pixmap;
pub extern fn fz_keep_image(ctx: [*c]fz_context, image: ?*fz_image) ?*fz_image;
pub extern fn fz_drop_image(ctx: [*c]fz_context, image: ?*fz_image) void;
pub extern fn fz_keep_image_store_key(ctx: [*c]fz_context, image: ?*fz_image) ?*fz_image;
pub extern fn fz_drop_image_store_key(ctx: [*c]fz_context, image: ?*fz_image) void;
pub const fz_drop_image_fn = fn ([*c]fz_context, ?*fz_image) callconv(.C) void;
pub const fz_image_get_pixmap_fn = fn ([*c]fz_context, ?*fz_image, [*c]fz_irect, c_int, c_int, [*c]c_int) callconv(.C) [*c]fz_pixmap;
pub const fz_image_get_size_fn = fn ([*c]fz_context, ?*fz_image) callconv(.C) usize;
pub extern fn fz_new_image_of_size(ctx: [*c]fz_context, w: c_int, h: c_int, bpc: c_int, colorspace: [*c]fz_colorspace, xres: c_int, yres: c_int, interpolate: c_int, imagemask: c_int, decode: [*c]f32, colorkey: [*c]c_int, mask: ?*fz_image, size: usize, get_pixmap: ?fz_image_get_pixmap_fn, get_size: ?fz_image_get_size_fn, drop: ?fz_drop_image_fn) ?*fz_image;
pub extern fn fz_new_image_from_compressed_buffer(ctx: [*c]fz_context, w: c_int, h: c_int, bpc: c_int, colorspace: [*c]fz_colorspace, xres: c_int, yres: c_int, interpolate: c_int, imagemask: c_int, decode: [*c]f32, colorkey: [*c]c_int, buffer: [*c]fz_compressed_buffer, mask: ?*fz_image) ?*fz_image;
pub extern fn fz_new_image_from_pixmap(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, mask: ?*fz_image) ?*fz_image;
pub extern fn fz_new_image_from_buffer(ctx: [*c]fz_context, buffer: [*c]fz_buffer) ?*fz_image;
pub extern fn fz_new_image_from_file(ctx: [*c]fz_context, path: [*c]const u8) ?*fz_image;
pub extern fn fz_drop_image_imp(ctx: [*c]fz_context, image: [*c]fz_storable) void;
pub extern fn fz_drop_image_base(ctx: [*c]fz_context, image: ?*fz_image) void;
pub extern fn fz_decomp_image_from_stream(ctx: [*c]fz_context, stm: [*c]fz_stream, image: ?*fz_compressed_image, subarea: [*c]fz_irect, indexed: c_int, l2factor: c_int, l2extra: [*c]c_int) [*c]fz_pixmap;
pub extern fn fz_convert_indexed_pixmap_to_base(ctx: [*c]fz_context, src: [*c]const fz_pixmap) [*c]fz_pixmap;
pub extern fn fz_convert_separation_pixmap_to_base(ctx: [*c]fz_context, src: [*c]const fz_pixmap) [*c]fz_pixmap;
pub extern fn fz_image_size(ctx: [*c]fz_context, im: ?*fz_image) usize;
pub extern fn fz_image_resolution(image: ?*fz_image, xres: [*c]c_int, yres: [*c]c_int) void;
pub extern fn fz_image_orientation(ctx: [*c]fz_context, image: ?*fz_image) u8;
pub extern fn fz_image_orientation_matrix(ctx: [*c]fz_context, image: ?*fz_image) fz_matrix;
pub extern fn fz_compressed_image_buffer(ctx: [*c]fz_context, image: ?*fz_image) [*c]fz_compressed_buffer;
pub extern fn fz_set_compressed_image_buffer(ctx: [*c]fz_context, cimg: ?*fz_compressed_image, buf: [*c]fz_compressed_buffer) void;
pub extern fn fz_pixmap_image_tile(ctx: [*c]fz_context, cimg: ?*fz_pixmap_image) [*c]fz_pixmap;
pub extern fn fz_set_pixmap_image_tile(ctx: [*c]fz_context, cimg: ?*fz_pixmap_image, pix: [*c]fz_pixmap) void;
pub extern fn fz_load_jpx(ctx: [*c]fz_context, data: [*c]const u8, size: usize, cs: [*c]fz_colorspace) [*c]fz_pixmap;
pub extern fn fz_load_tiff_subimage_count(ctx: [*c]fz_context, buf: [*c]const u8, len: usize) c_int;
pub extern fn fz_load_tiff_subimage(ctx: [*c]fz_context, buf: [*c]const u8, len: usize, subimage: c_int) [*c]fz_pixmap;
pub extern fn fz_load_pnm_subimage_count(ctx: [*c]fz_context, buf: [*c]const u8, len: usize) c_int;
pub extern fn fz_load_pnm_subimage(ctx: [*c]fz_context, buf: [*c]const u8, len: usize, subimage: c_int) [*c]fz_pixmap;
pub extern fn fz_load_jbig2_subimage_count(ctx: [*c]fz_context, buf: [*c]const u8, len: usize) c_int;
pub extern fn fz_load_jbig2_subimage(ctx: [*c]fz_context, buf: [*c]const u8, len: usize, subimage: c_int) [*c]fz_pixmap;
pub extern fn fz_load_bmp_subimage_count(ctx: [*c]fz_context, buf: [*c]const u8, len: usize) c_int;
pub extern fn fz_load_bmp_subimage(ctx: [*c]fz_context, buf: [*c]const u8, len: usize, subimage: c_int) [*c]fz_pixmap;
pub const FZ_FUNCTION_BASED: c_int = 1;
pub const FZ_LINEAR: c_int = 2;
pub const FZ_RADIAL: c_int = 3;
pub const FZ_MESH_TYPE4: c_int = 4;
pub const FZ_MESH_TYPE5: c_int = 5;
pub const FZ_MESH_TYPE6: c_int = 6;
pub const FZ_MESH_TYPE7: c_int = 7;
const enum_unnamed_31 = c_uint;
const struct_unnamed_33 = extern struct {
    extend: [2]c_int,
    coords: [2][3]f32,
};
const struct_unnamed_34 = extern struct {
    vprow: c_int,
    bpflag: c_int,
    bpcoord: c_int,
    bpcomp: c_int,
    x0: f32,
    x1: f32,
    y0: f32,
    y1: f32,
    c0: [32]f32,
    c1: [32]f32,
};
const struct_unnamed_35 = extern struct {
    matrix: fz_matrix,
    xdivs: c_int,
    ydivs: c_int,
    domain: [2][2]f32,
    fn_vals: [*c]f32,
};
const union_unnamed_32 = extern union {
    l_or_r: struct_unnamed_33,
    m: struct_unnamed_34,
    f: struct_unnamed_35,
};
pub const fz_shade = extern struct {
    storable: fz_storable,
    bbox: fz_rect,
    colorspace: [*c]fz_colorspace,
    matrix: fz_matrix,
    use_background: c_int,
    background: [32]f32,
    use_function: c_int,
    function: [256][33]f32,
    type: c_int,
    u: union_unnamed_32,
    buffer: [*c]fz_compressed_buffer,
};
pub extern fn fz_keep_shade(ctx: [*c]fz_context, shade: [*c]fz_shade) [*c]fz_shade;
pub extern fn fz_drop_shade(ctx: [*c]fz_context, shade: [*c]fz_shade) void;
pub extern fn fz_bound_shade(ctx: [*c]fz_context, shade: [*c]fz_shade, ctm: fz_matrix) fz_rect;
pub const struct_fz_shade_color_cache = opaque {};
pub const fz_shade_color_cache = struct_fz_shade_color_cache;
pub extern fn fz_drop_shade_color_cache(ctx: [*c]fz_context, cache: ?*fz_shade_color_cache) void;
pub extern fn fz_paint_shade(ctx: [*c]fz_context, shade: [*c]fz_shade, override_cs: [*c]fz_colorspace, ctm: fz_matrix, dest: [*c]fz_pixmap, color_params: fz_color_params, bbox: fz_irect, eop: ?*const fz_overprint, cache: [*c]?*fz_shade_color_cache) void;
pub const fz_vertex = extern struct {
    p: fz_point,
    c: [32]f32,
};
pub const fz_shade_prepare_fn = fn ([*c]fz_context, ?*anyopaque, [*c]fz_vertex, [*c]const f32) callconv(.C) void;
pub const fz_shade_process_fn = fn ([*c]fz_context, ?*anyopaque, [*c]fz_vertex, [*c]fz_vertex, [*c]fz_vertex) callconv(.C) void;
pub extern fn fz_process_shade(ctx: [*c]fz_context, shade: [*c]fz_shade, ctm: fz_matrix, scissor: fz_rect, prepare: ?fz_shade_prepare_fn, process: ?fz_shade_process_fn, process_arg: ?*anyopaque) void;
pub extern fn fz_drop_shade_imp(ctx: [*c]fz_context, shade: [*c]fz_storable) void;
pub const fz_device = struct_fz_device;
pub const struct_fz_path = opaque {};
pub const fz_path = struct_fz_path;
pub const struct_fz_device = extern struct {
    refs: c_int,
    hints: c_int,
    flags: c_int,
    close_device: ?fn ([*c]fz_context, [*c]fz_device) callconv(.C) void,
    drop_device: ?fn ([*c]fz_context, [*c]fz_device) callconv(.C) void,
    fill_path: ?fn ([*c]fz_context, [*c]fz_device, ?*const fz_path, c_int, fz_matrix, [*c]fz_colorspace, [*c]const f32, f32, fz_color_params) callconv(.C) void,
    stroke_path: ?fn ([*c]fz_context, [*c]fz_device, ?*const fz_path, [*c]const fz_stroke_state, fz_matrix, [*c]fz_colorspace, [*c]const f32, f32, fz_color_params) callconv(.C) void,
    clip_path: ?fn ([*c]fz_context, [*c]fz_device, ?*const fz_path, c_int, fz_matrix, fz_rect) callconv(.C) void,
    clip_stroke_path: ?fn ([*c]fz_context, [*c]fz_device, ?*const fz_path, [*c]const fz_stroke_state, fz_matrix, fz_rect) callconv(.C) void,
    fill_text: ?fn ([*c]fz_context, [*c]fz_device, [*c]const fz_text, fz_matrix, [*c]fz_colorspace, [*c]const f32, f32, fz_color_params) callconv(.C) void,
    stroke_text: ?fn ([*c]fz_context, [*c]fz_device, [*c]const fz_text, [*c]const fz_stroke_state, fz_matrix, [*c]fz_colorspace, [*c]const f32, f32, fz_color_params) callconv(.C) void,
    clip_text: ?fn ([*c]fz_context, [*c]fz_device, [*c]const fz_text, fz_matrix, fz_rect) callconv(.C) void,
    clip_stroke_text: ?fn ([*c]fz_context, [*c]fz_device, [*c]const fz_text, [*c]const fz_stroke_state, fz_matrix, fz_rect) callconv(.C) void,
    ignore_text: ?fn ([*c]fz_context, [*c]fz_device, [*c]const fz_text, fz_matrix) callconv(.C) void,
    fill_shade: ?fn ([*c]fz_context, [*c]fz_device, [*c]fz_shade, fz_matrix, f32, fz_color_params) callconv(.C) void,
    fill_image: ?fn ([*c]fz_context, [*c]fz_device, ?*fz_image, fz_matrix, f32, fz_color_params) callconv(.C) void,
    fill_image_mask: ?fn ([*c]fz_context, [*c]fz_device, ?*fz_image, fz_matrix, [*c]fz_colorspace, [*c]const f32, f32, fz_color_params) callconv(.C) void,
    clip_image_mask: ?fn ([*c]fz_context, [*c]fz_device, ?*fz_image, fz_matrix, fz_rect) callconv(.C) void,
    pop_clip: ?fn ([*c]fz_context, [*c]fz_device) callconv(.C) void,
    begin_mask: ?fn ([*c]fz_context, [*c]fz_device, fz_rect, c_int, [*c]fz_colorspace, [*c]const f32, fz_color_params) callconv(.C) void,
    end_mask: ?fn ([*c]fz_context, [*c]fz_device) callconv(.C) void,
    begin_group: ?fn ([*c]fz_context, [*c]fz_device, fz_rect, [*c]fz_colorspace, c_int, c_int, c_int, f32) callconv(.C) void,
    end_group: ?fn ([*c]fz_context, [*c]fz_device) callconv(.C) void,
    begin_tile: ?fn ([*c]fz_context, [*c]fz_device, fz_rect, fz_rect, f32, f32, fz_matrix, c_int) callconv(.C) c_int,
    end_tile: ?fn ([*c]fz_context, [*c]fz_device) callconv(.C) void,
    render_flags: ?fn ([*c]fz_context, [*c]fz_device, c_int, c_int) callconv(.C) void,
    set_default_colorspaces: ?fn ([*c]fz_context, [*c]fz_device, [*c]fz_default_colorspaces) callconv(.C) void,
    begin_layer: ?fn ([*c]fz_context, [*c]fz_device, [*c]const u8) callconv(.C) void,
    end_layer: ?fn ([*c]fz_context, [*c]fz_device) callconv(.C) void,
    d1_rect: fz_rect,
    container_len: c_int,
    container_cap: c_int,
    container: [*c]fz_device_container_stack,
};
pub extern var fz_glyph_name_from_adobe_standard: [256][*c]const u8;
pub extern var fz_glyph_name_from_iso8859_7: [256][*c]const u8;
pub extern var fz_glyph_name_from_koi8u: [256][*c]const u8;
pub extern var fz_glyph_name_from_mac_expert: [256][*c]const u8;
pub extern var fz_glyph_name_from_mac_roman: [256][*c]const u8;
pub extern var fz_glyph_name_from_win_ansi: [256][*c]const u8;
pub extern var fz_glyph_name_from_windows_1252: [256][*c]const u8;
pub extern const fz_unicode_from_iso8859_1: [256]c_ushort;
pub extern const fz_unicode_from_iso8859_7: [256]c_ushort;
pub extern const fz_unicode_from_koi8u: [256]c_ushort;
pub extern const fz_unicode_from_pdf_doc_encoding: [256]c_ushort;
pub extern const fz_unicode_from_windows_1250: [256]c_ushort;
pub extern const fz_unicode_from_windows_1251: [256]c_ushort;
pub extern const fz_unicode_from_windows_1252: [256]c_ushort;
pub extern fn fz_iso8859_1_from_unicode(u: c_int) c_int;
pub extern fn fz_iso8859_7_from_unicode(u: c_int) c_int;
pub extern fn fz_koi8u_from_unicode(u: c_int) c_int;
pub extern fn fz_windows_1250_from_unicode(u: c_int) c_int;
pub extern fn fz_windows_1251_from_unicode(u: c_int) c_int;
pub extern fn fz_windows_1252_from_unicode(u: c_int) c_int;
pub extern fn fz_unicode_from_glyph_name(name: [*c]const u8) c_int;
pub extern fn fz_unicode_from_glyph_name_strict(name: [*c]const u8) c_int;
pub extern fn fz_duplicate_glyph_names_from_unicode(unicode: c_int) [*c][*c]const u8;
pub extern fn fz_glyph_name_from_unicode_sc(unicode: c_int) [*c]const u8;
pub const struct_fz_display_list = opaque {};
pub const struct_fz_font = extern struct {
    refs: c_int,
    name: [32]u8,
    buffer: [*c]fz_buffer,
    flags: u16,
    ft_face: ?*anyopaque,
    shaper_data: fz_shaper_data_t,
    t3matrix: fz_matrix,
    t3resources: ?*anyopaque,
    t3procs: [*c][*c]fz_buffer,
    t3lists: [*c]?*struct_fz_display_list,
    t3widths: [*c]f32,
    t3flags: [*c]c_ushort,
    t3doc: ?*anyopaque,
    t3run: ?fn ([*c]fz_context, ?*anyopaque, ?*anyopaque, [*c]fz_buffer, [*c]struct_fz_device, fz_matrix, ?*anyopaque, [*c]fz_default_colorspaces) callconv(.C) void,
    t3freeres: ?fn ([*c]fz_context, ?*anyopaque, ?*anyopaque) callconv(.C) void,
    bbox: fz_rect,
    glyph_count: c_int,
    bbox_table: [*c][*c]fz_rect,
    use_glyph_bbox: c_int,
    width_count: c_int,
    width_default: c_short,
    width_table: [*c]c_short,
    advance_cache: [*c][*c]f32,
    encoding_cache: [256][*c]u16,
    has_digest: c_int,
    digest: [16]u8,
};
pub const fz_font = struct_fz_font;
pub extern fn fz_font_ft_face(ctx: [*c]fz_context, font: [*c]fz_font) ?*anyopaque;
pub extern fn fz_font_t3_procs(ctx: [*c]fz_context, font: [*c]fz_font) [*c][*c]fz_buffer;
pub const FZ_ADOBE_CNS: c_int = 0;
pub const FZ_ADOBE_GB: c_int = 1;
pub const FZ_ADOBE_JAPAN: c_int = 2;
pub const FZ_ADOBE_KOREA: c_int = 3;
const enum_unnamed_36 = c_uint; // third-party/mupdf/include/mupdf/fitz/font.h:108:15: warning: struct demoted to opaque type - has bitfield
pub const fz_font_flags_t = opaque {};
pub extern fn fz_font_flags(font: [*c]fz_font) ?*fz_font_flags_t;
pub const fz_shaper_data_t = extern struct {
    shaper_handle: ?*anyopaque,
    destroy: ?fn ([*c]fz_context, ?*anyopaque) callconv(.C) void,
};
pub extern fn fz_font_shaper_data(ctx: [*c]fz_context, font: [*c]fz_font) [*c]fz_shaper_data_t;
pub extern fn fz_font_name(ctx: [*c]fz_context, font: [*c]fz_font) [*c]const u8;
pub extern fn fz_font_is_bold(ctx: [*c]fz_context, font: [*c]fz_font) c_int;
pub extern fn fz_font_is_italic(ctx: [*c]fz_context, font: [*c]fz_font) c_int;
pub extern fn fz_font_is_serif(ctx: [*c]fz_context, font: [*c]fz_font) c_int;
pub extern fn fz_font_is_monospaced(ctx: [*c]fz_context, font: [*c]fz_font) c_int;
pub extern fn fz_font_bbox(ctx: [*c]fz_context, font: [*c]fz_font) fz_rect;
pub const fz_load_system_font_fn = fn ([*c]fz_context, [*c]const u8, c_int, c_int, c_int) callconv(.C) [*c]fz_font;
pub const fz_load_system_cjk_font_fn = fn ([*c]fz_context, [*c]const u8, c_int, c_int) callconv(.C) [*c]fz_font;
pub const fz_load_system_fallback_font_fn = fn ([*c]fz_context, c_int, c_int, c_int, c_int, c_int) callconv(.C) [*c]fz_font;
pub extern fn fz_install_load_system_font_funcs(ctx: [*c]fz_context, f: ?fz_load_system_font_fn, f_cjk: ?fz_load_system_cjk_font_fn, f_fallback: ?fz_load_system_fallback_font_fn) void;
pub extern fn fz_load_system_font(ctx: [*c]fz_context, name: [*c]const u8, bold: c_int, italic: c_int, needs_exact_metrics: c_int) [*c]fz_font;
pub extern fn fz_load_system_cjk_font(ctx: [*c]fz_context, name: [*c]const u8, ordering: c_int, serif: c_int) [*c]fz_font;
pub extern fn fz_lookup_builtin_font(ctx: [*c]fz_context, name: [*c]const u8, bold: c_int, italic: c_int, len: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_base14_font(ctx: [*c]fz_context, name: [*c]const u8, len: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_cjk_font(ctx: [*c]fz_context, ordering: c_int, len: [*c]c_int, index: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_cjk_font_by_language(ctx: [*c]fz_context, lang: [*c]const u8, len: [*c]c_int, subfont: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_cjk_ordering_by_language(name: [*c]const u8) c_int;
pub extern fn fz_lookup_noto_font(ctx: [*c]fz_context, script: c_int, lang: c_int, len: [*c]c_int, subfont: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_noto_math_font(ctx: [*c]fz_context, len: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_noto_music_font(ctx: [*c]fz_context, len: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_noto_symbol1_font(ctx: [*c]fz_context, len: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_noto_symbol2_font(ctx: [*c]fz_context, len: [*c]c_int) [*c]const u8;
pub extern fn fz_lookup_noto_emoji_font(ctx: [*c]fz_context, len: [*c]c_int) [*c]const u8;
pub extern fn fz_load_fallback_font(ctx: [*c]fz_context, script: c_int, language: c_int, serif: c_int, bold: c_int, italic: c_int) [*c]fz_font;
pub extern fn fz_new_type3_font(ctx: [*c]fz_context, name: [*c]const u8, matrix: fz_matrix) [*c]fz_font;
pub extern fn fz_new_font_from_memory(ctx: [*c]fz_context, name: [*c]const u8, data: [*c]const u8, len: c_int, index: c_int, use_glyph_bbox: c_int) [*c]fz_font;
pub extern fn fz_new_font_from_buffer(ctx: [*c]fz_context, name: [*c]const u8, buffer: [*c]fz_buffer, index: c_int, use_glyph_bbox: c_int) [*c]fz_font;
pub extern fn fz_new_font_from_file(ctx: [*c]fz_context, name: [*c]const u8, path: [*c]const u8, index: c_int, use_glyph_bbox: c_int) [*c]fz_font;
pub extern fn fz_new_base14_font(ctx: [*c]fz_context, name: [*c]const u8) [*c]fz_font;
pub extern fn fz_new_cjk_font(ctx: [*c]fz_context, ordering: c_int) [*c]fz_font;
pub extern fn fz_new_builtin_font(ctx: [*c]fz_context, name: [*c]const u8, is_bold: c_int, is_italic: c_int) [*c]fz_font;
pub extern fn fz_keep_font(ctx: [*c]fz_context, font: [*c]fz_font) [*c]fz_font;
pub extern fn fz_drop_font(ctx: [*c]fz_context, font: [*c]fz_font) void;
pub extern fn fz_set_font_bbox(ctx: [*c]fz_context, font: [*c]fz_font, xmin: f32, ymin: f32, xmax: f32, ymax: f32) void;
pub extern fn fz_bound_glyph(ctx: [*c]fz_context, font: [*c]fz_font, gid: c_int, trm: fz_matrix) fz_rect;
pub extern fn fz_glyph_cacheable(ctx: [*c]fz_context, font: [*c]fz_font, gid: c_int) c_int;
pub extern fn fz_run_t3_glyph(ctx: [*c]fz_context, font: [*c]fz_font, gid: c_int, trm: fz_matrix, dev: [*c]struct_fz_device) void;
pub extern fn fz_advance_glyph(ctx: [*c]fz_context, font: [*c]fz_font, glyph: c_int, wmode: c_int) f32;
pub extern fn fz_encode_character(ctx: [*c]fz_context, font: [*c]fz_font, unicode: c_int) c_int;
pub extern fn fz_encode_character_sc(ctx: [*c]fz_context, font: [*c]fz_font, unicode: c_int) c_int;
pub extern fn fz_encode_character_by_glyph_name(ctx: [*c]fz_context, font: [*c]fz_font, glyphname: [*c]const u8) c_int;
pub extern fn fz_encode_character_with_fallback(ctx: [*c]fz_context, font: [*c]fz_font, unicode: c_int, script: c_int, language: c_int, out_font: [*c][*c]fz_font) c_int;
pub extern fn fz_get_glyph_name(ctx: [*c]fz_context, font: [*c]fz_font, glyph: c_int, buf: [*c]u8, size: c_int) void;
pub extern fn fz_font_ascender(ctx: [*c]fz_context, font: [*c]fz_font) f32;
pub extern fn fz_font_descender(ctx: [*c]fz_context, font: [*c]fz_font) f32;
pub extern fn fz_font_digest(ctx: [*c]fz_context, font: [*c]fz_font, digest: [*c]u8) void;
pub extern fn fz_decouple_type3_font(ctx: [*c]fz_context, font: [*c]fz_font, t3doc: ?*anyopaque) void;
pub extern fn ft_error_string(err: c_int) [*c]const u8;
pub extern fn ft_char_index(face: ?*anyopaque, cid: c_int) c_int;
pub extern fn ft_name_index(face: ?*anyopaque, name: [*c]const u8) c_int;
pub extern fn fz_hb_lock(ctx: [*c]fz_context) void;
pub extern fn fz_hb_unlock(ctx: [*c]fz_context) void;
pub const FZ_LINECAP_BUTT: c_int = 0;
pub const FZ_LINECAP_ROUND: c_int = 1;
pub const FZ_LINECAP_SQUARE: c_int = 2;
pub const FZ_LINECAP_TRIANGLE: c_int = 3;
pub const fz_linecap = c_uint;
pub const FZ_LINEJOIN_MITER: c_int = 0;
pub const FZ_LINEJOIN_ROUND: c_int = 1;
pub const FZ_LINEJOIN_BEVEL: c_int = 2;
pub const FZ_LINEJOIN_MITER_XPS: c_int = 3;
pub const fz_linejoin = c_uint;
pub const fz_stroke_state = extern struct {
    refs: c_int,
    start_cap: fz_linecap,
    dash_cap: fz_linecap,
    end_cap: fz_linecap,
    linejoin: fz_linejoin,
    linewidth: f32,
    miterlimit: f32,
    dash_phase: f32,
    dash_len: c_int,
    dash_list: [32]f32,
};
pub const fz_path_walker = extern struct {
    moveto: ?fn ([*c]fz_context, ?*anyopaque, f32, f32) callconv(.C) void,
    lineto: ?fn ([*c]fz_context, ?*anyopaque, f32, f32) callconv(.C) void,
    curveto: ?fn ([*c]fz_context, ?*anyopaque, f32, f32, f32, f32, f32, f32) callconv(.C) void,
    closepath: ?fn ([*c]fz_context, ?*anyopaque) callconv(.C) void,
    quadto: ?fn ([*c]fz_context, ?*anyopaque, f32, f32, f32, f32) callconv(.C) void,
    curvetov: ?fn ([*c]fz_context, ?*anyopaque, f32, f32, f32, f32) callconv(.C) void,
    curvetoy: ?fn ([*c]fz_context, ?*anyopaque, f32, f32, f32, f32) callconv(.C) void,
    rectto: ?fn ([*c]fz_context, ?*anyopaque, f32, f32, f32, f32) callconv(.C) void,
};
pub extern fn fz_walk_path(ctx: [*c]fz_context, path: ?*const fz_path, walker: [*c]const fz_path_walker, arg: ?*anyopaque) void;
pub extern fn fz_new_path(ctx: [*c]fz_context) ?*fz_path;
pub extern fn fz_keep_path(ctx: [*c]fz_context, path: ?*const fz_path) ?*fz_path;
pub extern fn fz_drop_path(ctx: [*c]fz_context, path: ?*const fz_path) void;
pub extern fn fz_trim_path(ctx: [*c]fz_context, path: ?*fz_path) void;
pub extern fn fz_packed_path_size(path: ?*const fz_path) c_int;
pub extern fn fz_pack_path(ctx: [*c]fz_context, pack: [*c]u8, max: usize, path: ?*const fz_path) usize;
pub extern fn fz_clone_path(ctx: [*c]fz_context, path: ?*fz_path) ?*fz_path;
pub extern fn fz_currentpoint(ctx: [*c]fz_context, path: ?*fz_path) fz_point;
pub extern fn fz_moveto(ctx: [*c]fz_context, path: ?*fz_path, x: f32, y: f32) void;
pub extern fn fz_lineto(ctx: [*c]fz_context, path: ?*fz_path, x: f32, y: f32) void;
pub extern fn fz_rectto(ctx: [*c]fz_context, path: ?*fz_path, x0: f32, y0: f32, x1: f32, y1: f32) void;
pub extern fn fz_quadto(ctx: [*c]fz_context, path: ?*fz_path, x0: f32, y0: f32, x1: f32, y1: f32) void;
pub extern fn fz_curveto(ctx: [*c]fz_context, path: ?*fz_path, x0: f32, y0: f32, x1: f32, y1: f32, x2: f32, y2: f32) void;
pub extern fn fz_curvetov(ctx: [*c]fz_context, path: ?*fz_path, x1: f32, y1: f32, x2: f32, y2: f32) void;
pub extern fn fz_curvetoy(ctx: [*c]fz_context, path: ?*fz_path, x0: f32, y0: f32, x2: f32, y2: f32) void;
pub extern fn fz_closepath(ctx: [*c]fz_context, path: ?*fz_path) void;
pub extern fn fz_transform_path(ctx: [*c]fz_context, path: ?*fz_path, transform: fz_matrix) void;
pub extern fn fz_bound_path(ctx: [*c]fz_context, path: ?*const fz_path, stroke: [*c]const fz_stroke_state, ctm: fz_matrix) fz_rect;
pub extern fn fz_adjust_rect_for_stroke(ctx: [*c]fz_context, rect: fz_rect, stroke: [*c]const fz_stroke_state, ctm: fz_matrix) fz_rect;
pub extern const fz_default_stroke_state: fz_stroke_state;
pub extern fn fz_new_stroke_state(ctx: [*c]fz_context) [*c]fz_stroke_state;
pub extern fn fz_new_stroke_state_with_dash_len(ctx: [*c]fz_context, len: c_int) [*c]fz_stroke_state;
pub extern fn fz_keep_stroke_state(ctx: [*c]fz_context, stroke: [*c]const fz_stroke_state) [*c]fz_stroke_state;
pub extern fn fz_drop_stroke_state(ctx: [*c]fz_context, stroke: [*c]const fz_stroke_state) void;
pub extern fn fz_unshare_stroke_state(ctx: [*c]fz_context, shared: [*c]fz_stroke_state) [*c]fz_stroke_state;
pub extern fn fz_unshare_stroke_state_with_dash_len(ctx: [*c]fz_context, shared: [*c]fz_stroke_state, len: c_int) [*c]fz_stroke_state;
pub extern fn fz_clone_stroke_state(ctx: [*c]fz_context, stroke: [*c]fz_stroke_state) [*c]fz_stroke_state;
pub const fz_text_item = extern struct {
    x: f32,
    y: f32,
    gid: c_int,
    ucs: c_int,
};
pub const FZ_LANG_UNSET: c_int = 0;
pub const FZ_LANG_ur: c_int = 507;
pub const FZ_LANG_urd: c_int = 3423;
pub const FZ_LANG_ko: c_int = 416;
pub const FZ_LANG_ja: c_int = 37;
pub const FZ_LANG_zh: c_int = 242;
pub const FZ_LANG_zh_Hans: c_int = 14093;
pub const FZ_LANG_zh_Hant: c_int = 14822;
pub const fz_text_language = c_uint; // third-party/mupdf/include/mupdf/fitz/text.h:70:11: warning: struct demoted to opaque type - has bitfield
pub const struct_fz_text_span = opaque {};
pub const fz_text_span = struct_fz_text_span;
pub const fz_text = extern struct {
    refs: c_int,
    head: ?*fz_text_span,
    tail: ?*fz_text_span,
};
pub extern fn fz_new_text(ctx: [*c]fz_context) [*c]fz_text;
pub extern fn fz_keep_text(ctx: [*c]fz_context, text: [*c]const fz_text) [*c]fz_text;
pub extern fn fz_drop_text(ctx: [*c]fz_context, text: [*c]const fz_text) void;
pub extern fn fz_show_glyph(ctx: [*c]fz_context, text: [*c]fz_text, font: [*c]fz_font, trm: fz_matrix, glyph: c_int, unicode: c_int, wmode: c_int, bidi_level: c_int, markup_dir: fz_bidi_direction, language: fz_text_language) void;
pub extern fn fz_show_string(ctx: [*c]fz_context, text: [*c]fz_text, font: [*c]fz_font, trm: fz_matrix, s: [*c]const u8, wmode: c_int, bidi_level: c_int, markup_dir: fz_bidi_direction, language: fz_text_language) fz_matrix;
pub extern fn fz_measure_string(ctx: [*c]fz_context, user_font: [*c]fz_font, trm: fz_matrix, s: [*c]const u8, wmode: c_int, bidi_level: c_int, markup_dir: fz_bidi_direction, language: fz_text_language) fz_matrix;
pub extern fn fz_bound_text(ctx: [*c]fz_context, text: [*c]const fz_text, stroke: [*c]const fz_stroke_state, ctm: fz_matrix) fz_rect;
pub extern fn fz_text_language_from_string(str: [*c]const u8) fz_text_language;
pub extern fn fz_string_from_text_language(str: [*c]u8, lang: fz_text_language) [*c]u8;
pub const struct_fz_glyph = opaque {};
pub const fz_glyph = struct_fz_glyph;
pub extern fn fz_glyph_bbox(ctx: [*c]fz_context, glyph: ?*fz_glyph) fz_irect;
pub extern fn fz_glyph_bbox_no_ctx(src: ?*fz_glyph) fz_irect;
pub extern fn fz_glyph_width(ctx: [*c]fz_context, glyph: ?*fz_glyph) c_int;
pub extern fn fz_glyph_height(ctx: [*c]fz_context, glyph: ?*fz_glyph) c_int;
pub extern fn fz_keep_glyph(ctx: [*c]fz_context, pix: ?*fz_glyph) ?*fz_glyph;
pub extern fn fz_drop_glyph(ctx: [*c]fz_context, pix: ?*fz_glyph) void;
pub extern fn fz_outline_glyph(ctx: [*c]fz_context, font: [*c]fz_font, gid: c_int, ctm: fz_matrix) ?*fz_path;
pub const FZ_DEVFLAG_MASK: c_int = 1;
pub const FZ_DEVFLAG_COLOR: c_int = 2;
pub const FZ_DEVFLAG_UNCACHEABLE: c_int = 4;
pub const FZ_DEVFLAG_FILLCOLOR_UNDEFINED: c_int = 8;
pub const FZ_DEVFLAG_STROKECOLOR_UNDEFINED: c_int = 16;
pub const FZ_DEVFLAG_STARTCAP_UNDEFINED: c_int = 32;
pub const FZ_DEVFLAG_DASHCAP_UNDEFINED: c_int = 64;
pub const FZ_DEVFLAG_ENDCAP_UNDEFINED: c_int = 128;
pub const FZ_DEVFLAG_LINEJOIN_UNDEFINED: c_int = 256;
pub const FZ_DEVFLAG_MITERLIMIT_UNDEFINED: c_int = 512;
pub const FZ_DEVFLAG_LINEWIDTH_UNDEFINED: c_int = 1024;
pub const FZ_DEVFLAG_BBOX_DEFINED: c_int = 2048;
pub const FZ_DEVFLAG_GRIDFIT_AS_TILED: c_int = 4096;
const enum_unnamed_37 = c_uint;
pub const FZ_BLEND_NORMAL: c_int = 0;
pub const FZ_BLEND_MULTIPLY: c_int = 1;
pub const FZ_BLEND_SCREEN: c_int = 2;
pub const FZ_BLEND_OVERLAY: c_int = 3;
pub const FZ_BLEND_DARKEN: c_int = 4;
pub const FZ_BLEND_LIGHTEN: c_int = 5;
pub const FZ_BLEND_COLOR_DODGE: c_int = 6;
pub const FZ_BLEND_COLOR_BURN: c_int = 7;
pub const FZ_BLEND_HARD_LIGHT: c_int = 8;
pub const FZ_BLEND_SOFT_LIGHT: c_int = 9;
pub const FZ_BLEND_DIFFERENCE: c_int = 10;
pub const FZ_BLEND_EXCLUSION: c_int = 11;
pub const FZ_BLEND_HUE: c_int = 12;
pub const FZ_BLEND_SATURATION: c_int = 13;
pub const FZ_BLEND_COLOR: c_int = 14;
pub const FZ_BLEND_LUMINOSITY: c_int = 15;
pub const FZ_BLEND_MODEMASK: c_int = 15;
pub const FZ_BLEND_ISOLATED: c_int = 16;
pub const FZ_BLEND_KNOCKOUT: c_int = 32;
const enum_unnamed_38 = c_uint;
pub extern fn fz_lookup_blendmode(name: [*c]const u8) c_int;
pub extern fn fz_blendmode_name(blendmode: c_int) [*c]const u8;
pub const fz_device_container_stack = extern struct {
    scissor: fz_rect,
    type: c_int,
    user: c_int,
};
pub const fz_device_container_stack_is_clip: c_int = 0;
pub const fz_device_container_stack_is_mask: c_int = 1;
pub const fz_device_container_stack_is_group: c_int = 2;
pub const fz_device_container_stack_is_tile: c_int = 3;
const enum_unnamed_39 = c_uint;
pub extern fn fz_fill_path(ctx: [*c]fz_context, dev: [*c]fz_device, path: ?*const fz_path, even_odd: c_int, ctm: fz_matrix, colorspace: [*c]fz_colorspace, color: [*c]const f32, alpha: f32, color_params: fz_color_params) void;
pub extern fn fz_stroke_path(ctx: [*c]fz_context, dev: [*c]fz_device, path: ?*const fz_path, stroke: [*c]const fz_stroke_state, ctm: fz_matrix, colorspace: [*c]fz_colorspace, color: [*c]const f32, alpha: f32, color_params: fz_color_params) void;
pub extern fn fz_clip_path(ctx: [*c]fz_context, dev: [*c]fz_device, path: ?*const fz_path, even_odd: c_int, ctm: fz_matrix, scissor: fz_rect) void;
pub extern fn fz_clip_stroke_path(ctx: [*c]fz_context, dev: [*c]fz_device, path: ?*const fz_path, stroke: [*c]const fz_stroke_state, ctm: fz_matrix, scissor: fz_rect) void;
pub extern fn fz_fill_text(ctx: [*c]fz_context, dev: [*c]fz_device, text: [*c]const fz_text, ctm: fz_matrix, colorspace: [*c]fz_colorspace, color: [*c]const f32, alpha: f32, color_params: fz_color_params) void;
pub extern fn fz_stroke_text(ctx: [*c]fz_context, dev: [*c]fz_device, text: [*c]const fz_text, stroke: [*c]const fz_stroke_state, ctm: fz_matrix, colorspace: [*c]fz_colorspace, color: [*c]const f32, alpha: f32, color_params: fz_color_params) void;
pub extern fn fz_clip_text(ctx: [*c]fz_context, dev: [*c]fz_device, text: [*c]const fz_text, ctm: fz_matrix, scissor: fz_rect) void;
pub extern fn fz_clip_stroke_text(ctx: [*c]fz_context, dev: [*c]fz_device, text: [*c]const fz_text, stroke: [*c]const fz_stroke_state, ctm: fz_matrix, scissor: fz_rect) void;
pub extern fn fz_ignore_text(ctx: [*c]fz_context, dev: [*c]fz_device, text: [*c]const fz_text, ctm: fz_matrix) void;
pub extern fn fz_pop_clip(ctx: [*c]fz_context, dev: [*c]fz_device) void;
pub extern fn fz_fill_shade(ctx: [*c]fz_context, dev: [*c]fz_device, shade: [*c]fz_shade, ctm: fz_matrix, alpha: f32, color_params: fz_color_params) void;
pub extern fn fz_fill_image(ctx: [*c]fz_context, dev: [*c]fz_device, image: ?*fz_image, ctm: fz_matrix, alpha: f32, color_params: fz_color_params) void;
pub extern fn fz_fill_image_mask(ctx: [*c]fz_context, dev: [*c]fz_device, image: ?*fz_image, ctm: fz_matrix, colorspace: [*c]fz_colorspace, color: [*c]const f32, alpha: f32, color_params: fz_color_params) void;
pub extern fn fz_clip_image_mask(ctx: [*c]fz_context, dev: [*c]fz_device, image: ?*fz_image, ctm: fz_matrix, scissor: fz_rect) void;
pub extern fn fz_begin_mask(ctx: [*c]fz_context, dev: [*c]fz_device, area: fz_rect, luminosity: c_int, colorspace: [*c]fz_colorspace, bc: [*c]const f32, color_params: fz_color_params) void;
pub extern fn fz_end_mask(ctx: [*c]fz_context, dev: [*c]fz_device) void;
pub extern fn fz_begin_group(ctx: [*c]fz_context, dev: [*c]fz_device, area: fz_rect, cs: [*c]fz_colorspace, isolated: c_int, knockout: c_int, blendmode: c_int, alpha: f32) void;
pub extern fn fz_end_group(ctx: [*c]fz_context, dev: [*c]fz_device) void;
pub extern fn fz_begin_tile(ctx: [*c]fz_context, dev: [*c]fz_device, area: fz_rect, view: fz_rect, xstep: f32, ystep: f32, ctm: fz_matrix) void;
pub extern fn fz_begin_tile_id(ctx: [*c]fz_context, dev: [*c]fz_device, area: fz_rect, view: fz_rect, xstep: f32, ystep: f32, ctm: fz_matrix, id: c_int) c_int;
pub extern fn fz_end_tile(ctx: [*c]fz_context, dev: [*c]fz_device) void;
pub extern fn fz_render_flags(ctx: [*c]fz_context, dev: [*c]fz_device, set: c_int, clear: c_int) void;
pub extern fn fz_set_default_colorspaces(ctx: [*c]fz_context, dev: [*c]fz_device, default_cs: [*c]fz_default_colorspaces) void;
pub extern fn fz_begin_layer(ctx: [*c]fz_context, dev: [*c]fz_device, layer_name: [*c]const u8) void;
pub extern fn fz_end_layer(ctx: [*c]fz_context, dev: [*c]fz_device) void;
pub extern fn fz_new_device_of_size(ctx: [*c]fz_context, size: c_int) [*c]fz_device;
pub extern fn fz_close_device(ctx: [*c]fz_context, dev: [*c]fz_device) void;
pub extern fn fz_drop_device(ctx: [*c]fz_context, dev: [*c]fz_device) void;
pub extern fn fz_keep_device(ctx: [*c]fz_context, dev: [*c]fz_device) [*c]fz_device;
pub extern fn fz_enable_device_hints(ctx: [*c]fz_context, dev: [*c]fz_device, hints: c_int) void;
pub extern fn fz_disable_device_hints(ctx: [*c]fz_context, dev: [*c]fz_device, hints: c_int) void;
pub extern fn fz_device_current_scissor(ctx: [*c]fz_context, dev: [*c]fz_device) fz_rect;
pub const FZ_DONT_INTERPOLATE_IMAGES: c_int = 1;
pub const FZ_NO_CACHE: c_int = 2;
const enum_unnamed_40 = c_uint;
pub const fz_cookie = extern struct {
    abort: c_int,
    progress: c_int,
    progress_max: usize,
    errors: c_int,
    incomplete: c_int,
};
pub extern fn fz_new_trace_device(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_device;
pub extern fn fz_new_xmltext_device(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_device;
pub extern fn fz_new_bbox_device(ctx: [*c]fz_context, rectp: [*c]fz_rect) [*c]fz_device;
pub extern fn fz_new_test_device(ctx: [*c]fz_context, is_color: [*c]c_int, threshold: f32, options: c_int, passthrough: [*c]fz_device) [*c]fz_device;
pub const FZ_TEST_OPT_IMAGES: c_int = 1;
pub const FZ_TEST_OPT_SHADINGS: c_int = 2;
const enum_unnamed_41 = c_uint;
pub extern fn fz_new_draw_device(ctx: [*c]fz_context, transform: fz_matrix, dest: [*c]fz_pixmap) [*c]fz_device;
pub extern fn fz_new_draw_device_with_bbox(ctx: [*c]fz_context, transform: fz_matrix, dest: [*c]fz_pixmap, clip: [*c]const fz_irect) [*c]fz_device;
pub extern fn fz_new_draw_device_with_proof(ctx: [*c]fz_context, transform: fz_matrix, dest: [*c]fz_pixmap, proof_cs: [*c]fz_colorspace) [*c]fz_device;
pub extern fn fz_new_draw_device_with_bbox_proof(ctx: [*c]fz_context, transform: fz_matrix, dest: [*c]fz_pixmap, clip: [*c]const fz_irect, cs: [*c]fz_colorspace) [*c]fz_device;
pub extern fn fz_new_draw_device_type3(ctx: [*c]fz_context, transform: fz_matrix, dest: [*c]fz_pixmap) [*c]fz_device;
pub const fz_draw_options = extern struct {
    rotate: c_int,
    x_resolution: c_int,
    y_resolution: c_int,
    width: c_int,
    height: c_int,
    colorspace: [*c]fz_colorspace,
    alpha: c_int,
    graphics: c_int,
    text: c_int,
};
pub extern var fz_draw_options_usage: [*c]const u8;
pub extern fn fz_parse_draw_options(ctx: [*c]fz_context, options: [*c]fz_draw_options, string: [*c]const u8) [*c]fz_draw_options;
pub extern fn fz_new_draw_device_with_options(ctx: [*c]fz_context, options: [*c]const fz_draw_options, mediabox: fz_rect, pixmap: [*c][*c]fz_pixmap) [*c]fz_device;
pub const fz_display_list = struct_fz_display_list;
pub extern fn fz_new_display_list(ctx: [*c]fz_context, mediabox: fz_rect) ?*fz_display_list;
pub extern fn fz_new_list_device(ctx: [*c]fz_context, list: ?*fz_display_list) [*c]fz_device;
pub extern fn fz_run_display_list(ctx: [*c]fz_context, list: ?*fz_display_list, dev: [*c]fz_device, ctm: fz_matrix, scissor: fz_rect, cookie: [*c]fz_cookie) void;
pub extern fn fz_keep_display_list(ctx: [*c]fz_context, list: ?*fz_display_list) ?*fz_display_list;
pub extern fn fz_drop_display_list(ctx: [*c]fz_context, list: ?*fz_display_list) void;
pub extern fn fz_bound_display_list(ctx: [*c]fz_context, list: ?*fz_display_list) fz_rect;
pub extern fn fz_new_image_from_display_list(ctx: [*c]fz_context, w: f32, h: f32, list: ?*fz_display_list) ?*fz_image;
pub extern fn fz_display_list_is_empty(ctx: [*c]fz_context, list: ?*const fz_display_list) c_int;
pub const fz_document = struct_fz_document;
pub const fz_document_drop_fn = fn ([*c]fz_context, [*c]fz_document) callconv(.C) void;
pub const fz_document_needs_password_fn = fn ([*c]fz_context, [*c]fz_document) callconv(.C) c_int;
pub const fz_document_authenticate_password_fn = fn ([*c]fz_context, [*c]fz_document, [*c]const u8) callconv(.C) c_int;
pub const fz_document_has_permission_fn = fn ([*c]fz_context, [*c]fz_document, fz_permission) callconv(.C) c_int;
pub const struct_fz_outline = extern struct {
    refs: c_int,
    title: [*c]u8,
    uri: [*c]u8,
    page: fz_location,
    x: f32,
    y: f32,
    next: [*c]struct_fz_outline,
    down: [*c]struct_fz_outline,
    is_open: c_int,
};
pub const fz_outline = struct_fz_outline;
pub const fz_document_load_outline_fn = fn ([*c]fz_context, [*c]fz_document) callconv(.C) [*c]fz_outline;
pub const fz_outline_iterator_drop_fn = fn ([*c]fz_context, [*c]fz_outline_iterator) callconv(.C) void;
pub const fz_outline_iterator_item_fn = fn ([*c]fz_context, [*c]fz_outline_iterator) callconv(.C) [*c]fz_outline_item;
pub const fz_outline_iterator_next_fn = fn ([*c]fz_context, [*c]fz_outline_iterator) callconv(.C) c_int;
pub const fz_outline_iterator_prev_fn = fn ([*c]fz_context, [*c]fz_outline_iterator) callconv(.C) c_int;
pub const fz_outline_iterator_up_fn = fn ([*c]fz_context, [*c]fz_outline_iterator) callconv(.C) c_int;
pub const fz_outline_iterator_down_fn = fn ([*c]fz_context, [*c]fz_outline_iterator) callconv(.C) c_int;
pub const fz_outline_iterator_insert_fn = fn ([*c]fz_context, [*c]fz_outline_iterator, [*c]fz_outline_item) callconv(.C) c_int;
pub const fz_outline_iterator_update_fn = fn ([*c]fz_context, [*c]fz_outline_iterator, [*c]fz_outline_item) callconv(.C) void;
pub const fz_outline_iterator_delete_fn = fn ([*c]fz_context, [*c]fz_outline_iterator) callconv(.C) c_int;
pub const struct_fz_outline_iterator = extern struct {
    drop: ?fz_outline_iterator_drop_fn,
    item: ?fz_outline_iterator_item_fn,
    next: ?fz_outline_iterator_next_fn,
    prev: ?fz_outline_iterator_prev_fn,
    up: ?fz_outline_iterator_up_fn,
    down: ?fz_outline_iterator_down_fn,
    insert: ?fz_outline_iterator_insert_fn,
    update: ?fz_outline_iterator_update_fn,
    del: ?fz_outline_iterator_delete_fn,
    doc: [*c]fz_document,
};
pub const fz_outline_iterator = struct_fz_outline_iterator;
pub const fz_document_outline_iterator_fn = fn ([*c]fz_context, [*c]fz_document) callconv(.C) [*c]fz_outline_iterator;
pub const fz_document_layout_fn = fn ([*c]fz_context, [*c]fz_document, f32, f32, f32) callconv(.C) void;
pub const fz_bookmark = isize;
pub const fz_document_make_bookmark_fn = fn ([*c]fz_context, [*c]fz_document, fz_location) callconv(.C) fz_bookmark;
pub const fz_document_lookup_bookmark_fn = fn ([*c]fz_context, [*c]fz_document, fz_bookmark) callconv(.C) fz_location;
pub const fz_document_resolve_link_dest_fn = fn ([*c]fz_context, [*c]fz_document, [*c]const u8) callconv(.C) fz_link_dest;
pub const fz_document_format_link_uri_fn = fn ([*c]fz_context, [*c]fz_document, fz_link_dest) callconv(.C) [*c]u8;
pub const fz_document_count_chapters_fn = fn ([*c]fz_context, [*c]fz_document) callconv(.C) c_int;
pub const fz_document_count_pages_fn = fn ([*c]fz_context, [*c]fz_document, c_int) callconv(.C) c_int;
pub const fz_page_drop_page_fn = fn ([*c]fz_context, [*c]fz_page) callconv(.C) void;
pub const fz_page_bound_page_fn = fn ([*c]fz_context, [*c]fz_page) callconv(.C) fz_rect;
pub const fz_page_run_page_fn = fn ([*c]fz_context, [*c]fz_page, [*c]fz_device, fz_matrix, [*c]fz_cookie) callconv(.C) void;
pub const struct_fz_link = extern struct {
    refs: c_int,
    next: [*c]struct_fz_link,
    rect: fz_rect,
    uri: [*c]u8,
};
pub const fz_link = struct_fz_link;
pub const fz_page_load_links_fn = fn ([*c]fz_context, [*c]fz_page) callconv(.C) [*c]fz_link;
pub const fz_page_page_presentation_fn = fn ([*c]fz_context, [*c]fz_page, [*c]fz_transition, [*c]f32) callconv(.C) [*c]fz_transition;
pub const fz_page_control_separation_fn = fn ([*c]fz_context, [*c]fz_page, c_int, c_int) callconv(.C) void;
pub const fz_page_separation_disabled_fn = fn ([*c]fz_context, [*c]fz_page, c_int) callconv(.C) c_int;
pub const fz_page_separations_fn = fn ([*c]fz_context, [*c]fz_page) callconv(.C) ?*fz_separations;
pub const fz_page_uses_overprint_fn = fn ([*c]fz_context, [*c]fz_page) callconv(.C) c_int;
pub const fz_page_create_link_fn = fn ([*c]fz_context, [*c]fz_page, fz_rect, [*c]const u8) callconv(.C) [*c]fz_link;
pub const struct_fz_page = extern struct {
    refs: c_int,
    doc: [*c]fz_document,
    chapter: c_int,
    number: c_int,
    incomplete: c_int,
    drop_page: ?fz_page_drop_page_fn,
    bound_page: ?fz_page_bound_page_fn,
    run_page_contents: ?fz_page_run_page_fn,
    run_page_annots: ?fz_page_run_page_fn,
    run_page_widgets: ?fz_page_run_page_fn,
    load_links: ?fz_page_load_links_fn,
    page_presentation: ?fz_page_page_presentation_fn,
    control_separation: ?fz_page_control_separation_fn,
    separation_disabled: ?fz_page_separation_disabled_fn,
    separations: ?fz_page_separations_fn,
    overprint: ?fz_page_uses_overprint_fn,
    create_link: ?fz_page_create_link_fn,
    prev: [*c][*c]fz_page,
    next: [*c]fz_page,
};
pub const fz_page = struct_fz_page;
pub const fz_document_load_page_fn = fn ([*c]fz_context, [*c]fz_document, c_int, c_int) callconv(.C) [*c]fz_page;
pub const fz_document_lookup_metadata_fn = fn ([*c]fz_context, [*c]fz_document, [*c]const u8, [*c]u8, c_int) callconv(.C) c_int;
pub const fz_document_set_metadata_fn = fn ([*c]fz_context, [*c]fz_document, [*c]const u8, [*c]const u8) callconv(.C) c_int;
pub const fz_document_output_intent_fn = fn ([*c]fz_context, [*c]fz_document) callconv(.C) [*c]fz_colorspace;
pub const fz_document_output_accelerator_fn = fn ([*c]fz_context, [*c]fz_document, [*c]fz_output) callconv(.C) void;
pub const struct_fz_document = extern struct {
    refs: c_int,
    drop_document: ?fz_document_drop_fn,
    needs_password: ?fz_document_needs_password_fn,
    authenticate_password: ?fz_document_authenticate_password_fn,
    has_permission: ?fz_document_has_permission_fn,
    load_outline: ?fz_document_load_outline_fn,
    outline_iterator: ?fz_document_outline_iterator_fn,
    layout: ?fz_document_layout_fn,
    make_bookmark: ?fz_document_make_bookmark_fn,
    lookup_bookmark: ?fz_document_lookup_bookmark_fn,
    resolve_link_dest: ?fz_document_resolve_link_dest_fn,
    format_link_uri: ?fz_document_format_link_uri_fn,
    count_chapters: ?fz_document_count_chapters_fn,
    count_pages: ?fz_document_count_pages_fn,
    load_page: ?fz_document_load_page_fn,
    lookup_metadata: ?fz_document_lookup_metadata_fn,
    set_metadata: ?fz_document_set_metadata_fn,
    get_output_intent: ?fz_document_output_intent_fn,
    output_accelerator: ?fz_document_output_accelerator_fn,
    did_layout: c_int,
    is_reflowable: c_int,
    open: [*c]fz_page,
};
pub const fz_location = extern struct {
    chapter: c_int,
    page: c_int,
};
pub const struct_fz_layout_char = extern struct {
    x: f32,
    advance: f32,
    p: [*c]const u8,
    next: [*c]struct_fz_layout_char,
};
pub const fz_layout_char = struct_fz_layout_char;
pub const struct_fz_layout_line = extern struct {
    x: f32,
    y: f32,
    font_size: f32,
    p: [*c]const u8,
    text: [*c]fz_layout_char,
    next: [*c]struct_fz_layout_line,
};
pub const fz_layout_line = struct_fz_layout_line;
pub const fz_layout_block = extern struct {
    pool: ?*fz_pool,
    matrix: fz_matrix,
    inv_matrix: fz_matrix,
    head: [*c]fz_layout_line,
    tailp: [*c][*c]fz_layout_line,
    text_tailp: [*c][*c]fz_layout_char,
};
pub extern fn fz_new_layout(ctx: [*c]fz_context) [*c]fz_layout_block;
pub extern fn fz_drop_layout(ctx: [*c]fz_context, block: [*c]fz_layout_block) void;
pub extern fn fz_add_layout_line(ctx: [*c]fz_context, block: [*c]fz_layout_block, x: f32, y: f32, h: f32, p: [*c]const u8) void;
pub extern fn fz_add_layout_char(ctx: [*c]fz_context, block: [*c]fz_layout_block, x: f32, w: f32, p: [*c]const u8) void;
pub const fz_stext_char = struct_fz_stext_char;
pub const struct_fz_stext_char = extern struct {
    c: c_int,
    color: c_int,
    origin: fz_point,
    quad: fz_quad,
    size: f32,
    font: [*c]fz_font,
    next: [*c]fz_stext_char,
};
pub const fz_stext_line = struct_fz_stext_line;
pub const struct_fz_stext_line = extern struct {
    wmode: c_int,
    dir: fz_point,
    bbox: fz_rect,
    first_char: [*c]fz_stext_char,
    last_char: [*c]fz_stext_char,
    prev: [*c]fz_stext_line,
    next: [*c]fz_stext_line,
};
const struct_unnamed_43 = extern struct {
    first_line: [*c]fz_stext_line,
    last_line: [*c]fz_stext_line,
};
const struct_unnamed_44 = extern struct {
    transform: fz_matrix,
    image: ?*fz_image,
};
const union_unnamed_42 = extern union {
    t: struct_unnamed_43,
    i: struct_unnamed_44,
};
pub const fz_stext_block = struct_fz_stext_block;
pub const struct_fz_stext_block = extern struct {
    type: c_int,
    bbox: fz_rect,
    u: union_unnamed_42,
    prev: [*c]fz_stext_block,
    next: [*c]fz_stext_block,
};
pub const FZ_STEXT_PRESERVE_LIGATURES: c_int = 1;
pub const FZ_STEXT_PRESERVE_WHITESPACE: c_int = 2;
pub const FZ_STEXT_PRESERVE_IMAGES: c_int = 4;
pub const FZ_STEXT_INHIBIT_SPACES: c_int = 8;
pub const FZ_STEXT_DEHYPHENATE: c_int = 16;
pub const FZ_STEXT_PRESERVE_SPANS: c_int = 32;
pub const FZ_STEXT_MEDIABOX_CLIP: c_int = 64;
const enum_unnamed_45 = c_uint;
pub const fz_stext_page = extern struct {
    pool: ?*fz_pool,
    mediabox: fz_rect,
    first_block: [*c]fz_stext_block,
    last_block: [*c]fz_stext_block,
};
pub const FZ_STEXT_BLOCK_TEXT: c_int = 0;
pub const FZ_STEXT_BLOCK_IMAGE: c_int = 1;
const enum_unnamed_46 = c_uint;
pub extern var fz_stext_options_usage: [*c]const u8;
pub extern fn fz_new_stext_page(ctx: [*c]fz_context, mediabox: fz_rect) [*c]fz_stext_page;
pub extern fn fz_drop_stext_page(ctx: [*c]fz_context, page: [*c]fz_stext_page) void;
pub extern fn fz_print_stext_page_as_html(ctx: [*c]fz_context, out: [*c]fz_output, page: [*c]fz_stext_page, id: c_int) void;
pub extern fn fz_print_stext_header_as_html(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_print_stext_trailer_as_html(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_print_stext_page_as_xhtml(ctx: [*c]fz_context, out: [*c]fz_output, page: [*c]fz_stext_page, id: c_int) void;
pub extern fn fz_print_stext_header_as_xhtml(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_print_stext_trailer_as_xhtml(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_print_stext_page_as_xml(ctx: [*c]fz_context, out: [*c]fz_output, page: [*c]fz_stext_page, id: c_int) void;
pub extern fn fz_print_stext_page_as_json(ctx: [*c]fz_context, out: [*c]fz_output, page: [*c]fz_stext_page, scale: f32) void;
pub extern fn fz_print_stext_page_as_text(ctx: [*c]fz_context, out: [*c]fz_output, page: [*c]fz_stext_page) void;
pub extern fn fz_search_stext_page(ctx: [*c]fz_context, text: [*c]fz_stext_page, needle: [*c]const u8, hit_mark: [*c]c_int, hit_bbox: [*c]fz_quad, hit_max: c_int) c_int;
pub extern fn fz_highlight_selection(ctx: [*c]fz_context, page: [*c]fz_stext_page, a: fz_point, b: fz_point, quads: [*c]fz_quad, max_quads: c_int) c_int;
pub const FZ_SELECT_CHARS: c_int = 0;
pub const FZ_SELECT_WORDS: c_int = 1;
pub const FZ_SELECT_LINES: c_int = 2;
const enum_unnamed_47 = c_uint;
pub extern fn fz_snap_selection(ctx: [*c]fz_context, page: [*c]fz_stext_page, ap: [*c]fz_point, bp: [*c]fz_point, mode: c_int) fz_quad;
pub extern fn fz_copy_selection(ctx: [*c]fz_context, page: [*c]fz_stext_page, a: fz_point, b: fz_point, crlf: c_int) [*c]u8;
pub extern fn fz_copy_rectangle(ctx: [*c]fz_context, page: [*c]fz_stext_page, area: fz_rect, crlf: c_int) [*c]u8;
pub const fz_stext_options = extern struct {
    flags: c_int,
    scale: f32,
};
pub extern fn fz_parse_stext_options(ctx: [*c]fz_context, opts: [*c]fz_stext_options, string: [*c]const u8) [*c]fz_stext_options;
pub extern fn fz_new_stext_device(ctx: [*c]fz_context, page: [*c]fz_stext_page, options: [*c]const fz_stext_options) [*c]fz_device;
pub extern fn fz_new_ocr_device(ctx: [*c]fz_context, target: [*c]fz_device, ctm: fz_matrix, mediabox: fz_rect, with_list: c_int, language: [*c]const u8, datadir: [*c]const u8, progress: ?fn ([*c]fz_context, ?*anyopaque, c_int) callconv(.C) c_int, progress_arg: ?*anyopaque) [*c]fz_device;
pub extern fn fz_open_reflowed_document(ctx: [*c]fz_context, underdoc: [*c]fz_document, opts: [*c]const fz_stext_options) [*c]fz_document;
pub const FZ_TRANSITION_NONE: c_int = 0;
pub const FZ_TRANSITION_SPLIT: c_int = 1;
pub const FZ_TRANSITION_BLINDS: c_int = 2;
pub const FZ_TRANSITION_BOX: c_int = 3;
pub const FZ_TRANSITION_WIPE: c_int = 4;
pub const FZ_TRANSITION_DISSOLVE: c_int = 5;
pub const FZ_TRANSITION_GLITTER: c_int = 6;
pub const FZ_TRANSITION_FLY: c_int = 7;
pub const FZ_TRANSITION_PUSH: c_int = 8;
pub const FZ_TRANSITION_COVER: c_int = 9;
pub const FZ_TRANSITION_UNCOVER: c_int = 10;
pub const FZ_TRANSITION_FADE: c_int = 11;
const enum_unnamed_48 = c_uint;
pub const fz_transition = extern struct {
    type: c_int,
    duration: f32,
    vertical: c_int,
    outwards: c_int,
    direction: c_int,
    state0: c_int,
    state1: c_int,
};
pub extern fn fz_generate_transition(ctx: [*c]fz_context, tpix: [*c]fz_pixmap, opix: [*c]fz_pixmap, npix: [*c]fz_pixmap, time: c_int, trans: [*c]fz_transition) c_int;
pub extern fn fz_purge_glyph_cache(ctx: [*c]fz_context) void;
pub extern fn fz_render_glyph_pixmap(ctx: [*c]fz_context, font: [*c]fz_font, gid: c_int, ctm: [*c]fz_matrix, scissor: [*c]const fz_irect, aa: c_int) [*c]fz_pixmap;
pub extern fn fz_render_t3_glyph_direct(ctx: [*c]fz_context, dev: [*c]fz_device, font: [*c]fz_font, gid: c_int, trm: fz_matrix, gstate: ?*anyopaque, def_cs: [*c]fz_default_colorspaces) void;
pub extern fn fz_prepare_t3_glyph(ctx: [*c]fz_context, font: [*c]fz_font, gid: c_int) void;
pub extern fn fz_dump_glyph_cache_stats(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_subpixel_adjust(ctx: [*c]fz_context, ctm: [*c]fz_matrix, subpix_ctm: [*c]fz_matrix, qe: [*c]u8, qf: [*c]u8) f32;
pub const FZ_LINK_DEST_FIT: c_int = 0;
pub const FZ_LINK_DEST_FIT_B: c_int = 1;
pub const FZ_LINK_DEST_FIT_H: c_int = 2;
pub const FZ_LINK_DEST_FIT_BH: c_int = 3;
pub const FZ_LINK_DEST_FIT_V: c_int = 4;
pub const FZ_LINK_DEST_FIT_BV: c_int = 5;
pub const FZ_LINK_DEST_FIT_R: c_int = 6;
pub const FZ_LINK_DEST_XYZ: c_int = 7;
pub const fz_link_dest_type = c_uint;
pub const fz_link_dest = extern struct {
    loc: fz_location,
    type: fz_link_dest_type,
    x: f32,
    y: f32,
    w: f32,
    h: f32,
    zoom: f32,
};
pub extern fn fz_make_link_dest_none() fz_link_dest;
pub extern fn fz_make_link_dest_xyz(chapter: c_int, page: c_int, x: f32, y: f32, z: f32) fz_link_dest;
pub extern fn fz_new_link(ctx: [*c]fz_context, bbox: fz_rect, uri: [*c]const u8) [*c]fz_link;
pub extern fn fz_keep_link(ctx: [*c]fz_context, link: [*c]fz_link) [*c]fz_link;
pub extern fn fz_drop_link(ctx: [*c]fz_context, link: [*c]fz_link) void;
pub extern fn fz_is_external_link(ctx: [*c]fz_context, uri: [*c]const u8) c_int;
pub const fz_outline_item = extern struct {
    title: [*c]u8,
    uri: [*c]u8,
    is_open: c_int,
};
pub extern fn fz_outline_iterator_item(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator) [*c]fz_outline_item;
pub extern fn fz_outline_iterator_next(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator) c_int;
pub extern fn fz_outline_iterator_prev(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator) c_int;
pub extern fn fz_outline_iterator_up(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator) c_int;
pub extern fn fz_outline_iterator_down(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator) c_int;
pub extern fn fz_outline_iterator_insert(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator, item: [*c]fz_outline_item) c_int;
pub extern fn fz_outline_iterator_delete(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator) c_int;
pub extern fn fz_outline_iterator_update(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator, item: [*c]fz_outline_item) void;
pub extern fn fz_drop_outline_iterator(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator) void;
pub extern fn fz_new_outline(ctx: [*c]fz_context) [*c]fz_outline;
pub extern fn fz_keep_outline(ctx: [*c]fz_context, outline: [*c]fz_outline) [*c]fz_outline;
pub extern fn fz_drop_outline(ctx: [*c]fz_context, outline: [*c]fz_outline) void;
pub extern fn fz_load_outline_from_iterator(ctx: [*c]fz_context, iter: [*c]fz_outline_iterator) [*c]fz_outline;
pub extern fn fz_new_outline_iterator_of_size(ctx: [*c]fz_context, size: usize, doc: [*c]fz_document) [*c]fz_outline_iterator;
pub extern fn fz_outline_iterator_from_outline(ctx: [*c]fz_context, outline: [*c]fz_outline) [*c]fz_outline_iterator;
pub const fz_document_recognize_fn = fn ([*c]fz_context, [*c]const u8) callconv(.C) c_int;
pub const fz_document_open_fn = fn ([*c]fz_context, [*c]const u8) callconv(.C) [*c]fz_document;
pub const fz_document_open_with_stream_fn = fn ([*c]fz_context, [*c]fz_stream) callconv(.C) [*c]fz_document;
pub const fz_document_open_accel_fn = fn ([*c]fz_context, [*c]const u8, [*c]const u8) callconv(.C) [*c]fz_document;
pub const fz_document_open_accel_with_stream_fn = fn ([*c]fz_context, [*c]fz_stream, [*c]fz_stream) callconv(.C) [*c]fz_document;
pub const struct_fz_document_handler = extern struct {
    recognize: ?fz_document_recognize_fn,
    open: ?fz_document_open_fn,
    open_with_stream: ?fz_document_open_with_stream_fn,
    extensions: [*c][*c]const u8,
    mimetypes: [*c][*c]const u8,
    open_accel: ?fz_document_open_accel_fn,
    open_accel_with_stream: ?fz_document_open_accel_with_stream_fn,
};
pub const fz_document_handler = struct_fz_document_handler;
pub fn fz_make_location(arg_chapter: c_int, arg_page: c_int) callconv(.C) fz_location {
    var chapter = arg_chapter;
    var page = arg_page;
    var loc: fz_location = fz_location{
        .chapter = chapter,
        .page = page,
    };
    return loc;
}
pub const FZ_LAYOUT_KINDLE_W: c_int = 260;
pub const FZ_LAYOUT_KINDLE_H: c_int = 346;
pub const FZ_LAYOUT_KINDLE_EM: c_int = 9;
pub const FZ_LAYOUT_US_POCKET_W: c_int = 306;
pub const FZ_LAYOUT_US_POCKET_H: c_int = 495;
pub const FZ_LAYOUT_US_POCKET_EM: c_int = 10;
pub const FZ_LAYOUT_US_TRADE_W: c_int = 396;
pub const FZ_LAYOUT_US_TRADE_H: c_int = 612;
pub const FZ_LAYOUT_US_TRADE_EM: c_int = 11;
pub const FZ_LAYOUT_UK_A_FORMAT_W: c_int = 312;
pub const FZ_LAYOUT_UK_A_FORMAT_H: c_int = 504;
pub const FZ_LAYOUT_UK_A_FORMAT_EM: c_int = 10;
pub const FZ_LAYOUT_UK_B_FORMAT_W: c_int = 366;
pub const FZ_LAYOUT_UK_B_FORMAT_H: c_int = 561;
pub const FZ_LAYOUT_UK_B_FORMAT_EM: c_int = 10;
pub const FZ_LAYOUT_UK_C_FORMAT_W: c_int = 382;
pub const FZ_LAYOUT_UK_C_FORMAT_H: c_int = 612;
pub const FZ_LAYOUT_UK_C_FORMAT_EM: c_int = 11;
pub const FZ_LAYOUT_A5_W: c_int = 420;
pub const FZ_LAYOUT_A5_H: c_int = 595;
pub const FZ_LAYOUT_A5_EM: c_int = 11;
pub const FZ_DEFAULT_LAYOUT_W: c_int = 420;
pub const FZ_DEFAULT_LAYOUT_H: c_int = 595;
pub const FZ_DEFAULT_LAYOUT_EM: c_int = 11;
const enum_unnamed_49 = c_uint;
pub const FZ_PERMISSION_PRINT: c_int = 112;
pub const FZ_PERMISSION_COPY: c_int = 99;
pub const FZ_PERMISSION_EDIT: c_int = 101;
pub const FZ_PERMISSION_ANNOTATE: c_int = 110;
pub const fz_permission = c_uint;
pub const fz_process_opened_page_fn = fn ([*c]fz_context, [*c]fz_page, ?*anyopaque) callconv(.C) ?*anyopaque;
pub extern fn fz_register_document_handler(ctx: [*c]fz_context, handler: [*c]const fz_document_handler) void;
pub extern fn fz_register_document_handlers(ctx: [*c]fz_context) void;
pub extern fn fz_recognize_document(ctx: [*c]fz_context, magic: [*c]const u8) [*c]const fz_document_handler;
pub extern fn fz_open_document(ctx: [*c]fz_context, filename: [*c]const u8) [*c]fz_document;
pub extern fn fz_open_accelerated_document(ctx: [*c]fz_context, filename: [*c]const u8, accel: [*c]const u8) [*c]fz_document;
pub extern fn fz_open_document_with_stream(ctx: [*c]fz_context, magic: [*c]const u8, stream: [*c]fz_stream) [*c]fz_document;
pub extern fn fz_open_accelerated_document_with_stream(ctx: [*c]fz_context, magic: [*c]const u8, stream: [*c]fz_stream, accel: [*c]fz_stream) [*c]fz_document;
pub extern fn fz_document_supports_accelerator(ctx: [*c]fz_context, doc: [*c]fz_document) c_int;
pub extern fn fz_save_accelerator(ctx: [*c]fz_context, doc: [*c]fz_document, accel: [*c]const u8) void;
pub extern fn fz_output_accelerator(ctx: [*c]fz_context, doc: [*c]fz_document, accel: [*c]fz_output) void;
pub extern fn fz_new_document_of_size(ctx: [*c]fz_context, size: c_int) ?*anyopaque;
pub extern fn fz_keep_document(ctx: [*c]fz_context, doc: [*c]fz_document) [*c]fz_document;
pub extern fn fz_drop_document(ctx: [*c]fz_context, doc: [*c]fz_document) void;
pub extern fn fz_needs_password(ctx: [*c]fz_context, doc: [*c]fz_document) c_int;
pub extern fn fz_authenticate_password(ctx: [*c]fz_context, doc: [*c]fz_document, password: [*c]const u8) c_int;
pub extern fn fz_load_outline(ctx: [*c]fz_context, doc: [*c]fz_document) [*c]fz_outline;
pub extern fn fz_new_outline_iterator(ctx: [*c]fz_context, doc: [*c]fz_document) [*c]fz_outline_iterator;
pub extern fn fz_is_document_reflowable(ctx: [*c]fz_context, doc: [*c]fz_document) c_int;
pub extern fn fz_layout_document(ctx: [*c]fz_context, doc: [*c]fz_document, w: f32, h: f32, em: f32) void;
pub extern fn fz_make_bookmark(ctx: [*c]fz_context, doc: [*c]fz_document, loc: fz_location) fz_bookmark;
pub extern fn fz_lookup_bookmark(ctx: [*c]fz_context, doc: [*c]fz_document, mark: fz_bookmark) fz_location;
pub extern fn fz_count_pages(ctx: [*c]fz_context, doc: [*c]fz_document) c_int;
pub extern fn fz_resolve_link_dest(ctx: [*c]fz_context, doc: [*c]fz_document, uri: [*c]const u8) fz_link_dest;
pub extern fn fz_format_link_uri(ctx: [*c]fz_context, doc: [*c]fz_document, dest: fz_link_dest) [*c]u8;
pub extern fn fz_resolve_link(ctx: [*c]fz_context, doc: [*c]fz_document, uri: [*c]const u8, xp: [*c]f32, yp: [*c]f32) fz_location;
pub extern fn fz_last_page(ctx: [*c]fz_context, doc: [*c]fz_document) fz_location;
pub extern fn fz_next_page(ctx: [*c]fz_context, doc: [*c]fz_document, loc: fz_location) fz_location;
pub extern fn fz_previous_page(ctx: [*c]fz_context, doc: [*c]fz_document, loc: fz_location) fz_location;
pub extern fn fz_clamp_location(ctx: [*c]fz_context, doc: [*c]fz_document, loc: fz_location) fz_location;
pub extern fn fz_location_from_page_number(ctx: [*c]fz_context, doc: [*c]fz_document, number: c_int) fz_location;
pub extern fn fz_page_number_from_location(ctx: [*c]fz_context, doc: [*c]fz_document, loc: fz_location) c_int;
pub extern fn fz_load_page(ctx: [*c]fz_context, doc: [*c]fz_document, number: c_int) [*c]fz_page;
pub extern fn fz_count_chapters(ctx: [*c]fz_context, doc: [*c]fz_document) c_int;
pub extern fn fz_count_chapter_pages(ctx: [*c]fz_context, doc: [*c]fz_document, chapter: c_int) c_int;
pub extern fn fz_load_chapter_page(ctx: [*c]fz_context, doc: [*c]fz_document, chapter: c_int, page: c_int) [*c]fz_page;
pub extern fn fz_load_links(ctx: [*c]fz_context, page: [*c]fz_page) [*c]fz_link;
pub extern fn fz_new_page_of_size(ctx: [*c]fz_context, size: c_int, doc: [*c]fz_document) [*c]fz_page;
pub extern fn fz_bound_page(ctx: [*c]fz_context, page: [*c]fz_page) fz_rect;
pub extern fn fz_run_page(ctx: [*c]fz_context, page: [*c]fz_page, dev: [*c]fz_device, transform: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn fz_run_page_contents(ctx: [*c]fz_context, page: [*c]fz_page, dev: [*c]fz_device, transform: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn fz_run_page_annots(ctx: [*c]fz_context, page: [*c]fz_page, dev: [*c]fz_device, transform: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn fz_run_page_widgets(ctx: [*c]fz_context, page: [*c]fz_page, dev: [*c]fz_device, transform: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn fz_keep_page(ctx: [*c]fz_context, page: [*c]fz_page) [*c]fz_page;
pub extern fn fz_keep_page_locked(ctx: [*c]fz_context, page: [*c]fz_page) [*c]fz_page;
pub extern fn fz_drop_page(ctx: [*c]fz_context, page: [*c]fz_page) void;
pub extern fn fz_page_presentation(ctx: [*c]fz_context, page: [*c]fz_page, transition: [*c]fz_transition, duration: [*c]f32) [*c]fz_transition;
pub extern fn fz_has_permission(ctx: [*c]fz_context, doc: [*c]fz_document, p: fz_permission) c_int;
pub extern fn fz_lookup_metadata(ctx: [*c]fz_context, doc: [*c]fz_document, key: [*c]const u8, buf: [*c]u8, size: c_int) c_int;
pub extern fn fz_set_metadata(ctx: [*c]fz_context, doc: [*c]fz_document, key: [*c]const u8, value: [*c]const u8) void;
pub extern fn fz_document_output_intent(ctx: [*c]fz_context, doc: [*c]fz_document) [*c]fz_colorspace;
pub extern fn fz_page_separations(ctx: [*c]fz_context, page: [*c]fz_page) ?*fz_separations;
pub extern fn fz_page_uses_overprint(ctx: [*c]fz_context, page: [*c]fz_page) c_int;
pub extern fn fz_create_link(ctx: [*c]fz_context, page: [*c]fz_page, bbox: fz_rect, uri: [*c]const u8) [*c]fz_link;
pub extern fn fz_process_opened_pages(ctx: [*c]fz_context, doc: [*c]fz_document, process_openend_page: ?fz_process_opened_page_fn, state: ?*anyopaque) ?*anyopaque;
pub extern fn fz_new_display_list_from_page(ctx: [*c]fz_context, page: [*c]fz_page) ?*fz_display_list;
pub extern fn fz_new_display_list_from_page_number(ctx: [*c]fz_context, doc: [*c]fz_document, number: c_int) ?*fz_display_list;
pub extern fn fz_new_display_list_from_page_contents(ctx: [*c]fz_context, page: [*c]fz_page) ?*fz_display_list;
pub extern fn fz_new_pixmap_from_display_list(ctx: [*c]fz_context, list: ?*fz_display_list, ctm: fz_matrix, cs: [*c]fz_colorspace, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_page(ctx: [*c]fz_context, page: [*c]fz_page, ctm: fz_matrix, cs: [*c]fz_colorspace, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_page_number(ctx: [*c]fz_context, doc: [*c]fz_document, number: c_int, ctm: fz_matrix, cs: [*c]fz_colorspace, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_page_contents(ctx: [*c]fz_context, page: [*c]fz_page, ctm: fz_matrix, cs: [*c]fz_colorspace, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_display_list_with_separations(ctx: [*c]fz_context, list: ?*fz_display_list, ctm: fz_matrix, cs: [*c]fz_colorspace, seps: ?*fz_separations, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_page_with_separations(ctx: [*c]fz_context, page: [*c]fz_page, ctm: fz_matrix, cs: [*c]fz_colorspace, seps: ?*fz_separations, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_page_number_with_separations(ctx: [*c]fz_context, doc: [*c]fz_document, number: c_int, ctm: fz_matrix, cs: [*c]fz_colorspace, seps: ?*fz_separations, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_pixmap_from_page_contents_with_separations(ctx: [*c]fz_context, page: [*c]fz_page, ctm: fz_matrix, cs: [*c]fz_colorspace, seps: ?*fz_separations, alpha: c_int) [*c]fz_pixmap;
pub extern fn fz_new_stext_page_from_page(ctx: [*c]fz_context, page: [*c]fz_page, options: [*c]const fz_stext_options) [*c]fz_stext_page;
pub extern fn fz_new_stext_page_from_page_number(ctx: [*c]fz_context, doc: [*c]fz_document, number: c_int, options: [*c]const fz_stext_options) [*c]fz_stext_page;
pub extern fn fz_new_stext_page_from_chapter_page_number(ctx: [*c]fz_context, doc: [*c]fz_document, chapter: c_int, number: c_int, options: [*c]const fz_stext_options) [*c]fz_stext_page;
pub extern fn fz_new_stext_page_from_display_list(ctx: [*c]fz_context, list: ?*fz_display_list, options: [*c]const fz_stext_options) [*c]fz_stext_page;
pub extern fn fz_new_buffer_from_stext_page(ctx: [*c]fz_context, text: [*c]fz_stext_page) [*c]fz_buffer;
pub extern fn fz_new_buffer_from_page(ctx: [*c]fz_context, page: [*c]fz_page, options: [*c]const fz_stext_options) [*c]fz_buffer;
pub extern fn fz_new_buffer_from_page_number(ctx: [*c]fz_context, doc: [*c]fz_document, number: c_int, options: [*c]const fz_stext_options) [*c]fz_buffer;
pub extern fn fz_new_buffer_from_display_list(ctx: [*c]fz_context, list: ?*fz_display_list, options: [*c]const fz_stext_options) [*c]fz_buffer;
pub extern fn fz_search_page(ctx: [*c]fz_context, page: [*c]fz_page, needle: [*c]const u8, hit_mark: [*c]c_int, hit_bbox: [*c]fz_quad, hit_max: c_int) c_int;
pub extern fn fz_search_page_number(ctx: [*c]fz_context, doc: [*c]fz_document, number: c_int, needle: [*c]const u8, hit_mark: [*c]c_int, hit_bbox: [*c]fz_quad, hit_max: c_int) c_int;
pub extern fn fz_search_chapter_page_number(ctx: [*c]fz_context, doc: [*c]fz_document, chapter: c_int, page: c_int, needle: [*c]const u8, hit_mark: [*c]c_int, hit_bbox: [*c]fz_quad, hit_max: c_int) c_int;
pub extern fn fz_search_display_list(ctx: [*c]fz_context, list: ?*fz_display_list, needle: [*c]const u8, hit_mark: [*c]c_int, hit_bbox: [*c]fz_quad, hit_max: c_int) c_int;
pub extern fn fz_new_display_list_from_svg(ctx: [*c]fz_context, buf: [*c]fz_buffer, base_uri: [*c]const u8, zip: [*c]fz_archive, w: [*c]f32, h: [*c]f32) ?*fz_display_list;
pub extern fn fz_new_image_from_svg(ctx: [*c]fz_context, buf: [*c]fz_buffer, base_uri: [*c]const u8, zip: [*c]fz_archive) ?*fz_image;
pub extern fn fz_new_display_list_from_svg_xml(ctx: [*c]fz_context, xmldoc: ?*fz_xml_doc, xml: ?*fz_xml, base_uri: [*c]const u8, zip: [*c]fz_archive, w: [*c]f32, h: [*c]f32) ?*fz_display_list;
pub extern fn fz_new_image_from_svg_xml(ctx: [*c]fz_context, xmldoc: ?*fz_xml_doc, xml: ?*fz_xml, base_uri: [*c]const u8, zip: [*c]fz_archive) ?*fz_image;
pub extern fn fz_write_image_as_data_uri(ctx: [*c]fz_context, out: [*c]fz_output, image: ?*fz_image) void;
pub extern fn fz_write_pixmap_as_data_uri(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]fz_pixmap) void;
pub extern fn fz_new_xhtml_document_from_document(ctx: [*c]fz_context, old_doc: [*c]fz_document, opts: [*c]const fz_stext_options) [*c]fz_document;
pub extern fn fz_new_buffer_from_page_with_format(ctx: [*c]fz_context, page: [*c]fz_page, format: [*c]const u8, options: [*c]const u8, transform: fz_matrix, cookie: [*c]fz_cookie) [*c]fz_buffer;
pub const fz_document_writer = struct_fz_document_writer;
pub const fz_document_writer_begin_page_fn = fn ([*c]fz_context, [*c]fz_document_writer, fz_rect) callconv(.C) [*c]fz_device;
pub const fz_document_writer_end_page_fn = fn ([*c]fz_context, [*c]fz_document_writer, [*c]fz_device) callconv(.C) void;
pub const fz_document_writer_close_writer_fn = fn ([*c]fz_context, [*c]fz_document_writer) callconv(.C) void;
pub const fz_document_writer_drop_writer_fn = fn ([*c]fz_context, [*c]fz_document_writer) callconv(.C) void;
pub const struct_fz_document_writer = extern struct {
    begin_page: ?fz_document_writer_begin_page_fn,
    end_page: ?fz_document_writer_end_page_fn,
    close_writer: ?fz_document_writer_close_writer_fn,
    drop_writer: ?fz_document_writer_drop_writer_fn,
    dev: [*c]fz_device,
};
pub extern fn fz_has_option(ctx: [*c]fz_context, opts: [*c]const u8, key: [*c]const u8, val: [*c][*c]const u8) c_int;
pub extern fn fz_option_eq(a: [*c]const u8, b: [*c]const u8) c_int;
pub extern fn fz_copy_option(ctx: [*c]fz_context, val: [*c]const u8, dest: [*c]u8, maxlen: usize) usize;
pub extern fn fz_new_document_writer(ctx: [*c]fz_context, path: [*c]const u8, format: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_document_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, format: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pdf_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pdf_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_svg_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_text_writer(ctx: [*c]fz_context, format: [*c]const u8, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_text_writer_with_output(ctx: [*c]fz_context, format: [*c]const u8, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_odt_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_odt_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_docx_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_docx_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_ps_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_ps_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pcl_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pcl_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pclm_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pclm_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pwg_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pwg_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_cbz_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_cbz_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub const fz_pdfocr_progress_fn = fn ([*c]fz_context, ?*anyopaque, c_int, c_int) callconv(.C) c_int;
pub extern fn fz_new_pdfocr_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pdfocr_writer_with_output(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_pdfocr_writer_set_progress(ctx: [*c]fz_context, writer: [*c]fz_document_writer, progress: ?fz_pdfocr_progress_fn, ?*anyopaque) void;
pub extern fn fz_new_png_pixmap_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pam_pixmap_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pnm_pixmap_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pgm_pixmap_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_ppm_pixmap_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pbm_pixmap_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_new_pkm_pixmap_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8) [*c]fz_document_writer;
pub extern fn fz_begin_page(ctx: [*c]fz_context, wri: [*c]fz_document_writer, mediabox: fz_rect) [*c]fz_device;
pub extern fn fz_end_page(ctx: [*c]fz_context, wri: [*c]fz_document_writer) void;
pub extern fn fz_write_document(ctx: [*c]fz_context, wri: [*c]fz_document_writer, doc: [*c]fz_document) void;
pub extern fn fz_close_document_writer(ctx: [*c]fz_context, wri: [*c]fz_document_writer) void;
pub extern fn fz_drop_document_writer(ctx: [*c]fz_context, wri: [*c]fz_document_writer) void;
pub extern fn fz_new_pixmap_writer(ctx: [*c]fz_context, path: [*c]const u8, options: [*c]const u8, default_path: [*c]const u8, n: c_int, save: ?fn ([*c]fz_context, [*c]fz_pixmap, [*c]const u8) callconv(.C) void) [*c]fz_document_writer;
pub extern var fz_pdf_write_options_usage: [*c]const u8;
pub extern var fz_svg_write_options_usage: [*c]const u8;
pub extern var fz_pcl_write_options_usage: [*c]const u8;
pub extern var fz_pclm_write_options_usage: [*c]const u8;
pub extern var fz_pwg_write_options_usage: [*c]const u8;
pub extern var fz_pdfocr_write_options_usage: [*c]const u8;
pub extern fn fz_new_document_writer_of_size(ctx: [*c]fz_context, size: usize, begin_page: ?fz_document_writer_begin_page_fn, end_page: ?fz_document_writer_end_page_fn, close: ?fz_document_writer_close_writer_fn, drop: ?fz_document_writer_drop_writer_fn) [*c]fz_document_writer;
pub const fz_band_writer = struct_fz_band_writer;
pub const fz_drop_band_writer_fn = fn ([*c]fz_context, [*c]fz_band_writer) callconv(.C) void;
pub const fz_close_band_writer_fn = fn ([*c]fz_context, [*c]fz_band_writer) callconv(.C) void;
pub const fz_write_header_fn = fn ([*c]fz_context, [*c]fz_band_writer, [*c]fz_colorspace) callconv(.C) void;
pub const fz_write_band_fn = fn ([*c]fz_context, [*c]fz_band_writer, c_int, c_int, c_int, [*c]const u8) callconv(.C) void;
pub const fz_write_trailer_fn = fn ([*c]fz_context, [*c]fz_band_writer) callconv(.C) void;
pub const struct_fz_band_writer = extern struct {
    drop: ?fz_drop_band_writer_fn,
    close: ?fz_close_band_writer_fn,
    header: ?fz_write_header_fn,
    band: ?fz_write_band_fn,
    trailer: ?fz_write_trailer_fn,
    out: [*c]fz_output,
    w: c_int,
    h: c_int,
    n: c_int,
    s: c_int,
    alpha: c_int,
    xres: c_int,
    yres: c_int,
    pagenum: c_int,
    line: c_int,
    seps: ?*fz_separations,
};
pub extern fn fz_write_header(ctx: [*c]fz_context, writer: [*c]fz_band_writer, w: c_int, h: c_int, n: c_int, alpha: c_int, xres: c_int, yres: c_int, pagenum: c_int, cs: [*c]fz_colorspace, seps: ?*fz_separations) void;
pub extern fn fz_write_band(ctx: [*c]fz_context, writer: [*c]fz_band_writer, stride: c_int, band_height: c_int, samples: [*c]const u8) void;
pub extern fn fz_close_band_writer(ctx: [*c]fz_context, writer: [*c]fz_band_writer) void;
pub extern fn fz_drop_band_writer(ctx: [*c]fz_context, writer: [*c]fz_band_writer) void;
pub extern fn fz_new_band_writer_of_size(ctx: [*c]fz_context, size: usize, out: [*c]fz_output) [*c]fz_band_writer;
pub const fz_pcl_options = extern struct {
    features: c_int,
    odd_page_init: [*c]const u8,
    even_page_init: [*c]const u8,
    tumble: c_int,
    duplex_set: c_int,
    duplex: c_int,
    paper_size: c_int,
    manual_feed_set: c_int,
    manual_feed: c_int,
    media_position_set: c_int,
    media_position: c_int,
    orientation: c_int,
    page_count: c_int,
};
pub extern fn fz_pcl_preset(ctx: [*c]fz_context, opts: [*c]fz_pcl_options, preset: [*c]const u8) void;
pub extern fn fz_parse_pcl_options(ctx: [*c]fz_context, opts: [*c]fz_pcl_options, args: [*c]const u8) [*c]fz_pcl_options;
pub extern fn fz_new_mono_pcl_band_writer(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const fz_pcl_options) [*c]fz_band_writer;
pub extern fn fz_write_bitmap_as_pcl(ctx: [*c]fz_context, out: [*c]fz_output, bitmap: [*c]const fz_bitmap, pcl: [*c]const fz_pcl_options) void;
pub extern fn fz_save_bitmap_as_pcl(ctx: [*c]fz_context, bitmap: [*c]fz_bitmap, filename: [*c]u8, append: c_int, pcl: [*c]const fz_pcl_options) void;
pub extern fn fz_new_color_pcl_band_writer(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const fz_pcl_options) [*c]fz_band_writer;
pub extern fn fz_write_pixmap_as_pcl(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]const fz_pixmap, pcl: [*c]const fz_pcl_options) void;
pub extern fn fz_save_pixmap_as_pcl(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]u8, append: c_int, pcl: [*c]const fz_pcl_options) void;
pub const fz_pclm_options = extern struct {
    compress: c_int,
    strip_height: c_int,
    page_count: c_int,
};
pub extern fn fz_parse_pclm_options(ctx: [*c]fz_context, opts: [*c]fz_pclm_options, args: [*c]const u8) [*c]fz_pclm_options;
pub extern fn fz_new_pclm_band_writer(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const fz_pclm_options) [*c]fz_band_writer;
pub extern fn fz_write_pixmap_as_pclm(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]const fz_pixmap, options: [*c]const fz_pclm_options) void;
pub extern fn fz_save_pixmap_as_pclm(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]u8, append: c_int, options: [*c]const fz_pclm_options) void;
pub const fz_pdfocr_options = extern struct {
    compress: c_int,
    strip_height: c_int,
    language: [256]u8,
    datadir: [1024]u8,
    page_count: c_int,
};
pub extern fn fz_parse_pdfocr_options(ctx: [*c]fz_context, opts: [*c]fz_pdfocr_options, args: [*c]const u8) [*c]fz_pdfocr_options;
pub extern fn fz_new_pdfocr_band_writer(ctx: [*c]fz_context, out: [*c]fz_output, options: [*c]const fz_pdfocr_options) [*c]fz_band_writer;
pub extern fn fz_pdfocr_band_writer_set_progress(ctx: [*c]fz_context, writer: [*c]fz_band_writer, progress_fn: ?fz_pdfocr_progress_fn, progress_arg: ?*anyopaque) void;
pub extern fn fz_write_pixmap_as_pdfocr(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]const fz_pixmap, options: [*c]const fz_pdfocr_options) void;
pub extern fn fz_save_pixmap_as_pdfocr(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]u8, append: c_int, options: [*c]const fz_pdfocr_options) void;
pub extern fn fz_save_pixmap_as_png(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]const u8) void;
pub extern fn fz_write_pixmap_as_png(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]const fz_pixmap) void;
pub extern fn fz_new_png_band_writer(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_band_writer;
pub extern fn fz_new_buffer_from_image_as_png(ctx: [*c]fz_context, image: ?*fz_image, color_params: fz_color_params) [*c]fz_buffer;
pub extern fn fz_new_buffer_from_pixmap_as_png(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, color_params: fz_color_params) [*c]fz_buffer;
pub extern fn fz_save_pixmap_as_pnm(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]const u8) void;
pub extern fn fz_write_pixmap_as_pnm(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]fz_pixmap) void;
pub extern fn fz_new_pnm_band_writer(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_band_writer;
pub extern fn fz_save_pixmap_as_pam(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]const u8) void;
pub extern fn fz_write_pixmap_as_pam(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]fz_pixmap) void;
pub extern fn fz_new_pam_band_writer(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_band_writer;
pub extern fn fz_save_bitmap_as_pbm(ctx: [*c]fz_context, bitmap: [*c]fz_bitmap, filename: [*c]const u8) void;
pub extern fn fz_write_bitmap_as_pbm(ctx: [*c]fz_context, out: [*c]fz_output, bitmap: [*c]fz_bitmap) void;
pub extern fn fz_new_pbm_band_writer(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_band_writer;
pub extern fn fz_save_pixmap_as_pbm(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]const u8) void;
pub extern fn fz_save_bitmap_as_pkm(ctx: [*c]fz_context, bitmap: [*c]fz_bitmap, filename: [*c]const u8) void;
pub extern fn fz_write_bitmap_as_pkm(ctx: [*c]fz_context, out: [*c]fz_output, bitmap: [*c]fz_bitmap) void;
pub extern fn fz_new_pkm_band_writer(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_band_writer;
pub extern fn fz_save_pixmap_as_pkm(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]const u8) void;
pub extern fn fz_write_pixmap_as_ps(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]const fz_pixmap) void;
pub extern fn fz_save_pixmap_as_ps(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]u8, append: c_int) void;
pub extern fn fz_new_ps_band_writer(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_band_writer;
pub extern fn fz_write_ps_file_header(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub extern fn fz_write_ps_file_trailer(ctx: [*c]fz_context, out: [*c]fz_output, pages: c_int) void;
pub extern fn fz_save_pixmap_as_psd(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]const u8) void;
pub extern fn fz_write_pixmap_as_psd(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]const fz_pixmap) void;
pub extern fn fz_new_psd_band_writer(ctx: [*c]fz_context, out: [*c]fz_output) [*c]fz_band_writer;
pub const fz_pwg_options = extern struct {
    media_class: [64]u8,
    media_color: [64]u8,
    media_type: [64]u8,
    output_type: [64]u8,
    advance_distance: c_uint,
    advance_media: c_int,
    collate: c_int,
    cut_media: c_int,
    duplex: c_int,
    insert_sheet: c_int,
    jog: c_int,
    leading_edge: c_int,
    manual_feed: c_int,
    media_position: c_uint,
    media_weight: c_uint,
    mirror_print: c_int,
    negative_print: c_int,
    num_copies: c_uint,
    orientation: c_int,
    output_face_up: c_int,
    PageSize: [2]c_uint,
    separations: c_int,
    tray_switch: c_int,
    tumble: c_int,
    media_type_num: c_int,
    compression: c_int,
    row_count: c_uint,
    row_feed: c_uint,
    row_step: c_uint,
    rendering_intent: [64]u8,
    page_size_name: [64]u8,
};
pub extern fn fz_save_pixmap_as_pwg(ctx: [*c]fz_context, pixmap: [*c]fz_pixmap, filename: [*c]u8, append: c_int, pwg: [*c]const fz_pwg_options) void;
pub extern fn fz_save_bitmap_as_pwg(ctx: [*c]fz_context, bitmap: [*c]fz_bitmap, filename: [*c]u8, append: c_int, pwg: [*c]const fz_pwg_options) void;
pub extern fn fz_write_pixmap_as_pwg(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]const fz_pixmap, pwg: [*c]const fz_pwg_options) void;
pub extern fn fz_write_bitmap_as_pwg(ctx: [*c]fz_context, out: [*c]fz_output, bitmap: [*c]const fz_bitmap, pwg: [*c]const fz_pwg_options) void;
pub extern fn fz_write_pixmap_as_pwg_page(ctx: [*c]fz_context, out: [*c]fz_output, pixmap: [*c]const fz_pixmap, pwg: [*c]const fz_pwg_options) void;
pub extern fn fz_write_bitmap_as_pwg_page(ctx: [*c]fz_context, out: [*c]fz_output, bitmap: [*c]const fz_bitmap, pwg: [*c]const fz_pwg_options) void;
pub extern fn fz_new_mono_pwg_band_writer(ctx: [*c]fz_context, out: [*c]fz_output, pwg: [*c]const fz_pwg_options) [*c]fz_band_writer;
pub extern fn fz_new_pwg_band_writer(ctx: [*c]fz_context, out: [*c]fz_output, pwg: [*c]const fz_pwg_options) [*c]fz_band_writer;
pub extern fn fz_write_pwg_file_header(ctx: [*c]fz_context, out: [*c]fz_output) void;
pub const FZ_SVG_TEXT_AS_PATH: c_int = 0;
pub const FZ_SVG_TEXT_AS_TEXT: c_int = 1;
const enum_unnamed_50 = c_uint;
pub extern fn fz_new_svg_device(ctx: [*c]fz_context, out: [*c]fz_output, page_width: f32, page_height: f32, text_format: c_int, reuse_images: c_int) [*c]fz_device;
pub extern fn fz_new_svg_device_with_id(ctx: [*c]fz_context, out: [*c]fz_output, page_width: f32, page_height: f32, text_format: c_int, reuse_images: c_int, id: [*c]c_int) [*c]fz_device;
pub const struct_pdf_crypt = opaque {};
pub const pdf_crypt = struct_pdf_crypt;
pub const struct_pdf_ocg_descriptor = opaque {};
pub const pdf_ocg_descriptor = struct_pdf_ocg_descriptor;
pub const struct_pdf_xref_subsec = extern struct {
    next: [*c]struct_pdf_xref_subsec,
    len: c_int,
    start: c_int,
    table: [*c]pdf_xref_entry,
};
pub const pdf_xref_subsec = struct_pdf_xref_subsec;
pub const struct_pdf_obj = opaque {};
pub const pdf_obj = struct_pdf_obj;
pub const pdf_pkcs7_keep_signer_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_signer) callconv(.C) [*c]pdf_pkcs7_signer;
pub const pdf_pkcs7_drop_signer_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_signer) callconv(.C) void;
pub const pdf_pkcs7_get_signing_name_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_signer) callconv(.C) [*c]pdf_pkcs7_distinguished_name;
pub const pdf_pkcs7_max_digest_size_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_signer) callconv(.C) usize;
pub const pdf_pkcs7_create_digest_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_signer, [*c]fz_stream, [*c]u8, usize) callconv(.C) c_int;
pub const struct_pdf_pkcs7_signer = extern struct {
    keep: ?pdf_pkcs7_keep_signer_fn,
    drop: ?pdf_pkcs7_drop_signer_fn,
    get_signing_name: ?pdf_pkcs7_get_signing_name_fn,
    max_digest_size: ?pdf_pkcs7_max_digest_size_fn,
    create_digest: ?pdf_pkcs7_create_digest_fn,
};
pub const pdf_pkcs7_signer = struct_pdf_pkcs7_signer;
pub const struct_pdf_unsaved_sig = extern struct {
    field: ?*pdf_obj,
    byte_range_start: usize,
    byte_range_end: usize,
    contents_start: usize,
    contents_end: usize,
    signer: [*c]pdf_pkcs7_signer,
    next: [*c]struct_pdf_unsaved_sig,
};
pub const pdf_unsaved_sig = struct_pdf_unsaved_sig;
pub const struct_pdf_xref = extern struct {
    num_objects: c_int,
    subsec: [*c]pdf_xref_subsec,
    trailer: ?*pdf_obj,
    pre_repair_trailer: ?*pdf_obj,
    unsaved_sigs: [*c]pdf_unsaved_sig,
    unsaved_sigs_end: [*c][*c]pdf_unsaved_sig,
    end_ofs: i64,
};
pub const pdf_xref = struct_pdf_xref;
pub const struct_pdf_js = opaque {};
pub const pdf_js = struct_pdf_js;
pub const pdf_document = struct_pdf_document;
pub const struct_pdf_doc_event = extern struct {
    type: c_int,
};
pub const pdf_doc_event = struct_pdf_doc_event;
pub const pdf_doc_event_cb = fn ([*c]fz_context, [*c]pdf_document, [*c]pdf_doc_event, ?*anyopaque) callconv(.C) void;
pub const pdf_free_doc_event_data_cb = fn ([*c]fz_context, ?*anyopaque) callconv(.C) void;
const struct_unnamed_51 = extern struct {
    fonts: ?*fz_hash_table,
};
pub const struct_pdf_journal = opaque {};
pub const pdf_journal = struct_pdf_journal;
pub const struct_pdf_document = extern struct {
    super: fz_document,
    file: [*c]fz_stream,
    version: c_int,
    startxref: i64,
    file_size: i64,
    crypt: ?*pdf_crypt,
    ocg: ?*pdf_ocg_descriptor,
    oi: [*c]fz_colorspace,
    max_xref_len: c_int,
    num_xref_sections: c_int,
    saved_num_xref_sections: c_int,
    num_incremental_sections: c_int,
    xref_base: c_int,
    disallow_new_increments: c_int,
    local_xref: [*c]pdf_xref,
    local_xref_nesting: c_int,
    xref_sections: [*c]pdf_xref,
    saved_xref_sections: [*c]pdf_xref,
    xref_index: [*c]c_int,
    save_in_progress: c_int,
    has_xref_streams: c_int,
    has_old_style_xrefs: c_int,
    has_linearization_object: c_int,
    rev_page_count: c_int,
    rev_page_map: [*c]pdf_rev_page_map,
    repair_attempted: c_int,
    repair_in_progress: c_int,
    file_reading_linearly: c_int,
    file_length: i64,
    linear_page_count: c_int,
    linear_obj: ?*pdf_obj,
    linear_page_refs: [*c]?*pdf_obj,
    linear_page1_obj_num: c_int,
    linear_pos: i64,
    linear_page_num: c_int,
    hint_object_offset: c_int,
    hint_object_length: c_int,
    hints_loaded: c_int,
    hint_page: [*c]pdf_hint_page,
    hint_shared_ref: [*c]c_int,
    hint_shared: [*c]pdf_hint_shared,
    hint_obj_offsets_max: c_int,
    hint_obj_offsets: [*c]i64,
    resources_localised: c_int,
    lexbuf: pdf_lexbuf_large,
    js: ?*pdf_js,
    recalculate: c_int,
    redacted: c_int,
    resynth_required: c_int,
    event_cb: ?pdf_doc_event_cb,
    free_event_data_cb: ?pdf_free_doc_event_data_cb,
    event_cb_data: ?*anyopaque,
    num_type3_fonts: c_int,
    max_type3_fonts: c_int,
    type3_fonts: [*c][*c]fz_font,
    resources: struct_unnamed_51,
    orphans_max: c_int,
    orphans_count: c_int,
    orphans: [*c]?*pdf_obj,
    xfa: ?*fz_xml_doc,
    journal: ?*pdf_journal,
};
pub extern fn pdf_new_int(ctx: [*c]fz_context, i: i64) ?*pdf_obj;
pub extern fn pdf_new_real(ctx: [*c]fz_context, f: f32) ?*pdf_obj;
pub extern fn pdf_new_name(ctx: [*c]fz_context, str: [*c]const u8) ?*pdf_obj;
pub extern fn pdf_new_string(ctx: [*c]fz_context, str: [*c]const u8, len: usize) ?*pdf_obj;
pub extern fn pdf_new_text_string(ctx: [*c]fz_context, s: [*c]const u8) ?*pdf_obj;
pub extern fn pdf_new_indirect(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int, gen: c_int) ?*pdf_obj;
pub extern fn pdf_new_array(ctx: [*c]fz_context, doc: [*c]pdf_document, initialcap: c_int) ?*pdf_obj;
pub extern fn pdf_new_dict(ctx: [*c]fz_context, doc: [*c]pdf_document, initialcap: c_int) ?*pdf_obj;
pub extern fn pdf_new_rect(ctx: [*c]fz_context, doc: [*c]pdf_document, rect: fz_rect) ?*pdf_obj;
pub extern fn pdf_new_matrix(ctx: [*c]fz_context, doc: [*c]pdf_document, mtx: fz_matrix) ?*pdf_obj;
pub extern fn pdf_new_date(ctx: [*c]fz_context, doc: [*c]pdf_document, time: i64) ?*pdf_obj;
pub extern fn pdf_copy_array(ctx: [*c]fz_context, array: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_copy_dict(ctx: [*c]fz_context, dict: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_deep_copy_obj(ctx: [*c]fz_context, obj: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_keep_obj(ctx: [*c]fz_context, obj: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_drop_obj(ctx: [*c]fz_context, obj: ?*pdf_obj) void;
pub extern fn pdf_is_null(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_bool(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_int(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_real(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_number(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_name(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_string(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_array(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_dict(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_is_indirect(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_obj_num_is_stream(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) c_int;
pub extern fn pdf_is_stream(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_objcmp(ctx: [*c]fz_context, a: ?*pdf_obj, b: ?*pdf_obj) c_int;
pub extern fn pdf_objcmp_resolve(ctx: [*c]fz_context, a: ?*pdf_obj, b: ?*pdf_obj) c_int;
pub extern fn pdf_name_eq(ctx: [*c]fz_context, a: ?*pdf_obj, b: ?*pdf_obj) c_int;
pub extern fn pdf_obj_marked(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_mark_obj(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_unmark_obj(ctx: [*c]fz_context, obj: ?*pdf_obj) void;
pub const pdf_mark_list = extern struct {
    len: c_int,
    max: c_int,
    list: [*c]?*pdf_obj,
};
pub extern fn pdf_mark_list_push(ctx: [*c]fz_context, list: [*c]pdf_mark_list, obj: ?*pdf_obj) c_int;
pub extern fn pdf_mark_list_pop(ctx: [*c]fz_context, list: [*c]pdf_mark_list) void;
pub extern fn pdf_mark_list_init(ctx: [*c]fz_context, list: [*c]pdf_mark_list) void;
pub extern fn pdf_mark_list_free(ctx: [*c]fz_context, list: [*c]pdf_mark_list) void;
pub extern fn pdf_set_obj_memo(ctx: [*c]fz_context, obj: ?*pdf_obj, bit: c_int, memo: c_int) void;
pub extern fn pdf_obj_memo(ctx: [*c]fz_context, obj: ?*pdf_obj, bit: c_int, memo: [*c]c_int) c_int;
pub extern fn pdf_obj_is_dirty(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_dirty_obj(ctx: [*c]fz_context, obj: ?*pdf_obj) void;
pub extern fn pdf_clean_obj(ctx: [*c]fz_context, obj: ?*pdf_obj) void;
pub extern fn pdf_to_bool(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_to_int(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_to_int64(ctx: [*c]fz_context, obj: ?*pdf_obj) i64;
pub extern fn pdf_to_real(ctx: [*c]fz_context, obj: ?*pdf_obj) f32;
pub extern fn pdf_to_name(ctx: [*c]fz_context, obj: ?*pdf_obj) [*c]const u8;
pub extern fn pdf_to_text_string(ctx: [*c]fz_context, obj: ?*pdf_obj) [*c]const u8;
pub extern fn pdf_to_string(ctx: [*c]fz_context, obj: ?*pdf_obj, sizep: [*c]usize) [*c]const u8;
pub extern fn pdf_to_str_buf(ctx: [*c]fz_context, obj: ?*pdf_obj) [*c]u8;
pub extern fn pdf_to_str_len(ctx: [*c]fz_context, obj: ?*pdf_obj) usize;
pub extern fn pdf_to_num(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_to_gen(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_array_len(ctx: [*c]fz_context, array: ?*pdf_obj) c_int;
pub extern fn pdf_array_get(ctx: [*c]fz_context, array: ?*pdf_obj, i: c_int) ?*pdf_obj;
pub extern fn pdf_array_put(ctx: [*c]fz_context, array: ?*pdf_obj, i: c_int, obj: ?*pdf_obj) void;
pub extern fn pdf_array_put_drop(ctx: [*c]fz_context, array: ?*pdf_obj, i: c_int, obj: ?*pdf_obj) void;
pub extern fn pdf_array_push(ctx: [*c]fz_context, array: ?*pdf_obj, obj: ?*pdf_obj) void;
pub extern fn pdf_array_push_drop(ctx: [*c]fz_context, array: ?*pdf_obj, obj: ?*pdf_obj) void;
pub extern fn pdf_array_insert(ctx: [*c]fz_context, array: ?*pdf_obj, obj: ?*pdf_obj, index: c_int) void;
pub extern fn pdf_array_insert_drop(ctx: [*c]fz_context, array: ?*pdf_obj, obj: ?*pdf_obj, index: c_int) void;
pub extern fn pdf_array_delete(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int) void;
pub extern fn pdf_array_find(ctx: [*c]fz_context, array: ?*pdf_obj, obj: ?*pdf_obj) c_int;
pub extern fn pdf_array_contains(ctx: [*c]fz_context, array: ?*pdf_obj, obj: ?*pdf_obj) c_int;
pub extern fn pdf_dict_len(ctx: [*c]fz_context, dict: ?*pdf_obj) c_int;
pub extern fn pdf_dict_get_key(ctx: [*c]fz_context, dict: ?*pdf_obj, idx: c_int) ?*pdf_obj;
pub extern fn pdf_dict_get_val(ctx: [*c]fz_context, dict: ?*pdf_obj, idx: c_int) ?*pdf_obj;
pub extern fn pdf_dict_put_val_null(ctx: [*c]fz_context, obj: ?*pdf_obj, idx: c_int) void;
pub extern fn pdf_dict_get(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_dict_getp(ctx: [*c]fz_context, dict: ?*pdf_obj, path: [*c]const u8) ?*pdf_obj;
pub extern fn pdf_dict_getl(ctx: [*c]fz_context, dict: ?*pdf_obj, ...) ?*pdf_obj;
pub extern fn pdf_dict_geta(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, abbrev: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_dict_gets(ctx: [*c]fz_context, dict: ?*pdf_obj, key: [*c]const u8) ?*pdf_obj;
pub extern fn pdf_dict_getsa(ctx: [*c]fz_context, dict: ?*pdf_obj, key: [*c]const u8, abbrev: [*c]const u8) ?*pdf_obj;
pub extern fn pdf_dict_get_inheritable(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_dict_getp_inheritable(ctx: [*c]fz_context, dict: ?*pdf_obj, path: [*c]const u8) ?*pdf_obj;
pub extern fn pdf_dict_put(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, val: ?*pdf_obj) void;
pub extern fn pdf_dict_put_drop(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, val: ?*pdf_obj) void;
pub extern fn pdf_dict_get_put_drop(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, val: ?*pdf_obj, old_val: [*c]?*pdf_obj) void;
pub extern fn pdf_dict_puts(ctx: [*c]fz_context, dict: ?*pdf_obj, key: [*c]const u8, val: ?*pdf_obj) void;
pub extern fn pdf_dict_puts_drop(ctx: [*c]fz_context, dict: ?*pdf_obj, key: [*c]const u8, val: ?*pdf_obj) void;
pub extern fn pdf_dict_putp(ctx: [*c]fz_context, dict: ?*pdf_obj, path: [*c]const u8, val: ?*pdf_obj) void;
pub extern fn pdf_dict_putp_drop(ctx: [*c]fz_context, dict: ?*pdf_obj, path: [*c]const u8, val: ?*pdf_obj) void;
pub extern fn pdf_dict_putl(ctx: [*c]fz_context, dict: ?*pdf_obj, val: ?*pdf_obj, ...) void;
pub extern fn pdf_dict_putl_drop(ctx: [*c]fz_context, dict: ?*pdf_obj, val: ?*pdf_obj, ...) void;
pub extern fn pdf_dict_del(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) void;
pub extern fn pdf_dict_dels(ctx: [*c]fz_context, dict: ?*pdf_obj, key: [*c]const u8) void;
pub extern fn pdf_sort_dict(ctx: [*c]fz_context, dict: ?*pdf_obj) void;
pub extern fn pdf_dict_put_bool(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, x: c_int) void;
pub extern fn pdf_dict_put_int(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, x: i64) void;
pub extern fn pdf_dict_put_real(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, x: f64) void;
pub extern fn pdf_dict_put_name(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, x: [*c]const u8) void;
pub extern fn pdf_dict_put_string(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, x: [*c]const u8, n: usize) void;
pub extern fn pdf_dict_put_text_string(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, x: [*c]const u8) void;
pub extern fn pdf_dict_put_rect(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, x: fz_rect) void;
pub extern fn pdf_dict_put_matrix(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, x: fz_matrix) void;
pub extern fn pdf_dict_put_date(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, time: i64) void;
pub extern fn pdf_dict_put_array(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, initial: c_int) ?*pdf_obj;
pub extern fn pdf_dict_put_dict(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, initial: c_int) ?*pdf_obj;
pub extern fn pdf_dict_puts_dict(ctx: [*c]fz_context, dict: ?*pdf_obj, key: [*c]const u8, initial: c_int) ?*pdf_obj;
pub extern fn pdf_dict_get_bool(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) c_int;
pub extern fn pdf_dict_get_int(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) c_int;
pub extern fn pdf_dict_get_real(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) f32;
pub extern fn pdf_dict_get_name(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) [*c]const u8;
pub extern fn pdf_dict_get_string(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj, sizep: [*c]usize) [*c]const u8;
pub extern fn pdf_dict_get_text_string(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) [*c]const u8;
pub extern fn pdf_dict_get_rect(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) fz_rect;
pub extern fn pdf_dict_get_matrix(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) fz_matrix;
pub extern fn pdf_dict_get_date(ctx: [*c]fz_context, dict: ?*pdf_obj, key: ?*pdf_obj) i64;
pub extern fn pdf_array_push_bool(ctx: [*c]fz_context, array: ?*pdf_obj, x: c_int) void;
pub extern fn pdf_array_push_int(ctx: [*c]fz_context, array: ?*pdf_obj, x: i64) void;
pub extern fn pdf_array_push_real(ctx: [*c]fz_context, array: ?*pdf_obj, x: f64) void;
pub extern fn pdf_array_push_name(ctx: [*c]fz_context, array: ?*pdf_obj, x: [*c]const u8) void;
pub extern fn pdf_array_push_string(ctx: [*c]fz_context, array: ?*pdf_obj, x: [*c]const u8, n: usize) void;
pub extern fn pdf_array_push_text_string(ctx: [*c]fz_context, array: ?*pdf_obj, x: [*c]const u8) void;
pub extern fn pdf_array_push_array(ctx: [*c]fz_context, array: ?*pdf_obj, initial: c_int) ?*pdf_obj;
pub extern fn pdf_array_push_dict(ctx: [*c]fz_context, array: ?*pdf_obj, initial: c_int) ?*pdf_obj;
pub extern fn pdf_array_get_bool(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int) c_int;
pub extern fn pdf_array_get_int(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int) c_int;
pub extern fn pdf_array_get_real(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int) f32;
pub extern fn pdf_array_get_name(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int) [*c]const u8;
pub extern fn pdf_array_get_string(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int, sizep: [*c]usize) [*c]const u8;
pub extern fn pdf_array_get_text_string(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int) [*c]const u8;
pub extern fn pdf_array_get_rect(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int) fz_rect;
pub extern fn pdf_array_get_matrix(ctx: [*c]fz_context, array: ?*pdf_obj, index: c_int) fz_matrix;
pub extern fn pdf_set_obj_parent(ctx: [*c]fz_context, obj: ?*pdf_obj, num: c_int) void;
pub extern fn pdf_obj_refs(ctx: [*c]fz_context, ref: ?*pdf_obj) c_int;
pub extern fn pdf_obj_parent_num(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_sprint_obj(ctx: [*c]fz_context, buf: [*c]u8, cap: usize, len: [*c]usize, obj: ?*pdf_obj, tight: c_int, ascii: c_int) [*c]u8;
pub extern fn pdf_print_obj(ctx: [*c]fz_context, out: [*c]fz_output, obj: ?*pdf_obj, tight: c_int, ascii: c_int) void;
pub extern fn pdf_print_encrypted_obj(ctx: [*c]fz_context, out: [*c]fz_output, obj: ?*pdf_obj, tight: c_int, ascii: c_int, crypt: ?*pdf_crypt, num: c_int, gen: c_int) void;
pub extern fn pdf_debug_obj(ctx: [*c]fz_context, obj: ?*pdf_obj) void;
pub extern fn pdf_debug_ref(ctx: [*c]fz_context, obj: ?*pdf_obj) void;
pub extern fn pdf_new_utf8_from_pdf_string(ctx: [*c]fz_context, srcptr: [*c]const u8, srclen: usize) [*c]u8;
pub extern fn pdf_new_utf8_from_pdf_string_obj(ctx: [*c]fz_context, src: ?*pdf_obj) [*c]u8;
pub extern fn pdf_new_utf8_from_pdf_stream_obj(ctx: [*c]fz_context, src: ?*pdf_obj) [*c]u8;
pub extern fn pdf_load_stream_or_string_as_utf8(ctx: [*c]fz_context, src: ?*pdf_obj) [*c]u8;
pub extern fn pdf_to_quad(ctx: [*c]fz_context, array: ?*pdf_obj, offset: c_int) fz_quad;
pub extern fn pdf_to_rect(ctx: [*c]fz_context, array: ?*pdf_obj) fz_rect;
pub extern fn pdf_to_matrix(ctx: [*c]fz_context, array: ?*pdf_obj) fz_matrix;
pub extern fn pdf_to_date(ctx: [*c]fz_context, time: ?*pdf_obj) i64;
pub extern fn pdf_get_indirect_document(ctx: [*c]fz_context, obj: ?*pdf_obj) [*c]pdf_document;
pub extern fn pdf_get_bound_document(ctx: [*c]fz_context, obj: ?*pdf_obj) [*c]pdf_document;
pub extern fn pdf_set_int(ctx: [*c]fz_context, obj: ?*pdf_obj, i: i64) void;
pub const PDF_ENUM_NULL: c_int = 0;
pub const PDF_ENUM_TRUE: c_int = 1;
pub const PDF_ENUM_FALSE: c_int = 2;
pub const PDF_ENUM_NAME_1_2: c_int = 3;
pub const PDF_ENUM_NAME_3D: c_int = 4;
pub const PDF_ENUM_NAME_A: c_int = 5;
pub const PDF_ENUM_NAME_A85: c_int = 6;
pub const PDF_ENUM_NAME_AA: c_int = 7;
pub const PDF_ENUM_NAME_AC: c_int = 8;
pub const PDF_ENUM_NAME_AESV2: c_int = 9;
pub const PDF_ENUM_NAME_AESV3: c_int = 10;
pub const PDF_ENUM_NAME_AHx: c_int = 11;
pub const PDF_ENUM_NAME_AP: c_int = 12;
pub const PDF_ENUM_NAME_AS: c_int = 13;
pub const PDF_ENUM_NAME_ASCII85Decode: c_int = 14;
pub const PDF_ENUM_NAME_ASCIIHexDecode: c_int = 15;
pub const PDF_ENUM_NAME_AcroForm: c_int = 16;
pub const PDF_ENUM_NAME_Action: c_int = 17;
pub const PDF_ENUM_NAME_ActualText: c_int = 18;
pub const PDF_ENUM_NAME_Adobe_PPKLite: c_int = 19;
pub const PDF_ENUM_NAME_All: c_int = 20;
pub const PDF_ENUM_NAME_AllOff: c_int = 21;
pub const PDF_ENUM_NAME_AllOn: c_int = 22;
pub const PDF_ENUM_NAME_Alpha: c_int = 23;
pub const PDF_ENUM_NAME_Alt: c_int = 24;
pub const PDF_ENUM_NAME_Alternate: c_int = 25;
pub const PDF_ENUM_NAME_Annot: c_int = 26;
pub const PDF_ENUM_NAME_Annots: c_int = 27;
pub const PDF_ENUM_NAME_AnyOff: c_int = 28;
pub const PDF_ENUM_NAME_App: c_int = 29;
pub const PDF_ENUM_NAME_Approved: c_int = 30;
pub const PDF_ENUM_NAME_ArtBox: c_int = 31;
pub const PDF_ENUM_NAME_AsIs: c_int = 32;
pub const PDF_ENUM_NAME_Ascent: c_int = 33;
pub const PDF_ENUM_NAME_AuthEvent: c_int = 34;
pub const PDF_ENUM_NAME_Author: c_int = 35;
pub const PDF_ENUM_NAME_B: c_int = 36;
pub const PDF_ENUM_NAME_BBox: c_int = 37;
pub const PDF_ENUM_NAME_BC: c_int = 38;
pub const PDF_ENUM_NAME_BE: c_int = 39;
pub const PDF_ENUM_NAME_BG: c_int = 40;
pub const PDF_ENUM_NAME_BM: c_int = 41;
pub const PDF_ENUM_NAME_BPC: c_int = 42;
pub const PDF_ENUM_NAME_BS: c_int = 43;
pub const PDF_ENUM_NAME_Background: c_int = 44;
pub const PDF_ENUM_NAME_BaseEncoding: c_int = 45;
pub const PDF_ENUM_NAME_BaseFont: c_int = 46;
pub const PDF_ENUM_NAME_BaseState: c_int = 47;
pub const PDF_ENUM_NAME_BitsPerComponent: c_int = 48;
pub const PDF_ENUM_NAME_BitsPerCoordinate: c_int = 49;
pub const PDF_ENUM_NAME_BitsPerFlag: c_int = 50;
pub const PDF_ENUM_NAME_BitsPerSample: c_int = 51;
pub const PDF_ENUM_NAME_BlackIs1: c_int = 52;
pub const PDF_ENUM_NAME_BlackPoint: c_int = 53;
pub const PDF_ENUM_NAME_BleedBox: c_int = 54;
pub const PDF_ENUM_NAME_Blinds: c_int = 55;
pub const PDF_ENUM_NAME_Border: c_int = 56;
pub const PDF_ENUM_NAME_Bounds: c_int = 57;
pub const PDF_ENUM_NAME_Box: c_int = 58;
pub const PDF_ENUM_NAME_Bt: c_int = 59;
pub const PDF_ENUM_NAME_Btn: c_int = 60;
pub const PDF_ENUM_NAME_Butt: c_int = 61;
pub const PDF_ENUM_NAME_ByteRange: c_int = 62;
pub const PDF_ENUM_NAME_C: c_int = 63;
pub const PDF_ENUM_NAME_C0: c_int = 64;
pub const PDF_ENUM_NAME_C1: c_int = 65;
pub const PDF_ENUM_NAME_CA: c_int = 66;
pub const PDF_ENUM_NAME_CCF: c_int = 67;
pub const PDF_ENUM_NAME_CCITTFaxDecode: c_int = 68;
pub const PDF_ENUM_NAME_CF: c_int = 69;
pub const PDF_ENUM_NAME_CFM: c_int = 70;
pub const PDF_ENUM_NAME_CI: c_int = 71;
pub const PDF_ENUM_NAME_CIDFontType0: c_int = 72;
pub const PDF_ENUM_NAME_CIDFontType0C: c_int = 73;
pub const PDF_ENUM_NAME_CIDFontType2: c_int = 74;
pub const PDF_ENUM_NAME_CIDSystemInfo: c_int = 75;
pub const PDF_ENUM_NAME_CIDToGIDMap: c_int = 76;
pub const PDF_ENUM_NAME_CMYK: c_int = 77;
pub const PDF_ENUM_NAME_CS: c_int = 78;
pub const PDF_ENUM_NAME_CalCMYK: c_int = 79;
pub const PDF_ENUM_NAME_CalGray: c_int = 80;
pub const PDF_ENUM_NAME_CalRGB: c_int = 81;
pub const PDF_ENUM_NAME_CapHeight: c_int = 82;
pub const PDF_ENUM_NAME_Caret: c_int = 83;
pub const PDF_ENUM_NAME_Catalog: c_int = 84;
pub const PDF_ENUM_NAME_Cert: c_int = 85;
pub const PDF_ENUM_NAME_Ch: c_int = 86;
pub const PDF_ENUM_NAME_Changes: c_int = 87;
pub const PDF_ENUM_NAME_CharProcs: c_int = 88;
pub const PDF_ENUM_NAME_CheckSum: c_int = 89;
pub const PDF_ENUM_NAME_Circle: c_int = 90;
pub const PDF_ENUM_NAME_ClosedArrow: c_int = 91;
pub const PDF_ENUM_NAME_Collection: c_int = 92;
pub const PDF_ENUM_NAME_ColorSpace: c_int = 93;
pub const PDF_ENUM_NAME_ColorTransform: c_int = 94;
pub const PDF_ENUM_NAME_Colorants: c_int = 95;
pub const PDF_ENUM_NAME_Colors: c_int = 96;
pub const PDF_ENUM_NAME_Columns: c_int = 97;
pub const PDF_ENUM_NAME_Confidential: c_int = 98;
pub const PDF_ENUM_NAME_Configs: c_int = 99;
pub const PDF_ENUM_NAME_ContactInfo: c_int = 100;
pub const PDF_ENUM_NAME_Contents: c_int = 101;
pub const PDF_ENUM_NAME_Coords: c_int = 102;
pub const PDF_ENUM_NAME_Count: c_int = 103;
pub const PDF_ENUM_NAME_Cover: c_int = 104;
pub const PDF_ENUM_NAME_CreationDate: c_int = 105;
pub const PDF_ENUM_NAME_Creator: c_int = 106;
pub const PDF_ENUM_NAME_CropBox: c_int = 107;
pub const PDF_ENUM_NAME_Crypt: c_int = 108;
pub const PDF_ENUM_NAME_D: c_int = 109;
pub const PDF_ENUM_NAME_DA: c_int = 110;
pub const PDF_ENUM_NAME_DC: c_int = 111;
pub const PDF_ENUM_NAME_DCT: c_int = 112;
pub const PDF_ENUM_NAME_DCTDecode: c_int = 113;
pub const PDF_ENUM_NAME_DL: c_int = 114;
pub const PDF_ENUM_NAME_DOS: c_int = 115;
pub const PDF_ENUM_NAME_DP: c_int = 116;
pub const PDF_ENUM_NAME_DR: c_int = 117;
pub const PDF_ENUM_NAME_DS: c_int = 118;
pub const PDF_ENUM_NAME_DV: c_int = 119;
pub const PDF_ENUM_NAME_DW: c_int = 120;
pub const PDF_ENUM_NAME_DW2: c_int = 121;
pub const PDF_ENUM_NAME_DamagedRowsBeforeError: c_int = 122;
pub const PDF_ENUM_NAME_Data: c_int = 123;
pub const PDF_ENUM_NAME_Date: c_int = 124;
pub const PDF_ENUM_NAME_Decode: c_int = 125;
pub const PDF_ENUM_NAME_DecodeParms: c_int = 126;
pub const PDF_ENUM_NAME_Default: c_int = 127;
pub const PDF_ENUM_NAME_DefaultCMYK: c_int = 128;
pub const PDF_ENUM_NAME_DefaultGray: c_int = 129;
pub const PDF_ENUM_NAME_DefaultRGB: c_int = 130;
pub const PDF_ENUM_NAME_Departmental: c_int = 131;
pub const PDF_ENUM_NAME_Desc: c_int = 132;
pub const PDF_ENUM_NAME_DescendantFonts: c_int = 133;
pub const PDF_ENUM_NAME_Descent: c_int = 134;
pub const PDF_ENUM_NAME_Design: c_int = 135;
pub const PDF_ENUM_NAME_Dest: c_int = 136;
pub const PDF_ENUM_NAME_DestOutputProfile: c_int = 137;
pub const PDF_ENUM_NAME_Dests: c_int = 138;
pub const PDF_ENUM_NAME_DeviceCMYK: c_int = 139;
pub const PDF_ENUM_NAME_DeviceGray: c_int = 140;
pub const PDF_ENUM_NAME_DeviceN: c_int = 141;
pub const PDF_ENUM_NAME_DeviceRGB: c_int = 142;
pub const PDF_ENUM_NAME_Di: c_int = 143;
pub const PDF_ENUM_NAME_Diamond: c_int = 144;
pub const PDF_ENUM_NAME_Differences: c_int = 145;
pub const PDF_ENUM_NAME_DigestLocation: c_int = 146;
pub const PDF_ENUM_NAME_DigestMethod: c_int = 147;
pub const PDF_ENUM_NAME_DigestValue: c_int = 148;
pub const PDF_ENUM_NAME_Dissolve: c_int = 149;
pub const PDF_ENUM_NAME_Dm: c_int = 150;
pub const PDF_ENUM_NAME_DocMDP: c_int = 151;
pub const PDF_ENUM_NAME_Document: c_int = 152;
pub const PDF_ENUM_NAME_Domain: c_int = 153;
pub const PDF_ENUM_NAME_Draft: c_int = 154;
pub const PDF_ENUM_NAME_Dur: c_int = 155;
pub const PDF_ENUM_NAME_E: c_int = 156;
pub const PDF_ENUM_NAME_EF: c_int = 157;
pub const PDF_ENUM_NAME_EarlyChange: c_int = 158;
pub const PDF_ENUM_NAME_EmbeddedFile: c_int = 159;
pub const PDF_ENUM_NAME_EmbeddedFiles: c_int = 160;
pub const PDF_ENUM_NAME_Encode: c_int = 161;
pub const PDF_ENUM_NAME_EncodedByteAlign: c_int = 162;
pub const PDF_ENUM_NAME_Encoding: c_int = 163;
pub const PDF_ENUM_NAME_Encrypt: c_int = 164;
pub const PDF_ENUM_NAME_EncryptMetadata: c_int = 165;
pub const PDF_ENUM_NAME_EndOfBlock: c_int = 166;
pub const PDF_ENUM_NAME_EndOfLine: c_int = 167;
pub const PDF_ENUM_NAME_Exclude: c_int = 168;
pub const PDF_ENUM_NAME_Experimental: c_int = 169;
pub const PDF_ENUM_NAME_Expired: c_int = 170;
pub const PDF_ENUM_NAME_ExtGState: c_int = 171;
pub const PDF_ENUM_NAME_Extend: c_int = 172;
pub const PDF_ENUM_NAME_F: c_int = 173;
pub const PDF_ENUM_NAME_FL: c_int = 174;
pub const PDF_ENUM_NAME_FRM: c_int = 175;
pub const PDF_ENUM_NAME_FS: c_int = 176;
pub const PDF_ENUM_NAME_FT: c_int = 177;
pub const PDF_ENUM_NAME_Fade: c_int = 178;
pub const PDF_ENUM_NAME_Ff: c_int = 179;
pub const PDF_ENUM_NAME_FieldMDP: c_int = 180;
pub const PDF_ENUM_NAME_Fields: c_int = 181;
pub const PDF_ENUM_NAME_FileAttachment: c_int = 182;
pub const PDF_ENUM_NAME_FileSize: c_int = 183;
pub const PDF_ENUM_NAME_Filespec: c_int = 184;
pub const PDF_ENUM_NAME_Filter: c_int = 185;
pub const PDF_ENUM_NAME_Final: c_int = 186;
pub const PDF_ENUM_NAME_Fingerprint: c_int = 187;
pub const PDF_ENUM_NAME_First: c_int = 188;
pub const PDF_ENUM_NAME_FirstChar: c_int = 189;
pub const PDF_ENUM_NAME_FirstPage: c_int = 190;
pub const PDF_ENUM_NAME_Fit: c_int = 191;
pub const PDF_ENUM_NAME_FitB: c_int = 192;
pub const PDF_ENUM_NAME_FitBH: c_int = 193;
pub const PDF_ENUM_NAME_FitBV: c_int = 194;
pub const PDF_ENUM_NAME_FitH: c_int = 195;
pub const PDF_ENUM_NAME_FitR: c_int = 196;
pub const PDF_ENUM_NAME_FitV: c_int = 197;
pub const PDF_ENUM_NAME_Fl: c_int = 198;
pub const PDF_ENUM_NAME_Flags: c_int = 199;
pub const PDF_ENUM_NAME_FlateDecode: c_int = 200;
pub const PDF_ENUM_NAME_Fly: c_int = 201;
pub const PDF_ENUM_NAME_Font: c_int = 202;
pub const PDF_ENUM_NAME_FontBBox: c_int = 203;
pub const PDF_ENUM_NAME_FontDescriptor: c_int = 204;
pub const PDF_ENUM_NAME_FontFile: c_int = 205;
pub const PDF_ENUM_NAME_FontFile2: c_int = 206;
pub const PDF_ENUM_NAME_FontFile3: c_int = 207;
pub const PDF_ENUM_NAME_FontMatrix: c_int = 208;
pub const PDF_ENUM_NAME_FontName: c_int = 209;
pub const PDF_ENUM_NAME_ForComment: c_int = 210;
pub const PDF_ENUM_NAME_ForPublicRelease: c_int = 211;
pub const PDF_ENUM_NAME_Form: c_int = 212;
pub const PDF_ENUM_NAME_FormEx: c_int = 213;
pub const PDF_ENUM_NAME_FormType: c_int = 214;
pub const PDF_ENUM_NAME_FreeText: c_int = 215;
pub const PDF_ENUM_NAME_Function: c_int = 216;
pub const PDF_ENUM_NAME_FunctionType: c_int = 217;
pub const PDF_ENUM_NAME_Functions: c_int = 218;
pub const PDF_ENUM_NAME_G: c_int = 219;
pub const PDF_ENUM_NAME_Gamma: c_int = 220;
pub const PDF_ENUM_NAME_Glitter: c_int = 221;
pub const PDF_ENUM_NAME_GoTo: c_int = 222;
pub const PDF_ENUM_NAME_GoToR: c_int = 223;
pub const PDF_ENUM_NAME_Group: c_int = 224;
pub const PDF_ENUM_NAME_H: c_int = 225;
pub const PDF_ENUM_NAME_Height: c_int = 226;
pub const PDF_ENUM_NAME_Helv: c_int = 227;
pub const PDF_ENUM_NAME_Highlight: c_int = 228;
pub const PDF_ENUM_NAME_HistoryPos: c_int = 229;
pub const PDF_ENUM_NAME_I: c_int = 230;
pub const PDF_ENUM_NAME_IC: c_int = 231;
pub const PDF_ENUM_NAME_ICCBased: c_int = 232;
pub const PDF_ENUM_NAME_ID: c_int = 233;
pub const PDF_ENUM_NAME_IM: c_int = 234;
pub const PDF_ENUM_NAME_IRT: c_int = 235;
pub const PDF_ENUM_NAME_Identity: c_int = 236;
pub const PDF_ENUM_NAME_Identity_H: c_int = 237;
pub const PDF_ENUM_NAME_Identity_V: c_int = 238;
pub const PDF_ENUM_NAME_Image: c_int = 239;
pub const PDF_ENUM_NAME_ImageMask: c_int = 240;
pub const PDF_ENUM_NAME_Include: c_int = 241;
pub const PDF_ENUM_NAME_Index: c_int = 242;
pub const PDF_ENUM_NAME_Indexed: c_int = 243;
pub const PDF_ENUM_NAME_Info: c_int = 244;
pub const PDF_ENUM_NAME_Ink: c_int = 245;
pub const PDF_ENUM_NAME_InkList: c_int = 246;
pub const PDF_ENUM_NAME_Intent: c_int = 247;
pub const PDF_ENUM_NAME_Interpolate: c_int = 248;
pub const PDF_ENUM_NAME_IsMap: c_int = 249;
pub const PDF_ENUM_NAME_ItalicAngle: c_int = 250;
pub const PDF_ENUM_NAME_JBIG2Decode: c_int = 251;
pub const PDF_ENUM_NAME_JBIG2Globals: c_int = 252;
pub const PDF_ENUM_NAME_JPXDecode: c_int = 253;
pub const PDF_ENUM_NAME_JS: c_int = 254;
pub const PDF_ENUM_NAME_JavaScript: c_int = 255;
pub const PDF_ENUM_NAME_K: c_int = 256;
pub const PDF_ENUM_NAME_Keywords: c_int = 257;
pub const PDF_ENUM_NAME_Kids: c_int = 258;
pub const PDF_ENUM_NAME_L: c_int = 259;
pub const PDF_ENUM_NAME_LC: c_int = 260;
pub const PDF_ENUM_NAME_LE: c_int = 261;
pub const PDF_ENUM_NAME_LJ: c_int = 262;
pub const PDF_ENUM_NAME_LW: c_int = 263;
pub const PDF_ENUM_NAME_LZ: c_int = 264;
pub const PDF_ENUM_NAME_LZW: c_int = 265;
pub const PDF_ENUM_NAME_LZWDecode: c_int = 266;
pub const PDF_ENUM_NAME_Lab: c_int = 267;
pub const PDF_ENUM_NAME_Lang: c_int = 268;
pub const PDF_ENUM_NAME_Last: c_int = 269;
pub const PDF_ENUM_NAME_LastChar: c_int = 270;
pub const PDF_ENUM_NAME_LastPage: c_int = 271;
pub const PDF_ENUM_NAME_Launch: c_int = 272;
pub const PDF_ENUM_NAME_Length: c_int = 273;
pub const PDF_ENUM_NAME_Length1: c_int = 274;
pub const PDF_ENUM_NAME_Length2: c_int = 275;
pub const PDF_ENUM_NAME_Length3: c_int = 276;
pub const PDF_ENUM_NAME_Limits: c_int = 277;
pub const PDF_ENUM_NAME_Line: c_int = 278;
pub const PDF_ENUM_NAME_Linearized: c_int = 279;
pub const PDF_ENUM_NAME_Link: c_int = 280;
pub const PDF_ENUM_NAME_Location: c_int = 281;
pub const PDF_ENUM_NAME_Lock: c_int = 282;
pub const PDF_ENUM_NAME_Locked: c_int = 283;
pub const PDF_ENUM_NAME_Luminosity: c_int = 284;
pub const PDF_ENUM_NAME_M: c_int = 285;
pub const PDF_ENUM_NAME_MCID: c_int = 286;
pub const PDF_ENUM_NAME_MK: c_int = 287;
pub const PDF_ENUM_NAME_ML: c_int = 288;
pub const PDF_ENUM_NAME_MMType1: c_int = 289;
pub const PDF_ENUM_NAME_Mac: c_int = 290;
pub const PDF_ENUM_NAME_Mask: c_int = 291;
pub const PDF_ENUM_NAME_Matrix: c_int = 292;
pub const PDF_ENUM_NAME_Matte: c_int = 293;
pub const PDF_ENUM_NAME_MaxLen: c_int = 294;
pub const PDF_ENUM_NAME_MediaBox: c_int = 295;
pub const PDF_ENUM_NAME_Metadata: c_int = 296;
pub const PDF_ENUM_NAME_MissingWidth: c_int = 297;
pub const PDF_ENUM_NAME_ModDate: c_int = 298;
pub const PDF_ENUM_NAME_Movie: c_int = 299;
pub const PDF_ENUM_NAME_Msg: c_int = 300;
pub const PDF_ENUM_NAME_Multiply: c_int = 301;
pub const PDF_ENUM_NAME_N: c_int = 302;
pub const PDF_ENUM_NAME_Name: c_int = 303;
pub const PDF_ENUM_NAME_Named: c_int = 304;
pub const PDF_ENUM_NAME_Names: c_int = 305;
pub const PDF_ENUM_NAME_NewWindow: c_int = 306;
pub const PDF_ENUM_NAME_Next: c_int = 307;
pub const PDF_ENUM_NAME_NextPage: c_int = 308;
pub const PDF_ENUM_NAME_NonEFontNoWarn: c_int = 309;
pub const PDF_ENUM_NAME_None: c_int = 310;
pub const PDF_ENUM_NAME_Normal: c_int = 311;
pub const PDF_ENUM_NAME_NotApproved: c_int = 312;
pub const PDF_ENUM_NAME_NotForPublicRelease: c_int = 313;
pub const PDF_ENUM_NAME_NumSections: c_int = 314;
pub const PDF_ENUM_NAME_Nums: c_int = 315;
pub const PDF_ENUM_NAME_O: c_int = 316;
pub const PDF_ENUM_NAME_OC: c_int = 317;
pub const PDF_ENUM_NAME_OCG: c_int = 318;
pub const PDF_ENUM_NAME_OCGs: c_int = 319;
pub const PDF_ENUM_NAME_OCMD: c_int = 320;
pub const PDF_ENUM_NAME_OCProperties: c_int = 321;
pub const PDF_ENUM_NAME_OE: c_int = 322;
pub const PDF_ENUM_NAME_OFF: c_int = 323;
pub const PDF_ENUM_NAME_ON: c_int = 324;
pub const PDF_ENUM_NAME_OP: c_int = 325;
pub const PDF_ENUM_NAME_OPM: c_int = 326;
pub const PDF_ENUM_NAME_OS: c_int = 327;
pub const PDF_ENUM_NAME_ObjStm: c_int = 328;
pub const PDF_ENUM_NAME_Of: c_int = 329;
pub const PDF_ENUM_NAME_Off: c_int = 330;
pub const PDF_ENUM_NAME_Open: c_int = 331;
pub const PDF_ENUM_NAME_OpenArrow: c_int = 332;
pub const PDF_ENUM_NAME_OpenType: c_int = 333;
pub const PDF_ENUM_NAME_Opt: c_int = 334;
pub const PDF_ENUM_NAME_Order: c_int = 335;
pub const PDF_ENUM_NAME_Ordering: c_int = 336;
pub const PDF_ENUM_NAME_Outlines: c_int = 337;
pub const PDF_ENUM_NAME_OutputIntents: c_int = 338;
pub const PDF_ENUM_NAME_P: c_int = 339;
pub const PDF_ENUM_NAME_PDF: c_int = 340;
pub const PDF_ENUM_NAME_PS: c_int = 341;
pub const PDF_ENUM_NAME_Page: c_int = 342;
pub const PDF_ENUM_NAME_PageMode: c_int = 343;
pub const PDF_ENUM_NAME_Pages: c_int = 344;
pub const PDF_ENUM_NAME_PaintType: c_int = 345;
pub const PDF_ENUM_NAME_Params: c_int = 346;
pub const PDF_ENUM_NAME_Parent: c_int = 347;
pub const PDF_ENUM_NAME_Pattern: c_int = 348;
pub const PDF_ENUM_NAME_PatternType: c_int = 349;
pub const PDF_ENUM_NAME_Perms: c_int = 350;
pub const PDF_ENUM_NAME_PolyLine: c_int = 351;
pub const PDF_ENUM_NAME_Polygon: c_int = 352;
pub const PDF_ENUM_NAME_Popup: c_int = 353;
pub const PDF_ENUM_NAME_PreRelease: c_int = 354;
pub const PDF_ENUM_NAME_Predictor: c_int = 355;
pub const PDF_ENUM_NAME_Prev: c_int = 356;
pub const PDF_ENUM_NAME_PrevPage: c_int = 357;
pub const PDF_ENUM_NAME_Preview: c_int = 358;
pub const PDF_ENUM_NAME_Print: c_int = 359;
pub const PDF_ENUM_NAME_PrinterMark: c_int = 360;
pub const PDF_ENUM_NAME_ProcSet: c_int = 361;
pub const PDF_ENUM_NAME_Producer: c_int = 362;
pub const PDF_ENUM_NAME_Properties: c_int = 363;
pub const PDF_ENUM_NAME_Prop_AuthTime: c_int = 364;
pub const PDF_ENUM_NAME_Prop_AuthType: c_int = 365;
pub const PDF_ENUM_NAME_Prop_Build: c_int = 366;
pub const PDF_ENUM_NAME_PubSec: c_int = 367;
pub const PDF_ENUM_NAME_Push: c_int = 368;
pub const PDF_ENUM_NAME_Q: c_int = 369;
pub const PDF_ENUM_NAME_QuadPoints: c_int = 370;
pub const PDF_ENUM_NAME_R: c_int = 371;
pub const PDF_ENUM_NAME_RBGroups: c_int = 372;
pub const PDF_ENUM_NAME_RC: c_int = 373;
pub const PDF_ENUM_NAME_RClosedArrow: c_int = 374;
pub const PDF_ENUM_NAME_REx: c_int = 375;
pub const PDF_ENUM_NAME_RGB: c_int = 376;
pub const PDF_ENUM_NAME_RI: c_int = 377;
pub const PDF_ENUM_NAME_RL: c_int = 378;
pub const PDF_ENUM_NAME_ROpenArrow: c_int = 379;
pub const PDF_ENUM_NAME_Range: c_int = 380;
pub const PDF_ENUM_NAME_Reason: c_int = 381;
pub const PDF_ENUM_NAME_Rect: c_int = 382;
pub const PDF_ENUM_NAME_Redact: c_int = 383;
pub const PDF_ENUM_NAME_Ref: c_int = 384;
pub const PDF_ENUM_NAME_Reference: c_int = 385;
pub const PDF_ENUM_NAME_Registry: c_int = 386;
pub const PDF_ENUM_NAME_ResetForm: c_int = 387;
pub const PDF_ENUM_NAME_Resources: c_int = 388;
pub const PDF_ENUM_NAME_Root: c_int = 389;
pub const PDF_ENUM_NAME_Rotate: c_int = 390;
pub const PDF_ENUM_NAME_Rows: c_int = 391;
pub const PDF_ENUM_NAME_RunLengthDecode: c_int = 392;
pub const PDF_ENUM_NAME_S: c_int = 393;
pub const PDF_ENUM_NAME_SMask: c_int = 394;
pub const PDF_ENUM_NAME_SMaskInData: c_int = 395;
pub const PDF_ENUM_NAME_Schema: c_int = 396;
pub const PDF_ENUM_NAME_Screen: c_int = 397;
pub const PDF_ENUM_NAME_Separation: c_int = 398;
pub const PDF_ENUM_NAME_Shading: c_int = 399;
pub const PDF_ENUM_NAME_ShadingType: c_int = 400;
pub const PDF_ENUM_NAME_Si: c_int = 401;
pub const PDF_ENUM_NAME_Sig: c_int = 402;
pub const PDF_ENUM_NAME_SigFlags: c_int = 403;
pub const PDF_ENUM_NAME_SigQ: c_int = 404;
pub const PDF_ENUM_NAME_SigRef: c_int = 405;
pub const PDF_ENUM_NAME_Size: c_int = 406;
pub const PDF_ENUM_NAME_Slash: c_int = 407;
pub const PDF_ENUM_NAME_Sold: c_int = 408;
pub const PDF_ENUM_NAME_Sound: c_int = 409;
pub const PDF_ENUM_NAME_Split: c_int = 410;
pub const PDF_ENUM_NAME_Square: c_int = 411;
pub const PDF_ENUM_NAME_Squiggly: c_int = 412;
pub const PDF_ENUM_NAME_Stamp: c_int = 413;
pub const PDF_ENUM_NAME_Standard: c_int = 414;
pub const PDF_ENUM_NAME_StdCF: c_int = 415;
pub const PDF_ENUM_NAME_StemV: c_int = 416;
pub const PDF_ENUM_NAME_StmF: c_int = 417;
pub const PDF_ENUM_NAME_StrF: c_int = 418;
pub const PDF_ENUM_NAME_StrikeOut: c_int = 419;
pub const PDF_ENUM_NAME_StructParent: c_int = 420;
pub const PDF_ENUM_NAME_StructParents: c_int = 421;
pub const PDF_ENUM_NAME_SubFilter: c_int = 422;
pub const PDF_ENUM_NAME_Subject: c_int = 423;
pub const PDF_ENUM_NAME_Subtype: c_int = 424;
pub const PDF_ENUM_NAME_Subtype2: c_int = 425;
pub const PDF_ENUM_NAME_Supplement: c_int = 426;
pub const PDF_ENUM_NAME_Symb: c_int = 427;
pub const PDF_ENUM_NAME_T: c_int = 428;
pub const PDF_ENUM_NAME_TI: c_int = 429;
pub const PDF_ENUM_NAME_TR: c_int = 430;
pub const PDF_ENUM_NAME_TR2: c_int = 431;
pub const PDF_ENUM_NAME_TU: c_int = 432;
pub const PDF_ENUM_NAME_Text: c_int = 433;
pub const PDF_ENUM_NAME_TilingType: c_int = 434;
pub const PDF_ENUM_NAME_Times: c_int = 435;
pub const PDF_ENUM_NAME_Title: c_int = 436;
pub const PDF_ENUM_NAME_ToUnicode: c_int = 437;
pub const PDF_ENUM_NAME_TopSecret: c_int = 438;
pub const PDF_ENUM_NAME_Trans: c_int = 439;
pub const PDF_ENUM_NAME_TransformMethod: c_int = 440;
pub const PDF_ENUM_NAME_TransformParams: c_int = 441;
pub const PDF_ENUM_NAME_Transparency: c_int = 442;
pub const PDF_ENUM_NAME_TrapNet: c_int = 443;
pub const PDF_ENUM_NAME_TrimBox: c_int = 444;
pub const PDF_ENUM_NAME_TrueType: c_int = 445;
pub const PDF_ENUM_NAME_TrustedMode: c_int = 446;
pub const PDF_ENUM_NAME_Tx: c_int = 447;
pub const PDF_ENUM_NAME_Type: c_int = 448;
pub const PDF_ENUM_NAME_Type0: c_int = 449;
pub const PDF_ENUM_NAME_Type1: c_int = 450;
pub const PDF_ENUM_NAME_Type1C: c_int = 451;
pub const PDF_ENUM_NAME_Type3: c_int = 452;
pub const PDF_ENUM_NAME_U: c_int = 453;
pub const PDF_ENUM_NAME_UE: c_int = 454;
pub const PDF_ENUM_NAME_UF: c_int = 455;
pub const PDF_ENUM_NAME_URI: c_int = 456;
pub const PDF_ENUM_NAME_URL: c_int = 457;
pub const PDF_ENUM_NAME_Unchanged: c_int = 458;
pub const PDF_ENUM_NAME_Uncover: c_int = 459;
pub const PDF_ENUM_NAME_Underline: c_int = 460;
pub const PDF_ENUM_NAME_Unix: c_int = 461;
pub const PDF_ENUM_NAME_Usage: c_int = 462;
pub const PDF_ENUM_NAME_UseBlackPtComp: c_int = 463;
pub const PDF_ENUM_NAME_UseCMap: c_int = 464;
pub const PDF_ENUM_NAME_UseOutlines: c_int = 465;
pub const PDF_ENUM_NAME_UserUnit: c_int = 466;
pub const PDF_ENUM_NAME_V: c_int = 467;
pub const PDF_ENUM_NAME_V2: c_int = 468;
pub const PDF_ENUM_NAME_VE: c_int = 469;
pub const PDF_ENUM_NAME_Version: c_int = 470;
pub const PDF_ENUM_NAME_Vertices: c_int = 471;
pub const PDF_ENUM_NAME_VerticesPerRow: c_int = 472;
pub const PDF_ENUM_NAME_View: c_int = 473;
pub const PDF_ENUM_NAME_W: c_int = 474;
pub const PDF_ENUM_NAME_W2: c_int = 475;
pub const PDF_ENUM_NAME_WMode: c_int = 476;
pub const PDF_ENUM_NAME_Watermark: c_int = 477;
pub const PDF_ENUM_NAME_WhitePoint: c_int = 478;
pub const PDF_ENUM_NAME_Widget: c_int = 479;
pub const PDF_ENUM_NAME_Width: c_int = 480;
pub const PDF_ENUM_NAME_Widths: c_int = 481;
pub const PDF_ENUM_NAME_WinAnsiEncoding: c_int = 482;
pub const PDF_ENUM_NAME_Wipe: c_int = 483;
pub const PDF_ENUM_NAME_XFA: c_int = 484;
pub const PDF_ENUM_NAME_XHeight: c_int = 485;
pub const PDF_ENUM_NAME_XML: c_int = 486;
pub const PDF_ENUM_NAME_XObject: c_int = 487;
pub const PDF_ENUM_NAME_XRef: c_int = 488;
pub const PDF_ENUM_NAME_XRefStm: c_int = 489;
pub const PDF_ENUM_NAME_XStep: c_int = 490;
pub const PDF_ENUM_NAME_XYZ: c_int = 491;
pub const PDF_ENUM_NAME_YStep: c_int = 492;
pub const PDF_ENUM_NAME_Yes: c_int = 493;
pub const PDF_ENUM_NAME_ZaDb: c_int = 494;
pub const PDF_ENUM_NAME_adbe_pkcs7_detached: c_int = 495;
pub const PDF_ENUM_NAME_ca: c_int = 496;
pub const PDF_ENUM_NAME_n0: c_int = 497;
pub const PDF_ENUM_NAME_n1: c_int = 498;
pub const PDF_ENUM_NAME_n2: c_int = 499;
pub const PDF_ENUM_NAME_op: c_int = 500;
pub const PDF_ENUM_LIMIT: c_int = 501;
const enum_unnamed_52 = c_uint;
pub extern fn pdf_set_str_len(ctx: [*c]fz_context, obj: ?*pdf_obj, newlen: usize) void;
pub extern fn pdf_enable_journal(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_begin_operation(ctx: [*c]fz_context, doc: [*c]pdf_document, operation: [*c]const u8) void;
pub extern fn pdf_begin_implicit_operation(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_end_operation(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_undoredo_state(ctx: [*c]fz_context, doc: [*c]pdf_document, steps: [*c]c_int) c_int;
pub extern fn pdf_undoredo_step(ctx: [*c]fz_context, doc: [*c]pdf_document, step: c_int) [*c]const u8;
pub extern fn pdf_can_undo(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_can_redo(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_undo(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_redo(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_discard_journal(ctx: [*c]fz_context, journal: ?*pdf_journal) void;
pub extern fn pdf_drop_journal(ctx: [*c]fz_context, journal: ?*pdf_journal) void;
pub extern fn pdf_serialise_journal(ctx: [*c]fz_context, doc: [*c]pdf_document, out: [*c]fz_output) void;
pub extern fn pdf_deserialise_journal(ctx: [*c]fz_context, doc: [*c]pdf_document, stm: [*c]fz_stream) void;
pub extern fn pdf_add_journal_fragment(ctx: [*c]fz_context, doc: [*c]pdf_document, parent: c_int, copy: ?*pdf_obj, copy_stream: [*c]fz_buffer, newobj: c_int) void;
pub extern fn pdf_format_date(ctx: [*c]fz_context, time: i64, s: [*c]u8, n: usize) [*c]u8;
pub extern fn pdf_parse_date(ctx: [*c]fz_context, s: [*c]const u8) i64;
pub const struct_pdf_annot = opaque {};
pub const pdf_annot = struct_pdf_annot;
pub const struct_pdf_page = extern struct {
    super: fz_page,
    doc: [*c]pdf_document,
    obj: ?*pdf_obj,
    transparency: c_int,
    overprint: c_int,
    links: [*c]fz_link,
    annots: ?*pdf_annot,
    annot_tailp: [*c]?*pdf_annot,
    widgets: ?*pdf_annot,
    widget_tailp: [*c]?*pdf_annot,
};
pub const pdf_page = struct_pdf_page;
pub const PDF_LEXBUF_SMALL: c_int = 256;
pub const PDF_LEXBUF_LARGE: c_int = 65536;
const enum_unnamed_53 = c_uint;
pub const pdf_lexbuf = extern struct {
    size: usize,
    base_size: usize,
    len: usize,
    i: i64,
    f: f32,
    scratch: [*c]u8,
    buffer: [256]u8,
};
pub const pdf_lexbuf_large = extern struct {
    base: pdf_lexbuf,
    buffer: [65280]u8,
};
pub const pdf_js_console = struct_pdf_js_console;
pub const pdf_js_console_drop_cb = fn ([*c]pdf_js_console, ?*anyopaque) callconv(.C) void;
pub const pdf_js_console_show_cb = fn (?*anyopaque) callconv(.C) void;
pub const pdf_js_console_hide_cb = fn (?*anyopaque) callconv(.C) void;
pub const pdf_js_console_clear_cb = fn (?*anyopaque) callconv(.C) void;
pub const pdf_js_console_write_cb = fn (?*anyopaque, [*c]const u8) callconv(.C) void;
pub const struct_pdf_js_console = extern struct {
    drop: ?pdf_js_console_drop_cb,
    show: ?pdf_js_console_show_cb,
    hide: ?pdf_js_console_hide_cb,
    clear: ?pdf_js_console_clear_cb,
    write: ?pdf_js_console_write_cb,
};
pub extern fn pdf_js_get_console(ctx: [*c]fz_context, doc: [*c]pdf_document) [*c]pdf_js_console;
pub extern fn pdf_js_set_console(ctx: [*c]fz_context, doc: [*c]pdf_document, console: [*c]pdf_js_console, user: ?*anyopaque) void;
pub extern fn pdf_open_document(ctx: [*c]fz_context, filename: [*c]const u8) [*c]pdf_document;
pub extern fn pdf_open_document_with_stream(ctx: [*c]fz_context, file: [*c]fz_stream) [*c]pdf_document;
pub extern fn pdf_drop_document(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_keep_document(ctx: [*c]fz_context, doc: [*c]pdf_document) [*c]pdf_document;
pub extern fn pdf_specifics(ctx: [*c]fz_context, doc: [*c]fz_document) [*c]pdf_document;
pub extern fn pdf_document_from_fz_document(ctx: [*c]fz_context, ptr: [*c]fz_document) [*c]pdf_document;
pub extern fn pdf_page_from_fz_page(ctx: [*c]fz_context, ptr: [*c]fz_page) [*c]pdf_page;
pub extern fn pdf_needs_password(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_authenticate_password(ctx: [*c]fz_context, doc: [*c]pdf_document, pw: [*c]const u8) c_int;
pub extern fn pdf_has_permission(ctx: [*c]fz_context, doc: [*c]pdf_document, p: fz_permission) c_int;
pub extern fn pdf_lookup_metadata(ctx: [*c]fz_context, doc: [*c]pdf_document, key: [*c]const u8, ptr: [*c]u8, size: c_int) c_int;
pub extern fn pdf_load_outline(ctx: [*c]fz_context, doc: [*c]pdf_document) [*c]fz_outline;
pub extern fn pdf_new_outline_iterator(ctx: [*c]fz_context, doc: [*c]pdf_document) [*c]fz_outline_iterator;
pub extern fn pdf_invalidate_xfa(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_count_layer_configs(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_count_layers(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_layer_name(ctx: [*c]fz_context, doc: [*c]pdf_document, layer: c_int) [*c]const u8;
pub extern fn pdf_layer_is_enabled(ctx: [*c]fz_context, doc: [*c]pdf_document, layer: c_int) c_int;
pub extern fn pdf_enable_layer(ctx: [*c]fz_context, doc: [*c]pdf_document, layer: c_int, enabled: c_int) void;
pub const pdf_layer_config = extern struct {
    name: [*c]const u8,
    creator: [*c]const u8,
};
pub extern fn pdf_layer_config_info(ctx: [*c]fz_context, doc: [*c]pdf_document, config_num: c_int, info: [*c]pdf_layer_config) void;
pub extern fn pdf_select_layer_config(ctx: [*c]fz_context, doc: [*c]pdf_document, config_num: c_int) void;
pub extern fn pdf_count_layer_config_ui(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_select_layer_config_ui(ctx: [*c]fz_context, doc: [*c]pdf_document, ui: c_int) void;
pub extern fn pdf_deselect_layer_config_ui(ctx: [*c]fz_context, doc: [*c]pdf_document, ui: c_int) void;
pub extern fn pdf_toggle_layer_config_ui(ctx: [*c]fz_context, doc: [*c]pdf_document, ui: c_int) void;
pub const PDF_LAYER_UI_LABEL: c_int = 0;
pub const PDF_LAYER_UI_CHECKBOX: c_int = 1;
pub const PDF_LAYER_UI_RADIOBOX: c_int = 2;
pub const pdf_layer_config_ui_type = c_uint;
pub const pdf_layer_config_ui = extern struct {
    text: [*c]const u8,
    depth: c_int,
    type: pdf_layer_config_ui_type,
    selected: c_int,
    locked: c_int,
};
pub extern fn pdf_layer_config_ui_info(ctx: [*c]fz_context, doc: [*c]pdf_document, ui: c_int, info: [*c]pdf_layer_config_ui) void;
pub extern fn pdf_set_layer_config_as_default(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_has_unsaved_changes(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_was_repaired(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub const pdf_rev_page_map = extern struct {
    page: c_int,
    object: c_int,
};
pub const pdf_hint_page = extern struct {
    number: c_int,
    offset: i64,
    index: i64,
};
pub const pdf_hint_shared = extern struct {
    number: c_int,
    offset: i64,
};
pub extern fn pdf_create_document(ctx: [*c]fz_context) [*c]pdf_document;
pub const struct_pdf_graft_map = opaque {};
pub const pdf_graft_map = struct_pdf_graft_map;
pub extern fn pdf_graft_object(ctx: [*c]fz_context, dst: [*c]pdf_document, obj: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_new_graft_map(ctx: [*c]fz_context, dst: [*c]pdf_document) ?*pdf_graft_map;
pub extern fn pdf_keep_graft_map(ctx: [*c]fz_context, map: ?*pdf_graft_map) ?*pdf_graft_map;
pub extern fn pdf_drop_graft_map(ctx: [*c]fz_context, map: ?*pdf_graft_map) void;
pub extern fn pdf_graft_mapped_object(ctx: [*c]fz_context, map: ?*pdf_graft_map, obj: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_graft_page(ctx: [*c]fz_context, dst: [*c]pdf_document, page_to: c_int, src: [*c]pdf_document, page_from: c_int) void;
pub extern fn pdf_graft_mapped_page(ctx: [*c]fz_context, map: ?*pdf_graft_map, page_to: c_int, src: [*c]pdf_document, page_from: c_int) void;
pub extern fn pdf_page_write(ctx: [*c]fz_context, doc: [*c]pdf_document, mediabox: fz_rect, presources: [*c]?*pdf_obj, pcontents: [*c][*c]fz_buffer) [*c]fz_device;
pub extern fn pdf_new_pdf_device(ctx: [*c]fz_context, doc: [*c]pdf_document, topctm: fz_matrix, resources: ?*pdf_obj, contents: [*c]fz_buffer) [*c]fz_device;
pub extern fn pdf_add_page(ctx: [*c]fz_context, doc: [*c]pdf_document, mediabox: fz_rect, rotate: c_int, resources: ?*pdf_obj, contents: [*c]fz_buffer) ?*pdf_obj;
pub extern fn pdf_insert_page(ctx: [*c]fz_context, doc: [*c]pdf_document, at: c_int, page: ?*pdf_obj) void;
pub extern fn pdf_delete_page(ctx: [*c]fz_context, doc: [*c]pdf_document, number: c_int) void;
pub extern fn pdf_delete_page_range(ctx: [*c]fz_context, doc: [*c]pdf_document, start: c_int, end: c_int) void;
pub extern fn pdf_document_language(ctx: [*c]fz_context, doc: [*c]pdf_document) fz_text_language;
pub extern fn pdf_set_document_language(ctx: [*c]fz_context, doc: [*c]pdf_document, lang: fz_text_language) void;
pub const pdf_write_options = extern struct {
    do_incremental: c_int,
    do_pretty: c_int,
    do_ascii: c_int,
    do_compress: c_int,
    do_compress_images: c_int,
    do_compress_fonts: c_int,
    do_decompress: c_int,
    do_garbage: c_int,
    do_linear: c_int,
    do_clean: c_int,
    do_sanitize: c_int,
    do_appearance: c_int,
    do_encrypt: c_int,
    dont_regenerate_id: c_int,
    permissions: c_int,
    opwd_utf8: [128]u8,
    upwd_utf8: [128]u8,
    do_snapshot: c_int,
    do_preserve_metadata: c_int,
};
pub extern const pdf_default_write_options: pdf_write_options;
pub extern fn pdf_parse_write_options(ctx: [*c]fz_context, opts: [*c]pdf_write_options, args: [*c]const u8) [*c]pdf_write_options;
pub extern fn pdf_has_unsaved_sigs(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_write_document(ctx: [*c]fz_context, doc: [*c]pdf_document, out: [*c]fz_output, opts: [*c]const pdf_write_options) void;
pub extern fn pdf_save_document(ctx: [*c]fz_context, doc: [*c]pdf_document, filename: [*c]const u8, opts: [*c]const pdf_write_options) void;
pub extern fn pdf_save_snapshot(ctx: [*c]fz_context, doc: [*c]pdf_document, filename: [*c]const u8) void;
pub extern fn pdf_write_snapshot(ctx: [*c]fz_context, doc: [*c]pdf_document, out: [*c]fz_output) void;
pub extern fn pdf_format_write_options(ctx: [*c]fz_context, buffer: [*c]u8, buffer_len: usize, opts: [*c]const pdf_write_options) [*c]u8;
pub extern fn pdf_can_be_saved_incrementally(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_write_journal(ctx: [*c]fz_context, doc: [*c]pdf_document, out: [*c]fz_output) void;
pub extern fn pdf_save_journal(ctx: [*c]fz_context, doc: [*c]pdf_document, filename: [*c]const u8) void;
pub extern fn pdf_load_journal(ctx: [*c]fz_context, doc: [*c]pdf_document, filename: [*c]const u8) void;
pub extern fn pdf_read_journal(ctx: [*c]fz_context, doc: [*c]pdf_document, stm: [*c]fz_stream) void;
pub const PDF_TOK_ERROR: c_int = 0;
pub const PDF_TOK_EOF: c_int = 1;
pub const PDF_TOK_OPEN_ARRAY: c_int = 2;
pub const PDF_TOK_CLOSE_ARRAY: c_int = 3;
pub const PDF_TOK_OPEN_DICT: c_int = 4;
pub const PDF_TOK_CLOSE_DICT: c_int = 5;
pub const PDF_TOK_OPEN_BRACE: c_int = 6;
pub const PDF_TOK_CLOSE_BRACE: c_int = 7;
pub const PDF_TOK_NAME: c_int = 8;
pub const PDF_TOK_INT: c_int = 9;
pub const PDF_TOK_REAL: c_int = 10;
pub const PDF_TOK_STRING: c_int = 11;
pub const PDF_TOK_KEYWORD: c_int = 12;
pub const PDF_TOK_R: c_int = 13;
pub const PDF_TOK_TRUE: c_int = 14;
pub const PDF_TOK_FALSE: c_int = 15;
pub const PDF_TOK_NULL: c_int = 16;
pub const PDF_TOK_OBJ: c_int = 17;
pub const PDF_TOK_ENDOBJ: c_int = 18;
pub const PDF_TOK_STREAM: c_int = 19;
pub const PDF_TOK_ENDSTREAM: c_int = 20;
pub const PDF_TOK_XREF: c_int = 21;
pub const PDF_TOK_TRAILER: c_int = 22;
pub const PDF_TOK_STARTXREF: c_int = 23;
pub const PDF_TOK_NEWOBJ: c_int = 24;
pub const PDF_NUM_TOKENS: c_int = 25;
pub const pdf_token = c_uint;
pub extern fn pdf_lexbuf_init(ctx: [*c]fz_context, lexbuf: [*c]pdf_lexbuf, size: c_int) void;
pub extern fn pdf_lexbuf_fin(ctx: [*c]fz_context, lexbuf: [*c]pdf_lexbuf) void;
pub extern fn pdf_lexbuf_grow(ctx: [*c]fz_context, lexbuf: [*c]pdf_lexbuf) ptrdiff_t;
pub extern fn pdf_lex(ctx: [*c]fz_context, f: [*c]fz_stream, lexbuf: [*c]pdf_lexbuf) pdf_token;
pub extern fn pdf_lex_no_string(ctx: [*c]fz_context, f: [*c]fz_stream, lexbuf: [*c]pdf_lexbuf) pdf_token;
pub extern fn pdf_parse_array(ctx: [*c]fz_context, doc: [*c]pdf_document, f: [*c]fz_stream, buf: [*c]pdf_lexbuf) ?*pdf_obj;
pub extern fn pdf_parse_dict(ctx: [*c]fz_context, doc: [*c]pdf_document, f: [*c]fz_stream, buf: [*c]pdf_lexbuf) ?*pdf_obj;
pub extern fn pdf_parse_stm_obj(ctx: [*c]fz_context, doc: [*c]pdf_document, f: [*c]fz_stream, buf: [*c]pdf_lexbuf) ?*pdf_obj;
pub extern fn pdf_parse_ind_obj(ctx: [*c]fz_context, doc: [*c]pdf_document, f: [*c]fz_stream, num: [*c]c_int, gen: [*c]c_int, stm_ofs: [*c]i64, try_repair: [*c]c_int) ?*pdf_obj;
pub extern fn pdf_parse_journal_obj(ctx: [*c]fz_context, doc: [*c]pdf_document, stm: [*c]fz_stream, onum: [*c]c_int, ostm: [*c][*c]fz_buffer, newobj: [*c]c_int) ?*pdf_obj;
pub extern fn pdf_append_token(ctx: [*c]fz_context, buf: [*c]fz_buffer, tok: c_int, lex: [*c]pdf_lexbuf) void;
pub extern fn pdf_create_object(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_delete_object(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) void;
pub extern fn pdf_update_object(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int, obj: ?*pdf_obj) void;
pub extern fn pdf_update_stream(ctx: [*c]fz_context, doc: [*c]pdf_document, ref: ?*pdf_obj, buf: [*c]fz_buffer, compressed: c_int) void;
pub extern fn pdf_is_local_object(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) c_int;
pub extern fn pdf_add_object(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_add_object_drop(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_add_stream(ctx: [*c]fz_context, doc: [*c]pdf_document, buf: [*c]fz_buffer, obj: ?*pdf_obj, compressed: c_int) ?*pdf_obj;
pub extern fn pdf_add_new_dict(ctx: [*c]fz_context, doc: [*c]pdf_document, initial: c_int) ?*pdf_obj;
pub extern fn pdf_add_new_array(ctx: [*c]fz_context, doc: [*c]pdf_document, initial: c_int) ?*pdf_obj;
pub const pdf_xref_entry = extern struct {
    type: u8,
    marked: u8,
    gen: c_ushort,
    num: c_int,
    ofs: i64,
    stm_ofs: i64,
    stm_buf: [*c]fz_buffer,
    obj: ?*pdf_obj,
};
pub extern fn pdf_cache_object(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) [*c]pdf_xref_entry;
pub extern fn pdf_count_objects(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_resolve_indirect(ctx: [*c]fz_context, ref: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_resolve_indirect_chain(ctx: [*c]fz_context, ref: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_load_object(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) ?*pdf_obj;
pub extern fn pdf_load_unencrypted_object(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) ?*pdf_obj;
pub extern fn pdf_load_raw_stream_number(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) [*c]fz_buffer;
pub extern fn pdf_load_raw_stream(ctx: [*c]fz_context, ref: ?*pdf_obj) [*c]fz_buffer;
pub extern fn pdf_load_stream_number(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) [*c]fz_buffer;
pub extern fn pdf_load_stream(ctx: [*c]fz_context, ref: ?*pdf_obj) [*c]fz_buffer;
pub extern fn pdf_open_raw_stream_number(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) [*c]fz_stream;
pub extern fn pdf_open_raw_stream(ctx: [*c]fz_context, ref: ?*pdf_obj) [*c]fz_stream;
pub extern fn pdf_open_stream_number(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) [*c]fz_stream;
pub extern fn pdf_open_stream(ctx: [*c]fz_context, ref: ?*pdf_obj) [*c]fz_stream;
pub extern fn pdf_open_inline_stream(ctx: [*c]fz_context, doc: [*c]pdf_document, stmobj: ?*pdf_obj, length: c_int, chain: [*c]fz_stream, params: [*c]fz_compression_params) [*c]fz_stream;
pub extern fn pdf_load_compressed_stream(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) [*c]fz_compressed_buffer;
pub extern fn pdf_load_compressed_inline_image(ctx: [*c]fz_context, doc: [*c]pdf_document, dict: ?*pdf_obj, length: c_int, cstm: [*c]fz_stream, indexed: c_int, image: ?*fz_compressed_image) void;
pub extern fn pdf_open_stream_with_offset(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int, dict: ?*pdf_obj, stm_ofs: i64) [*c]fz_stream;
pub extern fn pdf_open_contents_stream(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) [*c]fz_stream;
pub extern fn pdf_version(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_trailer(ctx: [*c]fz_context, doc: [*c]pdf_document) ?*pdf_obj;
pub extern fn pdf_set_populating_xref_trailer(ctx: [*c]fz_context, doc: [*c]pdf_document, trailer: ?*pdf_obj) void;
pub extern fn pdf_xref_len(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_metadata(ctx: [*c]fz_context, doc: [*c]pdf_document) ?*pdf_obj;
pub extern fn pdf_get_populating_xref_entry(ctx: [*c]fz_context, doc: [*c]pdf_document, i: c_int) [*c]pdf_xref_entry;
pub extern fn pdf_get_xref_entry(ctx: [*c]fz_context, doc: [*c]pdf_document, i: c_int) [*c]pdf_xref_entry;
pub extern fn pdf_replace_xref(ctx: [*c]fz_context, doc: [*c]pdf_document, entries: [*c]pdf_xref_entry, n: c_int) void;
pub extern fn pdf_forget_xref(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_get_incremental_xref_entry(ctx: [*c]fz_context, doc: [*c]pdf_document, i: c_int) [*c]pdf_xref_entry;
pub extern fn pdf_xref_ensure_incremental_object(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) c_int;
pub extern fn pdf_xref_is_incremental(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) c_int;
pub extern fn pdf_xref_store_unsaved_signature(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj, signer: [*c]pdf_pkcs7_signer) void;
pub extern fn pdf_xref_remove_unsaved_signature(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj) void;
pub extern fn pdf_xref_obj_is_unsaved_signature(doc: [*c]pdf_document, obj: ?*pdf_obj) c_int;
pub extern fn pdf_xref_ensure_local_object(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) void;
pub extern fn pdf_obj_is_incremental(ctx: [*c]fz_context, obj: ?*pdf_obj) c_int;
pub extern fn pdf_repair_xref(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_repair_obj_stms(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_repair_trailer(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_ensure_solid_xref(ctx: [*c]fz_context, doc: [*c]pdf_document, num: c_int) void;
pub extern fn pdf_mark_xref(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_clear_xref(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_clear_xref_to_mark(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_repair_obj(ctx: [*c]fz_context, doc: [*c]pdf_document, buf: [*c]pdf_lexbuf, stmofsp: [*c]i64, stmlenp: [*c]c_int, encrypt: [*c]?*pdf_obj, id: [*c]?*pdf_obj, page: [*c]?*pdf_obj, tmpofs: [*c]i64, root: [*c]?*pdf_obj) c_int;
pub extern fn pdf_progressive_advance(ctx: [*c]fz_context, doc: [*c]pdf_document, pagenum: c_int) ?*pdf_obj;
pub extern fn pdf_count_versions(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_count_unsaved_versions(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_validate_changes(ctx: [*c]fz_context, doc: [*c]pdf_document, version: c_int) c_int;
pub extern fn pdf_doc_was_linearized(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub const struct_pdf_locked_fields = opaque {};
pub const pdf_locked_fields = struct_pdf_locked_fields;
pub extern fn pdf_is_field_locked(ctx: [*c]fz_context, locked: ?*pdf_locked_fields, name: [*c]const u8) c_int;
pub extern fn pdf_drop_locked_fields(ctx: [*c]fz_context, locked: ?*pdf_locked_fields) void;
pub extern fn pdf_find_locked_fields(ctx: [*c]fz_context, doc: [*c]pdf_document, version: c_int) ?*pdf_locked_fields;
pub extern fn pdf_find_locked_fields_for_sig(ctx: [*c]fz_context, doc: [*c]pdf_document, sig: ?*pdf_obj) ?*pdf_locked_fields;
pub extern fn pdf_validate_change_history(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_find_version_for_obj(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) c_int;
pub extern fn pdf_validate_signature(ctx: [*c]fz_context, widget: ?*pdf_annot) c_int;
pub extern fn pdf_was_pure_xfa(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_new_local_xref(ctx: [*c]fz_context, doc: [*c]pdf_document) [*c]pdf_xref;
pub extern fn pdf_drop_local_xref(ctx: [*c]fz_context, xref: [*c]pdf_xref) void;
pub extern fn pdf_drop_local_xref_and_resources(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_debug_doc_changes(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub const PDF_ENCRYPT_KEEP: c_int = 0;
pub const PDF_ENCRYPT_NONE: c_int = 1;
pub const PDF_ENCRYPT_RC4_40: c_int = 2;
pub const PDF_ENCRYPT_RC4_128: c_int = 3;
pub const PDF_ENCRYPT_AES_128: c_int = 4;
pub const PDF_ENCRYPT_AES_256: c_int = 5;
pub const PDF_ENCRYPT_UNKNOWN: c_int = 6;
const enum_unnamed_54 = c_uint;
pub extern fn pdf_new_crypt(ctx: [*c]fz_context, enc: ?*pdf_obj, id: ?*pdf_obj) ?*pdf_crypt;
pub extern fn pdf_new_encrypt(ctx: [*c]fz_context, opwd_utf8: [*c]const u8, upwd_utf8: [*c]const u8, id: ?*pdf_obj, permissions: c_int, algorithm: c_int) ?*pdf_crypt;
pub extern fn pdf_drop_crypt(ctx: [*c]fz_context, crypt: ?*pdf_crypt) void;
pub extern fn pdf_crypt_obj(ctx: [*c]fz_context, crypt: ?*pdf_crypt, obj: ?*pdf_obj, num: c_int, gen: c_int) void;
pub extern fn pdf_open_crypt(ctx: [*c]fz_context, chain: [*c]fz_stream, crypt: ?*pdf_crypt, num: c_int, gen: c_int) [*c]fz_stream;
pub extern fn pdf_open_crypt_with_filter(ctx: [*c]fz_context, chain: [*c]fz_stream, crypt: ?*pdf_crypt, name: ?*pdf_obj, num: c_int, gen: c_int) [*c]fz_stream;
pub extern fn pdf_crypt_version(ctx: [*c]fz_context, crypt: ?*pdf_crypt) c_int;
pub extern fn pdf_crypt_revision(ctx: [*c]fz_context, crypt: ?*pdf_crypt) c_int;
pub extern fn pdf_crypt_method(ctx: [*c]fz_context, crypt: ?*pdf_crypt) [*c]u8;
pub extern fn pdf_crypt_length(ctx: [*c]fz_context, crypt: ?*pdf_crypt) c_int;
pub extern fn pdf_crypt_permissions(ctx: [*c]fz_context, crypt: ?*pdf_crypt) c_int;
pub extern fn pdf_crypt_encrypt_metadata(ctx: [*c]fz_context, crypt: ?*pdf_crypt) c_int;
pub extern fn pdf_crypt_owner_password(ctx: [*c]fz_context, crypt: ?*pdf_crypt) [*c]u8;
pub extern fn pdf_crypt_user_password(ctx: [*c]fz_context, crypt: ?*pdf_crypt) [*c]u8;
pub extern fn pdf_crypt_owner_encryption(ctx: [*c]fz_context, crypt: ?*pdf_crypt) [*c]u8;
pub extern fn pdf_crypt_user_encryption(ctx: [*c]fz_context, crypt: ?*pdf_crypt) [*c]u8;
pub extern fn pdf_crypt_permissions_encryption(ctx: [*c]fz_context, crypt: ?*pdf_crypt) [*c]u8;
pub extern fn pdf_crypt_key(ctx: [*c]fz_context, crypt: ?*pdf_crypt) [*c]u8;
pub extern fn pdf_print_crypt(ctx: [*c]fz_context, out: [*c]fz_output, crypt: ?*pdf_crypt) void;
pub extern fn pdf_write_digest(ctx: [*c]fz_context, out: [*c]fz_output, byte_range: ?*pdf_obj, field: ?*pdf_obj, digest_offset: usize, digest_length: usize, signer: [*c]pdf_pkcs7_signer) void;
pub const PDF_PERM_PRINT: c_int = 4;
pub const PDF_PERM_MODIFY: c_int = 8;
pub const PDF_PERM_COPY: c_int = 16;
pub const PDF_PERM_ANNOTATE: c_int = 32;
pub const PDF_PERM_FORM: c_int = 256;
pub const PDF_PERM_ACCESSIBILITY: c_int = 512;
pub const PDF_PERM_ASSEMBLE: c_int = 1024;
pub const PDF_PERM_PRINT_HQ: c_int = 2048;
const enum_unnamed_55 = c_uint;
pub extern fn pdf_document_permissions(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_signature_byte_range(ctx: [*c]fz_context, doc: [*c]pdf_document, signature: ?*pdf_obj, byte_range: [*c]fz_range) c_int;
pub extern fn pdf_signature_hash_bytes(ctx: [*c]fz_context, doc: [*c]pdf_document, signature: ?*pdf_obj) [*c]fz_stream;
pub extern fn pdf_signature_incremental_change_since_signing(ctx: [*c]fz_context, doc: [*c]pdf_document, signature: ?*pdf_obj) c_int;
pub extern fn pdf_signature_contents(ctx: [*c]fz_context, doc: [*c]pdf_document, signature: ?*pdf_obj, contents: [*c][*c]u8) usize;
pub extern fn pdf_encrypt_data(ctx: [*c]fz_context, crypt: ?*pdf_crypt, num: c_int, gen: c_int, fmt_str_out: ?fn ([*c]fz_context, ?*anyopaque, [*c]const u8, usize) callconv(.C) void, arg: ?*anyopaque, s: [*c]const u8, n: usize) void;
pub extern fn pdf_encrypted_len(ctx: [*c]fz_context, crypt: ?*pdf_crypt, num: c_int, gen: c_int, len: usize) usize;
pub const pdf_range = extern struct {
    low: c_ushort,
    high: c_ushort,
    out: c_ushort,
};
pub const pdf_xrange = extern struct {
    low: c_uint,
    high: c_uint,
    out: c_uint,
};
pub const pdf_mrange = extern struct {
    low: c_uint,
    out: c_uint,
};
pub const struct_cmap_splay = opaque {};
pub const cmap_splay = struct_cmap_splay;
const struct_unnamed_56 = extern struct {
    n: c_int,
    low: c_uint,
    high: c_uint,
};
pub const struct_pdf_cmap = extern struct {
    storable: fz_storable,
    cmap_name: [32]u8,
    usecmap_name: [32]u8,
    usecmap: [*c]struct_pdf_cmap,
    wmode: c_int,
    codespace_len: c_int,
    codespace: [40]struct_unnamed_56,
    rlen: c_int,
    rcap: c_int,
    ranges: [*c]pdf_range,
    xlen: c_int,
    xcap: c_int,
    xranges: [*c]pdf_xrange,
    mlen: c_int,
    mcap: c_int,
    mranges: [*c]pdf_mrange,
    dlen: c_int,
    dcap: c_int,
    dict: [*c]c_int,
    tlen: c_int,
    tcap: c_int,
    ttop: c_int,
    tree: ?*cmap_splay,
};
pub const pdf_cmap = struct_pdf_cmap;
pub extern fn pdf_new_cmap(ctx: [*c]fz_context) [*c]pdf_cmap;
pub extern fn pdf_keep_cmap(ctx: [*c]fz_context, cmap: [*c]pdf_cmap) [*c]pdf_cmap;
pub extern fn pdf_drop_cmap(ctx: [*c]fz_context, cmap: [*c]pdf_cmap) void;
pub extern fn pdf_drop_cmap_imp(ctx: [*c]fz_context, cmap: [*c]fz_storable) void;
pub extern fn pdf_cmap_size(ctx: [*c]fz_context, cmap: [*c]pdf_cmap) usize;
pub extern fn pdf_cmap_wmode(ctx: [*c]fz_context, cmap: [*c]pdf_cmap) c_int;
pub extern fn pdf_set_cmap_wmode(ctx: [*c]fz_context, cmap: [*c]pdf_cmap, wmode: c_int) void;
pub extern fn pdf_set_usecmap(ctx: [*c]fz_context, cmap: [*c]pdf_cmap, usecmap: [*c]pdf_cmap) void;
pub extern fn pdf_add_codespace(ctx: [*c]fz_context, cmap: [*c]pdf_cmap, low: c_uint, high: c_uint, n: usize) void;
pub extern fn pdf_map_range_to_range(ctx: [*c]fz_context, cmap: [*c]pdf_cmap, srclo: c_uint, srchi: c_uint, dstlo: c_int) void;
pub extern fn pdf_map_one_to_many(ctx: [*c]fz_context, cmap: [*c]pdf_cmap, one: c_uint, many: [*c]c_int, len: usize) void;
pub extern fn pdf_sort_cmap(ctx: [*c]fz_context, cmap: [*c]pdf_cmap) void;
pub extern fn pdf_lookup_cmap(cmap: [*c]pdf_cmap, cpt: c_uint) c_int;
pub extern fn pdf_lookup_cmap_full(cmap: [*c]pdf_cmap, cpt: c_uint, out: [*c]c_int) c_int;
pub extern fn pdf_decode_cmap(cmap: [*c]pdf_cmap, s: [*c]u8, e: [*c]u8, cpt: [*c]c_uint) c_int;
pub extern fn pdf_new_identity_cmap(ctx: [*c]fz_context, wmode: c_int, bytes: c_int) [*c]pdf_cmap;
pub extern fn pdf_load_cmap(ctx: [*c]fz_context, file: [*c]fz_stream) [*c]pdf_cmap;
pub extern fn pdf_load_system_cmap(ctx: [*c]fz_context, name: [*c]const u8) [*c]pdf_cmap;
pub extern fn pdf_load_builtin_cmap(ctx: [*c]fz_context, name: [*c]const u8) [*c]pdf_cmap;
pub extern fn pdf_load_embedded_cmap(ctx: [*c]fz_context, doc: [*c]pdf_document, ref: ?*pdf_obj) [*c]pdf_cmap;
pub const PDF_FD_FIXED_PITCH: c_int = 1;
pub const PDF_FD_SERIF: c_int = 2;
pub const PDF_FD_SYMBOLIC: c_int = 4;
pub const PDF_FD_SCRIPT: c_int = 8;
pub const PDF_FD_NONSYMBOLIC: c_int = 32;
pub const PDF_FD_ITALIC: c_int = 64;
pub const PDF_FD_ALL_CAP: c_int = 65536;
pub const PDF_FD_SMALL_CAP: c_int = 131072;
pub const PDF_FD_FORCE_BOLD: c_int = 262144;
const enum_unnamed_57 = c_uint;
pub extern fn pdf_load_encoding(estrings: [*c][*c]const u8, encoding: [*c]const u8) void;
pub const pdf_hmtx = extern struct {
    lo: c_ushort,
    hi: c_ushort,
    w: c_int,
};
pub const pdf_vmtx = extern struct {
    lo: c_ushort,
    hi: c_ushort,
    x: c_short,
    y: c_short,
    w: c_short,
};
pub const pdf_font_desc = extern struct {
    storable: fz_storable,
    size: usize,
    font: [*c]fz_font,
    flags: c_int,
    italic_angle: f32,
    ascent: f32,
    descent: f32,
    cap_height: f32,
    x_height: f32,
    missing_width: f32,
    encoding: [*c]pdf_cmap,
    to_ttf_cmap: [*c]pdf_cmap,
    cid_to_gid_len: usize,
    cid_to_gid: [*c]c_ushort,
    to_unicode: [*c]pdf_cmap,
    cid_to_ucs_len: usize,
    cid_to_ucs: [*c]c_ushort,
    wmode: c_int,
    hmtx_len: c_int,
    hmtx_cap: c_int,
    dhmtx: pdf_hmtx,
    hmtx: [*c]pdf_hmtx,
    vmtx_len: c_int,
    vmtx_cap: c_int,
    dvmtx: pdf_vmtx,
    vmtx: [*c]pdf_vmtx,
    is_embedded: c_int,
};
pub extern fn pdf_set_font_wmode(ctx: [*c]fz_context, font: [*c]pdf_font_desc, wmode: c_int) void;
pub extern fn pdf_set_default_hmtx(ctx: [*c]fz_context, font: [*c]pdf_font_desc, w: c_int) void;
pub extern fn pdf_set_default_vmtx(ctx: [*c]fz_context, font: [*c]pdf_font_desc, y: c_int, w: c_int) void;
pub extern fn pdf_add_hmtx(ctx: [*c]fz_context, font: [*c]pdf_font_desc, lo: c_int, hi: c_int, w: c_int) void;
pub extern fn pdf_add_vmtx(ctx: [*c]fz_context, font: [*c]pdf_font_desc, lo: c_int, hi: c_int, x: c_int, y: c_int, w: c_int) void;
pub extern fn pdf_end_hmtx(ctx: [*c]fz_context, font: [*c]pdf_font_desc) void;
pub extern fn pdf_end_vmtx(ctx: [*c]fz_context, font: [*c]pdf_font_desc) void;
pub extern fn pdf_lookup_hmtx(ctx: [*c]fz_context, font: [*c]pdf_font_desc, cid: c_int) pdf_hmtx;
pub extern fn pdf_lookup_vmtx(ctx: [*c]fz_context, font: [*c]pdf_font_desc, cid: c_int) pdf_vmtx;
pub extern fn pdf_load_to_unicode(ctx: [*c]fz_context, doc: [*c]pdf_document, font: [*c]pdf_font_desc, strings: [*c][*c]const u8, collection: [*c]u8, cmapstm: ?*pdf_obj) void;
pub extern fn pdf_font_cid_to_gid(ctx: [*c]fz_context, fontdesc: [*c]pdf_font_desc, cid: c_int) c_int;
pub extern fn pdf_clean_font_name(fontname: [*c]const u8) [*c]const u8;
pub extern fn pdf_lookup_substitute_font(ctx: [*c]fz_context, mono: c_int, serif: c_int, bold: c_int, italic: c_int, len: [*c]c_int) [*c]const u8;
pub extern fn pdf_load_type3_font(ctx: [*c]fz_context, doc: [*c]pdf_document, rdb: ?*pdf_obj, obj: ?*pdf_obj) [*c]pdf_font_desc;
pub extern fn pdf_load_type3_glyphs(ctx: [*c]fz_context, doc: [*c]pdf_document, fontdesc: [*c]pdf_font_desc) void;
pub extern fn pdf_load_font(ctx: [*c]fz_context, doc: [*c]pdf_document, rdb: ?*pdf_obj, obj: ?*pdf_obj) [*c]pdf_font_desc;
pub extern fn pdf_load_hail_mary_font(ctx: [*c]fz_context, doc: [*c]pdf_document) [*c]pdf_font_desc;
pub extern fn pdf_new_font_desc(ctx: [*c]fz_context) [*c]pdf_font_desc;
pub extern fn pdf_keep_font(ctx: [*c]fz_context, fontdesc: [*c]pdf_font_desc) [*c]pdf_font_desc;
pub extern fn pdf_drop_font(ctx: [*c]fz_context, font: [*c]pdf_font_desc) void;
pub extern fn pdf_print_font(ctx: [*c]fz_context, out: [*c]fz_output, fontdesc: [*c]pdf_font_desc) void;
pub extern fn pdf_run_glyph(ctx: [*c]fz_context, doc: [*c]pdf_document, resources: ?*pdf_obj, contents: [*c]fz_buffer, dev: [*c]fz_device, ctm: fz_matrix, gstate: ?*anyopaque, default_cs: [*c]fz_default_colorspaces) void;
pub extern fn pdf_add_simple_font(ctx: [*c]fz_context, doc: [*c]pdf_document, font: [*c]fz_font, encoding: c_int) ?*pdf_obj;
pub extern fn pdf_add_cid_font(ctx: [*c]fz_context, doc: [*c]pdf_document, font: [*c]fz_font) ?*pdf_obj;
pub extern fn pdf_add_cjk_font(ctx: [*c]fz_context, doc: [*c]pdf_document, font: [*c]fz_font, script: c_int, wmode: c_int, serif: c_int) ?*pdf_obj;
pub extern fn pdf_add_substitute_font(ctx: [*c]fz_context, doc: [*c]pdf_document, font: [*c]fz_font) ?*pdf_obj;
pub extern fn pdf_font_writing_supported(font: [*c]fz_font) c_int;
pub extern fn pdf_store_item(ctx: [*c]fz_context, key: ?*pdf_obj, val: ?*anyopaque, itemsize: usize) void;
pub extern fn pdf_find_item(ctx: [*c]fz_context, drop: ?fz_store_drop_fn, key: ?*pdf_obj) ?*anyopaque;
pub extern fn pdf_remove_item(ctx: [*c]fz_context, drop: ?fz_store_drop_fn, key: ?*pdf_obj) void;
pub extern fn pdf_empty_store(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_purge_locals_from_store(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub const PDF_SIMPLE_FONT_RESOURCE: c_int = 1;
pub const PDF_CID_FONT_RESOURCE: c_int = 2;
pub const PDF_CJK_FONT_RESOURCE: c_int = 3;
const enum_unnamed_58 = c_uint;
pub const PDF_SIMPLE_ENCODING_LATIN: c_int = 0;
pub const PDF_SIMPLE_ENCODING_GREEK: c_int = 1;
pub const PDF_SIMPLE_ENCODING_CYRILLIC: c_int = 2;
const enum_unnamed_59 = c_uint;
pub const pdf_font_resource_key = extern struct {
    digest: [16]u8,
    type: c_int,
    encoding: c_int,
    local_xref: c_int,
};
pub extern fn pdf_find_font_resource(ctx: [*c]fz_context, doc: [*c]pdf_document, @"type": c_int, encoding: c_int, item: [*c]fz_font, key: [*c]pdf_font_resource_key) ?*pdf_obj;
pub extern fn pdf_insert_font_resource(ctx: [*c]fz_context, doc: [*c]pdf_document, key: [*c]pdf_font_resource_key, obj: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_drop_resource_tables(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_purge_local_font_resources(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub const struct_pdf_function = opaque {};
pub const pdf_function = struct_pdf_function;
pub extern fn pdf_eval_function(ctx: [*c]fz_context, func: ?*pdf_function, in: [*c]const f32, inlen: c_int, out: [*c]f32, outlen: c_int) void;
pub extern fn pdf_keep_function(ctx: [*c]fz_context, func: ?*pdf_function) ?*pdf_function;
pub extern fn pdf_drop_function(ctx: [*c]fz_context, func: ?*pdf_function) void;
pub extern fn pdf_function_size(ctx: [*c]fz_context, func: ?*pdf_function) usize;
pub extern fn pdf_load_function(ctx: [*c]fz_context, ref: ?*pdf_obj, in: c_int, out: c_int) ?*pdf_function;
pub extern fn pdf_document_output_intent(ctx: [*c]fz_context, doc: [*c]pdf_document) [*c]fz_colorspace;
pub extern fn pdf_load_colorspace(ctx: [*c]fz_context, obj: ?*pdf_obj) [*c]fz_colorspace;
pub extern fn pdf_is_tint_colorspace(ctx: [*c]fz_context, cs: [*c]fz_colorspace) c_int;
pub extern fn pdf_load_shading(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) [*c]fz_shade;
pub extern fn pdf_load_inline_image(ctx: [*c]fz_context, doc: [*c]pdf_document, rdb: ?*pdf_obj, dict: ?*pdf_obj, file: [*c]fz_stream) ?*fz_image;
pub extern fn pdf_is_jpx_image(ctx: [*c]fz_context, dict: ?*pdf_obj) c_int;
pub extern fn pdf_load_image(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) ?*fz_image;
pub extern fn pdf_add_image(ctx: [*c]fz_context, doc: [*c]pdf_document, image: ?*fz_image) ?*pdf_obj;
pub const pdf_pattern = extern struct {
    storable: fz_storable,
    ismask: c_int,
    xstep: f32,
    ystep: f32,
    matrix: fz_matrix,
    bbox: fz_rect,
    document: [*c]pdf_document,
    resources: ?*pdf_obj,
    contents: ?*pdf_obj,
    id: c_int,
};
pub extern fn pdf_load_pattern(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) [*c]pdf_pattern;
pub extern fn pdf_keep_pattern(ctx: [*c]fz_context, pat: [*c]pdf_pattern) [*c]pdf_pattern;
pub extern fn pdf_drop_pattern(ctx: [*c]fz_context, pat: [*c]pdf_pattern) void;
pub extern fn pdf_new_xobject(ctx: [*c]fz_context, doc: [*c]pdf_document, bbox: fz_rect, matrix: fz_matrix, res: ?*pdf_obj, buffer: [*c]fz_buffer) ?*pdf_obj;
pub extern fn pdf_update_xobject(ctx: [*c]fz_context, doc: [*c]pdf_document, xobj: ?*pdf_obj, bbox: fz_rect, mat: fz_matrix, res: ?*pdf_obj, buffer: [*c]fz_buffer) void;
pub extern fn pdf_xobject_resources(ctx: [*c]fz_context, xobj: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_xobject_bbox(ctx: [*c]fz_context, xobj: ?*pdf_obj) fz_rect;
pub extern fn pdf_xobject_matrix(ctx: [*c]fz_context, xobj: ?*pdf_obj) fz_matrix;
pub extern fn pdf_xobject_isolated(ctx: [*c]fz_context, xobj: ?*pdf_obj) c_int;
pub extern fn pdf_xobject_knockout(ctx: [*c]fz_context, xobj: ?*pdf_obj) c_int;
pub extern fn pdf_xobject_transparency(ctx: [*c]fz_context, xobj: ?*pdf_obj) c_int;
pub extern fn pdf_xobject_colorspace(ctx: [*c]fz_context, xobj: ?*pdf_obj) [*c]fz_colorspace;
pub const struct_pdf_gstate = opaque {};
pub const pdf_gstate = struct_pdf_gstate;
pub const pdf_processor = struct_pdf_processor;
pub const struct_pdf_processor = extern struct {
    refs: c_int,
    close_processor: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    drop_processor: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_w: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_j: ?fn ([*c]fz_context, [*c]pdf_processor, c_int) callconv(.C) void,
    op_J: ?fn ([*c]fz_context, [*c]pdf_processor, c_int) callconv(.C) void,
    op_M: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_d: ?fn ([*c]fz_context, [*c]pdf_processor, ?*pdf_obj, f32) callconv(.C) void,
    op_ri: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8) callconv(.C) void,
    op_i: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_gs_begin: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, ?*pdf_obj) callconv(.C) void,
    op_gs_BM: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8) callconv(.C) void,
    op_gs_ca: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_gs_CA: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_gs_SMask: ?fn ([*c]fz_context, [*c]pdf_processor, ?*pdf_obj, ?*pdf_obj, [*c]f32, c_int) callconv(.C) void,
    op_gs_end: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_q: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_Q: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_cm: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32, f32, f32) callconv(.C) void,
    op_m: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32) callconv(.C) void,
    op_l: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32) callconv(.C) void,
    op_c: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32, f32, f32) callconv(.C) void,
    op_v: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32) callconv(.C) void,
    op_y: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32) callconv(.C) void,
    op_h: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_re: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32) callconv(.C) void,
    op_S: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_s: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_F: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_f: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_fstar: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_B: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_Bstar: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_b: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_bstar: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_n: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_W: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_Wstar: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_BT: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_ET: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_Tc: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_Tw: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_Tz: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_TL: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_Tf: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, [*c]pdf_font_desc, f32) callconv(.C) void,
    op_Tr: ?fn ([*c]fz_context, [*c]pdf_processor, c_int) callconv(.C) void,
    op_Ts: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_Td: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32) callconv(.C) void,
    op_TD: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32) callconv(.C) void,
    op_Tm: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32, f32, f32) callconv(.C) void,
    op_Tstar: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_TJ: ?fn ([*c]fz_context, [*c]pdf_processor, ?*pdf_obj) callconv(.C) void,
    op_Tj: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]u8, usize) callconv(.C) void,
    op_squote: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]u8, usize) callconv(.C) void,
    op_dquote: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, [*c]u8, usize) callconv(.C) void,
    op_d0: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32) callconv(.C) void,
    op_d1: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32, f32, f32) callconv(.C) void,
    op_CS: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, [*c]fz_colorspace) callconv(.C) void,
    op_cs: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, [*c]fz_colorspace) callconv(.C) void,
    op_SC_pattern: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, [*c]pdf_pattern, c_int, [*c]f32) callconv(.C) void,
    op_sc_pattern: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, [*c]pdf_pattern, c_int, [*c]f32) callconv(.C) void,
    op_SC_shade: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, [*c]fz_shade) callconv(.C) void,
    op_sc_shade: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, [*c]fz_shade) callconv(.C) void,
    op_SC_color: ?fn ([*c]fz_context, [*c]pdf_processor, c_int, [*c]f32) callconv(.C) void,
    op_sc_color: ?fn ([*c]fz_context, [*c]pdf_processor, c_int, [*c]f32) callconv(.C) void,
    op_G: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_g: ?fn ([*c]fz_context, [*c]pdf_processor, f32) callconv(.C) void,
    op_RG: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32) callconv(.C) void,
    op_rg: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32) callconv(.C) void,
    op_K: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32) callconv(.C) void,
    op_k: ?fn ([*c]fz_context, [*c]pdf_processor, f32, f32, f32, f32) callconv(.C) void,
    op_BI: ?fn ([*c]fz_context, [*c]pdf_processor, ?*fz_image, [*c]const u8) callconv(.C) void,
    op_sh: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, [*c]fz_shade) callconv(.C) void,
    op_Do_image: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, ?*fz_image) callconv(.C) void,
    op_Do_form: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, ?*pdf_obj, ?*pdf_obj) callconv(.C) void,
    op_MP: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8) callconv(.C) void,
    op_DP: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, ?*pdf_obj, ?*pdf_obj) callconv(.C) void,
    op_BMC: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8) callconv(.C) void,
    op_BDC: ?fn ([*c]fz_context, [*c]pdf_processor, [*c]const u8, ?*pdf_obj, ?*pdf_obj) callconv(.C) void,
    op_EMC: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_BX: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_EX: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    op_gs_OP: ?fn ([*c]fz_context, [*c]pdf_processor, c_int) callconv(.C) void,
    op_gs_op: ?fn ([*c]fz_context, [*c]pdf_processor, c_int) callconv(.C) void,
    op_gs_OPM: ?fn ([*c]fz_context, [*c]pdf_processor, c_int) callconv(.C) void,
    op_gs_UseBlackPtComp: ?fn ([*c]fz_context, [*c]pdf_processor, ?*pdf_obj) callconv(.C) void,
    op_END: ?fn ([*c]fz_context, [*c]pdf_processor) callconv(.C) void,
    usage: [*c]const u8,
    hidden: c_int,
};
pub extern fn pdf_new_processor(ctx: [*c]fz_context, size: c_int) ?*anyopaque;
pub extern fn pdf_keep_processor(ctx: [*c]fz_context, proc: [*c]pdf_processor) [*c]pdf_processor;
pub extern fn pdf_close_processor(ctx: [*c]fz_context, proc: [*c]pdf_processor) void;
pub extern fn pdf_drop_processor(ctx: [*c]fz_context, proc: [*c]pdf_processor) void;
pub const pdf_csi = extern struct {
    doc: [*c]pdf_document,
    rdb: ?*pdf_obj,
    buf: [*c]pdf_lexbuf,
    cookie: [*c]fz_cookie,
    gstate: c_int,
    xbalance: c_int,
    in_text: c_int,
    d1_rect: fz_rect,
    obj: ?*pdf_obj,
    name: [256]u8,
    string: [256]u8,
    string_len: usize,
    top: c_int,
    stack: [32]f32,
};
pub extern fn pdf_new_run_processor(ctx: [*c]fz_context, dev: [*c]fz_device, ctm: fz_matrix, usage: [*c]const u8, gstate: ?*pdf_gstate, default_cs: [*c]fz_default_colorspaces, cookie: [*c]fz_cookie) [*c]pdf_processor;
pub extern fn pdf_new_buffer_processor(ctx: [*c]fz_context, buffer: [*c]fz_buffer, ahxencode: c_int) [*c]pdf_processor;
pub extern fn pdf_new_output_processor(ctx: [*c]fz_context, out: [*c]fz_output, ahxencode: c_int) [*c]pdf_processor;
pub const pdf_filter_options = extern struct {
    @"opaque": ?*anyopaque,
    image_filter: ?fn ([*c]fz_context, ?*anyopaque, fz_matrix, [*c]const u8, ?*fz_image) callconv(.C) ?*fz_image,
    text_filter: ?fn ([*c]fz_context, ?*anyopaque, [*c]c_int, c_int, fz_matrix, fz_matrix, fz_rect) callconv(.C) c_int,
    after_text_object: ?fn ([*c]fz_context, ?*anyopaque, [*c]pdf_document, [*c]pdf_processor, fz_matrix) callconv(.C) void,
    end_page: ?fn ([*c]fz_context, [*c]fz_buffer, ?*anyopaque) callconv(.C) void,
    recurse: c_int,
    instance_forms: c_int,
    sanitize: c_int,
    ascii: c_int,
};
pub extern fn pdf_new_filter_processor(ctx: [*c]fz_context, doc: [*c]pdf_document, chain: [*c]pdf_processor, old_res: ?*pdf_obj, new_res: ?*pdf_obj, struct_parents: c_int, transform: fz_matrix, filter: [*c]pdf_filter_options) [*c]pdf_processor;
pub extern fn pdf_filter_xobject_instance(ctx: [*c]fz_context, old_xobj: ?*pdf_obj, page_res: ?*pdf_obj, ctm: fz_matrix, filter: [*c]pdf_filter_options) ?*pdf_obj;
pub extern fn pdf_process_contents(ctx: [*c]fz_context, proc: [*c]pdf_processor, doc: [*c]pdf_document, obj: ?*pdf_obj, res: ?*pdf_obj, cookie: [*c]fz_cookie) void;
pub extern fn pdf_process_annot(ctx: [*c]fz_context, proc: [*c]pdf_processor, annot: ?*pdf_annot, cookie: [*c]fz_cookie) void;
pub extern fn pdf_process_glyph(ctx: [*c]fz_context, proc: [*c]pdf_processor, doc: [*c]pdf_document, resources: ?*pdf_obj, contents: [*c]fz_buffer) void;
pub const pdf_text_state = extern struct {
    char_space: f32,
    word_space: f32,
    scale: f32,
    leading: f32,
    font: [*c]pdf_font_desc,
    size: f32,
    render: c_int,
    rise: f32,
};
pub const pdf_text_object_state = extern struct {
    text: [*c]fz_text,
    text_bbox: fz_rect,
    tlm: fz_matrix,
    tm: fz_matrix,
    text_mode: c_int,
    cid: c_int,
    gid: c_int,
    char_bbox: fz_rect,
    fontdesc: [*c]pdf_font_desc,
    char_tx: f32,
    char_ty: f32,
};
pub extern fn pdf_tos_save(ctx: [*c]fz_context, tos: [*c]pdf_text_object_state, save: [*c]fz_matrix) void;
pub extern fn pdf_tos_restore(ctx: [*c]fz_context, tos: [*c]pdf_text_object_state, save: [*c]fz_matrix) void;
pub extern fn pdf_tos_get_text(ctx: [*c]fz_context, tos: [*c]pdf_text_object_state) [*c]fz_text;
pub extern fn pdf_tos_reset(ctx: [*c]fz_context, tos: [*c]pdf_text_object_state, render: c_int) void;
pub extern fn pdf_tos_make_trm(ctx: [*c]fz_context, tos: [*c]pdf_text_object_state, text: [*c]pdf_text_state, fontdesc: [*c]pdf_font_desc, cid: c_int, trm: [*c]fz_matrix) c_int;
pub extern fn pdf_tos_move_after_char(ctx: [*c]fz_context, tos: [*c]pdf_text_object_state) void;
pub extern fn pdf_tos_translate(tos: [*c]pdf_text_object_state, tx: f32, ty: f32) void;
pub extern fn pdf_tos_set_matrix(tos: [*c]pdf_text_object_state, a: f32, b: f32, c: f32, d: f32, e: f32, f: f32) void;
pub extern fn pdf_tos_newline(tos: [*c]pdf_text_object_state, leading: f32) void;
pub extern fn pdf_lookup_page_number(ctx: [*c]fz_context, doc: [*c]pdf_document, pageobj: ?*pdf_obj) c_int;
pub extern fn pdf_count_pages(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_count_pages_imp(ctx: [*c]fz_context, doc: [*c]fz_document, chapter: c_int) c_int;
pub extern fn pdf_lookup_page_obj(ctx: [*c]fz_context, doc: [*c]pdf_document, needle: c_int) ?*pdf_obj;
pub extern fn pdf_load_page_tree(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_drop_page_tree(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_lookup_anchor(ctx: [*c]fz_context, doc: [*c]pdf_document, name: [*c]const u8, xp: [*c]f32, yp: [*c]f32) c_int;
pub extern fn pdf_flatten_inheritable_page_items(ctx: [*c]fz_context, page: ?*pdf_obj) void;
pub extern fn pdf_load_page(ctx: [*c]fz_context, doc: [*c]pdf_document, number: c_int) [*c]pdf_page;
pub extern fn pdf_load_page_imp(ctx: [*c]fz_context, doc: [*c]fz_document, chapter: c_int, number: c_int) [*c]fz_page;
pub extern fn pdf_page_obj_transform(ctx: [*c]fz_context, pageobj: ?*pdf_obj, page_mediabox: [*c]fz_rect, page_ctm: [*c]fz_matrix) void;
pub extern fn pdf_page_transform(ctx: [*c]fz_context, page: [*c]pdf_page, mediabox: [*c]fz_rect, ctm: [*c]fz_matrix) void;
pub extern fn pdf_page_resources(ctx: [*c]fz_context, page: [*c]pdf_page) ?*pdf_obj;
pub extern fn pdf_page_contents(ctx: [*c]fz_context, page: [*c]pdf_page) ?*pdf_obj;
pub extern fn pdf_page_group(ctx: [*c]fz_context, page: [*c]pdf_page) ?*pdf_obj;
pub extern fn pdf_page_separations(ctx: [*c]fz_context, page: [*c]pdf_page) ?*fz_separations;
pub extern fn pdf_read_ocg(ctx: [*c]fz_context, doc: [*c]pdf_document) ?*pdf_ocg_descriptor;
pub extern fn pdf_drop_ocg(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_is_ocg_hidden(ctx: [*c]fz_context, doc: [*c]pdf_document, rdb: ?*pdf_obj, usage: [*c]const u8, ocg: ?*pdf_obj) c_int;
pub extern fn pdf_load_links(ctx: [*c]fz_context, page: [*c]pdf_page) [*c]fz_link;
pub extern fn pdf_bound_page(ctx: [*c]fz_context, page: [*c]pdf_page) fz_rect;
pub extern fn pdf_run_page(ctx: [*c]fz_context, page: [*c]pdf_page, dev: [*c]fz_device, ctm: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn pdf_run_page_with_usage(ctx: [*c]fz_context, page: [*c]pdf_page, dev: [*c]fz_device, ctm: fz_matrix, usage: [*c]const u8, cookie: [*c]fz_cookie) void;
pub extern fn pdf_run_page_contents(ctx: [*c]fz_context, page: [*c]pdf_page, dev: [*c]fz_device, ctm: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn pdf_run_page_annots(ctx: [*c]fz_context, page: [*c]pdf_page, dev: [*c]fz_device, ctm: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn pdf_run_page_widgets(ctx: [*c]fz_context, page: [*c]pdf_page, dev: [*c]fz_device, ctm: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn pdf_run_page_contents_with_usage(ctx: [*c]fz_context, page: [*c]pdf_page, dev: [*c]fz_device, ctm: fz_matrix, usage: [*c]const u8, cookie: [*c]fz_cookie) void;
pub extern fn pdf_run_page_annots_with_usage(ctx: [*c]fz_context, page: [*c]pdf_page, dev: [*c]fz_device, ctm: fz_matrix, usage: [*c]const u8, cookie: [*c]fz_cookie) void;
pub extern fn pdf_run_page_widgets_with_usage(ctx: [*c]fz_context, page: [*c]pdf_page, dev: [*c]fz_device, ctm: fz_matrix, usage: [*c]const u8, cookie: [*c]fz_cookie) void;
pub extern fn pdf_filter_page_contents(ctx: [*c]fz_context, doc: [*c]pdf_document, page: [*c]pdf_page, filter: [*c]pdf_filter_options) void;
pub extern fn pdf_filter_annot_contents(ctx: [*c]fz_context, doc: [*c]pdf_document, annot: ?*pdf_annot, filter: [*c]pdf_filter_options) void;
pub extern fn pdf_new_pixmap_from_page_contents_with_usage(ctx: [*c]fz_context, page: [*c]pdf_page, ctm: fz_matrix, cs: [*c]fz_colorspace, alpha: c_int, usage: [*c]const u8) [*c]fz_pixmap;
pub extern fn pdf_new_pixmap_from_page_with_usage(ctx: [*c]fz_context, page: [*c]pdf_page, ctm: fz_matrix, cs: [*c]fz_colorspace, alpha: c_int, usage: [*c]const u8) [*c]fz_pixmap;
pub extern fn pdf_new_pixmap_from_page_contents_with_separations_and_usage(ctx: [*c]fz_context, page: [*c]pdf_page, ctm: fz_matrix, cs: [*c]fz_colorspace, seps: ?*fz_separations, alpha: c_int, usage: [*c]const u8) [*c]fz_pixmap;
pub extern fn pdf_new_pixmap_from_page_with_separations_and_usage(ctx: [*c]fz_context, page: [*c]pdf_page, ctm: fz_matrix, cs: [*c]fz_colorspace, seps: ?*fz_separations, alpha: c_int, usage: [*c]const u8) [*c]fz_pixmap;
pub const PDF_REDACT_IMAGE_NONE: c_int = 0;
pub const PDF_REDACT_IMAGE_REMOVE: c_int = 1;
pub const PDF_REDACT_IMAGE_PIXELS: c_int = 2;
const enum_unnamed_60 = c_uint;
pub const pdf_redact_options = extern struct {
    black_boxes: c_int,
    image_method: c_int,
};
pub extern fn pdf_redact_page(ctx: [*c]fz_context, doc: [*c]pdf_document, page: [*c]pdf_page, opts: [*c]pdf_redact_options) c_int;
pub extern fn pdf_page_presentation(ctx: [*c]fz_context, page: [*c]pdf_page, transition: [*c]fz_transition, duration: [*c]f32) [*c]fz_transition;
pub extern fn pdf_load_default_colorspaces(ctx: [*c]fz_context, doc: [*c]pdf_document, page: [*c]pdf_page) [*c]fz_default_colorspaces;
pub extern fn pdf_update_default_colorspaces(ctx: [*c]fz_context, old_cs: [*c]fz_default_colorspaces, res: ?*pdf_obj) [*c]fz_default_colorspaces;
pub const PDF_ANNOT_TEXT: c_int = 0;
pub const PDF_ANNOT_LINK: c_int = 1;
pub const PDF_ANNOT_FREE_TEXT: c_int = 2;
pub const PDF_ANNOT_LINE: c_int = 3;
pub const PDF_ANNOT_SQUARE: c_int = 4;
pub const PDF_ANNOT_CIRCLE: c_int = 5;
pub const PDF_ANNOT_POLYGON: c_int = 6;
pub const PDF_ANNOT_POLY_LINE: c_int = 7;
pub const PDF_ANNOT_HIGHLIGHT: c_int = 8;
pub const PDF_ANNOT_UNDERLINE: c_int = 9;
pub const PDF_ANNOT_SQUIGGLY: c_int = 10;
pub const PDF_ANNOT_STRIKE_OUT: c_int = 11;
pub const PDF_ANNOT_REDACT: c_int = 12;
pub const PDF_ANNOT_STAMP: c_int = 13;
pub const PDF_ANNOT_CARET: c_int = 14;
pub const PDF_ANNOT_INK: c_int = 15;
pub const PDF_ANNOT_POPUP: c_int = 16;
pub const PDF_ANNOT_FILE_ATTACHMENT: c_int = 17;
pub const PDF_ANNOT_SOUND: c_int = 18;
pub const PDF_ANNOT_MOVIE: c_int = 19;
pub const PDF_ANNOT_RICH_MEDIA: c_int = 20;
pub const PDF_ANNOT_WIDGET: c_int = 21;
pub const PDF_ANNOT_SCREEN: c_int = 22;
pub const PDF_ANNOT_PRINTER_MARK: c_int = 23;
pub const PDF_ANNOT_TRAP_NET: c_int = 24;
pub const PDF_ANNOT_WATERMARK: c_int = 25;
pub const PDF_ANNOT_3D: c_int = 26;
pub const PDF_ANNOT_PROJECTION: c_int = 27;
pub const PDF_ANNOT_UNKNOWN: c_int = -1;
pub const enum_pdf_annot_type = c_int;
pub extern fn pdf_string_from_annot_type(ctx: [*c]fz_context, @"type": enum_pdf_annot_type) [*c]const u8;
pub extern fn pdf_annot_type_from_string(ctx: [*c]fz_context, subtype: [*c]const u8) enum_pdf_annot_type;
pub const PDF_ANNOT_IS_INVISIBLE: c_int = 1;
pub const PDF_ANNOT_IS_HIDDEN: c_int = 2;
pub const PDF_ANNOT_IS_PRINT: c_int = 4;
pub const PDF_ANNOT_IS_NO_ZOOM: c_int = 8;
pub const PDF_ANNOT_IS_NO_ROTATE: c_int = 16;
pub const PDF_ANNOT_IS_NO_VIEW: c_int = 32;
pub const PDF_ANNOT_IS_READ_ONLY: c_int = 64;
pub const PDF_ANNOT_IS_LOCKED: c_int = 128;
pub const PDF_ANNOT_IS_TOGGLE_NO_VIEW: c_int = 256;
pub const PDF_ANNOT_IS_LOCKED_CONTENTS: c_int = 512;
const enum_unnamed_61 = c_uint;
pub const PDF_ANNOT_LE_NONE: c_int = 0;
pub const PDF_ANNOT_LE_SQUARE: c_int = 1;
pub const PDF_ANNOT_LE_CIRCLE: c_int = 2;
pub const PDF_ANNOT_LE_DIAMOND: c_int = 3;
pub const PDF_ANNOT_LE_OPEN_ARROW: c_int = 4;
pub const PDF_ANNOT_LE_CLOSED_ARROW: c_int = 5;
pub const PDF_ANNOT_LE_BUTT: c_int = 6;
pub const PDF_ANNOT_LE_R_OPEN_ARROW: c_int = 7;
pub const PDF_ANNOT_LE_R_CLOSED_ARROW: c_int = 8;
pub const PDF_ANNOT_LE_SLASH: c_int = 9;
pub const enum_pdf_line_ending = c_uint;
pub const PDF_ANNOT_Q_LEFT: c_int = 0;
pub const PDF_ANNOT_Q_CENTER: c_int = 1;
pub const PDF_ANNOT_Q_RIGHT: c_int = 2;
const enum_unnamed_62 = c_uint;
pub extern fn pdf_line_ending_from_name(ctx: [*c]fz_context, end: ?*pdf_obj) enum_pdf_line_ending;
pub extern fn pdf_line_ending_from_string(ctx: [*c]fz_context, end: [*c]const u8) enum_pdf_line_ending;
pub extern fn pdf_name_from_line_ending(ctx: [*c]fz_context, end: enum_pdf_line_ending) ?*pdf_obj;
pub extern fn pdf_string_from_line_ending(ctx: [*c]fz_context, end: enum_pdf_line_ending) [*c]const u8;
pub extern fn pdf_keep_annot(ctx: [*c]fz_context, annot: ?*pdf_annot) ?*pdf_annot;
pub extern fn pdf_drop_annot(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_first_annot(ctx: [*c]fz_context, page: [*c]pdf_page) ?*pdf_annot;
pub extern fn pdf_next_annot(ctx: [*c]fz_context, annot: ?*pdf_annot) ?*pdf_annot;
pub extern fn pdf_annot_obj(ctx: [*c]fz_context, annot: ?*pdf_annot) ?*pdf_obj;
pub extern fn pdf_annot_page(ctx: [*c]fz_context, annot: ?*pdf_annot) [*c]pdf_page;
pub extern fn pdf_bound_annot(ctx: [*c]fz_context, annot: ?*pdf_annot) fz_rect;
pub extern fn pdf_annot_type(ctx: [*c]fz_context, annot: ?*pdf_annot) enum_pdf_annot_type;
pub extern fn pdf_run_annot(ctx: [*c]fz_context, annot: ?*pdf_annot, dev: [*c]fz_device, ctm: fz_matrix, cookie: [*c]fz_cookie) void;
pub extern fn pdf_lookup_name(ctx: [*c]fz_context, doc: [*c]pdf_document, which: ?*pdf_obj, needle: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_load_name_tree(ctx: [*c]fz_context, doc: [*c]pdf_document, which: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_lookup_number(ctx: [*c]fz_context, root: ?*pdf_obj, needle: c_int) ?*pdf_obj;
pub extern fn pdf_walk_tree(ctx: [*c]fz_context, tree: ?*pdf_obj, kid_name: ?*pdf_obj, arrive: ?fn ([*c]fz_context, ?*pdf_obj, ?*anyopaque, [*c]?*pdf_obj) callconv(.C) void, leave: ?fn ([*c]fz_context, ?*pdf_obj, ?*anyopaque) callconv(.C) void, arg: ?*anyopaque, names: [*c]?*pdf_obj, values: [*c]?*pdf_obj) void;
pub extern fn pdf_resolve_link(ctx: [*c]fz_context, doc: [*c]pdf_document, uri: [*c]const u8, xp: [*c]f32, yp: [*c]f32) c_int;
pub extern fn pdf_resolve_link_dest(ctx: [*c]fz_context, doc: [*c]pdf_document, uri: [*c]const u8) fz_link_dest;
pub extern fn pdf_new_destination_from_link(ctx: [*c]fz_context, doc: [*c]pdf_document, uri: [*c]const u8) ?*pdf_obj;
pub extern fn pdf_new_action_from_link(ctx: [*c]fz_context, doc: [*c]pdf_document, uri: [*c]const u8) ?*pdf_obj;
pub extern fn pdf_format_link_uri(ctx: [*c]fz_context, dest: fz_link_dest) [*c]u8;
pub extern fn pdf_parse_link_uri(ctx: [*c]fz_context, uri: [*c]const u8) fz_link_dest;
pub extern fn pdf_annot_transform(ctx: [*c]fz_context, annot: ?*pdf_annot) fz_matrix;
pub extern fn pdf_create_annot_raw(ctx: [*c]fz_context, page: [*c]pdf_page, @"type": enum_pdf_annot_type) ?*pdf_annot;
pub extern fn pdf_create_link(ctx: [*c]fz_context, page: [*c]pdf_page, bbox: fz_rect, uri: [*c]const u8) [*c]fz_link;
pub extern fn pdf_create_annot(ctx: [*c]fz_context, page: [*c]pdf_page, @"type": enum_pdf_annot_type) ?*pdf_annot;
pub extern fn pdf_delete_annot(ctx: [*c]fz_context, page: [*c]pdf_page, annot: ?*pdf_annot) void;
pub extern fn pdf_set_annot_popup(ctx: [*c]fz_context, annot: ?*pdf_annot, rect: fz_rect) void;
pub extern fn pdf_annot_popup(ctx: [*c]fz_context, annot: ?*pdf_annot) fz_rect;
pub extern fn pdf_annot_has_ink_list(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_has_quad_points(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_has_vertices(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_has_line(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_has_interior_color(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_has_line_ending_styles(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_has_icon_name(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_has_open(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_has_author(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_flags(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_rect(ctx: [*c]fz_context, annot: ?*pdf_annot) fz_rect;
pub extern fn pdf_annot_border(ctx: [*c]fz_context, annot: ?*pdf_annot) f32;
pub extern fn pdf_annot_opacity(ctx: [*c]fz_context, annot: ?*pdf_annot) f32;
pub extern fn pdf_annot_color(ctx: [*c]fz_context, annot: ?*pdf_annot, n: [*c]c_int, color: [*c]f32) void;
pub extern fn pdf_annot_interior_color(ctx: [*c]fz_context, annot: ?*pdf_annot, n: [*c]c_int, color: [*c]f32) void;
pub extern fn pdf_annot_quadding(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_language(ctx: [*c]fz_context, annot: ?*pdf_annot) fz_text_language;
pub extern fn pdf_annot_quad_point_count(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_quad_point(ctx: [*c]fz_context, annot: ?*pdf_annot, i: c_int) fz_quad;
pub extern fn pdf_annot_ink_list_count(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_ink_list_stroke_count(ctx: [*c]fz_context, annot: ?*pdf_annot, i: c_int) c_int;
pub extern fn pdf_annot_ink_list_stroke_vertex(ctx: [*c]fz_context, annot: ?*pdf_annot, i: c_int, k: c_int) fz_point;
pub extern fn pdf_set_annot_flags(ctx: [*c]fz_context, annot: ?*pdf_annot, flags: c_int) void;
pub extern fn pdf_set_annot_rect(ctx: [*c]fz_context, annot: ?*pdf_annot, rect: fz_rect) void;
pub extern fn pdf_set_annot_border(ctx: [*c]fz_context, annot: ?*pdf_annot, width: f32) void;
pub extern fn pdf_set_annot_opacity(ctx: [*c]fz_context, annot: ?*pdf_annot, opacity: f32) void;
pub extern fn pdf_set_annot_color(ctx: [*c]fz_context, annot: ?*pdf_annot, n: c_int, color: [*c]const f32) void;
pub extern fn pdf_set_annot_interior_color(ctx: [*c]fz_context, annot: ?*pdf_annot, n: c_int, color: [*c]const f32) void;
pub extern fn pdf_set_annot_quadding(ctx: [*c]fz_context, annot: ?*pdf_annot, q: c_int) void;
pub extern fn pdf_set_annot_language(ctx: [*c]fz_context, annot: ?*pdf_annot, lang: fz_text_language) void;
pub extern fn pdf_set_annot_quad_points(ctx: [*c]fz_context, annot: ?*pdf_annot, n: c_int, qv: [*c]const fz_quad) void;
pub extern fn pdf_clear_annot_quad_points(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_add_annot_quad_point(ctx: [*c]fz_context, annot: ?*pdf_annot, quad: fz_quad) void;
pub extern fn pdf_set_annot_ink_list(ctx: [*c]fz_context, annot: ?*pdf_annot, n: c_int, count: [*c]const c_int, v: [*c]const fz_point) void;
pub extern fn pdf_clear_annot_ink_list(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_add_annot_ink_list_stroke(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_add_annot_ink_list_stroke_vertex(ctx: [*c]fz_context, annot: ?*pdf_annot, p: fz_point) void;
pub extern fn pdf_add_annot_ink_list(ctx: [*c]fz_context, annot: ?*pdf_annot, n: c_int, stroke: [*c]fz_point) void;
pub extern fn pdf_set_annot_icon_name(ctx: [*c]fz_context, annot: ?*pdf_annot, name: [*c]const u8) void;
pub extern fn pdf_set_annot_is_open(ctx: [*c]fz_context, annot: ?*pdf_annot, is_open: c_int) void;
pub extern fn pdf_annot_line_start_style(ctx: [*c]fz_context, annot: ?*pdf_annot) enum_pdf_line_ending;
pub extern fn pdf_annot_line_end_style(ctx: [*c]fz_context, annot: ?*pdf_annot) enum_pdf_line_ending;
pub extern fn pdf_annot_line_ending_styles(ctx: [*c]fz_context, annot: ?*pdf_annot, start_style: [*c]enum_pdf_line_ending, end_style: [*c]enum_pdf_line_ending) void;
pub extern fn pdf_set_annot_line_start_style(ctx: [*c]fz_context, annot: ?*pdf_annot, s: enum_pdf_line_ending) void;
pub extern fn pdf_set_annot_line_end_style(ctx: [*c]fz_context, annot: ?*pdf_annot, e: enum_pdf_line_ending) void;
pub extern fn pdf_set_annot_line_ending_styles(ctx: [*c]fz_context, annot: ?*pdf_annot, start_style: enum_pdf_line_ending, end_style: enum_pdf_line_ending) void;
pub extern fn pdf_annot_icon_name(ctx: [*c]fz_context, annot: ?*pdf_annot) [*c]const u8;
pub extern fn pdf_annot_is_open(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_line(ctx: [*c]fz_context, annot: ?*pdf_annot, a: [*c]fz_point, b: [*c]fz_point) void;
pub extern fn pdf_set_annot_line(ctx: [*c]fz_context, annot: ?*pdf_annot, a: fz_point, b: fz_point) void;
pub extern fn pdf_annot_vertex_count(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_vertex(ctx: [*c]fz_context, annot: ?*pdf_annot, i: c_int) fz_point;
pub extern fn pdf_set_annot_vertices(ctx: [*c]fz_context, annot: ?*pdf_annot, n: c_int, v: [*c]const fz_point) void;
pub extern fn pdf_clear_annot_vertices(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_add_annot_vertex(ctx: [*c]fz_context, annot: ?*pdf_annot, p: fz_point) void;
pub extern fn pdf_set_annot_vertex(ctx: [*c]fz_context, annot: ?*pdf_annot, i: c_int, p: fz_point) void;
pub extern fn pdf_annot_contents(ctx: [*c]fz_context, annot: ?*pdf_annot) [*c]const u8;
pub extern fn pdf_set_annot_contents(ctx: [*c]fz_context, annot: ?*pdf_annot, text: [*c]const u8) void;
pub extern fn pdf_annot_author(ctx: [*c]fz_context, annot: ?*pdf_annot) [*c]const u8;
pub extern fn pdf_set_annot_author(ctx: [*c]fz_context, annot: ?*pdf_annot, author: [*c]const u8) void;
pub extern fn pdf_annot_modification_date(ctx: [*c]fz_context, annot: ?*pdf_annot) i64;
pub extern fn pdf_set_annot_modification_date(ctx: [*c]fz_context, annot: ?*pdf_annot, time: i64) void;
pub extern fn pdf_annot_creation_date(ctx: [*c]fz_context, annot: ?*pdf_annot) i64;
pub extern fn pdf_set_annot_creation_date(ctx: [*c]fz_context, annot: ?*pdf_annot, time: i64) void;
pub extern fn pdf_parse_default_appearance(ctx: [*c]fz_context, da: [*c]const u8, font: [*c][*c]const u8, size: [*c]f32, n: [*c]c_int, color: [*c]f32) void;
pub extern fn pdf_print_default_appearance(ctx: [*c]fz_context, buf: [*c]u8, nbuf: c_int, font: [*c]const u8, size: f32, n: c_int, color: [*c]const f32) void;
pub extern fn pdf_annot_default_appearance(ctx: [*c]fz_context, annot: ?*pdf_annot, font: [*c][*c]const u8, size: [*c]f32, n: [*c]c_int, color: [*c]f32) void;
pub extern fn pdf_set_annot_default_appearance(ctx: [*c]fz_context, annot: ?*pdf_annot, font: [*c]const u8, size: f32, n: c_int, color: [*c]const f32) void;
pub extern fn pdf_annot_request_resynthesis(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_needs_resynthesis(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_set_annot_resynthesised(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_dirty_annot(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_field_flags(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_field_value(ctx: [*c]fz_context, annot: ?*pdf_annot) [*c]const u8;
pub extern fn pdf_annot_field_label(ctx: [*c]fz_context, widget: ?*pdf_annot) [*c]const u8;
pub extern fn pdf_set_annot_field_value(ctx: [*c]fz_context, doc: [*c]pdf_document, widget: ?*pdf_annot, text: [*c]const u8, ignore_trigger_events: c_int) c_int;
pub extern fn pdf_layout_fit_text(ctx: [*c]fz_context, font: [*c]fz_font, lang: fz_text_language, str: [*c]const u8, bounds: fz_rect) [*c]fz_text;
pub extern fn pdf_annot_push_local_xref(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_pop_local_xref(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_ensure_local_xref(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_pop_and_discard_local_xref(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_update_annot(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_update_page(ctx: [*c]fz_context, page: [*c]pdf_page) c_int;
pub extern fn pdf_set_widget_editing_state(ctx: [*c]fz_context, widget: ?*pdf_annot, editing: c_int) void;
pub extern fn pdf_get_widget_editing_state(ctx: [*c]fz_context, widget: ?*pdf_annot) c_int;
pub extern fn pdf_toggle_widget(ctx: [*c]fz_context, widget: ?*pdf_annot) c_int;
pub extern fn pdf_new_display_list_from_annot(ctx: [*c]fz_context, annot: ?*pdf_annot) ?*fz_display_list;
pub extern fn pdf_new_pixmap_from_annot(ctx: [*c]fz_context, annot: ?*pdf_annot, ctm: fz_matrix, cs: [*c]fz_colorspace, seps: ?*fz_separations, alpha: c_int) [*c]fz_pixmap;
pub extern fn pdf_new_stext_page_from_annot(ctx: [*c]fz_context, annot: ?*pdf_annot, options: [*c]const fz_stext_options) [*c]fz_stext_page;
pub extern fn pdf_layout_text_widget(ctx: [*c]fz_context, annot: ?*pdf_annot) [*c]fz_layout_block;
pub const struct_pdf_embedded_file_params = extern struct {
    filename: [*c]const u8,
    mimetype: [*c]const u8,
    size: c_int,
    created: i64,
    modified: i64,
};
pub const pdf_embedded_file_params = struct_pdf_embedded_file_params;
pub extern fn pdf_is_embedded_file(ctx: [*c]fz_context, fs: ?*pdf_obj) c_int;
pub extern fn pdf_add_embedded_file(ctx: [*c]fz_context, doc: [*c]pdf_document, filename: [*c]const u8, mimetype: [*c]const u8, contents: [*c]fz_buffer, created: i64, modifed: i64, add_checksum: c_int) ?*pdf_obj;
pub extern fn pdf_get_embedded_file_params(ctx: [*c]fz_context, fs: ?*pdf_obj, out: [*c]pdf_embedded_file_params) void;
pub extern fn pdf_load_embedded_file_contents(ctx: [*c]fz_context, fs: ?*pdf_obj) [*c]fz_buffer;
pub extern fn pdf_verify_embedded_file_checksum(ctx: [*c]fz_context, fs: ?*pdf_obj) c_int;
pub extern fn pdf_parse_link_dest(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj) [*c]u8;
pub extern fn pdf_parse_link_action(ctx: [*c]fz_context, doc: [*c]pdf_document, obj: ?*pdf_obj, pagenum: c_int) [*c]u8;
pub extern fn pdf_lookup_dest(ctx: [*c]fz_context, doc: [*c]pdf_document, needle: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_load_link_annots(ctx: [*c]fz_context, [*c]pdf_document, annots: ?*pdf_obj, pagenum: c_int, page_ctm: fz_matrix) [*c]fz_link;
pub extern fn pdf_annot_MK_BG(ctx: [*c]fz_context, annot: ?*pdf_annot, n: [*c]c_int, color: [*c]f32) void;
pub extern fn pdf_annot_MK_BC(ctx: [*c]fz_context, annot: ?*pdf_annot, n: [*c]c_int, color: [*c]f32) void;
pub extern fn pdf_annot_MK_BG_rgb(ctx: [*c]fz_context, annot: ?*pdf_annot, rgb: [*c]f32) c_int;
pub extern fn pdf_annot_MK_BC_rgb(ctx: [*c]fz_context, annot: ?*pdf_annot, rgb: [*c]f32) c_int;
pub extern fn pdf_annot_ap(ctx: [*c]fz_context, annot: ?*pdf_annot) ?*pdf_obj;
pub extern fn pdf_annot_active(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_set_annot_active(ctx: [*c]fz_context, annot: ?*pdf_annot, active: c_int) void;
pub extern fn pdf_annot_hot(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_set_annot_hot(ctx: [*c]fz_context, annot: ?*pdf_annot, hot: c_int) void;
pub extern fn pdf_set_annot_appearance(ctx: [*c]fz_context, annot: ?*pdf_annot, appearance: [*c]const u8, state: [*c]const u8, ctm: fz_matrix, bbox: fz_rect, res: ?*pdf_obj, contents: [*c]fz_buffer) void;
pub extern fn pdf_set_annot_appearance_from_display_list(ctx: [*c]fz_context, annot: ?*pdf_annot, appearance: [*c]const u8, state: [*c]const u8, ctm: fz_matrix, list: ?*fz_display_list) void;
pub extern fn pdf_annot_has_filespec(ctx: [*c]fz_context, annot: ?*pdf_annot) c_int;
pub extern fn pdf_annot_filespec(ctx: [*c]fz_context, annot: ?*pdf_annot) ?*pdf_obj;
pub extern fn pdf_set_annot_filespec(ctx: [*c]fz_context, annot: ?*pdf_annot, obj: ?*pdf_obj) void;
pub const PDF_WIDGET_TYPE_UNKNOWN: c_int = 0;
pub const PDF_WIDGET_TYPE_BUTTON: c_int = 1;
pub const PDF_WIDGET_TYPE_CHECKBOX: c_int = 2;
pub const PDF_WIDGET_TYPE_COMBOBOX: c_int = 3;
pub const PDF_WIDGET_TYPE_LISTBOX: c_int = 4;
pub const PDF_WIDGET_TYPE_RADIOBUTTON: c_int = 5;
pub const PDF_WIDGET_TYPE_SIGNATURE: c_int = 6;
pub const PDF_WIDGET_TYPE_TEXT: c_int = 7;
pub const enum_pdf_widget_type = c_uint;
pub const PDF_WIDGET_TX_FORMAT_NONE: c_int = 0;
pub const PDF_WIDGET_TX_FORMAT_NUMBER: c_int = 1;
pub const PDF_WIDGET_TX_FORMAT_SPECIAL: c_int = 2;
pub const PDF_WIDGET_TX_FORMAT_DATE: c_int = 3;
pub const PDF_WIDGET_TX_FORMAT_TIME: c_int = 4;
pub const enum_pdf_widget_tx_format = c_uint;
pub extern fn pdf_keep_widget(ctx: [*c]fz_context, widget: ?*pdf_annot) ?*pdf_annot;
pub extern fn pdf_drop_widget(ctx: [*c]fz_context, widget: ?*pdf_annot) void;
pub extern fn pdf_first_widget(ctx: [*c]fz_context, page: [*c]pdf_page) ?*pdf_annot;
pub extern fn pdf_next_widget(ctx: [*c]fz_context, previous: ?*pdf_annot) ?*pdf_annot;
pub extern fn pdf_update_widget(ctx: [*c]fz_context, widget: ?*pdf_annot) c_int;
pub extern fn pdf_create_signature_widget(ctx: [*c]fz_context, page: [*c]pdf_page, name: [*c]u8) ?*pdf_annot;
pub extern fn pdf_widget_type(ctx: [*c]fz_context, widget: ?*pdf_annot) enum_pdf_widget_type;
pub extern fn pdf_bound_widget(ctx: [*c]fz_context, widget: ?*pdf_annot) fz_rect;
pub extern fn pdf_text_widget_max_len(ctx: [*c]fz_context, tw: ?*pdf_annot) c_int;
pub extern fn pdf_text_widget_format(ctx: [*c]fz_context, tw: ?*pdf_annot) c_int;
pub extern fn pdf_choice_widget_options(ctx: [*c]fz_context, tw: ?*pdf_annot, exportval: c_int, opts: [*c][*c]const u8) c_int;
pub extern fn pdf_choice_widget_is_multiselect(ctx: [*c]fz_context, tw: ?*pdf_annot) c_int;
pub extern fn pdf_choice_widget_value(ctx: [*c]fz_context, tw: ?*pdf_annot, opts: [*c][*c]const u8) c_int;
pub extern fn pdf_choice_widget_set_value(ctx: [*c]fz_context, tw: ?*pdf_annot, n: c_int, opts: [*c][*c]const u8) void;
pub extern fn pdf_choice_field_option_count(ctx: [*c]fz_context, field: ?*pdf_obj) c_int;
pub extern fn pdf_choice_field_option(ctx: [*c]fz_context, field: ?*pdf_obj, exportval: c_int, i: c_int) [*c]const u8;
pub extern fn pdf_widget_is_signed(ctx: [*c]fz_context, widget: ?*pdf_annot) c_int;
pub extern fn pdf_widget_is_readonly(ctx: [*c]fz_context, widget: ?*pdf_annot) c_int;
pub const PDF_FIELD_IS_READ_ONLY: c_int = 1;
pub const PDF_FIELD_IS_REQUIRED: c_int = 2;
pub const PDF_FIELD_IS_NO_EXPORT: c_int = 4;
pub const PDF_TX_FIELD_IS_MULTILINE: c_int = 4096;
pub const PDF_TX_FIELD_IS_PASSWORD: c_int = 8192;
pub const PDF_TX_FIELD_IS_FILE_SELECT: c_int = 1048576;
pub const PDF_TX_FIELD_IS_DO_NOT_SPELL_CHECK: c_int = 4194304;
pub const PDF_TX_FIELD_IS_DO_NOT_SCROLL: c_int = 8388608;
pub const PDF_TX_FIELD_IS_COMB: c_int = 16777216;
pub const PDF_TX_FIELD_IS_RICH_TEXT: c_int = 33554432;
pub const PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF: c_int = 16384;
pub const PDF_BTN_FIELD_IS_RADIO: c_int = 32768;
pub const PDF_BTN_FIELD_IS_PUSHBUTTON: c_int = 65536;
pub const PDF_BTN_FIELD_IS_RADIOS_IN_UNISON: c_int = 33554432;
pub const PDF_CH_FIELD_IS_COMBO: c_int = 131072;
pub const PDF_CH_FIELD_IS_EDIT: c_int = 262144;
pub const PDF_CH_FIELD_IS_SORT: c_int = 524288;
pub const PDF_CH_FIELD_IS_MULTI_SELECT: c_int = 2097152;
pub const PDF_CH_FIELD_IS_DO_NOT_SPELL_CHECK: c_int = 4194304;
pub const PDF_CH_FIELD_IS_COMMIT_ON_SEL_CHANGE: c_int = 33554432;
const enum_unnamed_63 = c_uint;
pub extern fn pdf_calculate_form(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_reset_form(ctx: [*c]fz_context, doc: [*c]pdf_document, fields: ?*pdf_obj, exclude: c_int) void;
pub extern fn pdf_field_type(ctx: [*c]fz_context, field: ?*pdf_obj) c_int;
pub extern fn pdf_field_type_string(ctx: [*c]fz_context, field: ?*pdf_obj) [*c]const u8;
pub extern fn pdf_field_flags(ctx: [*c]fz_context, field: ?*pdf_obj) c_int;
pub extern fn pdf_field_name(ctx: [*c]fz_context, field: ?*pdf_obj) [*c]u8;
pub extern fn pdf_field_value(ctx: [*c]fz_context, field: ?*pdf_obj) [*c]const u8;
pub extern fn pdf_create_field_name(ctx: [*c]fz_context, doc: [*c]pdf_document, prefix: [*c]const u8, buf: [*c]u8, len: usize) void;
pub extern fn pdf_field_border_style(ctx: [*c]fz_context, field: ?*pdf_obj) [*c]u8;
pub extern fn pdf_field_set_border_style(ctx: [*c]fz_context, field: ?*pdf_obj, text: [*c]const u8) void;
pub extern fn pdf_field_set_button_caption(ctx: [*c]fz_context, field: ?*pdf_obj, text: [*c]const u8) void;
pub extern fn pdf_field_set_fill_color(ctx: [*c]fz_context, field: ?*pdf_obj, col: ?*pdf_obj) void;
pub extern fn pdf_field_set_text_color(ctx: [*c]fz_context, field: ?*pdf_obj, col: ?*pdf_obj) void;
pub extern fn pdf_field_display(ctx: [*c]fz_context, field: ?*pdf_obj) c_int;
pub extern fn pdf_field_set_display(ctx: [*c]fz_context, field: ?*pdf_obj, d: c_int) void;
pub extern fn pdf_field_label(ctx: [*c]fz_context, field: ?*pdf_obj) [*c]const u8;
pub extern fn pdf_button_field_on_state(ctx: [*c]fz_context, field: ?*pdf_obj) ?*pdf_obj;
pub extern fn pdf_set_field_value(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj, text: [*c]const u8, ignore_trigger_events: c_int) c_int;
pub extern fn pdf_set_text_field_value(ctx: [*c]fz_context, widget: ?*pdf_annot, value: [*c]const u8) c_int;
pub extern fn pdf_set_choice_field_value(ctx: [*c]fz_context, widget: ?*pdf_annot, value: [*c]const u8) c_int;
pub extern fn pdf_edit_text_field_value(ctx: [*c]fz_context, widget: ?*pdf_annot, value: [*c]const u8, change: [*c]const u8, selStart: [*c]c_int, selEnd: [*c]c_int, newvalue: [*c][*c]u8) c_int;
pub const pdf_pkcs7_distinguished_name = extern struct {
    cn: [*c]u8,
    o: [*c]u8,
    ou: [*c]u8,
    email: [*c]u8,
    c: [*c]u8,
};
pub const PDF_SIGNATURE_ERROR_OKAY: c_int = 0;
pub const PDF_SIGNATURE_ERROR_NO_SIGNATURES: c_int = 1;
pub const PDF_SIGNATURE_ERROR_NO_CERTIFICATE: c_int = 2;
pub const PDF_SIGNATURE_ERROR_DIGEST_FAILURE: c_int = 3;
pub const PDF_SIGNATURE_ERROR_SELF_SIGNED: c_int = 4;
pub const PDF_SIGNATURE_ERROR_SELF_SIGNED_IN_CHAIN: c_int = 5;
pub const PDF_SIGNATURE_ERROR_NOT_TRUSTED: c_int = 6;
pub const PDF_SIGNATURE_ERROR_UNKNOWN: c_int = 7;
pub const pdf_signature_error = c_uint;
pub const pdf_pkcs7_verifier = struct_pdf_pkcs7_verifier;
pub const pdf_pkcs7_drop_verifier_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_verifier) callconv(.C) void;
pub const pdf_pkcs7_check_certificate_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_verifier, [*c]u8, usize) callconv(.C) pdf_signature_error;
pub const pdf_pkcs7_check_digest_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_verifier, [*c]fz_stream, [*c]u8, usize) callconv(.C) pdf_signature_error;
pub const pdf_pkcs7_get_signatory_fn = fn ([*c]fz_context, [*c]pdf_pkcs7_verifier, [*c]u8, usize) callconv(.C) [*c]pdf_pkcs7_distinguished_name;
pub const struct_pdf_pkcs7_verifier = extern struct {
    drop: ?pdf_pkcs7_drop_verifier_fn,
    check_certificate: ?pdf_pkcs7_check_certificate_fn,
    check_digest: ?pdf_pkcs7_check_digest_fn,
    get_signatory: ?pdf_pkcs7_get_signatory_fn,
};
pub extern fn pdf_signature_is_signed(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj) c_int;
pub extern fn pdf_signature_set_value(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj, signer: [*c]pdf_pkcs7_signer, stime: i64) void;
pub extern fn pdf_count_signatures(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_signature_error_description(err: pdf_signature_error) [*c]u8;
pub extern fn pdf_signature_get_signatory(ctx: [*c]fz_context, verifier: [*c]pdf_pkcs7_verifier, doc: [*c]pdf_document, signature: ?*pdf_obj) [*c]pdf_pkcs7_distinguished_name;
pub extern fn pdf_signature_get_widget_signatory(ctx: [*c]fz_context, verifier: [*c]pdf_pkcs7_verifier, widget: ?*pdf_annot) [*c]pdf_pkcs7_distinguished_name;
pub extern fn pdf_signature_drop_distinguished_name(ctx: [*c]fz_context, name: [*c]pdf_pkcs7_distinguished_name) void;
pub extern fn pdf_signature_format_distinguished_name(ctx: [*c]fz_context, name: [*c]pdf_pkcs7_distinguished_name) [*c]u8;
pub extern fn pdf_signature_info(ctx: [*c]fz_context, name: [*c]const u8, dn: [*c]pdf_pkcs7_distinguished_name, reason: [*c]const u8, location: [*c]const u8, date: i64, include_labels: c_int) [*c]u8;
pub extern fn pdf_signature_appearance_signed(ctx: [*c]fz_context, rect: fz_rect, lang: fz_text_language, img: ?*fz_image, left_text: [*c]const u8, right_text: [*c]const u8, include_logo: c_int) ?*fz_display_list;
pub extern fn pdf_signature_appearance_unsigned(ctx: [*c]fz_context, rect: fz_rect, lang: fz_text_language) ?*fz_display_list;
pub extern fn pdf_check_digest(ctx: [*c]fz_context, verifier: [*c]pdf_pkcs7_verifier, doc: [*c]pdf_document, signature: ?*pdf_obj) pdf_signature_error;
pub extern fn pdf_check_certificate(ctx: [*c]fz_context, verifier: [*c]pdf_pkcs7_verifier, doc: [*c]pdf_document, signature: ?*pdf_obj) pdf_signature_error;
pub extern fn pdf_check_widget_digest(ctx: [*c]fz_context, verifier: [*c]pdf_pkcs7_verifier, widget: ?*pdf_annot) pdf_signature_error;
pub extern fn pdf_check_widget_certificate(ctx: [*c]fz_context, verifier: [*c]pdf_pkcs7_verifier, widget: ?*pdf_annot) pdf_signature_error;
pub extern fn pdf_clear_signature(ctx: [*c]fz_context, widget: ?*pdf_annot) void;
pub extern fn pdf_sign_signature_with_appearance(ctx: [*c]fz_context, widget: ?*pdf_annot, signer: [*c]pdf_pkcs7_signer, date: i64, disp_list: ?*fz_display_list) void;
pub const PDF_SIGNATURE_SHOW_LABELS: c_int = 1;
pub const PDF_SIGNATURE_SHOW_DN: c_int = 2;
pub const PDF_SIGNATURE_SHOW_DATE: c_int = 4;
pub const PDF_SIGNATURE_SHOW_TEXT_NAME: c_int = 8;
pub const PDF_SIGNATURE_SHOW_GRAPHIC_NAME: c_int = 16;
pub const PDF_SIGNATURE_SHOW_LOGO: c_int = 32;
const enum_unnamed_64 = c_uint;
pub extern fn pdf_sign_signature(ctx: [*c]fz_context, widget: ?*pdf_annot, signer: [*c]pdf_pkcs7_signer, appearance_flags: c_int, graphic: ?*fz_image, reason: [*c]const u8, location: [*c]const u8) void;
pub extern fn pdf_preview_signature_as_display_list(ctx: [*c]fz_context, w: f32, h: f32, lang: fz_text_language, signer: [*c]pdf_pkcs7_signer, appearance_flags: c_int, graphic: ?*fz_image, reason: [*c]const u8, location: [*c]const u8) ?*fz_display_list;
pub extern fn pdf_preview_signature_as_pixmap(ctx: [*c]fz_context, w: c_int, h: c_int, lang: fz_text_language, signer: [*c]pdf_pkcs7_signer, appearance_flags: c_int, graphic: ?*fz_image, reason: [*c]const u8, location: [*c]const u8) [*c]fz_pixmap;
pub extern fn pdf_check_signature(ctx: [*c]fz_context, verifier: [*c]pdf_pkcs7_verifier, doc: [*c]pdf_document, signature: ?*pdf_obj, ebuf: [*c]u8, ebufsize: usize) c_int;
pub extern fn pdf_drop_signer(ctx: [*c]fz_context, signer: [*c]pdf_pkcs7_signer) void;
pub extern fn pdf_drop_verifier(ctx: [*c]fz_context, verifier: [*c]pdf_pkcs7_verifier) void;
pub extern fn pdf_field_reset(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj) void;
pub extern fn pdf_lookup_field(ctx: [*c]fz_context, form: ?*pdf_obj, name: [*c]const u8) ?*pdf_obj;
pub const pdf_keystroke_event = extern struct {
    value: [*c]const u8,
    change: [*c]const u8,
    selStart: c_int,
    selEnd: c_int,
    willCommit: c_int,
    newChange: [*c]u8,
    newValue: [*c]u8,
};
pub extern fn pdf_field_event_keystroke(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj, evt: [*c]pdf_keystroke_event) c_int;
pub extern fn pdf_field_event_validate(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj, value: [*c]const u8, newvalue: [*c][*c]u8) c_int;
pub extern fn pdf_field_event_calculate(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj) void;
pub extern fn pdf_field_event_format(ctx: [*c]fz_context, doc: [*c]pdf_document, field: ?*pdf_obj) [*c]u8;
pub extern fn pdf_annot_field_event_keystroke(ctx: [*c]fz_context, doc: [*c]pdf_document, annot: ?*pdf_annot, evt: [*c]pdf_keystroke_event) c_int;
pub extern fn pdf_document_event_will_close(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_document_event_will_save(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_document_event_did_save(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_document_event_will_print(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_document_event_did_print(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_page_event_open(ctx: [*c]fz_context, page: [*c]pdf_page) void;
pub extern fn pdf_page_event_close(ctx: [*c]fz_context, page: [*c]pdf_page) void;
pub extern fn pdf_annot_event_enter(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_exit(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_down(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_up(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_focus(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_blur(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_page_open(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_page_close(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_page_visible(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub extern fn pdf_annot_event_page_invisible(ctx: [*c]fz_context, annot: ?*pdf_annot) void;
pub const PDF_DOCUMENT_EVENT_ALERT: c_int = 0;
pub const PDF_DOCUMENT_EVENT_PRINT: c_int = 1;
pub const PDF_DOCUMENT_EVENT_LAUNCH_URL: c_int = 2;
pub const PDF_DOCUMENT_EVENT_MAIL_DOC: c_int = 3;
pub const PDF_DOCUMENT_EVENT_SUBMIT: c_int = 4;
pub const PDF_DOCUMENT_EVENT_EXEC_MENU_ITEM: c_int = 5;
const enum_unnamed_65 = c_uint;
pub extern fn pdf_set_doc_event_callback(ctx: [*c]fz_context, doc: [*c]pdf_document, event_cb: ?pdf_doc_event_cb, free_event_data_cb: ?pdf_free_doc_event_data_cb, data: ?*anyopaque) void;
pub extern fn pdf_get_doc_event_callback_data(ctx: [*c]fz_context, doc: [*c]pdf_document) ?*anyopaque;
pub const pdf_alert_event = extern struct {
    doc: [*c]pdf_document,
    message: [*c]const u8,
    icon_type: c_int,
    button_group_type: c_int,
    title: [*c]const u8,
    check_box_message: [*c]const u8,
    initially_checked: c_int,
    finally_checked: c_int,
    button_pressed: c_int,
};
pub const PDF_ALERT_ICON_ERROR: c_int = 0;
pub const PDF_ALERT_ICON_WARNING: c_int = 1;
pub const PDF_ALERT_ICON_QUESTION: c_int = 2;
pub const PDF_ALERT_ICON_STATUS: c_int = 3;
const enum_unnamed_66 = c_uint;
pub const PDF_ALERT_BUTTON_GROUP_OK: c_int = 0;
pub const PDF_ALERT_BUTTON_GROUP_OK_CANCEL: c_int = 1;
pub const PDF_ALERT_BUTTON_GROUP_YES_NO: c_int = 2;
pub const PDF_ALERT_BUTTON_GROUP_YES_NO_CANCEL: c_int = 3;
const enum_unnamed_67 = c_uint;
pub const PDF_ALERT_BUTTON_NONE: c_int = 0;
pub const PDF_ALERT_BUTTON_OK: c_int = 1;
pub const PDF_ALERT_BUTTON_CANCEL: c_int = 2;
pub const PDF_ALERT_BUTTON_NO: c_int = 3;
pub const PDF_ALERT_BUTTON_YES: c_int = 4;
const enum_unnamed_68 = c_uint;
pub extern fn pdf_access_alert_event(ctx: [*c]fz_context, evt: [*c]pdf_doc_event) [*c]pdf_alert_event;
pub extern fn pdf_access_exec_menu_item_event(ctx: [*c]fz_context, evt: [*c]pdf_doc_event) [*c]const u8;
pub const pdf_launch_url_event = extern struct {
    url: [*c]const u8,
    new_frame: c_int,
};
pub extern fn pdf_access_launch_url_event(ctx: [*c]fz_context, evt: [*c]pdf_doc_event) [*c]pdf_launch_url_event;
pub const pdf_mail_doc_event = extern struct {
    ask_user: c_int,
    to: [*c]const u8,
    cc: [*c]const u8,
    bcc: [*c]const u8,
    subject: [*c]const u8,
    message: [*c]const u8,
};
pub extern fn pdf_access_mail_doc_event(ctx: [*c]fz_context, evt: [*c]pdf_doc_event) [*c]pdf_mail_doc_event;
pub extern fn pdf_event_issue_alert(ctx: [*c]fz_context, doc: [*c]pdf_document, evt: [*c]pdf_alert_event) void;
pub extern fn pdf_event_issue_print(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_event_issue_exec_menu_item(ctx: [*c]fz_context, doc: [*c]pdf_document, item: [*c]const u8) void;
pub extern fn pdf_event_issue_launch_url(ctx: [*c]fz_context, doc: [*c]pdf_document, url: [*c]const u8, new_frame: c_int) void;
pub extern fn pdf_event_issue_mail_doc(ctx: [*c]fz_context, doc: [*c]pdf_document, evt: [*c]pdf_mail_doc_event) void;
pub extern fn pdf_enable_js(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_disable_js(ctx: [*c]fz_context, doc: [*c]pdf_document) void;
pub extern fn pdf_js_supported(ctx: [*c]fz_context, doc: [*c]pdf_document) c_int;
pub extern fn pdf_drop_js(ctx: [*c]fz_context, js: ?*pdf_js) void;
pub extern fn pdf_js_event_init(js: ?*pdf_js, target: ?*pdf_obj, value: [*c]const u8, willCommit: c_int) void;
pub extern fn pdf_js_event_result(js: ?*pdf_js) c_int;
pub extern fn pdf_js_event_result_validate(js: ?*pdf_js, newvalue: [*c][*c]u8) c_int;
pub extern fn pdf_js_event_value(js: ?*pdf_js) [*c]u8;
pub extern fn pdf_js_event_init_keystroke(js: ?*pdf_js, target: ?*pdf_obj, evt: [*c]pdf_keystroke_event) void;
pub extern fn pdf_js_event_result_keystroke(js: ?*pdf_js, evt: [*c]pdf_keystroke_event) c_int;
pub extern fn pdf_js_execute(js: ?*pdf_js, name: [*c]const u8, code: [*c]const u8, result: [*c][*c]u8) void;
pub extern fn pdf_clean_file(ctx: [*c]fz_context, infile: [*c]u8, outfile: [*c]u8, password: [*c]u8, opts: [*c]pdf_write_options, retainlen: c_int, retainlist: [*c][*c]u8) void;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):67:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):73:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):164:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):186:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):194:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):312:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):313:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /home/ryan/.local/zigup/0.10.0-dev.1946+6f4343b61/files/lib/include/stddef.h:104:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /home/ryan/.local/zigup/0.10.0-dev.1946+6f4343b61/files/lib/include/stdarg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /home/ryan/.local/zigup/0.10.0-dev.1946+6f4343b61/files/lib/include/stdarg.h:18:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /home/ryan/.local/zigup/0.10.0-dev.1946+6f4343b61/files/lib/include/stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/ryan/.local/zigup/0.10.0-dev.1946+6f4343b61/files/lib/include/stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/ryan/.local/zigup/0.10.0-dev.1946+6f4343b61/files/lib/include/stdarg.h:27:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:186:9
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/sys/cdefs.h:45:10
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/sys/cdefs.h:55:10
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:82:11
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/sys/cdefs.h:124:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/sys/cdefs.h:125:9
pub const __glibc_unsigned_or_positive = @compileError("unable to translate macro: undefined identifier `__typeof`"); // /usr/include/sys/cdefs.h:160:9
pub const __glibc_fortify = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /usr/include/sys/cdefs.h:185:9
pub const __glibc_fortify_n = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /usr/include/sys/cdefs.h:195:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:207:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:208:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/sys/cdefs.h:216:10
pub const __REDIRECT = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:247:10
pub const __REDIRECT_NTH = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:254:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:256:11
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/sys/cdefs.h:260:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:281:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:292:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:298:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:308:10
pub const __attribute_const__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:315:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:321:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:330:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:331:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:339:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:349:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:362:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:372:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:384:11
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:397:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:406:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/sys/cdefs.h:424:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:433:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/sys/cdefs.h:451:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:452:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /usr/include/sys/cdefs.h:495:10
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:544:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:620:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:621:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/sys/cdefs.h:635:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/sys/cdefs.h:636:10
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:681:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:682:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:683:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:693:10
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:700:10
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /usr/include/bits/types.h:137:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/bits/typesizes.h:73:9
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:106:9
pub const __f32 = @compileError("unable to translate macro: undefined identifier `f`"); // /usr/include/bits/floatn-common.h:91:12
pub const __f64x = @compileError("unable to translate macro: undefined identifier `l`"); // /usr/include/bits/floatn-common.h:120:13
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:178:13
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /usr/include/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`"); // /usr/include/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`"); // /usr/include/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /usr/include/bits/floatn-common.h:292:13
pub const __INT64_C = @compileError("unable to translate macro: undefined identifier `L`"); // /usr/include/stdint.h:106:11
pub const __UINT64_C = @compileError("unable to translate macro: undefined identifier `UL`"); // /usr/include/stdint.h:107:11
pub const INT64_C = @compileError("unable to translate macro: undefined identifier `L`"); // /usr/include/stdint.h:252:11
pub const UINT32_C = @compileError("unable to translate macro: undefined identifier `U`"); // /usr/include/stdint.h:260:10
pub const UINT64_C = @compileError("unable to translate macro: undefined identifier `UL`"); // /usr/include/stdint.h:262:11
pub const INTMAX_C = @compileError("unable to translate macro: undefined identifier `L`"); // /usr/include/stdint.h:269:11
pub const UINTMAX_C = @compileError("unable to translate macro: undefined identifier `UL`"); // /usr/include/stdint.h:270:11
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /usr/include/bits/select.h:34:9
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/struct_mutex.h:56:10
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/struct_rwlock.h:40:11
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/thread-shared-types.h:113:9
pub const TRACK_LABEL = @compileError("unable to translate C expr: unexpected token 'do'"); // third-party/mupdf/include/mupdf/fitz/track-usage.h:52:9
pub const TRACK_FN = @compileError("unable to translate C expr: unexpected token 'do'"); // third-party/mupdf/include/mupdf/fitz/track-usage.h:53:9
pub const nelem = @compileError("unable to translate C expr: unexpected token '('"); // third-party/mupdf/include/mupdf/fitz/system.h:63:9
pub const S_ISDIR = @compileError("unable to translate macro: undefined identifier `S_IFDIR`"); // third-party/mupdf/include/mupdf/fitz/system.h:182:9
pub const @"inline" = @compileError("unable to translate macro: undefined identifier `__inline`"); // third-party/mupdf/include/mupdf/fitz/system.h:199:9
pub const fz_forceinline = @compileError("unable to translate C expr: unexpected token 'inline'"); // third-party/mupdf/include/mupdf/fitz/system.h:206:9
pub const FZ_RESTRICT = @compileError("unable to translate macro: undefined identifier `__restrict`"); // third-party/mupdf/include/mupdf/fitz/system.h:215:9
pub const FZ_NORETURN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // third-party/mupdf/include/mupdf/fitz/system.h:222:9
pub const FZ_UNUSED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // third-party/mupdf/include/mupdf/fitz/system.h:234:9
pub const FZ_PRINTFLIKE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // third-party/mupdf/include/mupdf/fitz/system.h:244:9
pub const __ASSERT_VOID_CAST = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/assert.h:40:10
pub const assert = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/assert.h:104:11
pub const __ASSERT_FUNCTION = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/assert.h:126:12
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'"); // /usr/include/assert.h:140:10
pub const fz_try = @compileError("unable to translate C expr: unexpected token 'if'"); // third-party/mupdf/include/mupdf/fitz/context.h:57:9
pub const fz_always = @compileError("unable to translate C expr: unexpected token 'while'"); // third-party/mupdf/include/mupdf/fitz/context.h:58:9
pub const fz_catch = @compileError("unable to translate C expr: unexpected token 'while'"); // third-party/mupdf/include/mupdf/fitz/context.h:59:9
pub const fz_malloc_struct = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/context.h:483:9
pub const fz_malloc_struct_array = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/context.h:492:9
pub const fz_malloc_array = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/context.h:501:9
pub const fz_realloc_array = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/context.h:503:9
pub const FZ_INIT_STORABLE = @compileError("unable to translate macro: undefined identifier `S`"); // third-party/mupdf/include/mupdf/fitz/store.h:86:9
pub const FZ_INIT_KEY_STORABLE = @compileError("unable to translate macro: undefined identifier `KS`"); // third-party/mupdf/include/mupdf/fitz/store.h:94:9
pub const FZ_LOG_STORE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // third-party/mupdf/include/mupdf/fitz/store.h:437:9
pub const FZ_LOG_DUMP_STORE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // third-party/mupdf/include/mupdf/fitz/store.h:438:9
pub const fz_new_derived_archive = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/archive.h:287:9
pub const fz_new_derived_image = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/image.h:210:9
pub const fz_new_derived_device = @compileError("unable to translate macro: undefined identifier `ctx`"); // third-party/mupdf/include/mupdf/fitz/device.h:222:9
pub const fz_new_derived_outline_iter = @compileError("unable to translate macro: undefined identifier `ctx`"); // third-party/mupdf/include/mupdf/fitz/outline.h:206:9
pub const fz_new_derived_document = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/document.h:443:9
pub const fz_new_derived_page = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/document.h:648:9
pub const fz_new_derived_document_writer = @compileError("unable to translate C expr: unexpected token ')'"); // third-party/mupdf/include/mupdf/fitz/writer.h:72:9
pub const fz_new_band_writer = @compileError("unable to translate macro: undefined identifier `ctx`"); // third-party/mupdf/include/mupdf/fitz/band-writer.h:114:9
pub const PDF_NAME = @compileError("unable to translate macro: undefined identifier `PDF_ENUM_NAME_`"); // third-party/mupdf/include/mupdf/pdf/object.h:252:9
pub const PDF_MAKE_NAME = @compileError("unable to translate macro: undefined identifier `PDF_ENUM_NAME_`"); // third-party/mupdf/include/mupdf/pdf/object.h:254:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 13);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_TYPE__ = c_uint;
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver3 = @as(c_int, 1);
pub const __znver3__ = @as(c_int, 1);
pub const __tune_znver3__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __WBNOINVD__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const MUPDF_PDF_H = "";
pub const MUDPF_FITZ_H = "";
pub const MUPDF_FITZ_VERSION_H = "";
pub const FZ_VERSION = "1.20.0";
pub const FZ_VERSION_MAJOR = @as(c_int, 1);
pub const FZ_VERSION_MINOR = @as(c_int, 19);
pub const FZ_VERSION_PATCH = @as(c_int, 0);
pub const FZ_CONFIG_H = "";
pub const FZ_ENABLE_SPOT_RENDERING = @as(c_int, 1);
pub const FZ_PLOTTERS_N = @as(c_int, 1);
pub const FZ_PLOTTERS_G = @as(c_int, 1);
pub const FZ_PLOTTERS_RGB = @as(c_int, 1);
pub const FZ_PLOTTERS_CMYK = @as(c_int, 1);
pub const FZ_ENABLE_PDF = @as(c_int, 1);
pub const FZ_ENABLE_XPS = @as(c_int, 1);
pub const FZ_ENABLE_SVG = @as(c_int, 1);
pub const FZ_ENABLE_CBZ = @as(c_int, 1);
pub const FZ_ENABLE_IMG = @as(c_int, 1);
pub const FZ_ENABLE_HTML = @as(c_int, 1);
pub const FZ_ENABLE_EPUB = @as(c_int, 1);
pub const FZ_ENABLE_OCR_OUTPUT = @as(c_int, 1);
pub const FZ_ENABLE_ODT_OUTPUT = @as(c_int, 1);
pub const FZ_ENABLE_DOCX_OUTPUT = @as(c_int, 1);
pub const FZ_ENABLE_JPX = @as(c_int, 1);
pub const FZ_ENABLE_JS = @as(c_int, 1);
pub const FZ_ENABLE_ICC = @as(c_int, 1);
pub const OCR_DISABLED = "";
pub const MUPDF_FITZ_SYSTEM_H = "";
pub const PACIFY_VALGRIND = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const _SETJMP_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 35);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    return __has_builtin(name);
}
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    return __bos(__o);
}
pub inline fn __glibc_safe_len_cond(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(__l <= (__osz / __s)) {
    return __l <= (__osz / __s);
}
pub inline fn __glibc_safe_or_unknown_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub inline fn __glibc_unsafe_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    return __attribute_nonnull__(params);
}
pub const __wur = "";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __attr_dealloc_free = "";
pub const __USE_EXTERN_INLINES = @as(c_int, 1);
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const _BITS_SETJMP_H = @as(c_int, 1);
pub const __jmp_buf_tag_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @as(c_int, 1024) / (@as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub inline fn sigsetjmp(env: anytype, savemask: anytype) @TypeOf(__sigsetjmp(env, savemask)) {
    return __sigsetjmp(env, savemask);
}
pub const _STDIO_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need___va_list = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    return __builtin_nanf(x);
}
pub const _BITS_STDIO_H = @as(c_int, 1);
pub const __STDIO_INLINE = __extern_inline;
pub const MUPDF_FITZ_EXPORT_H = "";
pub const FZ_FUNCTION = "";
pub const FZ_DATA = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hexadecimal);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    return blk: {
        _ = LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[__FD_ELT(d)] & __FD_MASK(d)) != @as(c_int, 0)) {
    return (__FDS_BITS(s)[__FD_ELT(d)] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(d / __NFDBITS) {
    return d / __NFDBITS;
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << (d % __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = __PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const MEMENTO_H = "";
pub const MEMENTO_UNDERLYING_MALLOC = malloc;
pub const MEMENTO_UNDERLYING_FREE = free;
pub const MEMENTO_UNDERLYING_REALLOC = realloc;
pub const MEMENTO_UNDERLYING_CALLOC = calloc;
pub const MEMENTO_MAXALIGN = @import("std").zig.c_translation.sizeof(c_int);
pub const MEMENTO_PREFILL = @as(c_int, 0xa6);
pub const MEMENTO_POSTFILL = @as(c_int, 0xa7);
pub const MEMENTO_ALLOCFILL = @as(c_int, 0xa8);
pub const MEMENTO_FREEFILL = @as(c_int, 0xa9);
pub const MEMENTO_FREELIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x2000000, .hexadecimal);
pub const TRACK_USAGE_H = "";
pub const FZ_PI = @as(f32, 3.14159265);
pub const FZ_RADIAN = @as(f32, 57.2957795);
pub const FZ_DEGREE = @as(f32, 0.017453292);
pub const FZ_SQRT2 = @as(f32, 1.41421356);
pub const FZ_LN2 = @as(f32, 0.69314718);
pub const HAVE_SIGSETJMP = @as(c_int, 1);
pub inline fn fz_setjmp(BUF: anytype) @TypeOf(sigsetjmp(BUF, @as(c_int, 0))) {
    return sigsetjmp(BUF, @as(c_int, 0));
}
pub inline fn fz_longjmp(BUF: anytype, VAL: anytype) @TypeOf(siglongjmp(BUF, VAL)) {
    return siglongjmp(BUF, VAL);
}
pub const FZ_MEMORY_BLOCK_ALIGN_MOD = @import("std").zig.c_translation.sizeof(?*anyopaque);
pub const FZ_POINTER_ALIGN_MOD = @as(c_int, 4);
pub const MUPDF_FITZ_CONTEXT_H = "";
pub const MUPDF_FITZ_MATH_H = "";
pub const _ASSERT_H = @as(c_int, 1);
pub inline fn FZ_EXPAND(A: anytype) @TypeOf(A + (A >> @as(c_int, 7))) {
    return A + (A >> @as(c_int, 7));
}
pub inline fn FZ_COMBINE(A: anytype, B: anytype) @TypeOf((A * B) >> @as(c_int, 8)) {
    return (A * B) >> @as(c_int, 8);
}
pub inline fn FZ_COMBINE2(A: anytype, B: anytype, C: anytype, D: anytype) @TypeOf(((A * B) + (C * D)) >> @as(c_int, 8)) {
    return ((A * B) + (C * D)) >> @as(c_int, 8);
}
pub inline fn FZ_BLEND(SRC: anytype, DST: anytype, AMOUNT: anytype) @TypeOf((((SRC - DST) * AMOUNT) + (DST << @as(c_int, 8))) >> @as(c_int, 8)) {
    return (((SRC - DST) * AMOUNT) + (DST << @as(c_int, 8))) >> @as(c_int, 8);
}
pub inline fn DIV_BY_ZERO(a: anytype, b: anytype, min: anytype, max: anytype) @TypeOf(if (@boolToInt(a < @as(c_int, 0)) ^ @boolToInt(b < @as(c_int, 0))) min else max) {
    return if (@boolToInt(a < @as(c_int, 0)) ^ @boolToInt(b < @as(c_int, 0))) min else max;
}
pub const FZ_MIN_INF_RECT = @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal));
pub const FZ_MAX_INF_RECT = @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffff80, .hexadecimal));
pub inline fn fz_var(@"var": anytype) @TypeOf(fz_var_imp(@import("std").zig.c_translation.cast(?*anyopaque, &@"var"))) {
    return fz_var_imp(@import("std").zig.c_translation.cast(?*anyopaque, &@"var"));
}
pub const FITZ_DEBUG_LOCKING = "";
pub inline fn fz_new_context(alloc: anytype, locks: anytype, max_store: anytype) @TypeOf(fz_new_context_imp(alloc, locks, max_store, FZ_VERSION)) {
    return fz_new_context_imp(alloc, locks, max_store, FZ_VERSION);
}
pub const FZ_JMPBUF_ALIGN = @as(c_int, 32);
pub const MUPDF_FITZ_OUTPUT_H = "";
pub const MUPDF_FITZ_BUFFER_H = "";
pub const MUPDF_FITZ_STRING_H = "";
pub const FZ_REPLACEMENT_CHARACTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFD, .hexadecimal);
pub const MUPDF_FITZ_STREAM_H = "";
pub const MUPDF_FITZ_LOG_H = "";
pub const MUPDF_FITZ_CRYPT_H = "";
pub const FZ_AES_DECRYPT = @as(c_int, 0);
pub const FZ_AES_ENCRYPT = @as(c_int, 1);
pub const MUPDF_FITZ_GETOPT_H = "";
pub const MUPDF_FITZ_HASH_H = "";
pub const FZ_HASH_TABLE_KEY_LENGTH = @as(c_int, 48);
pub const MUPDF_FITZ_POOL_H = "";
pub const MUPDF_FITZ_TREE_H = "";
pub const FITZ_BIDI_H = "";
pub const MUPDF_FITZ_XML_H = "";
pub const MUPDF_FITZ_COMPRESS_H = "";
pub const MUPDF_FITZ_COMPRESSED_BUFFER_H = "";
pub const MUPDF_FITZ_FILTER_H = "";
pub const MUPDF_FITZ_STORE_H = "";
pub const MUPDF_FITZ_ARCHIVE_H = "";
pub const MUPDF_FITZ_COLOR_H = "";
pub const MUPDF_FITZ_PIXMAP_H = "";
pub const MUPDF_FITZ_SEPARATION_H = "";
pub const MUPDF_FITZ_BITMAP_H = "";
pub const MUPDF_FITZ_IMAGE_H = "";
pub const MUPDF_FITZ_SHADE_H = "";
pub const MUPDF_FITZ_FONT_H = "";
pub const MUPDF_FITZ_PATH_H = "";
pub const MUPDF_FITZ_TEXT_H = "";
pub inline fn FZ_LANG_TAG2(c1: anytype, c2: anytype) @TypeOf(((c1 - 'a') + @as(c_int, 1)) + (((c2 - 'a') + @as(c_int, 1)) * @as(c_int, 27))) {
    return ((c1 - 'a') + @as(c_int, 1)) + (((c2 - 'a') + @as(c_int, 1)) * @as(c_int, 27));
}
pub inline fn FZ_LANG_TAG3(c1: anytype, c2: anytype, c3: anytype) @TypeOf((((c1 - 'a') + @as(c_int, 1)) + (((c2 - 'a') + @as(c_int, 1)) * @as(c_int, 27))) + ((((c3 - 'a') + @as(c_int, 1)) * @as(c_int, 27)) * @as(c_int, 27))) {
    return (((c1 - 'a') + @as(c_int, 1)) + (((c2 - 'a') + @as(c_int, 1)) * @as(c_int, 27))) + ((((c3 - 'a') + @as(c_int, 1)) * @as(c_int, 27)) * @as(c_int, 27));
}
pub const MUPDF_FITZ_GLYPH_H = "";
pub const MUPDF_FITZ_DEVICE_H = "";
pub const MUPDF_FITZ_DISPLAY_LIST_H = "";
pub const MUPDF_FITZ_STRUCTURED_TEXT_H = "";
pub const MUPDF_FITZ_TYPES_H = "";
pub const MUPDF_FITZ_TRANSITION_H = "";
pub const MUPDF_FITZ_GLYPH_CACHE_H = "";
pub const MUPDF_FITZ_LINK_H = "";
pub const MUPDF_FITZ_OUTLINE_H = "";
pub const MUPDF_FITZ_DOCUMENT_H = "";
pub const FZ_META_FORMAT = "format";
pub const FZ_META_ENCRYPTION = "encryption";
pub const FZ_META_INFO = "info:";
pub const FZ_META_INFO_TITLE = "info:Title";
pub const FZ_META_INFO_AUTHOR = "info:Author";
pub const FZ_META_INFO_SUBJECT = "info:Subject";
pub const FZ_META_INFO_KEYWORDS = "info:Keywords";
pub const FZ_META_INFO_CREATOR = "info:Creator";
pub const FZ_META_INFO_PRODUCER = "info:Producer";
pub const FZ_META_INFO_CREATIONDATE = "info:CreationDate";
pub const FZ_META_INFO_MODIFICATIONDATE = "info:ModDate";
pub const MUPDF_FITZ_UTIL_H = "";
pub const MUPDF_FITZ_WRITER_H = "";
pub const MUPDF_FITZ_BAND_WRITER_H = "";
pub const MUPDF_FITZ_WRITE_PIXMAP_H = "";
pub const MUPDF_FITZ_OUTPUT_SVG_H = "";
pub const MUPDF_PDF_OBJECT_H = "";
pub const PDF_MAX_OBJECT_NUMBER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388607, .decimal);
pub const PDF_MAX_GEN_NUMBER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const PDF_NULL = @import("std").zig.c_translation.cast([*c]pdf_obj, @import("std").zig.c_translation.cast(isize, PDF_ENUM_NULL));
pub const PDF_TRUE = @import("std").zig.c_translation.cast([*c]pdf_obj, @import("std").zig.c_translation.cast(isize, PDF_ENUM_TRUE));
pub const PDF_FALSE = @import("std").zig.c_translation.cast([*c]pdf_obj, @import("std").zig.c_translation.cast(isize, PDF_ENUM_FALSE));
pub const PDF_LIMIT = @import("std").zig.c_translation.cast([*c]pdf_obj, @import("std").zig.c_translation.cast(isize, PDF_ENUM_LIMIT));
pub const MUPDF_PDF_DOCUMENT_H = "";
pub const MUPDF_PDF_PARSE_H = "";
pub const MUPDF_PDF_XREF_H = "";
pub const MUPDF_PDF_CRYPT_H = "";
pub const MUPDF_PDF_PAGE_H = "";
pub const PDF_INTERPRET_H = "";
pub const MUPDF_PDF_FONT_H = "";
pub const MUPDF_PDF_CMAP_H = "";
pub const PDF_MRANGE_CAP = @as(c_int, 8);
pub const MUPDF_PDF_RESOURCE_H = "";
pub const MUPDF_PDF_ANNOT_H = "";
pub const MUPDF_PDF_FORM_H = "";
pub const PDF_SIGNATURE_DEFAULT_APPEARANCE = ((((PDF_SIGNATURE_SHOW_LABELS | PDF_SIGNATURE_SHOW_DN) | PDF_SIGNATURE_SHOW_DATE) | PDF_SIGNATURE_SHOW_TEXT_NAME) | PDF_SIGNATURE_SHOW_GRAPHIC_NAME) | PDF_SIGNATURE_SHOW_LOGO;
pub const MUPDF_PDF_EVENT_H = "";
pub const MUPDF_PDF_JAVASCRIPT_H = "";
pub const MUPDF_PDF_CLEAN_H = "";
pub const __va_list_tag = struct___va_list_tag;
pub const __jmp_buf_tag = struct___jmp_buf_tag;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const pdf_line_ending = enum_pdf_line_ending;
pub const pdf_widget_tx_format = enum_pdf_widget_tx_format;
