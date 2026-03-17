// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwAppCommon`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-app-common.so.0`.
///
/// Application Framework / Application / App Common, Resource Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_app_common;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the device orientation from the given event info.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter event_info The system event info
/// Output parameter orientation The device orientation changed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid event context
/// @see app_event_info_h
/// @see app_device_orientation_e
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_event_get_device_orientation(
  app_event_info_h event_info,
  ffi.Pointer<ffi.Int32> orientation,
) =>
    tizenCapiAppfwAppCommon.app_event_get_device_orientation(
      event_info,
      orientation,
    );

/// @brief Gets the language from the given event info.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks @a lang must be released using free().
/// Parameter event_info The system event info
/// Output parameter lang The language changed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid event context
/// @see app_event_info_h
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_event_get_language(
  app_event_info_h event_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> lang,
) =>
    tizenCapiAppfwAppCommon.app_event_get_language(
      event_info,
      lang,
    );

/// @brief Gets the low battery status from given event info.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter event_info The system event info
/// Output parameter status The low battery status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid event context
/// @see app_event_info_h
/// @see app_event_low_battery_status_e
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_event_get_low_battery_status(
  app_event_info_h event_info,
  ffi.Pointer<ffi.Int32> status,
) =>
    tizenCapiAppfwAppCommon.app_event_get_low_battery_status(
      event_info,
      status,
    );

/// @brief Gets the low memory status from the given event info.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter event_info The system event info
/// Output parameter status The low memory status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid event context
/// @see app_event_info_h
/// @see app_event_low_memory_status_e
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_event_get_low_memory_status(
  app_event_info_h event_info,
  ffi.Pointer<ffi.Int32> status,
) =>
    tizenCapiAppfwAppCommon.app_event_get_low_memory_status(
      event_info,
      status,
    );

/// @brief Gets the region format from the given event info.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks @a region must be released using free().
/// Parameter event_info The system event info
/// Output parameter region The region format changed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid event context
/// @see app_event_info_h
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_event_get_region_format(
  app_event_info_h event_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> region,
) =>
    tizenCapiAppfwAppCommon.app_event_get_region_format(
      event_info,
      region,
    );

/// @brief Gets the suspended state of the application from the given event info.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The application should not use any asynchronous operations in #APP_SUSPENDED_STATE_WILL_ENTER event.
/// Because applications will be changed to suspended state just after #APP_SUSPENDED_STATE_WILL_ENTER, asynchronous calls are not guaranteed to work properly.
/// Parameter event_info The handle for getting the suspended state
/// Output parameter state The suspended state of the application
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid event context
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_event_get_suspended_state(
  app_event_info_h event_info,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiAppfwAppCommon.app_event_get_suspended_state(
      event_info,
      state,
    );

/// @brief Gets the absolute path to the application's cache directory which is used to store temporary data of the application.
/// @details An application can read and write its own files in the application's cache directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The returned value should be released using free(). @n
/// The files stored in the application's cache directory can be removed by setting application or platform while the application is running.
/// @return The absolute path to the application's cache directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_cache_path() =>
    tizenCapiAppfwAppCommon.app_get_cache_path();

/// @brief Gets the absolute path to the application's data directory which is used to store private data of the application.
/// @details An application can read and write its own files in the application's data directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The returned value should be released using free().
/// @return The absolute path to the application's data directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_data_path() =>
    tizenCapiAppfwAppCommon.app_get_data_path();

/// @brief Gets the display state.
/// @since_tizen 5.5
/// @remarks If the application is service-application, this function returns #APP_ERROR_INVALID_CONTEXT.
/// In the headless device, this function returns #APP_ERROR_NOT_SUPPORTED.
/// Output parameter display_state The display state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_NOT_SUPPORTED Not supported
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT The display is in an unknown state.
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_get_display_state(
  ffi.Pointer<ffi.Int32> display_state,
) =>
    tizenCapiAppfwAppCommon.app_get_display_state(
      display_state,
    );

/// @brief Gets the absolute path to the application's external cache directory which is used to store temporary data of the application.
/// @details An application can read and write its own files in the application's external cache directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The returned value should be released using free(). @n
/// The files stored in the application's external cache directory can be removed by
/// setting application while the application is running. @n
/// The important files stored in the application's external cache directory should be
/// encrypted because they can be exported via the external sdcard.
/// To access the path returned by this function requires the privilege
/// that is "http://tizen.org/privilege/externalstorage.appdata".
/// @return The absolute path to the application's external cache directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_external_cache_path() =>
    tizenCapiAppfwAppCommon.app_get_external_cache_path();

/// @brief Gets the absolute path to the application's external data directory which is used to store data of the application.
/// @details An application can read and write its own files in the application's external data directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The returned value should be released using free(). @n
/// The important files stored in the application's external data directory should be encrypted because they can be exported via the external sdcard.
/// To access the path returned by this function requires the privilege
/// that is "http://tizen.org/privilege/externalstorage.appdata".
/// @return The absolute path to the application's external data directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_external_data_path() =>
    tizenCapiAppfwAppCommon.app_get_external_data_path();

/// @deprecated Deprecated since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif.
/// @brief Gets the absolute path to the application's external shared data directory which is used to share data with other applications.
/// @details An application can read and write its own files in the application's external shared data directory, and others can only read the files.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The returned value should be released using free().
/// To access the path returned by this function requires the privilege
/// that is "http://tizen.org/privilege/externalstorage.appdata".
/// The function may not work as intended in certain devices due to some implementation issues.
/// @return The absolute path to the application's external shared data directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_external_shared_data_path() =>
    tizenCapiAppfwAppCommon.app_get_external_shared_data_path();

/// @brief Gets the ID of the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks @a id must be released using free().
/// Output parameter id The ID of the application
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT The application is launched illegally, not launched by the launch system
/// @retval #APP_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_get_id(
  ffi.Pointer<ffi.Pointer<ffi.Char>> id,
) =>
    tizenCapiAppfwAppCommon.app_get_id(
      id,
    );

/// @brief Gets the localized name of the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks @a name must be released using free().
/// Output parameter name The name of the application
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT The application is launched illegally, not launched by the launch system
/// @retval #APP_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_get_name(
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiAppfwAppCommon.app_get_name(
      name,
    );

/// @brief Gets the absolute path to the application resource directory. The resource files are delivered with the application package.
/// @details An application can only read its own files in the application's resource directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The returned value should be released using free().
/// @return The absolute path to the application's resource directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_resource_path() =>
    tizenCapiAppfwAppCommon.app_get_resource_path();

/// @brief Gets the absolute path to the application's shared data directory which is used to share data with other applications.
/// @details An application can read and write its own files in the application's shared data directory and others can only read the files.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/appdir.shareddata
/// @remarks The returned value should be released using free(). @n
/// Since Tizen 3.0, an application that want to use shared/data directory must declare http://tizen.org/privilege/appdir.shareddata privilege. If the application doesn't declare the privilege, the framework will not create shared/data directory for the application.
/// Carefully consider the privacy implications when deciding whether to use the shared/data directory, since the application cannot control access to this directory by other applications.
/// If you want to share files with other applications, consider passing path via @ref CAPI_APP_CONTROL_MODULE API.
/// The @ref CAPI_APP_CONTROL_MODULE API supports giving permission to other applications by passing path via app_control. @n
/// The specific error code can be obtained using the get_last_result(). Error codes are described in Exception section.
///
/// @return The absolute path to the application's shared data directory, @n
/// otherwise a null pointer if the memory is insufficient. It will return NULL for applications with api-version 3.0 or later, and set #APP_ERROR_PERMISSION_DENIED if the application does not declare the shareddata privilege.
/// @exception #APP_ERROR_NONE Success
/// @exception #APP_ERROR_PERMISSION_DENIED Permission denied
/// @exception #APP_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_shared_data_path() =>
    tizenCapiAppfwAppCommon.app_get_shared_data_path();

/// @brief Gets the absolute path to the application's shared resource directory which is used to share resources with other applications.
/// @details An application can read its own files in the application's shared resource directory, and others can only read the files.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The returned value should be released using free().
/// @return The absolute path to the application's shared resource directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_shared_resource_path() =>
    tizenCapiAppfwAppCommon.app_get_shared_resource_path();

/// @brief Gets the absolute path to the application's shared trusted directory which is used to share data with a family of trusted applications.
/// @details An application can read and write its own files in the application's shared trusted directory
/// and the family applications signed with the same certificate can read and write the files in the shared trusted directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The returned value should be released using free().
/// @return The absolute path to the application's shared trusted directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_shared_trusted_path() =>
    tizenCapiAppfwAppCommon.app_get_shared_trusted_path();

/// @brief Gets the absolute path to the application's TEP (Tizen Expansion Package) directory. The resource files are delivered with the expansion package.
/// @details An application can only read its own files in the application's TEP (Tizen Expansion Package) directory.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The returned value should be released using free().
/// @return The absolute path to the application's TEP (Tizen Expansion Package) directory, @n
/// otherwise a null pointer if the memory is insufficient
///
/// Module getter: `tizenCapiAppfwAppCommon`.
ffi.Pointer<ffi.Char> app_get_tep_resource_path() =>
    tizenCapiAppfwAppCommon.app_get_tep_resource_path();

/// @brief Gets the version of the application package.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks @a version must be released using free().
/// Output parameter version The version of the application
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT The application is launched illegally, not launched by the launch system
/// @retval #APP_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_get_version(
  ffi.Pointer<ffi.Pointer<ffi.Char>> version,
) =>
    tizenCapiAppfwAppCommon.app_get_version(
      version,
    );

/// @brief Converts resource ID to path name.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks If resource manager is not created yet,
/// app_resource_manager_init() will be invoked automatically.
/// The @a path should be released using free().
/// Parameter type Resource type @see #app_resource_e
/// Parameter id Resource ID
/// Output parameter path The name of requested resource on success, otherwise NULL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_RESOURCE_ERROR_NONE Successful
/// @retval #APP_RESOURCE_ERROR_INVALID_PARAMETER Invalid Parameter
/// @retval #APP_RESOURCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #APP_RESOURCE_ERROR_IO_ERROR Internal I/O Error or failed to find valid resource
/// @see app_resource_manager_init()
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_resource_manager_get(
  int type,
  ffi.Pointer<ffi.Char> id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiAppfwAppCommon.app_resource_manager_get(
      type,
      id,
      path,
    );

/// @brief Creates resource manager and get from db.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks If resource manager already exists,
/// It will just return #APP_RESOURCE_ERROR_NONE
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_RESOURCE_ERROR_NONE Successful
/// @retval #APP_RESOURCE_ERROR_IO_ERROR IO Internal I/O Error
/// @retval #APP_RESOURCE_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_resource_manager_release()
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_resource_manager_init() =>
    tizenCapiAppfwAppCommon.app_resource_manager_init();

/// @brief Destroys resource manager.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks Please note that the instance of resource manager should only be released when the application is closing.
/// It is a highly recommended way to improve run-time performance.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_RESOURCE_ERROR_NONE Successful
/// @see	app_resource_manager_init()
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_resource_manager_release() =>
    tizenCapiAppfwAppCommon.app_resource_manager_release();

/// @brief Sends the disable request to deactivate the watchdog timer.
/// @since_tizen 5.5
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid context
/// @see app_watchdog_timer_enable()
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_watchdog_timer_disable() =>
    tizenCapiAppfwAppCommon.app_watchdog_timer_disable();

/// @brief Sends the enable request to activate the watchdog timer.
/// @since_tizen 5.5
/// @remarks After this function is called, the system detects a timeout error.
/// If, due to a program error as ANR (Application Not Responding), the system fails to reset the watchdog, the timer will elapse and generate a signal to terminate the running application.
/// If the running application has to process a lot of operations, the application should disable or reset the watchdog timer.
/// @return @c 0 on success,
/// otherrwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid context
/// @see app_watchdog_timer_disable()
/// @see app_watchdog_timer_kick()
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_watchdog_timer_enable() =>
    tizenCapiAppfwAppCommon.app_watchdog_timer_enable();

/// @brief Sends the kick request to reset the watchdog timer.
/// @since_tizen 5.5
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_CONTEXT Invalid context
/// @see app_watchdog_timer_enable()
///
/// Module getter: `tizenCapiAppfwAppCommon`.
int app_watchdog_timer_kick() =>
    tizenCapiAppfwAppCommon.app_watchdog_timer_kick();

