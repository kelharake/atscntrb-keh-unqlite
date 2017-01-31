//                                                                             
// https://unqlite.org/c_api_func.html                                         
// https://www.unqlite.org/arch.html                                           
//                                                                             

%{#

#ifndef ATSCNTRB_KEH_UNQLITE_SATS
#define ATSCNTRB_KEH_UNQLITE_SATS
#include <unqlite.h>

int ats2unqlite_kv_fetch_callback(unqlite *pDb,void *pKey, int nKeyLen, int (*xConsumer)(void *,unsigned int,void *),void *pUserData) {
  return unqlite_kv_fetch_callback(pDb, (const void *)pKey, nKeyLen, (int(*)(const void *,unsigned int,void *))xConsumer,pUserData);
}

char *ats2unqlite_lib_version(void) {
  return (char*)unqlite_lib_version();
}

char *ats2unqlite_lib_signature(void) {
  return (char*)unqlite_lib_signature();
}

char *ats2unqlite_lib_ident(void) {
  return (char*)unqlite_lib_ident();
}

char *ats2copyright(void) {
  return (char*)unqlite_lib_copyright();
}

#endif

%}

typedef unqlite_int64               = lint
typedef unqlite_imode               = int
macdef UNQLITE_OPEN_READONLY        = $extval(unqlite_imode, "UNQLITE_OPEN_READONLY")
macdef UNQLITE_OPEN_READWRITE       = $extval(unqlite_imode, "UNQLITE_OPEN_READWRITE")
macdef UNQLITE_OPEN_CREATE          = $extval(unqlite_imode, "UNQLITE_OPEN_CREATE")
macdef UNQLITE_OPEN_EXCLUSIVE       = $extval(unqlite_imode, "UNQLITE_OPEN_EXCLUSIVE")
macdef UNQLITE_OPEN_TEMP_DB         = $extval(unqlite_imode, "UNQLITE_OPEN_TEMP_DB")
macdef UNQLITE_OPEN_NOMUTEX         = $extval(unqlite_imode, "UNQLITE_OPEN_NOMUTEX")
macdef UNQLITE_OPEN_OMIT_JOURNALING = $extval(unqlite_imode, "UNQLITE_OPEN_OMIT_JOURNALING")
macdef UNQLITE_OPEN_IN_MEMORY       = $extval(unqlite_imode, "UNQLITE_OPEN_IN_MEMORY")
macdef UNQLITE_OPEN_MMAP            = $extval(unqlite_imode, "UNQLITE_OPEN_MMAP")

typedef unqlite_return_value         = int
macdef UNQLITE_OK                   = $extval(unqlite_return_value, "UNQLITE_OK")
macdef UNQLITE_NOMEM                = $extval(unqlite_return_value, "UNQLITE_NOMEM")
macdef UNQLITE_ABORT                = $extval(unqlite_return_value, "UNQLITE_ABORT")
macdef UNQLITE_IOERR                = $extval(unqlite_return_value, "UNQLITE_IOERR")
macdef UNQLITE_CORRUPT              = $extval(unqlite_return_value, "UNQLITE_CORRUPT")
macdef UNQLITE_LOCKED               = $extval(unqlite_return_value, "UNQLITE_LOCKED")
macdef UNQLITE_BUSY	                = $extval(unqlite_return_value, "UNQLITE_BUSY")
macdef UNQLITE_DONE	                = $extval(unqlite_return_value, "UNQLITE_DONE")
macdef UNQLITE_PERM                 = $extval(unqlite_return_value, "UNQLITE_PERM")
macdef UNQLITE_NOTIMPLEMENTED       = $extval(unqlite_return_value, "UNQLITE_NOTIMPLEMENTED")
macdef UNQLITE_NOTFOUND             = $extval(unqlite_return_value, "UNQLITE_NOTFOUND")
macdef UNQLITE_NOOP                 = $extval(unqlite_return_value, "UNQLITE_NOOP")
macdef UNQLITE_INVALID              = $extval(unqlite_return_value, "UNQLITE_INVALID")
macdef UNQLITE_EOF                  = $extval(unqlite_return_value, "UNQLITE_EOF")
macdef UNQLITE_UNKNOWN              = $extval(unqlite_return_value, "UNQLITE_UNKNOWN")
macdef UNQLITE_LIMIT                = $extval(unqlite_return_value, "UNQLITE_LIMIT")
macdef UNQLITE_EXISTS               = $extval(unqlite_return_value, "UNQLITE_EXISTS")
macdef UNQLITE_EMPTY                = $extval(unqlite_return_value, "UNQLITE_EMPTY")
macdef UNQLITE_COMPILE_ERR          = $extval(unqlite_return_value, "UNQLITE_COMPILE_ERR")
macdef UNQLITE_VM_ERR               = $extval(unqlite_return_value, "UNQLITE_VM_ERR")
macdef UNQLITE_FULL                 = $extval(unqlite_return_value, "UNQLITE_FULL")
macdef UNQLITE_CANTOPEN             = $extval(unqlite_return_value, "UNQLITE_CANTOPEN")
macdef UNQLITE_READ_ONLY            = $extval(unqlite_return_value, "UNQLITE_READ_ONLY")
macdef UNQLITE_LOCKERR              = $extval(unqlite_return_value, "UNQLITE_LOCKERR")

typedef unqlite_config_command = int
macdef UNQLITE_CONFIG_JX9_ERR_LOG         = $extval(unqlite_config_command, "UNQLITE_CONFIG_JX9_ERR_LOG")
macdef UNQLITE_CONFIG_MAX_PAGE_CACHE      = $extval(unqlite_config_command, "UNQLITE_CONFIG_MAX_PAGE_CACHE")
macdef UNQLITE_CONFIG_ERR_LOG             = $extval(unqlite_config_command, "UNQLITE_CONFIG_ERR_LOG")
macdef UNQLITE_CONFIG_KV_ENGINE           = $extval(unqlite_config_command, "UNQLITE_CONFIG_KV_ENGINE")
macdef UNQLITE_CONFIG_DISABLE_AUTO_COMMIT = $extval(unqlite_config_command, "UNQLITE_CONFIG_DISABLE_AUTO_COMMIT")
macdef UNQLITE_CONFIG_GET_KV_NAME         = $extval(unqlite_config_command, "UNQLITE_CONFIG_GET_KV_NAME")

typedef unqlite_vm_config_command = int
macdef UNQLITE_VM_CONFIG_OUTPUT           = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_OUTPUT")
macdef UNQLITE_VM_CONFIG_IMPORT_PATH      = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_IMPORT_PATH")
macdef UNQLITE_VM_CONFIG_ERR_REPORT       = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_ERR_REPORT")
macdef UNQLITE_VM_CONFIG_RECURSION_DEPTH  = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_RECURSION_DEPTH")
macdef UNQLITE_VM_OUTPUT_LENGTH           = $extval(unqlite_vm_config_command, "UNQLITE_VM_OUTPUT_LENGTH")
macdef UNQLITE_VM_CONFIG_CREATE_VAR       = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_CREATE_VAR")
macdef UNQLITE_VM_CONFIG_HTTP_REQUEST     = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_HTTP_REQUEST")
macdef UNQLITE_VM_CONFIG_SERVER_ATTR      = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_SERVER_ATTR")
macdef UNQLITE_VM_CONFIG_ENV_ATTR         = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_ENV_ATTR")
macdef UNQLITE_VM_CONFIG_EXEC_VALUE       = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_EXEC_VALUE")
macdef UNQLITE_VM_CONFIG_IO_STREAM        = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_IO_STREAM")
macdef UNQLITE_VM_CONFIG_ARGV_ENTRY       = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_ARGV_ENTRY")
macdef UNQLITE_VM_CONFIG_EXTRACT_OUTPUT   = $extval(unqlite_vm_config_command, "UNQLITE_VM_CONFIG_EXTRACT_OUTPUT")

typedef unqlite_kv_config_command = int
macdef UNQLITE_KV_CONFIG_HASH_FUNC        = $extval(unqlite_kv_config_command, "UNQLITE_KV_CONFIG_HASH_FUNC")
macdef UNQLITE_KV_CONFIG_CMP_FUNC         = $extval(unqlite_kv_config_command, "UNQLITE_KV_CONFIG_CMP_FUNC")

typedef unqlite_lib_config_command = int
macdef UNQLITE_LIB_CONFIG_USER_MALLOC         = $extval(unqlite_lib_config_command, "UNQLITE_LIB_CONFIG_USER_MALLOC") 
macdef UNQLITE_LIB_CONFIG_MEM_ERR_CALLBACK    = $extval(unqlite_lib_config_command, "UNQLITE_LIB_CONFIG_MEM_ERR_CALLBACK") 
macdef UNQLITE_LIB_CONFIG_USER_MUTEX          = $extval(unqlite_lib_config_command, "UNQLITE_LIB_CONFIG_USER_MUTEX") 
macdef UNQLITE_LIB_CONFIG_THREAD_LEVEL_SINGLE = $extval(unqlite_lib_config_command, "UNQLITE_LIB_CONFIG_THREAD_LEVEL_SINGLE") 
macdef UNQLITE_LIB_CONFIG_THREAD_LEVEL_MULTI  = $extval(unqlite_lib_config_command, "UNQLITE_LIB_CONFIG_THREAD_LEVEL_MULTI") 
macdef UNQLITE_LIB_CONFIG_VFS                 = $extval(unqlite_lib_config_command, "UNQLITE_LIB_CONFIG_VFS") 
macdef UNQLITE_LIB_CONFIG_STORAGE_ENGINE      = $extval(unqlite_lib_config_command, "UNQLITE_LIB_CONFIG_STORAGE_ENGINE") 
macdef UNQLITE_LIB_CONFIG_PAGE_SIZE           = $extval(unqlite_lib_config_command, "UNQLITE_LIB_CONFIG_PAGE_SIZE") 

typedef unqlite_synchronization_flag = int
macdef UNQLITE_SYNC_NORMAL        = $extval(unqlite_synchronization_flag, "UNQLITE_SYNC_NORMAL")
macdef UNQLITE_SYNC_FULL          = $extval(unqlite_synchronization_flag, "UNQLITE_SYNC_FULL")
macdef UNQLITE_SYNC_DATAONLY      = $extval(unqlite_synchronization_flag, "UNQLITE_SYNC_DATAONLY")

typedef unqlite_locking_level = int
macdef UNQLITE_LOCK_NONE          = $extval(unqlite_locking_level, "UNQLITE_LOCK_NONE")
macdef UNQLITE_LOCK_SHARED        = $extval(unqlite_locking_level, "UNQLITE_LOCK_SHARED")
macdef UNQLITE_LOCK_RESERVED      = $extval(unqlite_locking_level, "UNQLITE_LOCK_RESERVED")
macdef UNQLITE_LOCK_PENDING       = $extval(unqlite_locking_level, "UNQLITE_LOCK_PENDING")
macdef UNQLITE_LOCK_EXCLUSIVE     = $extval(unqlite_locking_level, "UNQLITE_LOCK_EXCLUSIVE")

typedef unqlite_access_method = int
macdef UNQLITE_ACCESS_EXISTS    = $extval(unqlite_access_method, "UNQLITE_ACCESS_EXISTS")
macdef UNQLITE_ACCESS_READWRITE = $extval(unqlite_access_method, "UNQLITE_ACCESS_READWRITE")
macdef UNQLITE_ACCESS_READ      = $extval(unqlite_access_method, "UNQLITE_ACCESS_READ")

typedef unqlite_seek_position = int
macdef UNQLITE_CURSOR_MATCH_EXACT  = $extval(unqlite_seek_position, "UNQLITE_CURSOR_MATCH_EXACT")
macdef UNQLITE_CURSOR_MATCH_LE     = $extval(unqlite_seek_position, "UNQLITE_CURSOR_MATCH_LE")
macdef UNQLITE_CURSOR_MATCH_GE     = $extval(unqlite_seek_position, "UNQLITE_CURSOR_MATCH_GE")

macdef UNQLITE_JOURNAL_FILE_SUFFIX = $extval(string, "UNQLITE_JOURNAL_FILE_SUFFIX")

typedef unqlite_ctx_error_level = int
macdef UNQLITE_CTX_ERR          = $extval(unqlite_ctx_error_level, "UNQLITE_CTX_ERR")
macdef UNQLITE_CTX_WARNING      = $extval(unqlite_ctx_error_level, "UNQLITE_CTX_WARNING")
macdef UNQLITE_CTX_NOTICE       = $extval(unqlite_ctx_error_level, "UNQLITE_CTX_NOTICE")

viewtypedef unqlite                 = $extype"struct unqlite"
viewtypedef unqlite_ptr             = $extype"struct unqlite*"
viewtypedef unqlite_vm              = $extype"unqlite_vm"
viewtypedef unqlite_vm_ptr          = $extype"unqlite_vm*"
viewtypedef unqlite_value           = $extype"unqlite_value"
viewtypedef unqlite_value_ptr       = $extype"unqlite_value*"
viewtypedef unqlite_context         = $extype"unqlite_context"
viewtypedef unqlite_context_ptr     = $extype"unqlite_context*"
viewtypedef unqlite_kv_cursor       = $extype"unqlite_kv_cursor"
viewtypedef unqlite_kv_cursor_ptr   = $extype"unqlite_kv_cursor*"

typedef unqlite_consumer_callback   = (string, uint, ptr) -> int
typedef unqlite_foreign_callback    = [argc: nat] (unqlite_context_ptr, int argc, @[unqlite_value_ptr][argc]) -> int
typedef unqlite_expand_callback     = (!unqlite_value_ptr, ptr) -> void
typedef unqlite_walk_callback       = (!unqlite_value_ptr, !unqlite_value_ptr, ptr) -> void

// Database Engine Handle                                                      
// =========================================================================== 
fun
  unqlite_open
  (&unqlite_ptr? >> unqlite_ptr, string, unqlite_imode):
  int
  = "mac#unqlite_open"

fun
  unqlite_close
  (unqlite_ptr):
  int
  = "mac#unqlite_close"

// Key/Value Store Interface                                                   
// =========================================================================== 
// https://www.unqlite.org/c_api/unqlite_kv_store.html                         
fun
  unqlite_kv_store
  (!unqlite_ptr, string, int, ptr, unqlite_int64):
  int
  = "mac#unqlite_kv_store" 

fun 
  unqlite_kv_append
  (!unqlite_ptr, string, int, ptr, unqlite_int64):
  int
  = "mac#unqlite_kv_append" 

fun
  unqlite_kv_fetch
  (!unqlite, string, int, ptr, &unqlite_int64):
  int
  = "mac#unqlite_kv_fetch"

fun
  unqlite_kv_fetch_callback
  (!unqlite_ptr, string, int, unqlite_consumer_callback, ptr):
  int
  = "mac#ats2unqlite_kv_fetch_callback"

fun
  unqlite_kv_delete
  (!unqlite_ptr, int):
  int
  = "mac#unqlite_kv_delete"

// Document Store (JSON via Jx9) Interfaces	                                   
// =========================================================================== 
fun
  unqlite_compile
  (!unqlite_ptr, string, int, &unqlite_vm_ptr):
  int
  = "mac#unqlite_compile"

fun
  unqlite_compile_file
  (!unqlite_ptr, string, &unqlite_vm_ptr):
  int
  = "mac#unqlite_compile_file"

fun
  unqlite_vm_exec
  (&unqlite_vm):
  int
  = "mac#unqlite_vm_exec"

fun
  unqlite_vm_reset
  (!unqlite_vm_ptr):
  int
  = "mac#unqlite_vm_reset"

fun
  unqlite_vm_release
  (unqlite_vm_ptr):
  int
  = "mac#unqlite_vm_release"

fun
  unqlite_vm_extract_variable
  (!unqlite_vm_ptr, string):
  unqlite_value_ptr
  = "mac#unqlite_vm_extract_variable"

fun
  unqlite_vm_dump
  (!unqlite_vm_ptr, unqlite_consumer_callback, ptr):
  int
  = "mac#unqlite_vm_extract_variable"


// Cursor Iterator Interfaces                                                  
// =========================================================================== 
fun
  unqlite_kv_cursor_init
  (!unqlite_ptr, &unqlite_kv_cursor_ptr? >> unqlite_kv_cursor_ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_release
  (!unqlite_ptr, unqlite_kv_cursor_ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_reset
  (!unqlite_kv_cursor_ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_seek
  (unqlite_kv_cursor_ptr, string, int, int):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_first_entry
  (!unqlite_kv_cursor_ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_last_entry
  (!unqlite_kv_cursor_ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_valid_entry
  (!unqlite_kv_cursor_ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_next_entry
  (!unqlite_kv_cursor_ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_prev_entry
  (!unqlite_kv_cursor_ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_key
  (!unqlite_kv_cursor_ptr, ptr, &int):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_key_callback
  (!unqlite_kv_cursor_ptr, unqlite_consumer_callback, ptr):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_data
  (!unqlite_kv_cursor_ptr, ptr, &unqlite_int64):
  int
  = "mac#%"

fun
  unqlite_kv_cursor_data_callback
  (!unqlite_kv_cursor_ptr, unqlite_consumer_callback, ptr):
  int
  = "mac#%"
  
fun
  unqlite_kv_cursor_delete_entry
  (!unqlite_kv_cursor_ptr):
  int
  = "mac#%"

// Manual Transaction Manager                                                  
// =========================================================================== 
fun
  unqlite_begin
  (unqlite_ptr):
  int
  = "mac#unqlite_begin"

fun
  unqlite_commit
  (unqlite_ptr):
  int
  = "mac#unqlite_commit"

fun
  unqlite_rollback
  (unqlite_ptr):
  int
  = "mac#unqlite_rollback"

// Utility Interfaces                                                          
// =========================================================================== 
viewtypedef mmaped_file = ptr

fun
  unqlite_util_load_mmaped_file
  (string, &mmaped_file? >> mmaped_file, &unqlite_int64):
  int
  = "mac#unqlite_util_load_mmaped_file"

fun
  unqlite_util_release_mmaped_file
  (string, mmaped_file, unqlite_int64):
  int
  = "mac#unqlite_util_release_mmaped_file"

fun
  unqlite_util_random_string
  (!unqlite_ptr, string, uint):
  int
  = "mac#unqlite_util_random_string"

fun
  unqlite_util_random_num
  (!unqlite_ptr):
  uint
  = "mac#unqlite_util_random_num"

// In-process Extending Interfaces                                             
// =========================================================================== 
fun
  unqlite_create_callback
  (!unqlite_vm_ptr, string, unqlite_foreign_callback, ptr):
  int
  = "mac#unqlite_create_callback"

fun
  unqlite_delete_callback
  (!unqlite_vm_ptr, string):
  int
  = "mac#unqlite_delete_callback"

fun
  unqlite_create_constant
  (unqlite_vm_ptr, string, unqlite_expand_callback, ptr):
  ptr
  = "mac#unqlite_create_constant"

fun
  unqlite_delete_constant
  (unqlite_vm_ptr, string):
  int
  = "mac#unqlite_delete_constant"

// On Demand Object Allocation Interfaces                                      
// =========================================================================== 
fun
  unqlite_vm_new_scalar
  (!unqlite_vm_ptr):
  unqlite_value_ptr
  = "mac#unqlite_vm_new_scalar"

fun
  unqlite_vm_new_array
  (!unqlite_vm_ptr):
  unqlite_value_ptr
  = "mac#unqlite_vm_new_array"

fun
  unqlite_vm_release_value
  (!unqlite_vm_ptr, unqlite_value_ptr):
  int
  = "mac#unqlite_vm_release_value"

fun
  unqlite_context_new_scalar
  (!unqlite_context_ptr):
  unqlite_value_ptr
  = "mac#unqlite_context_new_scalar"

fun
  unqlite_context_new_array
  (!unqlite_context_ptr):
  unqlite_value_ptr
  = "mac#unqlite_context_new_array"

fun
  unqlite_context_release_value
  (!unqlite_context_ptr, unqlite_value_ptr):
  void
  = "mac#unqlite_context_release_value"


// Obtaining Object Values                                                     
// =========================================================================== 
fun
  unqlite_value_to_bool
  (!unqlite_value_ptr):
  int
  = "mac#unqlite_value_to_bool"

fun
  unqlite_value_to_int64
  (!unqlite_value_ptr):
  unqlite_int64
  = "mac#unqlite_value_to_int64"

fun
  unqlite_value_to_double
  (!unqlite_value_ptr):
  double
  = "mac#unqlite_value_to_double"

fun
  unqlite_value_to_string
  (!unqlite_value_ptr, &int? >> int):
  vStrptr0
  = "mac#unqlite_value_to_string"

fun
  unqlite_value_to_resource
  (!unqlite_value_ptr):
  ptr
  = "mac#unqlite_value_to_resource"

fun
  unqlite_value_compare
  (!unqlite_value_ptr, !unqlite_value_ptr, int):
  int
  = "mac#unqlite_value_compare"

// Setting The Result Of A Foreign Function                                    
// =========================================================================== 
fun
  unqlite_result_int
  (&unqlite_context, int):
  int
  = "mac#unqlite_result_int"

fun
  unqlite_result_int64
  (&unqlite_context, unqlite_int64):
  int
  = "mac#unqlite_result_int64"

fun
  unqlite_result_bool
  (&unqlite_context, bool):
  int
  = "mac#unqlite_result_bool"

fun
  unqlite_result_double
  (&unqlite_context, double):
  int
  = "mac#unqlite_result_double"

fun
  unqlite_result_null
  (&unqlite_context):
  int
  = "mac#unqlite_result_null"

fun
  unqlite_result_string
  (&unqlite_context, string, int):
  int
  = "mac#unqlite_result_string"

fun
  unqlite_result_value
  (&unqlite_context, &unqlite_value):
  int
  = "mac#unqlite_result_value"

fun
  unqlite_result_resource
  (&unqlite_context, ptr):
  int
  = "mac#unqlite_result_resource"

// Call Context handling Interfaces                                            
// =========================================================================== 
fun
  unqlite_context_output
  (!unqlite_context_ptr, string, int):
  int
  = "mac#%"

fun
  unqlite_context_output
  (!unqlite_context_ptr, int, string):
  int
  = "mac#%"

fun
  unqlite_context_user_data
  (!unqlite_context_ptr):
  ptr
  = "mac#%"

fun
  unqlite_context_random_num
  (!unqlite_context_ptr):
  uint 
  = "mac#%"


fun
  unqlite_context_push_aux_data
  (!unqlite_context_ptr, ptr):
  int
  = "mac#%"

fun
  unqlite_context_peek_aux_data
  (!unqlite_context_ptr):
  ptr
  = "mac#%"

fun
  unqlite_context_pop_aux_data
  (!unqlite_context_ptr):
  ptr
  = "mac#%"


fun
  unqlite_context_result_buf_length
  (!unqlite_context_ptr):
  uint
  = "mac#%"

fun
  unqlite_function_name
  (unqlite_context_ptr):
  string
  = "mac#%"

// JSON Arrays/Objects Management Interfaces                                   
// =========================================================================== 
fun
  unqlite_array_walk
  (unqlite_value_ptr, unqlite_walk_callback, ptr):
  int
  = "mac#unqlite_array_walk"

fun
  unqlite_array_fetch
  (!unqlite_value_ptr, string, int):
  unqlite_value_ptr
  = "mac#unqlite_array_fetch"

fun
  unqlite_array_add_elem
  (!unqlite_value_ptr, !unqlite_value_ptr, !unqlite_value_ptr):
  int
  = "mac#unqlite_array_add_elem"

fun
  unqlite_array_add_strkey_elem
  (!unqlite_value_ptr, string, !unqlite_value_ptr):
  int
  = "mac#unqlite_array_add_strkey_elem"

// Dynamically Typed Object                                                    
// =========================================================================== 
fun
  unqlite_value_is_int
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_int"
  
fun
  unqlite_value_is_float
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_float"

fun
  unqlite_value_is_bool
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_bool"

fun
  unqlite_value_is_string
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_string"

fun
  unqlite_value_is_null
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_null"

fun
  unqlite_value_is_numeric
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_numeric"

fun
  unqlite_value_is_callable
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_callable"

fun
  unqlite_value_is_scalar
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_scalar"

fun
  unqlite_value_is_json_array
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_json_array"

fun
  unqlite_value_is_json_object
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_json_object"

fun
  unqlite_value_is_resource
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_resource"

fun
  unqlite_value_is_empty
  (!unqlite_value_ptr):
  bool 
  = "mac#unqlite_value_is_empty"


// Populating Dynamically Typed Object                                         
// =========================================================================== 
fun
  unqlite_value_int
  (!unqlite_value_ptr, int):
  int
  = "mac#unqlite_value_int"

fun
  unqlite_value_int64
  (!unqlite_value_ptr, unqlite_int64):
  int
  = "mac#unqlite_value_int64"
  
fun
  unqlite_value_bool
  (!unqlite_value_ptr, bool):
  int
  = "mac#unqlite_value_bool"

fun
  unqlite_value_null
  (!unqlite_value_ptr):
  int
  = "mac#unqlite_value_null"

fun
  unqlite_value_double
  (!unqlite_value_ptr, double):
  int
  = "mac#unqlite_value_double"

fun
  unqlite_value_string
  (!unqlite_value_ptr, string, int):
  int
  = "mac#unqlite_value_string"

fun
  unqlite_value_reset_string_cursor
  (!unqlite_value_ptr):
  int
  = "mac#unqlite_value_reset_string_cursor"

fun
  unqlite_value_resource
  (!unqlite_value_ptr, ptr):
  int
  = "mac#unqlite_value_resource"

// Call Context Memory Management Interfaces                                   
// =========================================================================== 
fun
  unqlite_context_alloc_chunk
  (!unqlite_context_ptr, size_t, int, int):
  ptr
  = "mac#unqlite_context_alloc_chunk"

fun
  unqlite_context_realloc_chunk
  (!unqlite_context_ptr, ptr, size_t):
  ptr
  = "mac#unqlite_context_realloc_chunk"

fun
  unqlite_context_free_chunk
  (!unqlite_context_ptr, ptr):
  void
  = "mac#unqlite_context_free_chunk"


// Global Library Management Interfaces                                        
// =========================================================================== 
fun
  unqlite_lib_init
  ():
  int
  = "mac#unqlite_lib_init"

fun
  unqlite_lib_shutdown
  ():
  int
  = "mac#unqlite_lib_shutdown"

fun
  unqlite_lib_is_threadsafe
  ():
  int
  = "mac#unqlite_lib_is_threadsafe"

fun
  unqlite_lib_version
  ():
  string
  = "mac#ats2unqlite_lib_version"

fun
  unqlite_lib_signature
  ():
  string
  = "mac#ats2unqlite_lib_signature"

fun
  unqlite_lib_ident
  ():
  string
  = "mac#ats2unqlite_lib_ident"

fun
  unqlite_lib_copyright
  ():
  string
  = "mac#ats2unqlite_lib_copyright"


