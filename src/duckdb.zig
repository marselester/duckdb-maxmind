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
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
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
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const struct___va_list_tag_1 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    __arg: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __next: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [192]u8 = @import("std").mem.zeroes([192]u8),
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
    __opaque: [8176]u8 = @import("std").mem.zeroes([8176]u8),
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const ptrdiff_t = c_long;
pub const rsize_t = c_ulong;
pub const wchar_t = c_int;
pub const max_align_t = c_longdouble;
pub const DUCKDB_TYPE_INVALID: c_int = 0;
pub const DUCKDB_TYPE_BOOLEAN: c_int = 1;
pub const DUCKDB_TYPE_TINYINT: c_int = 2;
pub const DUCKDB_TYPE_SMALLINT: c_int = 3;
pub const DUCKDB_TYPE_INTEGER: c_int = 4;
pub const DUCKDB_TYPE_BIGINT: c_int = 5;
pub const DUCKDB_TYPE_UTINYINT: c_int = 6;
pub const DUCKDB_TYPE_USMALLINT: c_int = 7;
pub const DUCKDB_TYPE_UINTEGER: c_int = 8;
pub const DUCKDB_TYPE_UBIGINT: c_int = 9;
pub const DUCKDB_TYPE_FLOAT: c_int = 10;
pub const DUCKDB_TYPE_DOUBLE: c_int = 11;
pub const DUCKDB_TYPE_TIMESTAMP: c_int = 12;
pub const DUCKDB_TYPE_DATE: c_int = 13;
pub const DUCKDB_TYPE_TIME: c_int = 14;
pub const DUCKDB_TYPE_INTERVAL: c_int = 15;
pub const DUCKDB_TYPE_HUGEINT: c_int = 16;
pub const DUCKDB_TYPE_UHUGEINT: c_int = 32;
pub const DUCKDB_TYPE_VARCHAR: c_int = 17;
pub const DUCKDB_TYPE_BLOB: c_int = 18;
pub const DUCKDB_TYPE_DECIMAL: c_int = 19;
pub const DUCKDB_TYPE_TIMESTAMP_S: c_int = 20;
pub const DUCKDB_TYPE_TIMESTAMP_MS: c_int = 21;
pub const DUCKDB_TYPE_TIMESTAMP_NS: c_int = 22;
pub const DUCKDB_TYPE_ENUM: c_int = 23;
pub const DUCKDB_TYPE_LIST: c_int = 24;
pub const DUCKDB_TYPE_STRUCT: c_int = 25;
pub const DUCKDB_TYPE_MAP: c_int = 26;
pub const DUCKDB_TYPE_ARRAY: c_int = 33;
pub const DUCKDB_TYPE_UUID: c_int = 27;
pub const DUCKDB_TYPE_UNION: c_int = 28;
pub const DUCKDB_TYPE_BIT: c_int = 29;
pub const DUCKDB_TYPE_TIME_TZ: c_int = 30;
pub const DUCKDB_TYPE_TIMESTAMP_TZ: c_int = 31;
pub const DUCKDB_TYPE_ANY: c_int = 34;
pub const DUCKDB_TYPE_VARINT: c_int = 35;
pub const DUCKDB_TYPE_SQLNULL: c_int = 36;
pub const enum_DUCKDB_TYPE = c_uint;
pub const duckdb_type = enum_DUCKDB_TYPE;
pub const DuckDBSuccess: c_int = 0;
pub const DuckDBError: c_int = 1;
pub const enum_duckdb_state = c_uint;
pub const duckdb_state = enum_duckdb_state;
pub const DUCKDB_PENDING_RESULT_READY: c_int = 0;
pub const DUCKDB_PENDING_RESULT_NOT_READY: c_int = 1;
pub const DUCKDB_PENDING_ERROR: c_int = 2;
pub const DUCKDB_PENDING_NO_TASKS_AVAILABLE: c_int = 3;
pub const enum_duckdb_pending_state = c_uint;
pub const duckdb_pending_state = enum_duckdb_pending_state;
pub const DUCKDB_RESULT_TYPE_INVALID: c_int = 0;
pub const DUCKDB_RESULT_TYPE_CHANGED_ROWS: c_int = 1;
pub const DUCKDB_RESULT_TYPE_NOTHING: c_int = 2;
pub const DUCKDB_RESULT_TYPE_QUERY_RESULT: c_int = 3;
pub const enum_duckdb_result_type = c_uint;
pub const duckdb_result_type = enum_duckdb_result_type;
pub const DUCKDB_STATEMENT_TYPE_INVALID: c_int = 0;
pub const DUCKDB_STATEMENT_TYPE_SELECT: c_int = 1;
pub const DUCKDB_STATEMENT_TYPE_INSERT: c_int = 2;
pub const DUCKDB_STATEMENT_TYPE_UPDATE: c_int = 3;
pub const DUCKDB_STATEMENT_TYPE_EXPLAIN: c_int = 4;
pub const DUCKDB_STATEMENT_TYPE_DELETE: c_int = 5;
pub const DUCKDB_STATEMENT_TYPE_PREPARE: c_int = 6;
pub const DUCKDB_STATEMENT_TYPE_CREATE: c_int = 7;
pub const DUCKDB_STATEMENT_TYPE_EXECUTE: c_int = 8;
pub const DUCKDB_STATEMENT_TYPE_ALTER: c_int = 9;
pub const DUCKDB_STATEMENT_TYPE_TRANSACTION: c_int = 10;
pub const DUCKDB_STATEMENT_TYPE_COPY: c_int = 11;
pub const DUCKDB_STATEMENT_TYPE_ANALYZE: c_int = 12;
pub const DUCKDB_STATEMENT_TYPE_VARIABLE_SET: c_int = 13;
pub const DUCKDB_STATEMENT_TYPE_CREATE_FUNC: c_int = 14;
pub const DUCKDB_STATEMENT_TYPE_DROP: c_int = 15;
pub const DUCKDB_STATEMENT_TYPE_EXPORT: c_int = 16;
pub const DUCKDB_STATEMENT_TYPE_PRAGMA: c_int = 17;
pub const DUCKDB_STATEMENT_TYPE_VACUUM: c_int = 18;
pub const DUCKDB_STATEMENT_TYPE_CALL: c_int = 19;
pub const DUCKDB_STATEMENT_TYPE_SET: c_int = 20;
pub const DUCKDB_STATEMENT_TYPE_LOAD: c_int = 21;
pub const DUCKDB_STATEMENT_TYPE_RELATION: c_int = 22;
pub const DUCKDB_STATEMENT_TYPE_EXTENSION: c_int = 23;
pub const DUCKDB_STATEMENT_TYPE_LOGICAL_PLAN: c_int = 24;
pub const DUCKDB_STATEMENT_TYPE_ATTACH: c_int = 25;
pub const DUCKDB_STATEMENT_TYPE_DETACH: c_int = 26;
pub const DUCKDB_STATEMENT_TYPE_MULTI: c_int = 27;
pub const enum_duckdb_statement_type = c_uint;
pub const duckdb_statement_type = enum_duckdb_statement_type;
pub const DUCKDB_ERROR_INVALID: c_int = 0;
pub const DUCKDB_ERROR_OUT_OF_RANGE: c_int = 1;
pub const DUCKDB_ERROR_CONVERSION: c_int = 2;
pub const DUCKDB_ERROR_UNKNOWN_TYPE: c_int = 3;
pub const DUCKDB_ERROR_DECIMAL: c_int = 4;
pub const DUCKDB_ERROR_MISMATCH_TYPE: c_int = 5;
pub const DUCKDB_ERROR_DIVIDE_BY_ZERO: c_int = 6;
pub const DUCKDB_ERROR_OBJECT_SIZE: c_int = 7;
pub const DUCKDB_ERROR_INVALID_TYPE: c_int = 8;
pub const DUCKDB_ERROR_SERIALIZATION: c_int = 9;
pub const DUCKDB_ERROR_TRANSACTION: c_int = 10;
pub const DUCKDB_ERROR_NOT_IMPLEMENTED: c_int = 11;
pub const DUCKDB_ERROR_EXPRESSION: c_int = 12;
pub const DUCKDB_ERROR_CATALOG: c_int = 13;
pub const DUCKDB_ERROR_PARSER: c_int = 14;
pub const DUCKDB_ERROR_PLANNER: c_int = 15;
pub const DUCKDB_ERROR_SCHEDULER: c_int = 16;
pub const DUCKDB_ERROR_EXECUTOR: c_int = 17;
pub const DUCKDB_ERROR_CONSTRAINT: c_int = 18;
pub const DUCKDB_ERROR_INDEX: c_int = 19;
pub const DUCKDB_ERROR_STAT: c_int = 20;
pub const DUCKDB_ERROR_CONNECTION: c_int = 21;
pub const DUCKDB_ERROR_SYNTAX: c_int = 22;
pub const DUCKDB_ERROR_SETTINGS: c_int = 23;
pub const DUCKDB_ERROR_BINDER: c_int = 24;
pub const DUCKDB_ERROR_NETWORK: c_int = 25;
pub const DUCKDB_ERROR_OPTIMIZER: c_int = 26;
pub const DUCKDB_ERROR_NULL_POINTER: c_int = 27;
pub const DUCKDB_ERROR_IO: c_int = 28;
pub const DUCKDB_ERROR_INTERRUPT: c_int = 29;
pub const DUCKDB_ERROR_FATAL: c_int = 30;
pub const DUCKDB_ERROR_INTERNAL: c_int = 31;
pub const DUCKDB_ERROR_INVALID_INPUT: c_int = 32;
pub const DUCKDB_ERROR_OUT_OF_MEMORY: c_int = 33;
pub const DUCKDB_ERROR_PERMISSION: c_int = 34;
pub const DUCKDB_ERROR_PARAMETER_NOT_RESOLVED: c_int = 35;
pub const DUCKDB_ERROR_PARAMETER_NOT_ALLOWED: c_int = 36;
pub const DUCKDB_ERROR_DEPENDENCY: c_int = 37;
pub const DUCKDB_ERROR_HTTP: c_int = 38;
pub const DUCKDB_ERROR_MISSING_EXTENSION: c_int = 39;
pub const DUCKDB_ERROR_AUTOLOAD: c_int = 40;
pub const DUCKDB_ERROR_SEQUENCE: c_int = 41;
pub const DUCKDB_INVALID_CONFIGURATION: c_int = 42;
pub const enum_duckdb_error_type = c_uint;
pub const duckdb_error_type = enum_duckdb_error_type;
pub const DUCKDB_CAST_NORMAL: c_int = 0;
pub const DUCKDB_CAST_TRY: c_int = 1;
pub const enum_duckdb_cast_mode = c_uint;
pub const duckdb_cast_mode = enum_duckdb_cast_mode;
pub const idx_t = u64;
pub const duckdb_delete_callback_t = ?*const fn (?*anyopaque) callconv(.c) void;
pub const duckdb_task_state = ?*anyopaque;
pub const duckdb_date = extern struct {
    days: i32 = @import("std").mem.zeroes(i32),
};
pub const duckdb_date_struct = extern struct {
    year: i32 = @import("std").mem.zeroes(i32),
    month: i8 = @import("std").mem.zeroes(i8),
    day: i8 = @import("std").mem.zeroes(i8),
};
pub const duckdb_time = extern struct {
    micros: i64 = @import("std").mem.zeroes(i64),
};
pub const duckdb_time_struct = extern struct {
    hour: i8 = @import("std").mem.zeroes(i8),
    min: i8 = @import("std").mem.zeroes(i8),
    sec: i8 = @import("std").mem.zeroes(i8),
    micros: i32 = @import("std").mem.zeroes(i32),
};
pub const duckdb_time_tz = extern struct {
    bits: u64 = @import("std").mem.zeroes(u64),
};
pub const duckdb_time_tz_struct = extern struct {
    time: duckdb_time_struct = @import("std").mem.zeroes(duckdb_time_struct),
    offset: i32 = @import("std").mem.zeroes(i32),
};
pub const duckdb_timestamp = extern struct {
    micros: i64 = @import("std").mem.zeroes(i64),
};
pub const duckdb_timestamp_s = extern struct {
    seconds: i64 = @import("std").mem.zeroes(i64),
};
pub const duckdb_timestamp_ms = extern struct {
    millis: i64 = @import("std").mem.zeroes(i64),
};
pub const duckdb_timestamp_ns = extern struct {
    nanos: i64 = @import("std").mem.zeroes(i64),
};
pub const duckdb_timestamp_struct = extern struct {
    date: duckdb_date_struct = @import("std").mem.zeroes(duckdb_date_struct),
    time: duckdb_time_struct = @import("std").mem.zeroes(duckdb_time_struct),
};
pub const duckdb_interval = extern struct {
    months: i32 = @import("std").mem.zeroes(i32),
    days: i32 = @import("std").mem.zeroes(i32),
    micros: i64 = @import("std").mem.zeroes(i64),
};
pub const duckdb_hugeint = extern struct {
    lower: u64 = @import("std").mem.zeroes(u64),
    upper: i64 = @import("std").mem.zeroes(i64),
};
pub const duckdb_uhugeint = extern struct {
    lower: u64 = @import("std").mem.zeroes(u64),
    upper: u64 = @import("std").mem.zeroes(u64),
};
pub const duckdb_decimal = extern struct {
    width: u8 = @import("std").mem.zeroes(u8),
    scale: u8 = @import("std").mem.zeroes(u8),
    value: duckdb_hugeint = @import("std").mem.zeroes(duckdb_hugeint),
};
pub const duckdb_query_progress_type = extern struct {
    percentage: f64 = @import("std").mem.zeroes(f64),
    rows_processed: u64 = @import("std").mem.zeroes(u64),
    total_rows_to_process: u64 = @import("std").mem.zeroes(u64),
};
const struct_unnamed_3 = extern struct {
    length: u32 = @import("std").mem.zeroes(u32),
    prefix: [4]u8 = @import("std").mem.zeroes([4]u8),
    ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
const struct_unnamed_4 = extern struct {
    length: u32 = @import("std").mem.zeroes(u32),
    inlined: [12]u8 = @import("std").mem.zeroes([12]u8),
};
const union_unnamed_2 = extern union {
    pointer: struct_unnamed_3,
    inlined: struct_unnamed_4,
};
pub const duckdb_string_t = extern struct {
    value: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const duckdb_list_entry = extern struct {
    offset: u64 = @import("std").mem.zeroes(u64),
    length: u64 = @import("std").mem.zeroes(u64),
};
pub const duckdb_column = extern struct {
    deprecated_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    deprecated_nullmask: [*c]bool = @import("std").mem.zeroes([*c]bool),
    deprecated_type: duckdb_type = @import("std").mem.zeroes(duckdb_type),
    deprecated_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    internal_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct__duckdb_vector = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_vector = [*c]struct__duckdb_vector;
pub const duckdb_string = extern struct {
    data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: idx_t = @import("std").mem.zeroes(idx_t),
};
pub const duckdb_blob = extern struct {
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    size: idx_t = @import("std").mem.zeroes(idx_t),
};
pub const duckdb_bit = extern struct {
    data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: idx_t = @import("std").mem.zeroes(idx_t),
};
pub const duckdb_varint = extern struct {
    data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: idx_t = @import("std").mem.zeroes(idx_t),
    is_negative: bool = @import("std").mem.zeroes(bool),
};
pub const duckdb_result = extern struct {
    deprecated_column_count: idx_t = @import("std").mem.zeroes(idx_t),
    deprecated_row_count: idx_t = @import("std").mem.zeroes(idx_t),
    deprecated_rows_changed: idx_t = @import("std").mem.zeroes(idx_t),
    deprecated_columns: [*c]duckdb_column = @import("std").mem.zeroes([*c]duckdb_column),
    deprecated_error_message: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    internal_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct__duckdb_instance_cache = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_instance_cache = [*c]struct__duckdb_instance_cache;
pub const struct__duckdb_database = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_database = [*c]struct__duckdb_database;
pub const struct__duckdb_connection = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_connection = [*c]struct__duckdb_connection;
pub const struct__duckdb_prepared_statement = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_prepared_statement = [*c]struct__duckdb_prepared_statement;
pub const struct__duckdb_extracted_statements = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_extracted_statements = [*c]struct__duckdb_extracted_statements;
pub const struct__duckdb_pending_result = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_pending_result = [*c]struct__duckdb_pending_result;
pub const struct__duckdb_appender = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_appender = [*c]struct__duckdb_appender;
pub const struct__duckdb_table_description = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_table_description = [*c]struct__duckdb_table_description;
pub const struct__duckdb_config = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_config = [*c]struct__duckdb_config;
pub const struct__duckdb_logical_type = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_logical_type = [*c]struct__duckdb_logical_type;
pub const struct__duckdb_create_type_info = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_create_type_info = [*c]struct__duckdb_create_type_info;
pub const struct__duckdb_data_chunk = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_data_chunk = [*c]struct__duckdb_data_chunk;
pub const struct__duckdb_value = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_value = [*c]struct__duckdb_value;
pub const struct__duckdb_profiling_info = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_profiling_info = [*c]struct__duckdb_profiling_info;
pub const struct__duckdb_extension_info = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_extension_info = [*c]struct__duckdb_extension_info;
pub const struct__duckdb_function_info = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_function_info = [*c]struct__duckdb_function_info;
pub const struct__duckdb_scalar_function = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_scalar_function = [*c]struct__duckdb_scalar_function;
pub const struct__duckdb_scalar_function_set = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_scalar_function_set = [*c]struct__duckdb_scalar_function_set;
pub const duckdb_scalar_function_t = ?*const fn (duckdb_function_info, duckdb_data_chunk, duckdb_vector) callconv(.c) void;
pub const struct__duckdb_aggregate_function = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_aggregate_function = [*c]struct__duckdb_aggregate_function;
pub const struct__duckdb_aggregate_function_set = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_aggregate_function_set = [*c]struct__duckdb_aggregate_function_set;
pub const struct__duckdb_aggregate_state = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_aggregate_state = [*c]struct__duckdb_aggregate_state;
pub const duckdb_aggregate_state_size = ?*const fn (duckdb_function_info) callconv(.c) idx_t;
pub const duckdb_aggregate_init_t = ?*const fn (duckdb_function_info, duckdb_aggregate_state) callconv(.c) void;
pub const duckdb_aggregate_destroy_t = ?*const fn ([*c]duckdb_aggregate_state, idx_t) callconv(.c) void;
pub const duckdb_aggregate_update_t = ?*const fn (duckdb_function_info, duckdb_data_chunk, [*c]duckdb_aggregate_state) callconv(.c) void;
pub const duckdb_aggregate_combine_t = ?*const fn (duckdb_function_info, [*c]duckdb_aggregate_state, [*c]duckdb_aggregate_state, idx_t) callconv(.c) void;
pub const duckdb_aggregate_finalize_t = ?*const fn (duckdb_function_info, [*c]duckdb_aggregate_state, duckdb_vector, idx_t, idx_t) callconv(.c) void;
pub const struct__duckdb_table_function = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_table_function = [*c]struct__duckdb_table_function;
pub const struct__duckdb_bind_info = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_bind_info = [*c]struct__duckdb_bind_info;
pub const struct__duckdb_init_info = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_init_info = [*c]struct__duckdb_init_info;
pub const duckdb_table_function_bind_t = ?*const fn (duckdb_bind_info) callconv(.c) void;
pub const duckdb_table_function_init_t = ?*const fn (duckdb_init_info) callconv(.c) void;
pub const duckdb_table_function_t = ?*const fn (duckdb_function_info, duckdb_data_chunk) callconv(.c) void;
pub const struct__duckdb_cast_function = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_cast_function = [*c]struct__duckdb_cast_function;
pub const duckdb_cast_function_t = ?*const fn (duckdb_function_info, idx_t, duckdb_vector, duckdb_vector) callconv(.c) bool;
pub const struct__duckdb_replacement_scan_info = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_replacement_scan_info = [*c]struct__duckdb_replacement_scan_info;
pub const duckdb_replacement_callback_t = ?*const fn (duckdb_replacement_scan_info, [*c]const u8, ?*anyopaque) callconv(.c) void;
pub const struct__duckdb_arrow = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_arrow = [*c]struct__duckdb_arrow;
pub const struct__duckdb_arrow_stream = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_arrow_stream = [*c]struct__duckdb_arrow_stream;
pub const struct__duckdb_arrow_schema = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_arrow_schema = [*c]struct__duckdb_arrow_schema;
pub const struct__duckdb_arrow_array = extern struct {
    internal_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const duckdb_arrow_array = [*c]struct__duckdb_arrow_array;
pub const struct_duckdb_extension_access = extern struct {
    set_error: ?*const fn (duckdb_extension_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_extension_info, [*c]const u8) callconv(.c) void),
    get_database: ?*const fn (duckdb_extension_info) callconv(.c) [*c]duckdb_database = @import("std").mem.zeroes(?*const fn (duckdb_extension_info) callconv(.c) [*c]duckdb_database),
    get_api: ?*const fn (duckdb_extension_info, [*c]const u8) callconv(.c) ?*const anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_extension_info, [*c]const u8) callconv(.c) ?*const anyopaque),
};
pub extern fn duckdb_create_instance_cache(...) duckdb_instance_cache;
pub extern fn duckdb_get_or_create_from_cache(instance_cache: duckdb_instance_cache, path: [*c]const u8, out_database: [*c]duckdb_database, config: duckdb_config, out_error: [*c][*c]u8) duckdb_state;
pub extern fn duckdb_destroy_instance_cache(instance_cache: [*c]duckdb_instance_cache) void;
pub extern fn duckdb_open(path: [*c]const u8, out_database: [*c]duckdb_database) duckdb_state;
pub extern fn duckdb_open_ext(path: [*c]const u8, out_database: [*c]duckdb_database, config: duckdb_config, out_error: [*c][*c]u8) duckdb_state;
pub extern fn duckdb_close(database: [*c]duckdb_database) void;
pub extern fn duckdb_connect(database: duckdb_database, out_connection: [*c]duckdb_connection) duckdb_state;
pub extern fn duckdb_interrupt(connection: duckdb_connection) void;
pub extern fn duckdb_query_progress(connection: duckdb_connection) duckdb_query_progress_type;
pub extern fn duckdb_disconnect(connection: [*c]duckdb_connection) void;
pub extern fn duckdb_library_version(...) [*c]const u8;
pub extern fn duckdb_create_config(out_config: [*c]duckdb_config) duckdb_state;
pub extern fn duckdb_config_count(...) usize;
pub extern fn duckdb_get_config_flag(index: usize, out_name: [*c][*c]const u8, out_description: [*c][*c]const u8) duckdb_state;
pub extern fn duckdb_set_config(config: duckdb_config, name: [*c]const u8, option: [*c]const u8) duckdb_state;
pub extern fn duckdb_destroy_config(config: [*c]duckdb_config) void;
pub extern fn duckdb_query(connection: duckdb_connection, query: [*c]const u8, out_result: [*c]duckdb_result) duckdb_state;
pub extern fn duckdb_destroy_result(result: [*c]duckdb_result) void;
pub extern fn duckdb_column_name(result: [*c]duckdb_result, col: idx_t) [*c]const u8;
pub extern fn duckdb_column_type(result: [*c]duckdb_result, col: idx_t) duckdb_type;
pub extern fn duckdb_result_statement_type(result: duckdb_result) duckdb_statement_type;
pub extern fn duckdb_column_logical_type(result: [*c]duckdb_result, col: idx_t) duckdb_logical_type;
pub extern fn duckdb_column_count(result: [*c]duckdb_result) idx_t;
pub extern fn duckdb_row_count(result: [*c]duckdb_result) idx_t;
pub extern fn duckdb_rows_changed(result: [*c]duckdb_result) idx_t;
pub extern fn duckdb_column_data(result: [*c]duckdb_result, col: idx_t) ?*anyopaque;
pub extern fn duckdb_nullmask_data(result: [*c]duckdb_result, col: idx_t) [*c]bool;
pub extern fn duckdb_result_error(result: [*c]duckdb_result) [*c]const u8;
pub extern fn duckdb_result_error_type(result: [*c]duckdb_result) duckdb_error_type;
pub extern fn duckdb_result_get_chunk(result: duckdb_result, chunk_index: idx_t) duckdb_data_chunk;
pub extern fn duckdb_result_is_streaming(result: duckdb_result) bool;
pub extern fn duckdb_result_chunk_count(result: duckdb_result) idx_t;
pub extern fn duckdb_result_return_type(result: duckdb_result) duckdb_result_type;
pub extern fn duckdb_value_boolean(result: [*c]duckdb_result, col: idx_t, row: idx_t) bool;
pub extern fn duckdb_value_int8(result: [*c]duckdb_result, col: idx_t, row: idx_t) i8;
pub extern fn duckdb_value_int16(result: [*c]duckdb_result, col: idx_t, row: idx_t) i16;
pub extern fn duckdb_value_int32(result: [*c]duckdb_result, col: idx_t, row: idx_t) i32;
pub extern fn duckdb_value_int64(result: [*c]duckdb_result, col: idx_t, row: idx_t) i64;
pub extern fn duckdb_value_hugeint(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_hugeint;
pub extern fn duckdb_value_uhugeint(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_uhugeint;
pub extern fn duckdb_value_decimal(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_decimal;
pub extern fn duckdb_value_uint8(result: [*c]duckdb_result, col: idx_t, row: idx_t) u8;
pub extern fn duckdb_value_uint16(result: [*c]duckdb_result, col: idx_t, row: idx_t) u16;
pub extern fn duckdb_value_uint32(result: [*c]duckdb_result, col: idx_t, row: idx_t) u32;
pub extern fn duckdb_value_uint64(result: [*c]duckdb_result, col: idx_t, row: idx_t) u64;
pub extern fn duckdb_value_float(result: [*c]duckdb_result, col: idx_t, row: idx_t) f32;
pub extern fn duckdb_value_double(result: [*c]duckdb_result, col: idx_t, row: idx_t) f64;
pub extern fn duckdb_value_date(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_date;
pub extern fn duckdb_value_time(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_time;
pub extern fn duckdb_value_timestamp(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_timestamp;
pub extern fn duckdb_value_interval(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_interval;
pub extern fn duckdb_value_varchar(result: [*c]duckdb_result, col: idx_t, row: idx_t) [*c]u8;
pub extern fn duckdb_value_string(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_string;
pub extern fn duckdb_value_varchar_internal(result: [*c]duckdb_result, col: idx_t, row: idx_t) [*c]u8;
pub extern fn duckdb_value_string_internal(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_string;
pub extern fn duckdb_value_blob(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_blob;
pub extern fn duckdb_value_is_null(result: [*c]duckdb_result, col: idx_t, row: idx_t) bool;
pub extern fn duckdb_malloc(size: usize) ?*anyopaque;
pub extern fn duckdb_free(ptr: ?*anyopaque) void;
pub extern fn duckdb_vector_size(...) idx_t;
pub extern fn duckdb_string_is_inlined(string: duckdb_string_t) bool;
pub extern fn duckdb_string_t_length(string: duckdb_string_t) u32;
pub extern fn duckdb_string_t_data(string: [*c]duckdb_string_t) [*c]const u8;
pub extern fn duckdb_from_date(date: duckdb_date) duckdb_date_struct;
pub extern fn duckdb_to_date(date: duckdb_date_struct) duckdb_date;
pub extern fn duckdb_is_finite_date(date: duckdb_date) bool;
pub extern fn duckdb_from_time(time: duckdb_time) duckdb_time_struct;
pub extern fn duckdb_create_time_tz(micros: i64, offset: i32) duckdb_time_tz;
pub extern fn duckdb_from_time_tz(micros: duckdb_time_tz) duckdb_time_tz_struct;
pub extern fn duckdb_to_time(time: duckdb_time_struct) duckdb_time;
pub extern fn duckdb_from_timestamp(ts: duckdb_timestamp) duckdb_timestamp_struct;
pub extern fn duckdb_to_timestamp(ts: duckdb_timestamp_struct) duckdb_timestamp;
pub extern fn duckdb_is_finite_timestamp(ts: duckdb_timestamp) bool;
pub extern fn duckdb_is_finite_timestamp_s(ts: duckdb_timestamp_s) bool;
pub extern fn duckdb_is_finite_timestamp_ms(ts: duckdb_timestamp_ms) bool;
pub extern fn duckdb_is_finite_timestamp_ns(ts: duckdb_timestamp_ns) bool;
pub extern fn duckdb_hugeint_to_double(val: duckdb_hugeint) f64;
pub extern fn duckdb_double_to_hugeint(val: f64) duckdb_hugeint;
pub extern fn duckdb_uhugeint_to_double(val: duckdb_uhugeint) f64;
pub extern fn duckdb_double_to_uhugeint(val: f64) duckdb_uhugeint;
pub extern fn duckdb_double_to_decimal(val: f64, width: u8, scale: u8) duckdb_decimal;
pub extern fn duckdb_decimal_to_double(val: duckdb_decimal) f64;
pub extern fn duckdb_prepare(connection: duckdb_connection, query: [*c]const u8, out_prepared_statement: [*c]duckdb_prepared_statement) duckdb_state;
pub extern fn duckdb_destroy_prepare(prepared_statement: [*c]duckdb_prepared_statement) void;
pub extern fn duckdb_prepare_error(prepared_statement: duckdb_prepared_statement) [*c]const u8;
pub extern fn duckdb_nparams(prepared_statement: duckdb_prepared_statement) idx_t;
pub extern fn duckdb_parameter_name(prepared_statement: duckdb_prepared_statement, index: idx_t) [*c]const u8;
pub extern fn duckdb_param_type(prepared_statement: duckdb_prepared_statement, param_idx: idx_t) duckdb_type;
pub extern fn duckdb_param_logical_type(prepared_statement: duckdb_prepared_statement, param_idx: idx_t) duckdb_logical_type;
pub extern fn duckdb_clear_bindings(prepared_statement: duckdb_prepared_statement) duckdb_state;
pub extern fn duckdb_prepared_statement_type(statement: duckdb_prepared_statement) duckdb_statement_type;
pub extern fn duckdb_bind_value(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_value) duckdb_state;
pub extern fn duckdb_bind_parameter_index(prepared_statement: duckdb_prepared_statement, param_idx_out: [*c]idx_t, name: [*c]const u8) duckdb_state;
pub extern fn duckdb_bind_boolean(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: bool) duckdb_state;
pub extern fn duckdb_bind_int8(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i8) duckdb_state;
pub extern fn duckdb_bind_int16(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i16) duckdb_state;
pub extern fn duckdb_bind_int32(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i32) duckdb_state;
pub extern fn duckdb_bind_int64(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i64) duckdb_state;
pub extern fn duckdb_bind_hugeint(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_hugeint) duckdb_state;
pub extern fn duckdb_bind_uhugeint(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_uhugeint) duckdb_state;
pub extern fn duckdb_bind_decimal(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_decimal) duckdb_state;
pub extern fn duckdb_bind_uint8(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u8) duckdb_state;
pub extern fn duckdb_bind_uint16(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u16) duckdb_state;
pub extern fn duckdb_bind_uint32(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u32) duckdb_state;
pub extern fn duckdb_bind_uint64(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u64) duckdb_state;
pub extern fn duckdb_bind_float(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: f32) duckdb_state;
pub extern fn duckdb_bind_double(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: f64) duckdb_state;
pub extern fn duckdb_bind_date(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_date) duckdb_state;
pub extern fn duckdb_bind_time(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_time) duckdb_state;
pub extern fn duckdb_bind_timestamp(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_timestamp) duckdb_state;
pub extern fn duckdb_bind_timestamp_tz(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_timestamp) duckdb_state;
pub extern fn duckdb_bind_interval(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_interval) duckdb_state;
pub extern fn duckdb_bind_varchar(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: [*c]const u8) duckdb_state;
pub extern fn duckdb_bind_varchar_length(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: [*c]const u8, length: idx_t) duckdb_state;
pub extern fn duckdb_bind_blob(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, data: ?*const anyopaque, length: idx_t) duckdb_state;
pub extern fn duckdb_bind_null(prepared_statement: duckdb_prepared_statement, param_idx: idx_t) duckdb_state;
pub extern fn duckdb_execute_prepared(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_result) duckdb_state;
pub extern fn duckdb_execute_prepared_streaming(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_result) duckdb_state;
pub extern fn duckdb_extract_statements(connection: duckdb_connection, query: [*c]const u8, out_extracted_statements: [*c]duckdb_extracted_statements) idx_t;
pub extern fn duckdb_prepare_extracted_statement(connection: duckdb_connection, extracted_statements: duckdb_extracted_statements, index: idx_t, out_prepared_statement: [*c]duckdb_prepared_statement) duckdb_state;
pub extern fn duckdb_extract_statements_error(extracted_statements: duckdb_extracted_statements) [*c]const u8;
pub extern fn duckdb_destroy_extracted(extracted_statements: [*c]duckdb_extracted_statements) void;
pub extern fn duckdb_pending_prepared(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_pending_result) duckdb_state;
pub extern fn duckdb_pending_prepared_streaming(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_pending_result) duckdb_state;
pub extern fn duckdb_destroy_pending(pending_result: [*c]duckdb_pending_result) void;
pub extern fn duckdb_pending_error(pending_result: duckdb_pending_result) [*c]const u8;
pub extern fn duckdb_pending_execute_task(pending_result: duckdb_pending_result) duckdb_pending_state;
pub extern fn duckdb_pending_execute_check_state(pending_result: duckdb_pending_result) duckdb_pending_state;
pub extern fn duckdb_execute_pending(pending_result: duckdb_pending_result, out_result: [*c]duckdb_result) duckdb_state;
pub extern fn duckdb_pending_execution_is_finished(pending_state: duckdb_pending_state) bool;
pub extern fn duckdb_destroy_value(value: [*c]duckdb_value) void;
pub extern fn duckdb_create_varchar(text: [*c]const u8) duckdb_value;
pub extern fn duckdb_create_varchar_length(text: [*c]const u8, length: idx_t) duckdb_value;
pub extern fn duckdb_create_bool(input: bool) duckdb_value;
pub extern fn duckdb_create_int8(input: i8) duckdb_value;
pub extern fn duckdb_create_uint8(input: u8) duckdb_value;
pub extern fn duckdb_create_int16(input: i16) duckdb_value;
pub extern fn duckdb_create_uint16(input: u16) duckdb_value;
pub extern fn duckdb_create_int32(input: i32) duckdb_value;
pub extern fn duckdb_create_uint32(input: u32) duckdb_value;
pub extern fn duckdb_create_uint64(input: u64) duckdb_value;
pub extern fn duckdb_create_int64(val: i64) duckdb_value;
pub extern fn duckdb_create_hugeint(input: duckdb_hugeint) duckdb_value;
pub extern fn duckdb_create_uhugeint(input: duckdb_uhugeint) duckdb_value;
pub extern fn duckdb_create_varint(input: duckdb_varint) duckdb_value;
pub extern fn duckdb_create_decimal(input: duckdb_decimal) duckdb_value;
pub extern fn duckdb_create_float(input: f32) duckdb_value;
pub extern fn duckdb_create_double(input: f64) duckdb_value;
pub extern fn duckdb_create_date(input: duckdb_date) duckdb_value;
pub extern fn duckdb_create_time(input: duckdb_time) duckdb_value;
pub extern fn duckdb_create_time_tz_value(value: duckdb_time_tz) duckdb_value;
pub extern fn duckdb_create_timestamp(input: duckdb_timestamp) duckdb_value;
pub extern fn duckdb_create_timestamp_tz(input: duckdb_timestamp) duckdb_value;
pub extern fn duckdb_create_timestamp_s(input: duckdb_timestamp_s) duckdb_value;
pub extern fn duckdb_create_timestamp_ms(input: duckdb_timestamp_ms) duckdb_value;
pub extern fn duckdb_create_timestamp_ns(input: duckdb_timestamp_ns) duckdb_value;
pub extern fn duckdb_create_interval(input: duckdb_interval) duckdb_value;
pub extern fn duckdb_create_blob(data: [*c]const u8, length: idx_t) duckdb_value;
pub extern fn duckdb_create_bit(input: duckdb_bit) duckdb_value;
pub extern fn duckdb_create_uuid(input: duckdb_uhugeint) duckdb_value;
pub extern fn duckdb_get_bool(val: duckdb_value) bool;
pub extern fn duckdb_get_int8(val: duckdb_value) i8;
pub extern fn duckdb_get_uint8(val: duckdb_value) u8;
pub extern fn duckdb_get_int16(val: duckdb_value) i16;
pub extern fn duckdb_get_uint16(val: duckdb_value) u16;
pub extern fn duckdb_get_int32(val: duckdb_value) i32;
pub extern fn duckdb_get_uint32(val: duckdb_value) u32;
pub extern fn duckdb_get_int64(val: duckdb_value) i64;
pub extern fn duckdb_get_uint64(val: duckdb_value) u64;
pub extern fn duckdb_get_hugeint(val: duckdb_value) duckdb_hugeint;
pub extern fn duckdb_get_uhugeint(val: duckdb_value) duckdb_uhugeint;
pub extern fn duckdb_get_varint(val: duckdb_value) duckdb_varint;
pub extern fn duckdb_get_decimal(val: duckdb_value) duckdb_decimal;
pub extern fn duckdb_get_float(val: duckdb_value) f32;
pub extern fn duckdb_get_double(val: duckdb_value) f64;
pub extern fn duckdb_get_date(val: duckdb_value) duckdb_date;
pub extern fn duckdb_get_time(val: duckdb_value) duckdb_time;
pub extern fn duckdb_get_time_tz(val: duckdb_value) duckdb_time_tz;
pub extern fn duckdb_get_timestamp(val: duckdb_value) duckdb_timestamp;
pub extern fn duckdb_get_timestamp_tz(val: duckdb_value) duckdb_timestamp;
pub extern fn duckdb_get_timestamp_s(val: duckdb_value) duckdb_timestamp_s;
pub extern fn duckdb_get_timestamp_ms(val: duckdb_value) duckdb_timestamp_ms;
pub extern fn duckdb_get_timestamp_ns(val: duckdb_value) duckdb_timestamp_ns;
pub extern fn duckdb_get_interval(val: duckdb_value) duckdb_interval;
pub extern fn duckdb_get_value_type(val: duckdb_value) duckdb_logical_type;
pub extern fn duckdb_get_blob(val: duckdb_value) duckdb_blob;
pub extern fn duckdb_get_bit(val: duckdb_value) duckdb_bit;
pub extern fn duckdb_get_uuid(val: duckdb_value) duckdb_uhugeint;
pub extern fn duckdb_get_varchar(value: duckdb_value) [*c]u8;
pub extern fn duckdb_create_struct_value(@"type": duckdb_logical_type, values: [*c]duckdb_value) duckdb_value;
pub extern fn duckdb_create_list_value(@"type": duckdb_logical_type, values: [*c]duckdb_value, value_count: idx_t) duckdb_value;
pub extern fn duckdb_create_array_value(@"type": duckdb_logical_type, values: [*c]duckdb_value, value_count: idx_t) duckdb_value;
pub extern fn duckdb_get_map_size(value: duckdb_value) idx_t;
pub extern fn duckdb_get_map_key(value: duckdb_value, index: idx_t) duckdb_value;
pub extern fn duckdb_get_map_value(value: duckdb_value, index: idx_t) duckdb_value;
pub extern fn duckdb_is_null_value(value: duckdb_value) bool;
pub extern fn duckdb_create_null_value(...) duckdb_value;
pub extern fn duckdb_get_list_size(value: duckdb_value) idx_t;
pub extern fn duckdb_get_list_child(value: duckdb_value, index: idx_t) duckdb_value;
pub extern fn duckdb_create_enum_value(@"type": duckdb_logical_type, value: u64) duckdb_value;
pub extern fn duckdb_get_enum_value(value: duckdb_value) u64;
pub extern fn duckdb_get_struct_child(value: duckdb_value, index: idx_t) duckdb_value;
pub extern fn duckdb_create_logical_type(@"type": duckdb_type) duckdb_logical_type;
pub extern fn duckdb_logical_type_get_alias(@"type": duckdb_logical_type) [*c]u8;
pub extern fn duckdb_logical_type_set_alias(@"type": duckdb_logical_type, alias: [*c]const u8) void;
pub extern fn duckdb_create_list_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_create_array_type(@"type": duckdb_logical_type, array_size: idx_t) duckdb_logical_type;
pub extern fn duckdb_create_map_type(key_type: duckdb_logical_type, value_type: duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_create_union_type(member_types: [*c]duckdb_logical_type, member_names: [*c][*c]const u8, member_count: idx_t) duckdb_logical_type;
pub extern fn duckdb_create_struct_type(member_types: [*c]duckdb_logical_type, member_names: [*c][*c]const u8, member_count: idx_t) duckdb_logical_type;
pub extern fn duckdb_create_enum_type(member_names: [*c][*c]const u8, member_count: idx_t) duckdb_logical_type;
pub extern fn duckdb_create_decimal_type(width: u8, scale: u8) duckdb_logical_type;
pub extern fn duckdb_get_type_id(@"type": duckdb_logical_type) duckdb_type;
pub extern fn duckdb_decimal_width(@"type": duckdb_logical_type) u8;
pub extern fn duckdb_decimal_scale(@"type": duckdb_logical_type) u8;
pub extern fn duckdb_decimal_internal_type(@"type": duckdb_logical_type) duckdb_type;
pub extern fn duckdb_enum_internal_type(@"type": duckdb_logical_type) duckdb_type;
pub extern fn duckdb_enum_dictionary_size(@"type": duckdb_logical_type) u32;
pub extern fn duckdb_enum_dictionary_value(@"type": duckdb_logical_type, index: idx_t) [*c]u8;
pub extern fn duckdb_list_type_child_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_array_type_child_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_array_type_array_size(@"type": duckdb_logical_type) idx_t;
pub extern fn duckdb_map_type_key_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_map_type_value_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_struct_type_child_count(@"type": duckdb_logical_type) idx_t;
pub extern fn duckdb_struct_type_child_name(@"type": duckdb_logical_type, index: idx_t) [*c]u8;
pub extern fn duckdb_struct_type_child_type(@"type": duckdb_logical_type, index: idx_t) duckdb_logical_type;
pub extern fn duckdb_union_type_member_count(@"type": duckdb_logical_type) idx_t;
pub extern fn duckdb_union_type_member_name(@"type": duckdb_logical_type, index: idx_t) [*c]u8;
pub extern fn duckdb_union_type_member_type(@"type": duckdb_logical_type, index: idx_t) duckdb_logical_type;
pub extern fn duckdb_destroy_logical_type(@"type": [*c]duckdb_logical_type) void;
pub extern fn duckdb_register_logical_type(con: duckdb_connection, @"type": duckdb_logical_type, info: duckdb_create_type_info) duckdb_state;
pub extern fn duckdb_create_data_chunk(types: [*c]duckdb_logical_type, column_count: idx_t) duckdb_data_chunk;
pub extern fn duckdb_destroy_data_chunk(chunk: [*c]duckdb_data_chunk) void;
pub extern fn duckdb_data_chunk_reset(chunk: duckdb_data_chunk) void;
pub extern fn duckdb_data_chunk_get_column_count(chunk: duckdb_data_chunk) idx_t;
pub extern fn duckdb_data_chunk_get_vector(chunk: duckdb_data_chunk, col_idx: idx_t) duckdb_vector;
pub extern fn duckdb_data_chunk_get_size(chunk: duckdb_data_chunk) idx_t;
pub extern fn duckdb_data_chunk_set_size(chunk: duckdb_data_chunk, size: idx_t) void;
pub extern fn duckdb_vector_get_column_type(vector: duckdb_vector) duckdb_logical_type;
pub extern fn duckdb_vector_get_data(vector: duckdb_vector) ?*anyopaque;
pub extern fn duckdb_vector_get_validity(vector: duckdb_vector) [*c]u64;
pub extern fn duckdb_vector_ensure_validity_writable(vector: duckdb_vector) void;
pub extern fn duckdb_vector_assign_string_element(vector: duckdb_vector, index: idx_t, str: [*c]const u8) void;
pub extern fn duckdb_vector_assign_string_element_len(vector: duckdb_vector, index: idx_t, str: [*c]const u8, str_len: idx_t) void;
pub extern fn duckdb_list_vector_get_child(vector: duckdb_vector) duckdb_vector;
pub extern fn duckdb_list_vector_get_size(vector: duckdb_vector) idx_t;
pub extern fn duckdb_list_vector_set_size(vector: duckdb_vector, size: idx_t) duckdb_state;
pub extern fn duckdb_list_vector_reserve(vector: duckdb_vector, required_capacity: idx_t) duckdb_state;
pub extern fn duckdb_struct_vector_get_child(vector: duckdb_vector, index: idx_t) duckdb_vector;
pub extern fn duckdb_array_vector_get_child(vector: duckdb_vector) duckdb_vector;
pub extern fn duckdb_validity_row_is_valid(validity: [*c]u64, row: idx_t) bool;
pub extern fn duckdb_validity_set_row_validity(validity: [*c]u64, row: idx_t, valid: bool) void;
pub extern fn duckdb_validity_set_row_invalid(validity: [*c]u64, row: idx_t) void;
pub extern fn duckdb_validity_set_row_valid(validity: [*c]u64, row: idx_t) void;
pub extern fn duckdb_create_scalar_function(...) duckdb_scalar_function;
pub extern fn duckdb_destroy_scalar_function(scalar_function: [*c]duckdb_scalar_function) void;
pub extern fn duckdb_scalar_function_set_name(scalar_function: duckdb_scalar_function, name: [*c]const u8) void;
pub extern fn duckdb_scalar_function_set_varargs(scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_scalar_function_set_special_handling(scalar_function: duckdb_scalar_function) void;
pub extern fn duckdb_scalar_function_set_volatile(scalar_function: duckdb_scalar_function) void;
pub extern fn duckdb_scalar_function_add_parameter(scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_scalar_function_set_return_type(scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_scalar_function_set_extra_info(scalar_function: duckdb_scalar_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_scalar_function_set_function(scalar_function: duckdb_scalar_function, function: duckdb_scalar_function_t) void;
pub extern fn duckdb_register_scalar_function(con: duckdb_connection, scalar_function: duckdb_scalar_function) duckdb_state;
pub extern fn duckdb_scalar_function_get_extra_info(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_scalar_function_set_error(info: duckdb_function_info, @"error": [*c]const u8) void;
pub extern fn duckdb_create_scalar_function_set(name: [*c]const u8) duckdb_scalar_function_set;
pub extern fn duckdb_destroy_scalar_function_set(scalar_function_set: [*c]duckdb_scalar_function_set) void;
pub extern fn duckdb_add_scalar_function_to_set(set: duckdb_scalar_function_set, function: duckdb_scalar_function) duckdb_state;
pub extern fn duckdb_register_scalar_function_set(con: duckdb_connection, set: duckdb_scalar_function_set) duckdb_state;
pub extern fn duckdb_create_aggregate_function(...) duckdb_aggregate_function;
pub extern fn duckdb_destroy_aggregate_function(aggregate_function: [*c]duckdb_aggregate_function) void;
pub extern fn duckdb_aggregate_function_set_name(aggregate_function: duckdb_aggregate_function, name: [*c]const u8) void;
pub extern fn duckdb_aggregate_function_add_parameter(aggregate_function: duckdb_aggregate_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_aggregate_function_set_return_type(aggregate_function: duckdb_aggregate_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_aggregate_function_set_functions(aggregate_function: duckdb_aggregate_function, state_size: duckdb_aggregate_state_size, state_init: duckdb_aggregate_init_t, update: duckdb_aggregate_update_t, combine: duckdb_aggregate_combine_t, finalize: duckdb_aggregate_finalize_t) void;
pub extern fn duckdb_aggregate_function_set_destructor(aggregate_function: duckdb_aggregate_function, destroy: duckdb_aggregate_destroy_t) void;
pub extern fn duckdb_register_aggregate_function(con: duckdb_connection, aggregate_function: duckdb_aggregate_function) duckdb_state;
pub extern fn duckdb_aggregate_function_set_special_handling(aggregate_function: duckdb_aggregate_function) void;
pub extern fn duckdb_aggregate_function_set_extra_info(aggregate_function: duckdb_aggregate_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_aggregate_function_get_extra_info(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_aggregate_function_set_error(info: duckdb_function_info, @"error": [*c]const u8) void;
pub extern fn duckdb_create_aggregate_function_set(name: [*c]const u8) duckdb_aggregate_function_set;
pub extern fn duckdb_destroy_aggregate_function_set(aggregate_function_set: [*c]duckdb_aggregate_function_set) void;
pub extern fn duckdb_add_aggregate_function_to_set(set: duckdb_aggregate_function_set, function: duckdb_aggregate_function) duckdb_state;
pub extern fn duckdb_register_aggregate_function_set(con: duckdb_connection, set: duckdb_aggregate_function_set) duckdb_state;
pub extern fn duckdb_create_table_function(...) duckdb_table_function;
pub extern fn duckdb_destroy_table_function(table_function: [*c]duckdb_table_function) void;
pub extern fn duckdb_table_function_set_name(table_function: duckdb_table_function, name: [*c]const u8) void;
pub extern fn duckdb_table_function_add_parameter(table_function: duckdb_table_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_table_function_add_named_parameter(table_function: duckdb_table_function, name: [*c]const u8, @"type": duckdb_logical_type) void;
pub extern fn duckdb_table_function_set_extra_info(table_function: duckdb_table_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_table_function_set_bind(table_function: duckdb_table_function, bind: duckdb_table_function_bind_t) void;
pub extern fn duckdb_table_function_set_init(table_function: duckdb_table_function, init: duckdb_table_function_init_t) void;
pub extern fn duckdb_table_function_set_local_init(table_function: duckdb_table_function, init: duckdb_table_function_init_t) void;
pub extern fn duckdb_table_function_set_function(table_function: duckdb_table_function, function: duckdb_table_function_t) void;
pub extern fn duckdb_table_function_supports_projection_pushdown(table_function: duckdb_table_function, pushdown: bool) void;
pub extern fn duckdb_register_table_function(con: duckdb_connection, function: duckdb_table_function) duckdb_state;
pub extern fn duckdb_bind_get_extra_info(info: duckdb_bind_info) ?*anyopaque;
pub extern fn duckdb_bind_add_result_column(info: duckdb_bind_info, name: [*c]const u8, @"type": duckdb_logical_type) void;
pub extern fn duckdb_bind_get_parameter_count(info: duckdb_bind_info) idx_t;
pub extern fn duckdb_bind_get_parameter(info: duckdb_bind_info, index: idx_t) duckdb_value;
pub extern fn duckdb_bind_get_named_parameter(info: duckdb_bind_info, name: [*c]const u8) duckdb_value;
pub extern fn duckdb_bind_set_bind_data(info: duckdb_bind_info, bind_data: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_bind_set_cardinality(info: duckdb_bind_info, cardinality: idx_t, is_exact: bool) void;
pub extern fn duckdb_bind_set_error(info: duckdb_bind_info, @"error": [*c]const u8) void;
pub extern fn duckdb_init_get_extra_info(info: duckdb_init_info) ?*anyopaque;
pub extern fn duckdb_init_get_bind_data(info: duckdb_init_info) ?*anyopaque;
pub extern fn duckdb_init_set_init_data(info: duckdb_init_info, init_data: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_init_get_column_count(info: duckdb_init_info) idx_t;
pub extern fn duckdb_init_get_column_index(info: duckdb_init_info, column_index: idx_t) idx_t;
pub extern fn duckdb_init_set_max_threads(info: duckdb_init_info, max_threads: idx_t) void;
pub extern fn duckdb_init_set_error(info: duckdb_init_info, @"error": [*c]const u8) void;
pub extern fn duckdb_function_get_extra_info(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_function_get_bind_data(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_function_get_init_data(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_function_get_local_init_data(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_function_set_error(info: duckdb_function_info, @"error": [*c]const u8) void;
pub extern fn duckdb_add_replacement_scan(db: duckdb_database, replacement: duckdb_replacement_callback_t, extra_data: ?*anyopaque, delete_callback: duckdb_delete_callback_t) void;
pub extern fn duckdb_replacement_scan_set_function_name(info: duckdb_replacement_scan_info, function_name: [*c]const u8) void;
pub extern fn duckdb_replacement_scan_add_parameter(info: duckdb_replacement_scan_info, parameter: duckdb_value) void;
pub extern fn duckdb_replacement_scan_set_error(info: duckdb_replacement_scan_info, @"error": [*c]const u8) void;
pub extern fn duckdb_get_profiling_info(connection: duckdb_connection) duckdb_profiling_info;
pub extern fn duckdb_profiling_info_get_value(info: duckdb_profiling_info, key: [*c]const u8) duckdb_value;
pub extern fn duckdb_profiling_info_get_metrics(info: duckdb_profiling_info) duckdb_value;
pub extern fn duckdb_profiling_info_get_child_count(info: duckdb_profiling_info) idx_t;
pub extern fn duckdb_profiling_info_get_child(info: duckdb_profiling_info, index: idx_t) duckdb_profiling_info;
pub extern fn duckdb_appender_create(connection: duckdb_connection, schema: [*c]const u8, table: [*c]const u8, out_appender: [*c]duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_create_ext(connection: duckdb_connection, catalog: [*c]const u8, schema: [*c]const u8, table: [*c]const u8, out_appender: [*c]duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_column_count(appender: duckdb_appender) idx_t;
pub extern fn duckdb_appender_column_type(appender: duckdb_appender, col_idx: idx_t) duckdb_logical_type;
pub extern fn duckdb_appender_error(appender: duckdb_appender) [*c]const u8;
pub extern fn duckdb_appender_flush(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_close(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_destroy(appender: [*c]duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_add_column(appender: duckdb_appender, name: [*c]const u8) duckdb_state;
pub extern fn duckdb_appender_clear_columns(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_begin_row(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_end_row(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_append_default(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_append_default_to_chunk(appender: duckdb_appender, chunk: duckdb_data_chunk, col: idx_t, row: idx_t) duckdb_state;
pub extern fn duckdb_append_bool(appender: duckdb_appender, value: bool) duckdb_state;
pub extern fn duckdb_append_int8(appender: duckdb_appender, value: i8) duckdb_state;
pub extern fn duckdb_append_int16(appender: duckdb_appender, value: i16) duckdb_state;
pub extern fn duckdb_append_int32(appender: duckdb_appender, value: i32) duckdb_state;
pub extern fn duckdb_append_int64(appender: duckdb_appender, value: i64) duckdb_state;
pub extern fn duckdb_append_hugeint(appender: duckdb_appender, value: duckdb_hugeint) duckdb_state;
pub extern fn duckdb_append_uint8(appender: duckdb_appender, value: u8) duckdb_state;
pub extern fn duckdb_append_uint16(appender: duckdb_appender, value: u16) duckdb_state;
pub extern fn duckdb_append_uint32(appender: duckdb_appender, value: u32) duckdb_state;
pub extern fn duckdb_append_uint64(appender: duckdb_appender, value: u64) duckdb_state;
pub extern fn duckdb_append_uhugeint(appender: duckdb_appender, value: duckdb_uhugeint) duckdb_state;
pub extern fn duckdb_append_float(appender: duckdb_appender, value: f32) duckdb_state;
pub extern fn duckdb_append_double(appender: duckdb_appender, value: f64) duckdb_state;
pub extern fn duckdb_append_date(appender: duckdb_appender, value: duckdb_date) duckdb_state;
pub extern fn duckdb_append_time(appender: duckdb_appender, value: duckdb_time) duckdb_state;
pub extern fn duckdb_append_timestamp(appender: duckdb_appender, value: duckdb_timestamp) duckdb_state;
pub extern fn duckdb_append_interval(appender: duckdb_appender, value: duckdb_interval) duckdb_state;
pub extern fn duckdb_append_varchar(appender: duckdb_appender, val: [*c]const u8) duckdb_state;
pub extern fn duckdb_append_varchar_length(appender: duckdb_appender, val: [*c]const u8, length: idx_t) duckdb_state;
pub extern fn duckdb_append_blob(appender: duckdb_appender, data: ?*const anyopaque, length: idx_t) duckdb_state;
pub extern fn duckdb_append_null(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_append_value(appender: duckdb_appender, value: duckdb_value) duckdb_state;
pub extern fn duckdb_append_data_chunk(appender: duckdb_appender, chunk: duckdb_data_chunk) duckdb_state;
pub extern fn duckdb_table_description_create(connection: duckdb_connection, schema: [*c]const u8, table: [*c]const u8, out: [*c]duckdb_table_description) duckdb_state;
pub extern fn duckdb_table_description_create_ext(connection: duckdb_connection, catalog: [*c]const u8, schema: [*c]const u8, table: [*c]const u8, out: [*c]duckdb_table_description) duckdb_state;
pub extern fn duckdb_table_description_destroy(table_description: [*c]duckdb_table_description) void;
pub extern fn duckdb_table_description_error(table_description: duckdb_table_description) [*c]const u8;
pub extern fn duckdb_column_has_default(table_description: duckdb_table_description, index: idx_t, out: [*c]bool) duckdb_state;
pub extern fn duckdb_table_description_get_column_name(table_description: duckdb_table_description, index: idx_t) [*c]u8;
pub extern fn duckdb_query_arrow(connection: duckdb_connection, query: [*c]const u8, out_result: [*c]duckdb_arrow) duckdb_state;
pub extern fn duckdb_query_arrow_schema(result: duckdb_arrow, out_schema: [*c]duckdb_arrow_schema) duckdb_state;
pub extern fn duckdb_prepared_arrow_schema(prepared: duckdb_prepared_statement, out_schema: [*c]duckdb_arrow_schema) duckdb_state;
pub extern fn duckdb_result_arrow_array(result: duckdb_result, chunk: duckdb_data_chunk, out_array: [*c]duckdb_arrow_array) void;
pub extern fn duckdb_query_arrow_array(result: duckdb_arrow, out_array: [*c]duckdb_arrow_array) duckdb_state;
pub extern fn duckdb_arrow_column_count(result: duckdb_arrow) idx_t;
pub extern fn duckdb_arrow_row_count(result: duckdb_arrow) idx_t;
pub extern fn duckdb_arrow_rows_changed(result: duckdb_arrow) idx_t;
pub extern fn duckdb_query_arrow_error(result: duckdb_arrow) [*c]const u8;
pub extern fn duckdb_destroy_arrow(result: [*c]duckdb_arrow) void;
pub extern fn duckdb_destroy_arrow_stream(stream_p: [*c]duckdb_arrow_stream) void;
pub extern fn duckdb_execute_prepared_arrow(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_arrow) duckdb_state;
pub extern fn duckdb_arrow_scan(connection: duckdb_connection, table_name: [*c]const u8, arrow: duckdb_arrow_stream) duckdb_state;
pub extern fn duckdb_arrow_array_scan(connection: duckdb_connection, table_name: [*c]const u8, arrow_schema: duckdb_arrow_schema, arrow_array: duckdb_arrow_array, out_stream: [*c]duckdb_arrow_stream) duckdb_state;
pub extern fn duckdb_execute_tasks(database: duckdb_database, max_tasks: idx_t) void;
pub extern fn duckdb_create_task_state(database: duckdb_database) duckdb_task_state;
pub extern fn duckdb_execute_tasks_state(state: duckdb_task_state) void;
pub extern fn duckdb_execute_n_tasks_state(state: duckdb_task_state, max_tasks: idx_t) idx_t;
pub extern fn duckdb_finish_execution(state: duckdb_task_state) void;
pub extern fn duckdb_task_state_is_finished(state: duckdb_task_state) bool;
pub extern fn duckdb_destroy_task_state(state: duckdb_task_state) void;
pub extern fn duckdb_execution_is_finished(con: duckdb_connection) bool;
pub extern fn duckdb_stream_fetch_chunk(result: duckdb_result) duckdb_data_chunk;
pub extern fn duckdb_fetch_chunk(result: duckdb_result) duckdb_data_chunk;
pub extern fn duckdb_create_cast_function(...) duckdb_cast_function;
pub extern fn duckdb_cast_function_set_source_type(cast_function: duckdb_cast_function, source_type: duckdb_logical_type) void;
pub extern fn duckdb_cast_function_set_target_type(cast_function: duckdb_cast_function, target_type: duckdb_logical_type) void;
pub extern fn duckdb_cast_function_set_implicit_cast_cost(cast_function: duckdb_cast_function, cost: i64) void;
pub extern fn duckdb_cast_function_set_function(cast_function: duckdb_cast_function, function: duckdb_cast_function_t) void;
pub extern fn duckdb_cast_function_set_extra_info(cast_function: duckdb_cast_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_cast_function_get_extra_info(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_cast_function_get_cast_mode(info: duckdb_function_info) duckdb_cast_mode;
pub extern fn duckdb_cast_function_set_error(info: duckdb_function_info, @"error": [*c]const u8) void;
pub extern fn duckdb_cast_function_set_row_error(info: duckdb_function_info, @"error": [*c]const u8, row: idx_t, output: duckdb_vector) void;
pub extern fn duckdb_register_cast_function(con: duckdb_connection, cast_function: duckdb_cast_function) duckdb_state;
pub extern fn duckdb_destroy_cast_function(cast_function: [*c]duckdb_cast_function) void;
pub const duckdb_ext_api_v1 = extern struct {
    duckdb_open: ?*const fn ([*c]const u8, [*c]duckdb_database) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]duckdb_database) callconv(.c) duckdb_state),
    duckdb_open_ext: ?*const fn ([*c]const u8, [*c]duckdb_database, duckdb_config, [*c][*c]u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]duckdb_database, duckdb_config, [*c][*c]u8) callconv(.c) duckdb_state),
    duckdb_close: ?*const fn ([*c]duckdb_database) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_database) callconv(.c) void),
    duckdb_connect: ?*const fn (duckdb_database, [*c]duckdb_connection) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_database, [*c]duckdb_connection) callconv(.c) duckdb_state),
    duckdb_interrupt: ?*const fn (duckdb_connection) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_connection) callconv(.c) void),
    duckdb_query_progress: ?*const fn (duckdb_connection) callconv(.c) duckdb_query_progress_type = @import("std").mem.zeroes(?*const fn (duckdb_connection) callconv(.c) duckdb_query_progress_type),
    duckdb_disconnect: ?*const fn ([*c]duckdb_connection) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_connection) callconv(.c) void),
    duckdb_library_version: ?*const fn (...) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (...) callconv(.c) [*c]const u8),
    duckdb_create_config: ?*const fn ([*c]duckdb_config) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn ([*c]duckdb_config) callconv(.c) duckdb_state),
    duckdb_config_count: ?*const fn (...) callconv(.c) usize = @import("std").mem.zeroes(?*const fn (...) callconv(.c) usize),
    duckdb_get_config_flag: ?*const fn (usize, [*c][*c]const u8, [*c][*c]const u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (usize, [*c][*c]const u8, [*c][*c]const u8) callconv(.c) duckdb_state),
    duckdb_set_config: ?*const fn (duckdb_config, [*c]const u8, [*c]const u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_config, [*c]const u8, [*c]const u8) callconv(.c) duckdb_state),
    duckdb_destroy_config: ?*const fn ([*c]duckdb_config) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_config) callconv(.c) void),
    duckdb_query: ?*const fn (duckdb_connection, [*c]const u8, [*c]duckdb_result) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, [*c]const u8, [*c]duckdb_result) callconv(.c) duckdb_state),
    duckdb_destroy_result: ?*const fn ([*c]duckdb_result) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_result) callconv(.c) void),
    duckdb_column_name: ?*const fn ([*c]duckdb_result, idx_t) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn ([*c]duckdb_result, idx_t) callconv(.c) [*c]const u8),
    duckdb_column_type: ?*const fn ([*c]duckdb_result, idx_t) callconv(.c) duckdb_type = @import("std").mem.zeroes(?*const fn ([*c]duckdb_result, idx_t) callconv(.c) duckdb_type),
    duckdb_result_statement_type: ?*const fn (duckdb_result) callconv(.c) duckdb_statement_type = @import("std").mem.zeroes(?*const fn (duckdb_result) callconv(.c) duckdb_statement_type),
    duckdb_column_logical_type: ?*const fn ([*c]duckdb_result, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn ([*c]duckdb_result, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_column_count: ?*const fn ([*c]duckdb_result) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn ([*c]duckdb_result) callconv(.c) idx_t),
    duckdb_rows_changed: ?*const fn ([*c]duckdb_result) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn ([*c]duckdb_result) callconv(.c) idx_t),
    duckdb_result_error: ?*const fn ([*c]duckdb_result) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn ([*c]duckdb_result) callconv(.c) [*c]const u8),
    duckdb_result_error_type: ?*const fn ([*c]duckdb_result) callconv(.c) duckdb_error_type = @import("std").mem.zeroes(?*const fn ([*c]duckdb_result) callconv(.c) duckdb_error_type),
    duckdb_result_return_type: ?*const fn (duckdb_result) callconv(.c) duckdb_result_type = @import("std").mem.zeroes(?*const fn (duckdb_result) callconv(.c) duckdb_result_type),
    duckdb_malloc: ?*const fn (usize) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (usize) callconv(.c) ?*anyopaque),
    duckdb_free: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    duckdb_vector_size: ?*const fn (...) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (...) callconv(.c) idx_t),
    duckdb_string_is_inlined: ?*const fn (duckdb_string_t) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_string_t) callconv(.c) bool),
    duckdb_string_t_length: ?*const fn (duckdb_string_t) callconv(.c) u32 = @import("std").mem.zeroes(?*const fn (duckdb_string_t) callconv(.c) u32),
    duckdb_string_t_data: ?*const fn ([*c]duckdb_string_t) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn ([*c]duckdb_string_t) callconv(.c) [*c]const u8),
    duckdb_from_date: ?*const fn (duckdb_date) callconv(.c) duckdb_date_struct = @import("std").mem.zeroes(?*const fn (duckdb_date) callconv(.c) duckdb_date_struct),
    duckdb_to_date: ?*const fn (duckdb_date_struct) callconv(.c) duckdb_date = @import("std").mem.zeroes(?*const fn (duckdb_date_struct) callconv(.c) duckdb_date),
    duckdb_is_finite_date: ?*const fn (duckdb_date) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_date) callconv(.c) bool),
    duckdb_from_time: ?*const fn (duckdb_time) callconv(.c) duckdb_time_struct = @import("std").mem.zeroes(?*const fn (duckdb_time) callconv(.c) duckdb_time_struct),
    duckdb_create_time_tz: ?*const fn (i64, i32) callconv(.c) duckdb_time_tz = @import("std").mem.zeroes(?*const fn (i64, i32) callconv(.c) duckdb_time_tz),
    duckdb_from_time_tz: ?*const fn (duckdb_time_tz) callconv(.c) duckdb_time_tz_struct = @import("std").mem.zeroes(?*const fn (duckdb_time_tz) callconv(.c) duckdb_time_tz_struct),
    duckdb_to_time: ?*const fn (duckdb_time_struct) callconv(.c) duckdb_time = @import("std").mem.zeroes(?*const fn (duckdb_time_struct) callconv(.c) duckdb_time),
    duckdb_from_timestamp: ?*const fn (duckdb_timestamp) callconv(.c) duckdb_timestamp_struct = @import("std").mem.zeroes(?*const fn (duckdb_timestamp) callconv(.c) duckdb_timestamp_struct),
    duckdb_to_timestamp: ?*const fn (duckdb_timestamp_struct) callconv(.c) duckdb_timestamp = @import("std").mem.zeroes(?*const fn (duckdb_timestamp_struct) callconv(.c) duckdb_timestamp),
    duckdb_is_finite_timestamp: ?*const fn (duckdb_timestamp) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_timestamp) callconv(.c) bool),
    duckdb_hugeint_to_double: ?*const fn (duckdb_hugeint) callconv(.c) f64 = @import("std").mem.zeroes(?*const fn (duckdb_hugeint) callconv(.c) f64),
    duckdb_double_to_hugeint: ?*const fn (f64) callconv(.c) duckdb_hugeint = @import("std").mem.zeroes(?*const fn (f64) callconv(.c) duckdb_hugeint),
    duckdb_uhugeint_to_double: ?*const fn (duckdb_uhugeint) callconv(.c) f64 = @import("std").mem.zeroes(?*const fn (duckdb_uhugeint) callconv(.c) f64),
    duckdb_double_to_uhugeint: ?*const fn (f64) callconv(.c) duckdb_uhugeint = @import("std").mem.zeroes(?*const fn (f64) callconv(.c) duckdb_uhugeint),
    duckdb_double_to_decimal: ?*const fn (f64, u8, u8) callconv(.c) duckdb_decimal = @import("std").mem.zeroes(?*const fn (f64, u8, u8) callconv(.c) duckdb_decimal),
    duckdb_decimal_to_double: ?*const fn (duckdb_decimal) callconv(.c) f64 = @import("std").mem.zeroes(?*const fn (duckdb_decimal) callconv(.c) f64),
    duckdb_prepare: ?*const fn (duckdb_connection, [*c]const u8, [*c]duckdb_prepared_statement) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, [*c]const u8, [*c]duckdb_prepared_statement) callconv(.c) duckdb_state),
    duckdb_destroy_prepare: ?*const fn ([*c]duckdb_prepared_statement) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_prepared_statement) callconv(.c) void),
    duckdb_prepare_error: ?*const fn (duckdb_prepared_statement) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement) callconv(.c) [*c]const u8),
    duckdb_nparams: ?*const fn (duckdb_prepared_statement) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement) callconv(.c) idx_t),
    duckdb_parameter_name: ?*const fn (duckdb_prepared_statement, idx_t) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t) callconv(.c) [*c]const u8),
    duckdb_param_type: ?*const fn (duckdb_prepared_statement, idx_t) callconv(.c) duckdb_type = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t) callconv(.c) duckdb_type),
    duckdb_param_logical_type: ?*const fn (duckdb_prepared_statement, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_clear_bindings: ?*const fn (duckdb_prepared_statement) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement) callconv(.c) duckdb_state),
    duckdb_prepared_statement_type: ?*const fn (duckdb_prepared_statement) callconv(.c) duckdb_statement_type = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement) callconv(.c) duckdb_statement_type),
    duckdb_bind_value: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_value) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_value) callconv(.c) duckdb_state),
    duckdb_bind_parameter_index: ?*const fn (duckdb_prepared_statement, [*c]idx_t, [*c]const u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, [*c]idx_t, [*c]const u8) callconv(.c) duckdb_state),
    duckdb_bind_boolean: ?*const fn (duckdb_prepared_statement, idx_t, bool) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, bool) callconv(.c) duckdb_state),
    duckdb_bind_int8: ?*const fn (duckdb_prepared_statement, idx_t, i8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, i8) callconv(.c) duckdb_state),
    duckdb_bind_int16: ?*const fn (duckdb_prepared_statement, idx_t, i16) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, i16) callconv(.c) duckdb_state),
    duckdb_bind_int32: ?*const fn (duckdb_prepared_statement, idx_t, i32) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, i32) callconv(.c) duckdb_state),
    duckdb_bind_int64: ?*const fn (duckdb_prepared_statement, idx_t, i64) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, i64) callconv(.c) duckdb_state),
    duckdb_bind_hugeint: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_hugeint) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_hugeint) callconv(.c) duckdb_state),
    duckdb_bind_uhugeint: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_uhugeint) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_uhugeint) callconv(.c) duckdb_state),
    duckdb_bind_decimal: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_decimal) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_decimal) callconv(.c) duckdb_state),
    duckdb_bind_uint8: ?*const fn (duckdb_prepared_statement, idx_t, u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, u8) callconv(.c) duckdb_state),
    duckdb_bind_uint16: ?*const fn (duckdb_prepared_statement, idx_t, u16) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, u16) callconv(.c) duckdb_state),
    duckdb_bind_uint32: ?*const fn (duckdb_prepared_statement, idx_t, u32) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, u32) callconv(.c) duckdb_state),
    duckdb_bind_uint64: ?*const fn (duckdb_prepared_statement, idx_t, u64) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, u64) callconv(.c) duckdb_state),
    duckdb_bind_float: ?*const fn (duckdb_prepared_statement, idx_t, f32) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, f32) callconv(.c) duckdb_state),
    duckdb_bind_double: ?*const fn (duckdb_prepared_statement, idx_t, f64) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, f64) callconv(.c) duckdb_state),
    duckdb_bind_date: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_date) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_date) callconv(.c) duckdb_state),
    duckdb_bind_time: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_time) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_time) callconv(.c) duckdb_state),
    duckdb_bind_timestamp: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_timestamp) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_timestamp) callconv(.c) duckdb_state),
    duckdb_bind_timestamp_tz: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_timestamp) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_timestamp) callconv(.c) duckdb_state),
    duckdb_bind_interval: ?*const fn (duckdb_prepared_statement, idx_t, duckdb_interval) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, duckdb_interval) callconv(.c) duckdb_state),
    duckdb_bind_varchar: ?*const fn (duckdb_prepared_statement, idx_t, [*c]const u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, [*c]const u8) callconv(.c) duckdb_state),
    duckdb_bind_varchar_length: ?*const fn (duckdb_prepared_statement, idx_t, [*c]const u8, idx_t) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, [*c]const u8, idx_t) callconv(.c) duckdb_state),
    duckdb_bind_blob: ?*const fn (duckdb_prepared_statement, idx_t, ?*const anyopaque, idx_t) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t, ?*const anyopaque, idx_t) callconv(.c) duckdb_state),
    duckdb_bind_null: ?*const fn (duckdb_prepared_statement, idx_t) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, idx_t) callconv(.c) duckdb_state),
    duckdb_execute_prepared: ?*const fn (duckdb_prepared_statement, [*c]duckdb_result) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, [*c]duckdb_result) callconv(.c) duckdb_state),
    duckdb_extract_statements: ?*const fn (duckdb_connection, [*c]const u8, [*c]duckdb_extracted_statements) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_connection, [*c]const u8, [*c]duckdb_extracted_statements) callconv(.c) idx_t),
    duckdb_prepare_extracted_statement: ?*const fn (duckdb_connection, duckdb_extracted_statements, idx_t, [*c]duckdb_prepared_statement) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, duckdb_extracted_statements, idx_t, [*c]duckdb_prepared_statement) callconv(.c) duckdb_state),
    duckdb_extract_statements_error: ?*const fn (duckdb_extracted_statements) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (duckdb_extracted_statements) callconv(.c) [*c]const u8),
    duckdb_destroy_extracted: ?*const fn ([*c]duckdb_extracted_statements) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_extracted_statements) callconv(.c) void),
    duckdb_pending_prepared: ?*const fn (duckdb_prepared_statement, [*c]duckdb_pending_result) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_prepared_statement, [*c]duckdb_pending_result) callconv(.c) duckdb_state),
    duckdb_destroy_pending: ?*const fn ([*c]duckdb_pending_result) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_pending_result) callconv(.c) void),
    duckdb_pending_error: ?*const fn (duckdb_pending_result) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (duckdb_pending_result) callconv(.c) [*c]const u8),
    duckdb_pending_execute_task: ?*const fn (duckdb_pending_result) callconv(.c) duckdb_pending_state = @import("std").mem.zeroes(?*const fn (duckdb_pending_result) callconv(.c) duckdb_pending_state),
    duckdb_pending_execute_check_state: ?*const fn (duckdb_pending_result) callconv(.c) duckdb_pending_state = @import("std").mem.zeroes(?*const fn (duckdb_pending_result) callconv(.c) duckdb_pending_state),
    duckdb_execute_pending: ?*const fn (duckdb_pending_result, [*c]duckdb_result) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_pending_result, [*c]duckdb_result) callconv(.c) duckdb_state),
    duckdb_pending_execution_is_finished: ?*const fn (duckdb_pending_state) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_pending_state) callconv(.c) bool),
    duckdb_destroy_value: ?*const fn ([*c]duckdb_value) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_value) callconv(.c) void),
    duckdb_create_varchar: ?*const fn ([*c]const u8) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.c) duckdb_value),
    duckdb_create_varchar_length: ?*const fn ([*c]const u8, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn ([*c]const u8, idx_t) callconv(.c) duckdb_value),
    duckdb_create_bool: ?*const fn (bool) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (bool) callconv(.c) duckdb_value),
    duckdb_create_int8: ?*const fn (i8) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (i8) callconv(.c) duckdb_value),
    duckdb_create_uint8: ?*const fn (u8) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (u8) callconv(.c) duckdb_value),
    duckdb_create_int16: ?*const fn (i16) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (i16) callconv(.c) duckdb_value),
    duckdb_create_uint16: ?*const fn (u16) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (u16) callconv(.c) duckdb_value),
    duckdb_create_int32: ?*const fn (i32) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (i32) callconv(.c) duckdb_value),
    duckdb_create_uint32: ?*const fn (u32) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (u32) callconv(.c) duckdb_value),
    duckdb_create_uint64: ?*const fn (u64) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (u64) callconv(.c) duckdb_value),
    duckdb_create_int64: ?*const fn (i64) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (i64) callconv(.c) duckdb_value),
    duckdb_create_hugeint: ?*const fn (duckdb_hugeint) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_hugeint) callconv(.c) duckdb_value),
    duckdb_create_uhugeint: ?*const fn (duckdb_uhugeint) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_uhugeint) callconv(.c) duckdb_value),
    duckdb_create_float: ?*const fn (f32) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (f32) callconv(.c) duckdb_value),
    duckdb_create_double: ?*const fn (f64) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (f64) callconv(.c) duckdb_value),
    duckdb_create_date: ?*const fn (duckdb_date) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_date) callconv(.c) duckdb_value),
    duckdb_create_time: ?*const fn (duckdb_time) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_time) callconv(.c) duckdb_value),
    duckdb_create_time_tz_value: ?*const fn (duckdb_time_tz) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_time_tz) callconv(.c) duckdb_value),
    duckdb_create_timestamp: ?*const fn (duckdb_timestamp) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_timestamp) callconv(.c) duckdb_value),
    duckdb_create_interval: ?*const fn (duckdb_interval) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_interval) callconv(.c) duckdb_value),
    duckdb_create_blob: ?*const fn ([*c]const u8, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn ([*c]const u8, idx_t) callconv(.c) duckdb_value),
    duckdb_create_varint: ?*const fn (duckdb_varint) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_varint) callconv(.c) duckdb_value),
    duckdb_create_decimal: ?*const fn (duckdb_decimal) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_decimal) callconv(.c) duckdb_value),
    duckdb_create_bit: ?*const fn (duckdb_bit) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_bit) callconv(.c) duckdb_value),
    duckdb_create_uuid: ?*const fn (duckdb_uhugeint) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_uhugeint) callconv(.c) duckdb_value),
    duckdb_get_bool: ?*const fn (duckdb_value) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) bool),
    duckdb_get_int8: ?*const fn (duckdb_value) callconv(.c) i8 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) i8),
    duckdb_get_uint8: ?*const fn (duckdb_value) callconv(.c) u8 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) u8),
    duckdb_get_int16: ?*const fn (duckdb_value) callconv(.c) i16 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) i16),
    duckdb_get_uint16: ?*const fn (duckdb_value) callconv(.c) u16 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) u16),
    duckdb_get_int32: ?*const fn (duckdb_value) callconv(.c) i32 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) i32),
    duckdb_get_uint32: ?*const fn (duckdb_value) callconv(.c) u32 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) u32),
    duckdb_get_int64: ?*const fn (duckdb_value) callconv(.c) i64 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) i64),
    duckdb_get_uint64: ?*const fn (duckdb_value) callconv(.c) u64 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) u64),
    duckdb_get_hugeint: ?*const fn (duckdb_value) callconv(.c) duckdb_hugeint = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_hugeint),
    duckdb_get_uhugeint: ?*const fn (duckdb_value) callconv(.c) duckdb_uhugeint = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_uhugeint),
    duckdb_get_float: ?*const fn (duckdb_value) callconv(.c) f32 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) f32),
    duckdb_get_double: ?*const fn (duckdb_value) callconv(.c) f64 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) f64),
    duckdb_get_date: ?*const fn (duckdb_value) callconv(.c) duckdb_date = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_date),
    duckdb_get_time: ?*const fn (duckdb_value) callconv(.c) duckdb_time = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_time),
    duckdb_get_time_tz: ?*const fn (duckdb_value) callconv(.c) duckdb_time_tz = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_time_tz),
    duckdb_get_timestamp: ?*const fn (duckdb_value) callconv(.c) duckdb_timestamp = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_timestamp),
    duckdb_get_interval: ?*const fn (duckdb_value) callconv(.c) duckdb_interval = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_interval),
    duckdb_get_value_type: ?*const fn (duckdb_value) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_logical_type),
    duckdb_get_blob: ?*const fn (duckdb_value) callconv(.c) duckdb_blob = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_blob),
    duckdb_get_varint: ?*const fn (duckdb_value) callconv(.c) duckdb_varint = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_varint),
    duckdb_get_decimal: ?*const fn (duckdb_value) callconv(.c) duckdb_decimal = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_decimal),
    duckdb_get_bit: ?*const fn (duckdb_value) callconv(.c) duckdb_bit = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_bit),
    duckdb_get_uuid: ?*const fn (duckdb_value) callconv(.c) duckdb_uhugeint = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_uhugeint),
    duckdb_get_varchar: ?*const fn (duckdb_value) callconv(.c) [*c]u8 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) [*c]u8),
    duckdb_create_struct_value: ?*const fn (duckdb_logical_type, [*c]duckdb_value) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, [*c]duckdb_value) callconv(.c) duckdb_value),
    duckdb_create_list_value: ?*const fn (duckdb_logical_type, [*c]duckdb_value, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, [*c]duckdb_value, idx_t) callconv(.c) duckdb_value),
    duckdb_create_array_value: ?*const fn (duckdb_logical_type, [*c]duckdb_value, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, [*c]duckdb_value, idx_t) callconv(.c) duckdb_value),
    duckdb_get_map_size: ?*const fn (duckdb_value) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) idx_t),
    duckdb_get_map_key: ?*const fn (duckdb_value, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_value, idx_t) callconv(.c) duckdb_value),
    duckdb_get_map_value: ?*const fn (duckdb_value, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_value, idx_t) callconv(.c) duckdb_value),
    duckdb_is_null_value: ?*const fn (duckdb_value) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) bool),
    duckdb_create_null_value: ?*const fn (...) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (...) callconv(.c) duckdb_value),
    duckdb_get_list_size: ?*const fn (duckdb_value) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) idx_t),
    duckdb_get_list_child: ?*const fn (duckdb_value, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_value, idx_t) callconv(.c) duckdb_value),
    duckdb_create_enum_value: ?*const fn (duckdb_logical_type, u64) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, u64) callconv(.c) duckdb_value),
    duckdb_get_enum_value: ?*const fn (duckdb_value) callconv(.c) u64 = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) u64),
    duckdb_get_struct_child: ?*const fn (duckdb_value, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_value, idx_t) callconv(.c) duckdb_value),
    duckdb_create_logical_type: ?*const fn (duckdb_type) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_type) callconv(.c) duckdb_logical_type),
    duckdb_logical_type_get_alias: ?*const fn (duckdb_logical_type) callconv(.c) [*c]u8 = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) [*c]u8),
    duckdb_logical_type_set_alias: ?*const fn (duckdb_logical_type, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, [*c]const u8) callconv(.c) void),
    duckdb_create_list_type: ?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type),
    duckdb_create_array_type: ?*const fn (duckdb_logical_type, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_create_map_type: ?*const fn (duckdb_logical_type, duckdb_logical_type) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, duckdb_logical_type) callconv(.c) duckdb_logical_type),
    duckdb_create_union_type: ?*const fn ([*c]duckdb_logical_type, [*c][*c]const u8, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn ([*c]duckdb_logical_type, [*c][*c]const u8, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_create_struct_type: ?*const fn ([*c]duckdb_logical_type, [*c][*c]const u8, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn ([*c]duckdb_logical_type, [*c][*c]const u8, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_create_enum_type: ?*const fn ([*c][*c]const u8, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn ([*c][*c]const u8, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_create_decimal_type: ?*const fn (u8, u8) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (u8, u8) callconv(.c) duckdb_logical_type),
    duckdb_get_type_id: ?*const fn (duckdb_logical_type) callconv(.c) duckdb_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) duckdb_type),
    duckdb_decimal_width: ?*const fn (duckdb_logical_type) callconv(.c) u8 = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) u8),
    duckdb_decimal_scale: ?*const fn (duckdb_logical_type) callconv(.c) u8 = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) u8),
    duckdb_decimal_internal_type: ?*const fn (duckdb_logical_type) callconv(.c) duckdb_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) duckdb_type),
    duckdb_enum_internal_type: ?*const fn (duckdb_logical_type) callconv(.c) duckdb_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) duckdb_type),
    duckdb_enum_dictionary_size: ?*const fn (duckdb_logical_type) callconv(.c) u32 = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) u32),
    duckdb_enum_dictionary_value: ?*const fn (duckdb_logical_type, idx_t) callconv(.c) [*c]u8 = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, idx_t) callconv(.c) [*c]u8),
    duckdb_list_type_child_type: ?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type),
    duckdb_array_type_child_type: ?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type),
    duckdb_array_type_array_size: ?*const fn (duckdb_logical_type) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) idx_t),
    duckdb_map_type_key_type: ?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type),
    duckdb_map_type_value_type: ?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) duckdb_logical_type),
    duckdb_struct_type_child_count: ?*const fn (duckdb_logical_type) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) idx_t),
    duckdb_struct_type_child_name: ?*const fn (duckdb_logical_type, idx_t) callconv(.c) [*c]u8 = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, idx_t) callconv(.c) [*c]u8),
    duckdb_struct_type_child_type: ?*const fn (duckdb_logical_type, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_union_type_member_count: ?*const fn (duckdb_logical_type) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_logical_type) callconv(.c) idx_t),
    duckdb_union_type_member_name: ?*const fn (duckdb_logical_type, idx_t) callconv(.c) [*c]u8 = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, idx_t) callconv(.c) [*c]u8),
    duckdb_union_type_member_type: ?*const fn (duckdb_logical_type, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_logical_type, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_destroy_logical_type: ?*const fn ([*c]duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_logical_type) callconv(.c) void),
    duckdb_register_logical_type: ?*const fn (duckdb_connection, duckdb_logical_type, duckdb_create_type_info) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, duckdb_logical_type, duckdb_create_type_info) callconv(.c) duckdb_state),
    duckdb_create_data_chunk: ?*const fn ([*c]duckdb_logical_type, idx_t) callconv(.c) duckdb_data_chunk = @import("std").mem.zeroes(?*const fn ([*c]duckdb_logical_type, idx_t) callconv(.c) duckdb_data_chunk),
    duckdb_destroy_data_chunk: ?*const fn ([*c]duckdb_data_chunk) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_data_chunk) callconv(.c) void),
    duckdb_data_chunk_reset: ?*const fn (duckdb_data_chunk) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_data_chunk) callconv(.c) void),
    duckdb_data_chunk_get_column_count: ?*const fn (duckdb_data_chunk) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_data_chunk) callconv(.c) idx_t),
    duckdb_data_chunk_get_vector: ?*const fn (duckdb_data_chunk, idx_t) callconv(.c) duckdb_vector = @import("std").mem.zeroes(?*const fn (duckdb_data_chunk, idx_t) callconv(.c) duckdb_vector),
    duckdb_data_chunk_get_size: ?*const fn (duckdb_data_chunk) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_data_chunk) callconv(.c) idx_t),
    duckdb_data_chunk_set_size: ?*const fn (duckdb_data_chunk, idx_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_data_chunk, idx_t) callconv(.c) void),
    duckdb_vector_get_column_type: ?*const fn (duckdb_vector) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_vector) callconv(.c) duckdb_logical_type),
    duckdb_vector_get_data: ?*const fn (duckdb_vector) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_vector) callconv(.c) ?*anyopaque),
    duckdb_vector_get_validity: ?*const fn (duckdb_vector) callconv(.c) [*c]u64 = @import("std").mem.zeroes(?*const fn (duckdb_vector) callconv(.c) [*c]u64),
    duckdb_vector_ensure_validity_writable: ?*const fn (duckdb_vector) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_vector) callconv(.c) void),
    duckdb_vector_assign_string_element: ?*const fn (duckdb_vector, idx_t, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_vector, idx_t, [*c]const u8) callconv(.c) void),
    duckdb_vector_assign_string_element_len: ?*const fn (duckdb_vector, idx_t, [*c]const u8, idx_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_vector, idx_t, [*c]const u8, idx_t) callconv(.c) void),
    duckdb_list_vector_get_child: ?*const fn (duckdb_vector) callconv(.c) duckdb_vector = @import("std").mem.zeroes(?*const fn (duckdb_vector) callconv(.c) duckdb_vector),
    duckdb_list_vector_get_size: ?*const fn (duckdb_vector) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_vector) callconv(.c) idx_t),
    duckdb_list_vector_set_size: ?*const fn (duckdb_vector, idx_t) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_vector, idx_t) callconv(.c) duckdb_state),
    duckdb_list_vector_reserve: ?*const fn (duckdb_vector, idx_t) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_vector, idx_t) callconv(.c) duckdb_state),
    duckdb_struct_vector_get_child: ?*const fn (duckdb_vector, idx_t) callconv(.c) duckdb_vector = @import("std").mem.zeroes(?*const fn (duckdb_vector, idx_t) callconv(.c) duckdb_vector),
    duckdb_array_vector_get_child: ?*const fn (duckdb_vector) callconv(.c) duckdb_vector = @import("std").mem.zeroes(?*const fn (duckdb_vector) callconv(.c) duckdb_vector),
    duckdb_validity_row_is_valid: ?*const fn ([*c]u64, idx_t) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]u64, idx_t) callconv(.c) bool),
    duckdb_validity_set_row_validity: ?*const fn ([*c]u64, idx_t, bool) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]u64, idx_t, bool) callconv(.c) void),
    duckdb_validity_set_row_invalid: ?*const fn ([*c]u64, idx_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]u64, idx_t) callconv(.c) void),
    duckdb_validity_set_row_valid: ?*const fn ([*c]u64, idx_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]u64, idx_t) callconv(.c) void),
    duckdb_create_scalar_function: ?*const fn (...) callconv(.c) duckdb_scalar_function = @import("std").mem.zeroes(?*const fn (...) callconv(.c) duckdb_scalar_function),
    duckdb_destroy_scalar_function: ?*const fn ([*c]duckdb_scalar_function) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_scalar_function) callconv(.c) void),
    duckdb_scalar_function_set_name: ?*const fn (duckdb_scalar_function, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function, [*c]const u8) callconv(.c) void),
    duckdb_scalar_function_set_varargs: ?*const fn (duckdb_scalar_function, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function, duckdb_logical_type) callconv(.c) void),
    duckdb_scalar_function_set_special_handling: ?*const fn (duckdb_scalar_function) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function) callconv(.c) void),
    duckdb_scalar_function_set_volatile: ?*const fn (duckdb_scalar_function) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function) callconv(.c) void),
    duckdb_scalar_function_add_parameter: ?*const fn (duckdb_scalar_function, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function, duckdb_logical_type) callconv(.c) void),
    duckdb_scalar_function_set_return_type: ?*const fn (duckdb_scalar_function, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function, duckdb_logical_type) callconv(.c) void),
    duckdb_scalar_function_set_extra_info: ?*const fn (duckdb_scalar_function, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void),
    duckdb_scalar_function_set_function: ?*const fn (duckdb_scalar_function, duckdb_scalar_function_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function, duckdb_scalar_function_t) callconv(.c) void),
    duckdb_register_scalar_function: ?*const fn (duckdb_connection, duckdb_scalar_function) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, duckdb_scalar_function) callconv(.c) duckdb_state),
    duckdb_scalar_function_get_extra_info: ?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque),
    duckdb_scalar_function_set_error: ?*const fn (duckdb_function_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_function_info, [*c]const u8) callconv(.c) void),
    duckdb_create_scalar_function_set: ?*const fn ([*c]const u8) callconv(.c) duckdb_scalar_function_set = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.c) duckdb_scalar_function_set),
    duckdb_destroy_scalar_function_set: ?*const fn ([*c]duckdb_scalar_function_set) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_scalar_function_set) callconv(.c) void),
    duckdb_add_scalar_function_to_set: ?*const fn (duckdb_scalar_function_set, duckdb_scalar_function) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_scalar_function_set, duckdb_scalar_function) callconv(.c) duckdb_state),
    duckdb_register_scalar_function_set: ?*const fn (duckdb_connection, duckdb_scalar_function_set) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, duckdb_scalar_function_set) callconv(.c) duckdb_state),
    duckdb_create_aggregate_function: ?*const fn (...) callconv(.c) duckdb_aggregate_function = @import("std").mem.zeroes(?*const fn (...) callconv(.c) duckdb_aggregate_function),
    duckdb_destroy_aggregate_function: ?*const fn ([*c]duckdb_aggregate_function) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_aggregate_function) callconv(.c) void),
    duckdb_aggregate_function_set_name: ?*const fn (duckdb_aggregate_function, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_aggregate_function, [*c]const u8) callconv(.c) void),
    duckdb_aggregate_function_add_parameter: ?*const fn (duckdb_aggregate_function, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_aggregate_function, duckdb_logical_type) callconv(.c) void),
    duckdb_aggregate_function_set_return_type: ?*const fn (duckdb_aggregate_function, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_aggregate_function, duckdb_logical_type) callconv(.c) void),
    duckdb_aggregate_function_set_functions: ?*const fn (duckdb_aggregate_function, duckdb_aggregate_state_size, duckdb_aggregate_init_t, duckdb_aggregate_update_t, duckdb_aggregate_combine_t, duckdb_aggregate_finalize_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_aggregate_function, duckdb_aggregate_state_size, duckdb_aggregate_init_t, duckdb_aggregate_update_t, duckdb_aggregate_combine_t, duckdb_aggregate_finalize_t) callconv(.c) void),
    duckdb_aggregate_function_set_destructor: ?*const fn (duckdb_aggregate_function, duckdb_aggregate_destroy_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_aggregate_function, duckdb_aggregate_destroy_t) callconv(.c) void),
    duckdb_register_aggregate_function: ?*const fn (duckdb_connection, duckdb_aggregate_function) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, duckdb_aggregate_function) callconv(.c) duckdb_state),
    duckdb_aggregate_function_set_special_handling: ?*const fn (duckdb_aggregate_function) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_aggregate_function) callconv(.c) void),
    duckdb_aggregate_function_set_extra_info: ?*const fn (duckdb_aggregate_function, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_aggregate_function, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void),
    duckdb_aggregate_function_get_extra_info: ?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque),
    duckdb_aggregate_function_set_error: ?*const fn (duckdb_function_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_function_info, [*c]const u8) callconv(.c) void),
    duckdb_create_aggregate_function_set: ?*const fn ([*c]const u8) callconv(.c) duckdb_aggregate_function_set = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.c) duckdb_aggregate_function_set),
    duckdb_destroy_aggregate_function_set: ?*const fn ([*c]duckdb_aggregate_function_set) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_aggregate_function_set) callconv(.c) void),
    duckdb_add_aggregate_function_to_set: ?*const fn (duckdb_aggregate_function_set, duckdb_aggregate_function) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_aggregate_function_set, duckdb_aggregate_function) callconv(.c) duckdb_state),
    duckdb_register_aggregate_function_set: ?*const fn (duckdb_connection, duckdb_aggregate_function_set) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, duckdb_aggregate_function_set) callconv(.c) duckdb_state),
    duckdb_create_table_function: ?*const fn (...) callconv(.c) duckdb_table_function = @import("std").mem.zeroes(?*const fn (...) callconv(.c) duckdb_table_function),
    duckdb_destroy_table_function: ?*const fn ([*c]duckdb_table_function) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_table_function) callconv(.c) void),
    duckdb_table_function_set_name: ?*const fn (duckdb_table_function, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, [*c]const u8) callconv(.c) void),
    duckdb_table_function_add_parameter: ?*const fn (duckdb_table_function, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, duckdb_logical_type) callconv(.c) void),
    duckdb_table_function_add_named_parameter: ?*const fn (duckdb_table_function, [*c]const u8, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, [*c]const u8, duckdb_logical_type) callconv(.c) void),
    duckdb_table_function_set_extra_info: ?*const fn (duckdb_table_function, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void),
    duckdb_table_function_set_bind: ?*const fn (duckdb_table_function, duckdb_table_function_bind_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, duckdb_table_function_bind_t) callconv(.c) void),
    duckdb_table_function_set_init: ?*const fn (duckdb_table_function, duckdb_table_function_init_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, duckdb_table_function_init_t) callconv(.c) void),
    duckdb_table_function_set_local_init: ?*const fn (duckdb_table_function, duckdb_table_function_init_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, duckdb_table_function_init_t) callconv(.c) void),
    duckdb_table_function_set_function: ?*const fn (duckdb_table_function, duckdb_table_function_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, duckdb_table_function_t) callconv(.c) void),
    duckdb_table_function_supports_projection_pushdown: ?*const fn (duckdb_table_function, bool) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_table_function, bool) callconv(.c) void),
    duckdb_register_table_function: ?*const fn (duckdb_connection, duckdb_table_function) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, duckdb_table_function) callconv(.c) duckdb_state),
    duckdb_bind_get_extra_info: ?*const fn (duckdb_bind_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_bind_info) callconv(.c) ?*anyopaque),
    duckdb_bind_add_result_column: ?*const fn (duckdb_bind_info, [*c]const u8, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_bind_info, [*c]const u8, duckdb_logical_type) callconv(.c) void),
    duckdb_bind_get_parameter_count: ?*const fn (duckdb_bind_info) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_bind_info) callconv(.c) idx_t),
    duckdb_bind_get_parameter: ?*const fn (duckdb_bind_info, idx_t) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_bind_info, idx_t) callconv(.c) duckdb_value),
    duckdb_bind_get_named_parameter: ?*const fn (duckdb_bind_info, [*c]const u8) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_bind_info, [*c]const u8) callconv(.c) duckdb_value),
    duckdb_bind_set_bind_data: ?*const fn (duckdb_bind_info, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_bind_info, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void),
    duckdb_bind_set_cardinality: ?*const fn (duckdb_bind_info, idx_t, bool) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_bind_info, idx_t, bool) callconv(.c) void),
    duckdb_bind_set_error: ?*const fn (duckdb_bind_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_bind_info, [*c]const u8) callconv(.c) void),
    duckdb_init_get_extra_info: ?*const fn (duckdb_init_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_init_info) callconv(.c) ?*anyopaque),
    duckdb_init_get_bind_data: ?*const fn (duckdb_init_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_init_info) callconv(.c) ?*anyopaque),
    duckdb_init_set_init_data: ?*const fn (duckdb_init_info, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_init_info, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void),
    duckdb_init_get_column_count: ?*const fn (duckdb_init_info) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_init_info) callconv(.c) idx_t),
    duckdb_init_get_column_index: ?*const fn (duckdb_init_info, idx_t) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_init_info, idx_t) callconv(.c) idx_t),
    duckdb_init_set_max_threads: ?*const fn (duckdb_init_info, idx_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_init_info, idx_t) callconv(.c) void),
    duckdb_init_set_error: ?*const fn (duckdb_init_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_init_info, [*c]const u8) callconv(.c) void),
    duckdb_function_get_extra_info: ?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque),
    duckdb_function_get_bind_data: ?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque),
    duckdb_function_get_init_data: ?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque),
    duckdb_function_get_local_init_data: ?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque),
    duckdb_function_set_error: ?*const fn (duckdb_function_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_function_info, [*c]const u8) callconv(.c) void),
    duckdb_add_replacement_scan: ?*const fn (duckdb_database, duckdb_replacement_callback_t, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_database, duckdb_replacement_callback_t, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void),
    duckdb_replacement_scan_set_function_name: ?*const fn (duckdb_replacement_scan_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_replacement_scan_info, [*c]const u8) callconv(.c) void),
    duckdb_replacement_scan_add_parameter: ?*const fn (duckdb_replacement_scan_info, duckdb_value) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_replacement_scan_info, duckdb_value) callconv(.c) void),
    duckdb_replacement_scan_set_error: ?*const fn (duckdb_replacement_scan_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_replacement_scan_info, [*c]const u8) callconv(.c) void),
    duckdb_profiling_info_get_metrics: ?*const fn (duckdb_profiling_info) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_profiling_info) callconv(.c) duckdb_value),
    duckdb_profiling_info_get_child_count: ?*const fn (duckdb_profiling_info) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_profiling_info) callconv(.c) idx_t),
    duckdb_profiling_info_get_child: ?*const fn (duckdb_profiling_info, idx_t) callconv(.c) duckdb_profiling_info = @import("std").mem.zeroes(?*const fn (duckdb_profiling_info, idx_t) callconv(.c) duckdb_profiling_info),
    duckdb_appender_create: ?*const fn (duckdb_connection, [*c]const u8, [*c]const u8, [*c]duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, [*c]const u8, [*c]const u8, [*c]duckdb_appender) callconv(.c) duckdb_state),
    duckdb_appender_create_ext: ?*const fn (duckdb_connection, [*c]const u8, [*c]const u8, [*c]const u8, [*c]duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, [*c]const u8, [*c]const u8, [*c]const u8, [*c]duckdb_appender) callconv(.c) duckdb_state),
    duckdb_appender_column_count: ?*const fn (duckdb_appender) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) idx_t),
    duckdb_appender_column_type: ?*const fn (duckdb_appender, idx_t) callconv(.c) duckdb_logical_type = @import("std").mem.zeroes(?*const fn (duckdb_appender, idx_t) callconv(.c) duckdb_logical_type),
    duckdb_appender_error: ?*const fn (duckdb_appender) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) [*c]const u8),
    duckdb_appender_flush: ?*const fn (duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) duckdb_state),
    duckdb_appender_close: ?*const fn (duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) duckdb_state),
    duckdb_appender_destroy: ?*const fn ([*c]duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn ([*c]duckdb_appender) callconv(.c) duckdb_state),
    duckdb_appender_add_column: ?*const fn (duckdb_appender, [*c]const u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, [*c]const u8) callconv(.c) duckdb_state),
    duckdb_appender_clear_columns: ?*const fn (duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) duckdb_state),
    duckdb_append_data_chunk: ?*const fn (duckdb_appender, duckdb_data_chunk) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, duckdb_data_chunk) callconv(.c) duckdb_state),
    duckdb_table_description_create: ?*const fn (duckdb_connection, [*c]const u8, [*c]const u8, [*c]duckdb_table_description) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, [*c]const u8, [*c]const u8, [*c]duckdb_table_description) callconv(.c) duckdb_state),
    duckdb_table_description_create_ext: ?*const fn (duckdb_connection, [*c]const u8, [*c]const u8, [*c]const u8, [*c]duckdb_table_description) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, [*c]const u8, [*c]const u8, [*c]const u8, [*c]duckdb_table_description) callconv(.c) duckdb_state),
    duckdb_table_description_destroy: ?*const fn ([*c]duckdb_table_description) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_table_description) callconv(.c) void),
    duckdb_table_description_error: ?*const fn (duckdb_table_description) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (duckdb_table_description) callconv(.c) [*c]const u8),
    duckdb_column_has_default: ?*const fn (duckdb_table_description, idx_t, [*c]bool) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_table_description, idx_t, [*c]bool) callconv(.c) duckdb_state),
    duckdb_table_description_get_column_name: ?*const fn (duckdb_table_description, idx_t) callconv(.c) [*c]u8 = @import("std").mem.zeroes(?*const fn (duckdb_table_description, idx_t) callconv(.c) [*c]u8),
    duckdb_execute_tasks: ?*const fn (duckdb_database, idx_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_database, idx_t) callconv(.c) void),
    duckdb_create_task_state: ?*const fn (duckdb_database) callconv(.c) duckdb_task_state = @import("std").mem.zeroes(?*const fn (duckdb_database) callconv(.c) duckdb_task_state),
    duckdb_execute_tasks_state: ?*const fn (duckdb_task_state) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_task_state) callconv(.c) void),
    duckdb_execute_n_tasks_state: ?*const fn (duckdb_task_state, idx_t) callconv(.c) idx_t = @import("std").mem.zeroes(?*const fn (duckdb_task_state, idx_t) callconv(.c) idx_t),
    duckdb_finish_execution: ?*const fn (duckdb_task_state) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_task_state) callconv(.c) void),
    duckdb_task_state_is_finished: ?*const fn (duckdb_task_state) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_task_state) callconv(.c) bool),
    duckdb_destroy_task_state: ?*const fn (duckdb_task_state) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_task_state) callconv(.c) void),
    duckdb_execution_is_finished: ?*const fn (duckdb_connection) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_connection) callconv(.c) bool),
    duckdb_fetch_chunk: ?*const fn (duckdb_result) callconv(.c) duckdb_data_chunk = @import("std").mem.zeroes(?*const fn (duckdb_result) callconv(.c) duckdb_data_chunk),
    duckdb_create_cast_function: ?*const fn (...) callconv(.c) duckdb_cast_function = @import("std").mem.zeroes(?*const fn (...) callconv(.c) duckdb_cast_function),
    duckdb_cast_function_set_source_type: ?*const fn (duckdb_cast_function, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_cast_function, duckdb_logical_type) callconv(.c) void),
    duckdb_cast_function_set_target_type: ?*const fn (duckdb_cast_function, duckdb_logical_type) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_cast_function, duckdb_logical_type) callconv(.c) void),
    duckdb_cast_function_set_implicit_cast_cost: ?*const fn (duckdb_cast_function, i64) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_cast_function, i64) callconv(.c) void),
    duckdb_cast_function_set_function: ?*const fn (duckdb_cast_function, duckdb_cast_function_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_cast_function, duckdb_cast_function_t) callconv(.c) void),
    duckdb_cast_function_set_extra_info: ?*const fn (duckdb_cast_function, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_cast_function, ?*anyopaque, duckdb_delete_callback_t) callconv(.c) void),
    duckdb_cast_function_get_extra_info: ?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (duckdb_function_info) callconv(.c) ?*anyopaque),
    duckdb_cast_function_get_cast_mode: ?*const fn (duckdb_function_info) callconv(.c) duckdb_cast_mode = @import("std").mem.zeroes(?*const fn (duckdb_function_info) callconv(.c) duckdb_cast_mode),
    duckdb_cast_function_set_error: ?*const fn (duckdb_function_info, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_function_info, [*c]const u8) callconv(.c) void),
    duckdb_cast_function_set_row_error: ?*const fn (duckdb_function_info, [*c]const u8, idx_t, duckdb_vector) callconv(.c) void = @import("std").mem.zeroes(?*const fn (duckdb_function_info, [*c]const u8, idx_t, duckdb_vector) callconv(.c) void),
    duckdb_register_cast_function: ?*const fn (duckdb_connection, duckdb_cast_function) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_connection, duckdb_cast_function) callconv(.c) duckdb_state),
    duckdb_destroy_cast_function: ?*const fn ([*c]duckdb_cast_function) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]duckdb_cast_function) callconv(.c) void),
    duckdb_is_finite_timestamp_s: ?*const fn (duckdb_timestamp_s) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_timestamp_s) callconv(.c) bool),
    duckdb_is_finite_timestamp_ms: ?*const fn (duckdb_timestamp_ms) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_timestamp_ms) callconv(.c) bool),
    duckdb_is_finite_timestamp_ns: ?*const fn (duckdb_timestamp_ns) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (duckdb_timestamp_ns) callconv(.c) bool),
    duckdb_create_timestamp_tz: ?*const fn (duckdb_timestamp) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_timestamp) callconv(.c) duckdb_value),
    duckdb_create_timestamp_s: ?*const fn (duckdb_timestamp_s) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_timestamp_s) callconv(.c) duckdb_value),
    duckdb_create_timestamp_ms: ?*const fn (duckdb_timestamp_ms) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_timestamp_ms) callconv(.c) duckdb_value),
    duckdb_create_timestamp_ns: ?*const fn (duckdb_timestamp_ns) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_timestamp_ns) callconv(.c) duckdb_value),
    duckdb_get_timestamp_tz: ?*const fn (duckdb_value) callconv(.c) duckdb_timestamp = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_timestamp),
    duckdb_get_timestamp_s: ?*const fn (duckdb_value) callconv(.c) duckdb_timestamp_s = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_timestamp_s),
    duckdb_get_timestamp_ms: ?*const fn (duckdb_value) callconv(.c) duckdb_timestamp_ms = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_timestamp_ms),
    duckdb_get_timestamp_ns: ?*const fn (duckdb_value) callconv(.c) duckdb_timestamp_ns = @import("std").mem.zeroes(?*const fn (duckdb_value) callconv(.c) duckdb_timestamp_ns),
    duckdb_append_value: ?*const fn (duckdb_appender, duckdb_value) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, duckdb_value) callconv(.c) duckdb_state),
    duckdb_get_profiling_info: ?*const fn (duckdb_connection) callconv(.c) duckdb_profiling_info = @import("std").mem.zeroes(?*const fn (duckdb_connection) callconv(.c) duckdb_profiling_info),
    duckdb_profiling_info_get_value: ?*const fn (duckdb_profiling_info, [*c]const u8) callconv(.c) duckdb_value = @import("std").mem.zeroes(?*const fn (duckdb_profiling_info, [*c]const u8) callconv(.c) duckdb_value),
    duckdb_appender_begin_row: ?*const fn (duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) duckdb_state),
    duckdb_appender_end_row: ?*const fn (duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) duckdb_state),
    duckdb_append_default: ?*const fn (duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) duckdb_state),
    duckdb_append_bool: ?*const fn (duckdb_appender, bool) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, bool) callconv(.c) duckdb_state),
    duckdb_append_int8: ?*const fn (duckdb_appender, i8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, i8) callconv(.c) duckdb_state),
    duckdb_append_int16: ?*const fn (duckdb_appender, i16) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, i16) callconv(.c) duckdb_state),
    duckdb_append_int32: ?*const fn (duckdb_appender, i32) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, i32) callconv(.c) duckdb_state),
    duckdb_append_int64: ?*const fn (duckdb_appender, i64) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, i64) callconv(.c) duckdb_state),
    duckdb_append_hugeint: ?*const fn (duckdb_appender, duckdb_hugeint) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, duckdb_hugeint) callconv(.c) duckdb_state),
    duckdb_append_uint8: ?*const fn (duckdb_appender, u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, u8) callconv(.c) duckdb_state),
    duckdb_append_uint16: ?*const fn (duckdb_appender, u16) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, u16) callconv(.c) duckdb_state),
    duckdb_append_uint32: ?*const fn (duckdb_appender, u32) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, u32) callconv(.c) duckdb_state),
    duckdb_append_uint64: ?*const fn (duckdb_appender, u64) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, u64) callconv(.c) duckdb_state),
    duckdb_append_uhugeint: ?*const fn (duckdb_appender, duckdb_uhugeint) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, duckdb_uhugeint) callconv(.c) duckdb_state),
    duckdb_append_float: ?*const fn (duckdb_appender, f32) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, f32) callconv(.c) duckdb_state),
    duckdb_append_double: ?*const fn (duckdb_appender, f64) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, f64) callconv(.c) duckdb_state),
    duckdb_append_date: ?*const fn (duckdb_appender, duckdb_date) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, duckdb_date) callconv(.c) duckdb_state),
    duckdb_append_time: ?*const fn (duckdb_appender, duckdb_time) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, duckdb_time) callconv(.c) duckdb_state),
    duckdb_append_timestamp: ?*const fn (duckdb_appender, duckdb_timestamp) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, duckdb_timestamp) callconv(.c) duckdb_state),
    duckdb_append_interval: ?*const fn (duckdb_appender, duckdb_interval) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, duckdb_interval) callconv(.c) duckdb_state),
    duckdb_append_varchar: ?*const fn (duckdb_appender, [*c]const u8) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, [*c]const u8) callconv(.c) duckdb_state),
    duckdb_append_varchar_length: ?*const fn (duckdb_appender, [*c]const u8, idx_t) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, [*c]const u8, idx_t) callconv(.c) duckdb_state),
    duckdb_append_blob: ?*const fn (duckdb_appender, ?*const anyopaque, idx_t) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender, ?*const anyopaque, idx_t) callconv(.c) duckdb_state),
    duckdb_append_null: ?*const fn (duckdb_appender) callconv(.c) duckdb_state = @import("std").mem.zeroes(?*const fn (duckdb_appender) callconv(.c) duckdb_state),
};
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 8);
pub const __clang_version__ = "20.1.8 ";
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
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Homebrew Clang 20.1.8";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __block = @compileError("unable to translate macro: undefined identifier `__blocks__`");
// (no file):42:9
pub const __BLOCKS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
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
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):97:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):104:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
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
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
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
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):208:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):233:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):242:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
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
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
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
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
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
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
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
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = @compileError("unable to translate macro: undefined identifier `_`");
// (no file):334:9
pub const __NO_MATH_ERRNO__ = @as(c_int, 1);
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
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
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `_Nonnull`");
// (no file):369:9
pub const __null_unspecified = @compileError("unable to translate macro: undefined identifier `_Null_unspecified`");
// (no file):370:9
pub const __nullable = @compileError("unable to translate macro: undefined identifier `_Nullable`");
// (no file):371:9
pub const TARGET_OS_WIN32 = @as(c_int, 0);
pub const TARGET_OS_WINDOWS = @as(c_int, 0);
pub const TARGET_OS_LINUX = @as(c_int, 0);
pub const TARGET_OS_UNIX = @as(c_int, 0);
pub const TARGET_OS_MAC = @as(c_int, 1);
pub const TARGET_OS_OSX = @as(c_int, 1);
pub const TARGET_OS_IPHONE = @as(c_int, 0);
pub const TARGET_OS_IOS = @as(c_int, 0);
pub const TARGET_OS_TV = @as(c_int, 0);
pub const TARGET_OS_WATCH = @as(c_int, 0);
pub const TARGET_OS_VISION = @as(c_int, 0);
pub const TARGET_OS_DRIVERKIT = @as(c_int, 0);
pub const TARGET_OS_MACCATALYST = @as(c_int, 0);
pub const TARGET_OS_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_EMBEDDED = @as(c_int, 0);
pub const TARGET_OS_NANO = @as(c_int, 0);
pub const TARGET_IPHONE_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_UIKITFORMAC = @as(c_int, 0);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):398:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):399:9
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
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
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __SGX__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
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
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __APPLE__ = @as(c_int, 1);
pub const __weak = @compileError("unable to translate macro: undefined identifier `objc_gc`");
// (no file):447:9
pub const __strong = "";
pub const __unsafe_unretained = "";
pub const __DYNAMIC__ = @as(c_int, 1);
pub const __MACH__ = @as(c_int, 1);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 260200, .decimal);
pub const __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 260200, .decimal);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const DUCKDB_API = "";
pub const DUCKDB_EXTENSION_API = @compileError("unable to translate macro: undefined identifier `visibility`");
// extension-template-c/duckdb_capi/duckdb.h:46:9
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _UINT32_T = "";
pub const _UINT64_T = "";
pub const _SYS__TYPES_H_ = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __has_cpp_attribute(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    _ = &protos;
    return protos;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:116:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:117:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:119:9
pub const __signed = c_int;
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:121:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:165:9
pub const __pure2 = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:166:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:167:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:172:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__used__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:177:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:183:9
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `returns_nonnull`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:190:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__visibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:200:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:201:9
pub const __exported_push_hidden = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:203:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:204:9
pub const __exported_hidden = @compileError("unable to translate macro: undefined identifier `__private_extern__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:205:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:223:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:227:10
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) {
    _ = &_msg;
    return __deprecated_msg(_msg);
}
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:238:9
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__unavailable__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:244:9
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:266:9
pub const __disable_tail_calls = @compileError("unable to translate macro: undefined identifier `__disable_tail_calls__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:299:9
pub const __not_tail_called = @compileError("unable to translate macro: undefined identifier `__not_tail_called__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:311:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:322:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__availability__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:332:9
pub const __swift_unavailable_from_async = @compileError("unable to translate macro: undefined identifier `__swift_attr__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:341:9
pub const __swift_nonisolated = @compileError("unable to translate macro: undefined identifier `__swift_attr__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:342:9
pub const __swift_nonisolated_unsafe = @compileError("unable to translate macro: undefined identifier `__swift_attr__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:343:9
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:379:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:392:10
pub const __unreachable_ok_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:405:10
pub const __unreachable_ok_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:408:10
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:429:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:431:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:433:9
pub const __osloglike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:435:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:438:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:441:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:445:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:449:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:453:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:458:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:462:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:466:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:470:9
pub const __alloc_align = @compileError("unable to translate macro: undefined identifier `alloc_align`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:479:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:500:9
pub const __has_safe_buffers = @as(c_int, 1);
pub const __unsafe_buffer_usage = @compileError("unable to translate macro: undefined identifier `__unsafe_buffer_usage__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:598:9
pub const __unsafe_buffer_usage_begin = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:604:9
pub const __unsafe_buffer_usage_end = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:605:9
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 0);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 0);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "$INODE64";
pub const __DARWIN_SUF_1050 = "$1050";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:790:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:791:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:792:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:793:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:794:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:796:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:797:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:798:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:799:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:800:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:802:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:803:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:341:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:347:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:353:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:359:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:365:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:371:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:377:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:383:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:389:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:395:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:401:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:407:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:413:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:419:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:425:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:431:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:437:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:443:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:449:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:455:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:461:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:467:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:473:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:479:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:485:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:491:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:497:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:503:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:509:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:515:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:521:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:527:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:533:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:539:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:545:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:551:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_19_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:557:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:563:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:569:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:575:9
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_16_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:813:9
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:876:9
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub const __CAST_AWAY_QUALIFIER = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:974:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `visibility`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:988:9
pub const __has_ptrcheck = @as(c_int, 0);
pub const __single = "";
pub const __unsafe_indexable = "";
pub const __counted_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1007:9
pub const __counted_by_or_null = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1008:9
pub const __sized_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1009:9
pub const __sized_by_or_null = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1010:9
pub const __ended_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1011:9
pub const __terminated_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1012:9
pub const __null_terminated = "";
pub const __ptrcheck_abi_assume_single = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1022:9
pub const __ptrcheck_abi_assume_unsafe_indexable = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1023:9
pub inline fn __unsafe_forge_bidi_indexable(T: anytype, P: anytype, S: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &S;
    return T(P);
}
pub const __unsafe_forge_single = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __unsafe_forge_terminated_by(T: anytype, P: anytype, E: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &E;
    return T(P);
}
pub const __unsafe_forge_null_terminated = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub const __unsafe_terminated_by_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1034:9
pub const __unsafe_null_terminated_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1035:9
pub const __array_decay_dicards_count_in_parameters = "";
pub const __unsafe_late_const = "";
pub const __ptrcheck_unavailable = "";
pub const __ptrcheck_unavailable_r = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1044:9
pub const __ASSUME_PTR_ABI_SINGLE_BEGIN = __ptrcheck_abi_assume_single();
pub const __ASSUME_PTR_ABI_SINGLE_END = __ptrcheck_abi_assume_unsafe_indexable();
pub const __header_indexable = "";
pub const __header_bidi_indexable = "";
pub const __compiler_barrier = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1073:9
pub const __enum_open = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1076:9
pub const __enum_closed = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1077:9
pub const __enum_options = @compileError("unable to translate macro: undefined identifier `__flag_enum__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1084:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1097:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1099:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1101:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1103:9
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const __xnu_data_size = "";
pub const __xnu_returns_data_pointer = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_I386__TYPES_H_ = "";
pub const USE_CLANG_TYPES = @as(c_int, 0);
pub const __DARWIN_NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const __offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h:97:9
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_rsize_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const __STDDEF_H = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _RSIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /usr/local/Cellar/zig/0.15.2/lib/zig/include/__stddef_offsetof.h:16:9
pub const DUCKDB_EXTENSION_EXTERN_C_GUARD_OPEN = "";
pub const DUCKDB_EXTENSION_EXTERN_C_GUARD_CLOSE = "";
pub const DUCKDB_EXTENSION_GLUE_HELPER = @compileError("unable to translate C expr: unexpected token '##'");
// extension-template-c/duckdb_capi/duckdb_extension.h:32:9
pub inline fn DUCKDB_EXTENSION_GLUE(x: anytype, y: anytype) @TypeOf(DUCKDB_EXTENSION_GLUE_HELPER(x, y)) {
    _ = &x;
    _ = &y;
    return DUCKDB_EXTENSION_GLUE_HELPER(x, y);
}
pub const DUCKDB_EXTENSION_STR_HELPER = @compileError("unable to translate C expr: unexpected token '#'");
// extension-template-c/duckdb_capi/duckdb_extension.h:34:9
pub inline fn DUCKDB_EXTENSION_STR(x: anytype) @TypeOf(DUCKDB_EXTENSION_STR_HELPER(x)) {
    _ = &x;
    return DUCKDB_EXTENSION_STR_HELPER(x);
}
pub inline fn DUCKDB_EXTENSION_SEMVER_STRING(major: anytype, minor: anytype, patch: anytype) @TypeOf("v" ++ DUCKDB_EXTENSION_STR_HELPER(major) ++ "." ++ DUCKDB_EXTENSION_STR_HELPER(minor) ++ "." ++ DUCKDB_EXTENSION_STR_HELPER(patch)) {
    _ = &major;
    _ = &minor;
    _ = &patch;
    return "v" ++ DUCKDB_EXTENSION_STR_HELPER(major) ++ "." ++ DUCKDB_EXTENSION_STR_HELPER(minor) ++ "." ++ DUCKDB_EXTENSION_STR_HELPER(patch);
}
pub const DUCKDB_EXTENSION_API_VERSION_MAJOR = @as(c_int, 1);
pub const DUCKDB_EXTENSION_API_VERSION_MINOR = @as(c_int, 2);
pub const DUCKDB_EXTENSION_API_VERSION_PATCH = @as(c_int, 0);
pub const DUCKDB_EXTENSION_API_VERSION_STRING = DUCKDB_EXTENSION_SEMVER_STRING(DUCKDB_EXTENSION_API_VERSION_MAJOR, DUCKDB_EXTENSION_API_VERSION_MINOR, DUCKDB_EXTENSION_API_VERSION_PATCH);
pub const DUCKDB_EXTENSION_GLOBAL = @compileError("unable to translate macro: undefined identifier `duckdb_ext_api`");
// extension-template-c/duckdb_capi/duckdb_extension.h:971:9
pub const DUCKDB_EXTENSION_API_INIT = @compileError("unable to translate macro: undefined identifier `res`");
// extension-template-c/duckdb_capi/duckdb_extension.h:973:9
pub const DUCKDB_EXTENSION_EXTERN = @compileError("unable to translate macro: undefined identifier `duckdb_ext_api`");
// extension-template-c/duckdb_capi/duckdb_extension.h:981:9
pub const DUCKDB_CAPI_ENTRY_VISIBILITY = @compileError("unable to translate macro: undefined identifier `visibility`");
// extension-template-c/duckdb_capi/duckdb_extension.h:986:9
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const DUCKDB_TYPE = enum_DUCKDB_TYPE;
pub const _duckdb_vector = struct__duckdb_vector;
pub const _duckdb_instance_cache = struct__duckdb_instance_cache;
pub const _duckdb_database = struct__duckdb_database;
pub const _duckdb_connection = struct__duckdb_connection;
pub const _duckdb_prepared_statement = struct__duckdb_prepared_statement;
pub const _duckdb_extracted_statements = struct__duckdb_extracted_statements;
pub const _duckdb_pending_result = struct__duckdb_pending_result;
pub const _duckdb_appender = struct__duckdb_appender;
pub const _duckdb_table_description = struct__duckdb_table_description;
pub const _duckdb_config = struct__duckdb_config;
pub const _duckdb_logical_type = struct__duckdb_logical_type;
pub const _duckdb_create_type_info = struct__duckdb_create_type_info;
pub const _duckdb_data_chunk = struct__duckdb_data_chunk;
pub const _duckdb_value = struct__duckdb_value;
pub const _duckdb_profiling_info = struct__duckdb_profiling_info;
pub const _duckdb_extension_info = struct__duckdb_extension_info;
pub const _duckdb_function_info = struct__duckdb_function_info;
pub const _duckdb_scalar_function = struct__duckdb_scalar_function;
pub const _duckdb_scalar_function_set = struct__duckdb_scalar_function_set;
pub const _duckdb_aggregate_function = struct__duckdb_aggregate_function;
pub const _duckdb_aggregate_function_set = struct__duckdb_aggregate_function_set;
pub const _duckdb_aggregate_state = struct__duckdb_aggregate_state;
pub const _duckdb_table_function = struct__duckdb_table_function;
pub const _duckdb_bind_info = struct__duckdb_bind_info;
pub const _duckdb_init_info = struct__duckdb_init_info;
pub const _duckdb_cast_function = struct__duckdb_cast_function;
pub const _duckdb_replacement_scan_info = struct__duckdb_replacement_scan_info;
pub const _duckdb_arrow = struct__duckdb_arrow;
pub const _duckdb_arrow_stream = struct__duckdb_arrow_stream;
pub const _duckdb_arrow_schema = struct__duckdb_arrow_schema;
pub const _duckdb_arrow_array = struct__duckdb_arrow_array;
pub const duckdb_extension_access = struct_duckdb_extension_access;
