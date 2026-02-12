#include <string.h>
#include "duckdb_extension.h"

DUCKDB_EXTENSION_EXTERN

// Forward declare the Zig-implemented registration functions.
// These symbols are exported from lib.zig with `pub export fn register_read_function`
// and `pub export fn register_lookup_functions` respectively,
// both with C calling convention, so the C linker can resolve them at link time.
extern duckdb_state register_read_function(duckdb_connection conn);
extern duckdb_state register_lookup_functions(duckdb_connection conn);

// Define the extension version as a macro, which is set by the zig build.
const char *version = EXTENSION_VERSION;

// Scalar function callback for extension_version().
// DuckDB calls this with a batch of rows (data chunk).
// Since this function takes no parameters, the input chunk has rows but no columns,
// so we just need to fill the output vector with the version string for every row in the batch.
static void extension_version_function(
    duckdb_function_info info,
    duckdb_data_chunk input,
    duckdb_vector output
) {
    // Write the version string into the output VARCHAR vector for each row in the batch.
    idx_t input_size = duckdb_data_chunk_get_size(input);
    for (idx_t i = 0; i < input_size; i++) {
        duckdb_vector_assign_string_element_len(output, i, version, strlen(version));
    }
}

// Extension entrypoint called by DuckDB when the extension is loaded via LOAD.
// This is where all functions provided by the extension are registered.
// It returns true on success, false on failure.
//
// Parameters:
// - conn is the DuckDB connection to register functions on
// - info is an extension metadata handle
// - access is a callback struct for error reporting back to DuckDB
DUCKDB_EXTENSION_ENTRYPOINT(
    duckdb_connection conn,
    duckdb_extension_info info,
    struct duckdb_extension_access *access
) {
    // Register the read_mmdb() table function with DuckDB.
    if (register_read_function(conn) == DuckDBError) {
        access->set_error(info, "Failed to register read_mmdb function");
        return false;
    }

    // Register the lookup scalar functions with DuckDB.
    if (register_lookup_functions(conn) == DuckDBError) {
        access->set_error(info, "Failed to register lookup functions");
        return false;
    }

    // Register the extension_version() scalar function.
    duckdb_scalar_function ver_func = duckdb_create_scalar_function();
    // Set the SQL-visible name, i.e., SELECT extension_version().
    duckdb_scalar_function_set_name(ver_func, "extension_version");

    // Create a VARCHAR logical type for the return type.
    duckdb_logical_type varchar_type = duckdb_create_logical_type(DUCKDB_TYPE_VARCHAR);
    duckdb_scalar_function_set_return_type(ver_func, varchar_type);
    duckdb_destroy_logical_type(&varchar_type);

    // Bind the C callback that DuckDB will invoke for each batch of rows.
    duckdb_scalar_function_set_function(ver_func, extension_version_function);

    // Register the extension_version() function with DuckDB.
    if (duckdb_register_scalar_function(conn, ver_func) == DuckDBError) {
        access->set_error(info, "Failed to register extension_version function");
        duckdb_destroy_scalar_function(&ver_func);
        return false;
    }

    duckdb_destroy_scalar_function(&ver_func);
    return true;
}
