// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiSystemRuntimeInfo`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-system-runtime-info.so.0`.
///
/// System / Runtime information.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_system_runtime_info;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief        Frees an app usage handle.
/// @since_tizen  4.0
///
/// Parameter handle  App usage handle to free
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_app_usage_destroy(
  app_usage_h handle,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_app_usage_destroy(
      handle,
    );

/// @brief        Gets the app ID from an app usage handle.
/// @since_tizen  4.0
///
/// @remarks  You must release @a appid using free().
///
/// Parameter  handle  The app usage handle
/// Parameter  index   The index in the app list; should be between 0 and @a count - 1 (inclusive), \n
/// where @a count is provided by runtime_info_app_usage_get_count()
/// Output parameter appid   The app ID
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @see  runtime_info_get_all_apps_memory_usage()
/// @see  runtime_info_get_all_apps_cpu_rate()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_app_usage_get_appid(
  app_usage_h handle,
  int index,
  ffi.Pointer<ffi.Pointer<ffi.Char>> appid,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_app_usage_get_appid(
      handle,
      index,
      appid,
    );

/// @brief        Gets the app count from an app usage handle.
/// @since_tizen  4.0
///
/// Parameter  handle  The app usage handle
/// Output parameter count   The number of apps on the app list
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @see  runtime_info_get_all_apps_memory_usage()
/// @see  runtime_info_get_all_apps_cpu_rate()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_app_usage_get_count(
  app_usage_h handle,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_app_usage_get_count(
      handle,
      count,
    );

/// @brief        Gets resource usage from an app usage handle.
/// @since_tizen  4.0
///
/// @remarks  The meaning of @a usage depends on which function was used to create @a handle.
///
/// Parameter  handle  The app usage handle
/// Parameter  index   The index in the app list; should be between 0 and @a count - 1 (inclusive), \n
/// where @a count is provided by runtime_info_app_usage_get_count()
/// Output parameter usage   Resource usage
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @see  runtime_info_get_all_apps_memory_usage()
/// @see  runtime_info_get_all_apps_cpu_rate()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_app_usage_get_usage(
  app_usage_h handle,
  int index,
  ffi.Pointer<ffi.UnsignedInt> usage,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_app_usage_get_usage(
      handle,
      index,
      usage,
    );

/// @brief        Gets CPU rate of all apps.
/// @since_tizen  4.0
///
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/systemmonitor
/// @remarks    You must release @a rate using runtime_info_app_usage_destroy().
///
/// Output parameter rate  An array of each app's CPU usage rate (%), the values are rounded down.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_OUT_OF_MEMORY      Not able to allocate memory (for output param/other operations)
/// @retval #RUNTIME_INFO_ERROR_REMOTE_IO          Call to resource daemon failed (dbus errors/resource daemon errors)
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An I/O error during dbus message operations
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  Process not authorized to request app usage info
/// @retval #RUNTIME_INFO_ERROR_NO_DATA            No app running
///
/// @code
/// #include <runtime_info.h>
///
/// void print_cpu_usage(void)
/// {
/// int i;
/// int count;
/// app_usage_h cpu_rate_handle;
/// char *appid;
/// unsigned int rate;
///
/// runtime_info_get_all_apps_cpu_rate(&cpu_rate_handle);
/// runtime_info_app_usage_get_count(cpu_rate_handle, &count);
///
/// for (i = 0; i < count; i++) {
/// runtime_info_app_usage_get_appid(cpu_rate_handle, i, &appid);
/// runtime_info_app_usage_get_usage(cpu_rate_handle, i, &rate);
/// printf("appid = %s, rate = %u %%\n", appid, rate);
/// free(appid);
/// }
///
/// runtime_info_app_usage_destroy(cpu_rate_handle);
///
/// }
/// @endcode
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_all_apps_cpu_rate(
  ffi.Pointer<app_usage_h> rate,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_all_apps_cpu_rate(
      rate,
    );

/// @brief        Gets memory usage of all apps.
/// @since_tizen  4.0
///
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/systemmonitor
/// @remarks    You must release @a usage using runtime_info_app_usage_destroy().
///
/// Output parameter usage  An array of each app's memory usage (KB)
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_OUT_OF_MEMORY      Not able to allocate memory (for output param/other operations)
/// @retval #RUNTIME_INFO_ERROR_REMOTE_IO          Call to resource daemon failed (dbus errors/resource daemon errors)
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An I/O error during dbus message operations
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  Process not authorized to request app usage info
/// @retval #RUNTIME_INFO_ERROR_NO_DATA            No app running
///
/// @code
/// #include <runtime_info.h>
///
/// void print_memory_usage(void)
/// {
/// int i;
/// int count;
/// app_usage_h mem_usage_handle;
/// char *appid;
/// unsigned int usage;
///
/// runtime_info_get_all_apps_memory_usage(&mem_usage_handle);
/// runtime_info_app_usage_get_count(mem_usage_handle, &count);
///
/// for (i = 0; i < count; i++) {
/// runtime_info_app_usage_get_appid(mem_usage_handle, i, &appid);
/// runtime_info_app_usage_get_usage(mem_usage_handle, i, &usage);
/// printf("appid = %s, usage = %u KB\n", appid, usage);
/// free(appid);
/// }
///
/// runtime_info_app_usage_destroy(mem_usage_handle);
///
/// }
/// @endcode
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_all_apps_memory_usage(
  ffi.Pointer<app_usage_h> usage,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_all_apps_memory_usage(
      usage,
    );

/// @brief        Gets CPU information.
/// @since_tizen  @if WEARABLE 3.0 @else 2.4 @endif
///
/// Output parameter usage  The CPU usage structure
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An input/output error occurred while reading from system
///
/// @see  runtime_info_get_process_cpu_usage()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_cpu_usage(
  ffi.Pointer<runtime_cpu_usage_s> usage,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_cpu_usage(
      usage,
    );

/// @brief        Gets the physical memory size.
/// @since_tizen  4.0
///
/// Output parameter size  Physical memory size (KiB)
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An I/O error occurred (during file open operation)
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_physical_memory_size(
  ffi.Pointer<ffi.Int> size,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_physical_memory_size(
      size,
    );

/// @brief        Gets CPU usage per process.
/// @since_tizen  @if WEARABLE 3.0 @else 2.4 @endif
///
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/systemmonitor
/// @remarks    You must release @a s value using free(). \n
/// The size of @a s is the same with @a size.
///
/// Parameter  pid   The process unique id array
/// Parameter  size  The size of pid array
/// Output parameter usage The CPU usage structure array of the processes
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_OUT_OF_MEMORY      Not able to allocate memory (for output param/other operations)
/// @retval #RUNTIME_INFO_ERROR_REMOTE_IO          Call to resource daemon failed (dbus errors/resource daemon errors)
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An I/O error occurred (during dbus message operations/other IO operations)
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  Process not authorized to request process usage info
///
/// @see  runtime_info_get_cpu_usage()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_process_cpu_usage(
  ffi.Pointer<ffi.Int> pid,
  int size,
  ffi.Pointer<ffi.Pointer<process_cpu_usage_s>> usage,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_process_cpu_usage(
      pid,
      size,
      usage,
    );

/// @brief        Gets memory information per process.
/// @since_tizen  @if WEARABLE 3.0 @else 2.4 @endif
///
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/systemmonitor
/// @remarks    You must release @a s value using free(). \n
/// The size of @a s is the same with @a size.
///
/// Parameter  pid   The process unique id array
/// Parameter  size  The size of pid array
/// Output parameter info  The memory information structure array of the processes
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_OUT_OF_MEMORY      Not able to allocate memory (for output param/other operations)
/// @retval #RUNTIME_INFO_ERROR_REMOTE_IO          Call to resource daemon failed (dbus errors/resource daemon errors)
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An I/O error during dbus message operations
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  Process not authorized to request process usage info
///
/// @see  runtime_info_get_system_memory_info()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_process_memory_info(
  ffi.Pointer<ffi.Int> pid,
  int size,
  ffi.Pointer<ffi.Pointer<process_memory_info_s>> info,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_process_memory_info(
      pid,
      size,
      info,
    );

/// @brief        Gets the number of processors.
/// @since_tizen  3.0
///
/// Output parameter num_core  The number of whole processors
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An I/O error occurred (during file open operation)
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_processor_count(
  ffi.Pointer<ffi.Int> num_core,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_processor_count(
      num_core,
    );

/// @brief        Gets the current frequency of processor.
/// @since_tizen  3.0
///
/// Parameter  core_idx  The index (from 0) of CPU core that you want to know the frequency
/// Output parameter cpu_freq  The current frequency(MHz) of processor
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An I/O error occurred (during file open operation)
/// @retval #RUNTIME_INFO_ERROR_NO_DATA            No data available (Since 3.0)
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_processor_current_frequency(
  int core_idx,
  ffi.Pointer<ffi.Int> cpu_freq,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_processor_current_frequency(
      core_idx,
      cpu_freq,
    );

/// @brief        Gets the max frequency of processor.
/// @since_tizen  3.0
///
/// Parameter  core_idx  The index (from 0) of CPU core that you want to know the frequency
/// Output parameter cpu_freq  The max frequency(MHz) of processor
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An I/O error occurred (during file open operation)
/// @retval #RUNTIME_INFO_ERROR_NO_DATA            No data available (Since 3.0)
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_processor_max_frequency(
  int core_idx,
  ffi.Pointer<ffi.Int> cpu_freq,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_processor_max_frequency(
      core_idx,
      cpu_freq,
    );

/// @brief        Gets system memory information.
/// @since_tizen  @if WEARABLE 3.0 @else 2.4 @endif
///
/// Output parameter info  The system memory information structure
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An Input/Output error occurred while reading from system
///
/// @see  runtime_info_get_process_memory_info()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_system_memory_info(
  ffi.Pointer<runtime_memory_info_s> info,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_system_memory_info(
      info,
    );

/// @brief        Gets the boolean value from the runtime information.
/// @details      This function gets current state of the given key which represents specific runtime information.
/// @since_tizen  @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter  key    The runtime information key from which data should be read
/// Output parameter value  The current value of the given key
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An input/output error occurred when read value from system
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  No permission to use the api
/// @retval #RUNTIME_INFO_ERROR_NOT_SUPPORTED      Not supported parameter
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_value_bool(
  int key,
  ffi.Pointer<ffi.Bool> value,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_value_bool(
      key,
      value,
    );

/// @brief        Gets the double value from the runtime information.
/// @details      This function gets current state of the given key which represents specific runtime information.
/// @since_tizen  @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter  key    The runtime information key from which data should be read
/// Output parameter value  The current value of the given key
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An input/output error occurred when read value from system
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  No permission to use the api
/// @retval #RUNTIME_INFO_ERROR_NOT_SUPPORTED      Not supported parameter
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_value_double(
  int key,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_value_double(
      key,
      value,
    );

/// @brief        Gets the integer value of the runtime information.
/// @details      This function gets current state of the given key which represents specific runtime information.
/// @since_tizen  @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter  key    The runtime information status key from which data should be read
/// Output parameter value  The current value of the given key
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An input/output error occurred when read value from system
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  No permission to use the api
/// @retval #RUNTIME_INFO_ERROR_NOT_SUPPORTED      Not supported parameter
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_value_int(
  int key,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_value_int(
      key,
      value,
    );

/// @brief        Gets the string value for specified runtime information.
/// @details      This function gets current state of the given key which represents specific runtime information.
/// @since_tizen  @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @remarks  You must release @a value using free().
///
/// Parameter  key    The runtime information key from which data should be read
/// Output parameter value  The current value of the given key
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_IO_ERROR           An input/output error occurred when read value from system
/// @retval #RUNTIME_INFO_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  No permission to use the api
/// @retval #RUNTIME_INFO_ERROR_NOT_SUPPORTED      Not supported parameter
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_get_value_string(
  int key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_get_value_string(
      key,
      value,
    );

/// @brief        Registers a change event callback for given runtime information key.
/// @since_tizen  @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter key        The runtime information type
/// Parameter callback   The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #RUNTIME_INFO_ERROR_PERMISSION_DENIED  No permission to use the api
/// @retval #RUNTIME_INFO_ERROR_NOT_SUPPORTED      Not supported parameter
///
/// @post  runtime_info_changed_cb() will be invoked.
/// @see   runtime_info_unset_changed_cb()
/// @see   runtime_info_changed_cb()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_set_changed_cb(
  int key,
  runtime_info_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_set_changed_cb(
      key,
      callback,
      user_data,
    );

/// @brief        Unregisters the callback function.
/// @since_tizen  @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter key  The runtime information type
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #RUNTIME_INFO_ERROR_NONE               Successful
/// @retval #RUNTIME_INFO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @see  runtime_info_set_changed_cb()
///
/// Module getter: `tizenCapiSystemRuntimeInfo`.
int runtime_info_unset_changed_cb(
  int key,
) =>
    tizenCapiSystemRuntimeInfo.runtime_info_unset_changed_cb(
      key,
    );

