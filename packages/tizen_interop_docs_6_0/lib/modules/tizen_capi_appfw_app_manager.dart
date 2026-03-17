// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwAppManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-app-manager.so.0`.
///
/// Application Framework / Application Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_app_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief  Clones the application context handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a clone should be released using app_context_destroy()
/// Output parameter  clone        The newly created application context handle, if cloning is successful
/// Parameter   app_context  The application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_clone(
  ffi.Pointer<app_context_h> clone,
  app_context_h app_context,
) =>
    tizenCapiAppfwAppManager.app_context_clone(
      clone,
      app_context,
    );

/// @brief  Destroys the application context handle and releases all its resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_context  The application context handle
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @see app_manager_foreach_app_context()
/// @see app_manager_get_app_context()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_destroy(
  app_context_h app_context,
) =>
    tizenCapiAppfwAppManager.app_context_destroy(
      app_context,
    );

/// @brief    Gets the application ID with the given application context.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release @a app_id using free().
/// Parameter   app_context  The application context
/// Output parameter  app_id       The application ID of the given application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_get_app_id(
  app_context_h app_context,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiAppfwAppManager.app_context_get_app_id(
      app_context,
      app_id,
    );

/// @brief  Gets the application state with the given application context.
/// @since_tizen 3.0
/// @remarks Note that application's state might be changed after you get app_context.
/// This function just returns the state of application when you get the app_context.
/// Parameter   app_context  The application context
/// Output parameter  state        The application state of the given application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_get_app_state(
  app_context_h app_context,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiAppfwAppManager.app_context_get_app_state(
      app_context,
      state,
    );

/// @deprecated Deprecated since 2.3.1. Use app_context_get_app_id() instead.
/// @brief    Gets the application ID with the given application context.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a package using free().
/// Parameter   app_context  The application context
/// Output parameter  package      The application ID of the given application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_get_package(
  app_context_h app_context,
  ffi.Pointer<ffi.Pointer<ffi.Char>> package,
) =>
    tizenCapiAppfwAppManager.app_context_get_package(
      app_context,
      package,
    );

/// @brief  Gets the package id with the given application context.
/// @since_tizen 3.0
/// @remarks     You must release @a pkg_id using free().
/// Parameter   app_context  The application context
/// Output parameter  pkg_id   The package ID of the given application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_get_package_id(
  app_context_h app_context,
  ffi.Pointer<ffi.Pointer<ffi.Char>> pkg_id,
) =>
    tizenCapiAppfwAppManager.app_context_get_package_id(
      app_context,
      pkg_id,
    );

/// @brief  Gets the process ID with the given application context.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_context  The application context
/// Output parameter  pid          The process ID of the given application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_get_pid(
  app_context_h app_context,
  ffi.Pointer<pid_t> pid,
) =>
    tizenCapiAppfwAppManager.app_context_get_pid(
      app_context,
      pid,
    );

/// @brief  Checks whether two application contexts are equal.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   lhs    The first application context to compare
/// Parameter   rhs    The second application context to compare
/// Output parameter  equal  @c true if the application contexts are equal, \n
/// otherwise @c false if they are not equal
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_is_equal(
  app_context_h lhs,
  app_context_h rhs,
  ffi.Pointer<ffi.Bool> equal,
) =>
    tizenCapiAppfwAppManager.app_context_is_equal(
      lhs,
      rhs,
      equal,
    );

/// @brief  Checks whether the application is running as a sub application of the application group.
/// @since_tizen 3.0
/// Parameter   app_context  The application context
/// Output parameter  is_sub_app @c true if the sub application of the group, \n
/// otherwise @c false if the main application of the group
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_is_sub_app(
  app_context_h app_context,
  ffi.Pointer<ffi.Bool> is_sub_app,
) =>
    tizenCapiAppfwAppManager.app_context_is_sub_app(
      app_context,
      is_sub_app,
    );

/// @brief  Checks whether the application with the given application context is terminated.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_context  The application context
/// Output parameter  terminated   @c true if the application is terminated, \n
/// otherwise @c false if the application is running
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_context_is_terminated(
  app_context_h app_context,
  ffi.Pointer<ffi.Bool> terminated,
) =>
    tizenCapiAppfwAppManager.app_context_is_terminated(
      app_context,
      terminated,
    );

/// @brief  Clones the application information handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a clone should be released using app_info_destroy().
/// Output parameter  clone     A newly created application information handle, if successfully cloned
/// Parameter   app_info  The application information
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #APP_MANAGER_ERROR_NO_SUCH_APP        The app is not installed
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_clone(
  ffi.Pointer<app_info_h> clone,
  app_info_h app_info,
) =>
    tizenCapiAppfwAppManager.app_info_clone(
      clone,
      app_info,
    );

/// @brief  Creates the application information handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a app_info should be released using app_info_destroy().
/// Parameter   app_id    The application ID
/// Output parameter  app_info  The application information handle
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_NO_SUCH_APP        The app is not installed
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @see app_manager_foreach_app_info()
/// @see app_manager_get_app_info()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_create(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<app_info_h> app_info,
) =>
    tizenCapiAppfwAppManager.app_info_create(
      app_id,
      app_info,
    );

/// @brief  Destroys the application information handle and releases all its resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_info  The application information handle
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @see app_manager_foreach_app_info()
/// @see app_manager_get_app_info()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_destroy(
  app_info_h app_info,
) =>
    tizenCapiAppfwAppManager.app_info_destroy(
      app_info,
    );

/// @brief  Adds a boolean filter property to the filter handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  handle    The pointer to the application info filter handle
/// Parameter  property  The integer property name
/// Parameter  value     The value corresponding to the property
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_filter_add_bool(
  app_info_filter_h handle,
  ffi.Pointer<ffi.Char> property,
  bool value,
) =>
    tizenCapiAppfwAppManager.app_info_filter_add_bool(
      handle,
      property,
      value,
    );

/// @brief  Adds a string filter property to the filter handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  handle    The pointer to the application info filter handle
/// Parameter  property  The integer property name
/// Parameter  value     The value corresponding to the property
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_filter_add_string(
  app_info_filter_h handle,
  ffi.Pointer<ffi.Char> property,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiAppfwAppManager.app_info_filter_add_string(
      handle,
      property,
      value,
    );

/// @brief  Gets the count of filtered apps.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   handle  The pointer to the application info filter handle
/// Output parameter  count   The pointer to the variable for count
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_filter_count_appinfo(
  app_info_filter_h handle,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiAppfwAppManager.app_info_filter_count_appinfo(
      handle,
      count,
    );

/// @brief  Creates the application information filter handle from DB.
/// All filter properties will be ANDed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a handle should be released using app_info_filter_destroy().
/// Output parameter  handle  The pointer to the application info filter handle
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_filter_create(
  ffi.Pointer<app_info_filter_h> handle,
) =>
    tizenCapiAppfwAppManager.app_info_filter_create(
      handle,
    );

/// @brief  Destroys the application information filter handle, freeing up all the resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  handle  The pointer to the application info filter handle
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_filter_destroy(
  app_info_filter_h handle,
) =>
    tizenCapiAppfwAppManager.app_info_filter_destroy(
      handle,
    );

/// @brief  Executes the user supplied callback function for each application that satisfy the filter conditions.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  handle     The pointer to the application info filter handle
/// Parameter  callback   The callback function
/// Parameter  user_data  The user data to be passed to the callback function
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_filter_foreach_appinfo(
  app_info_filter_h handle,
  app_info_filter_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_info_filter_foreach_appinfo(
      handle,
      callback,
      user_data,
    );

/// @platform
/// @brief  Runs a callback for each category which the given application belongs to.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter  app_info   The application information
/// Parameter  callback   The callback function
/// Parameter  user_data  The user data to be passed to the callback function
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_PERMISSION_DENIED  Permission denied
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
/// @see app_info_create()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_foreach_category(
  app_info_h app_info,
  app_info_category_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_info_foreach_category(
      app_info,
      callback,
      user_data,
    );

/// @brief  Gets the list of metadata for a particular application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  app_info   The application information
/// Parameter  callback   The callback function for list
/// Parameter  user_data  The user data to be passed to callback function
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_foreach_metadata(
  app_info_h app_info,
  app_info_metadata_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_info_foreach_metadata(
      app_info,
      callback,
      user_data,
    );

/// @brief  Gets the application component type.
/// @since_tizen 4.0
/// Parameter   app_info  The application information
/// Output parameter  type      The application component type
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
/// @see #PACKAGE_INFO_PROP_APP_COMPONENT_TYPE
/// @see #app_info_app_component_type_e
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_get_app_component_type(
  app_info_h app_info,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiAppfwAppManager.app_info_get_app_component_type(
      app_info,
      type,
    );

/// @brief  Gets the application ID with the given application context.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release @a app_id using free().
/// Parameter   app_info  The application information
/// Output parameter  app_id    The application ID of the given application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_get_app_id(
  app_info_h app_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiAppfwAppManager.app_info_get_app_id(
      app_info,
      app_id,
    );

/// @brief  Gets the executable path of the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release @a exec path using free().
/// Parameter   app_info The application information
/// Output parameter  exec     The executable path of the application
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_get_exec(
  app_info_h app_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> exec,
) =>
    tizenCapiAppfwAppManager.app_info_get_exec(
      app_info,
      exec,
    );

/// @brief  Gets the absolute path to the icon image.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release @a path using free().
/// Parameter   app_info  The application information
/// Output parameter  path      The absolute path to the icon
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_get_icon(
  app_info_h app_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiAppfwAppManager.app_info_get_icon(
      app_info,
      path,
    );

/// @brief  Gets the label of the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release @a label using free().
/// Parameter   app_info  The application information
/// Output parameter  label     The label of the application
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_get_label(
  app_info_h app_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenCapiAppfwAppManager.app_info_get_label(
      app_info,
      label,
    );

/// @brief  Gets the localed name of the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release localed name using free().
/// Parameter   app_id  The application ID
/// Parameter   locale  The locale information
/// Output parameter  label   The localed name of the application
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_get_localed_label(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Char> locale,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenCapiAppfwAppManager.app_info_get_localed_label(
      app_id,
      locale,
      label,
    );

/// @brief  Gets the package name.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release @a package name using free().
/// Parameter   app_info  The application information
/// Output parameter  package   The package name
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_get_package(
  app_info_h app_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> package,
) =>
    tizenCapiAppfwAppManager.app_info_get_package(
      app_info,
      package,
    );

/// @brief  Gets the package type name.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release package @a type name using free().
/// Parameter   app_info The application information
/// Output parameter  type     The package type
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_get_type(
  app_info_h app_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> type,
) =>
    tizenCapiAppfwAppManager.app_info_get_type(
      app_info,
      type,
    );

/// @brief  Checks whether application is enabled.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_info  The application information
/// Output parameter  enabled   @c true if the application is enabled, \n
/// otherwise @c false
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_is_enabled(
  app_info_h app_info,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiAppfwAppManager.app_info_is_enabled(
      app_info,
      enabled,
    );

/// @brief  Checks whether two application information are equal.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   lhs    The first application information to compare
/// Parameter   rhs    The second application information to compare
/// Output parameter  equal  @c true if the application information are equal, \n
/// otherwise @c false
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_is_equal(
  app_info_h lhs,
  app_info_h rhs,
  ffi.Pointer<ffi.Bool> equal,
) =>
    tizenCapiAppfwAppManager.app_info_is_equal(
      lhs,
      rhs,
      equal,
    );

/// @brief  Checks whether application information is nodisplay.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_info   The application information
/// Output parameter  nodisplay  @c true if the application is nodisplay, \n
/// otherwise @c false
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_is_nodisplay(
  app_info_h app_info,
  ffi.Pointer<ffi.Bool> nodisplay,
) =>
    tizenCapiAppfwAppManager.app_info_is_nodisplay(
      app_info,
      nodisplay,
    );

/// @brief  Checks whether application is launched on booting time.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_info  The application information
/// Output parameter  onboot    @c true if the application is launched on booting time, \n
/// otherwise @c false
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_is_onboot(
  app_info_h app_info,
  ffi.Pointer<ffi.Bool> onboot,
) =>
    tizenCapiAppfwAppManager.app_info_is_onboot(
      app_info,
      onboot,
    );

/// @brief  Checks whether application is preloaded.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_info  The application information
/// Output parameter  preload   @c true if the application is preloaded, \n
/// otherwise @c false
/// @return        @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_is_preload(
  app_info_h app_info,
  ffi.Pointer<ffi.Bool> preload,
) =>
    tizenCapiAppfwAppManager.app_info_is_preload(
      app_info,
      preload,
    );

/// @brief  Checks whether the application supports ambient mode.
/// @since_tizen 5.5
/// Parameter   app_info         The application information
/// Output parameter  ambient_supported  @c true if the application supports ambient mode, \n
/// otherwise @c false
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_is_support_ambient(
  app_info_h app_info,
  ffi.Pointer<ffi.Bool> ambient_supported,
) =>
    tizenCapiAppfwAppManager.app_info_is_support_ambient(
      app_info,
      ambient_supported,
    );

/// @brief  Adds filter condition for the query API.
/// @details  The query will search the entire application metadata information collected from
/// the manifest file of all the installed packages. You can specify value as @c NULL to search based on key only.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  handle  The pointer to the application metadata info filter handle
/// Parameter  key     The pointer to metadata key
/// Parameter  value   The pointer to metadata value
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_metadata_filter_add(
  app_info_metadata_filter_h handle,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiAppfwAppManager.app_info_metadata_filter_add(
      handle,
      key,
      value,
    );

/// @brief  Creates the application's metadata information filter handle from DB.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a handle should be released using app_info_metadata_filter_destroy().
/// Output parameter  handle  The pointer to the application metadata info filter handle
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_metadata_filter_create(
  ffi.Pointer<app_info_metadata_filter_h> handle,
) =>
    tizenCapiAppfwAppManager.app_info_metadata_filter_create(
      handle,
    );

/// @brief  Destroys the application's metadata information filter handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  handle  The pointer to the application info filter handle
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_metadata_filter_destroy(
  app_info_metadata_filter_h handle,
) =>
    tizenCapiAppfwAppManager.app_info_metadata_filter_destroy(
      handle,
    );

/// @brief  Executes the filter query.
/// @details  The query will search the entire application metadata information collected from
/// the manifest file of all the installed packages. For each application returned by the query, the callback will be called. If callback returns
/// negative value, no more callbacks will be called and API will return.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  handle     The pointer to the application metadata info filter handle
/// Parameter  callback   The function pointer to callback
/// Parameter  user_data  The pointer to user data
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           I/O error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_info_metadata_filter_foreach(
  app_info_metadata_filter_h handle,
  app_info_filter_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_info_metadata_filter_foreach(
      handle,
      callback,
      user_data,
    );

/// @brief Creates a app manager event handle.
/// @since_tizen 3.0
/// @remarks You must release @a handle using app_manager_event_destroy().
///
/// Output parameter handle The app manager event handle that is newly created on success
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #APP_MANAGER_ERROR_NONE              Successful
/// @retval #APP_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @see app_manager_event_destroy()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_event_create(
  ffi.Pointer<app_manager_event_h> handle,
) =>
    tizenCapiAppfwAppManager.app_manager_event_create(
      handle,
    );

/// @brief Destroys the app manager event handle.
/// @since_tizen 3.0
///
/// Parameter handle The app manager event handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #APP_MANAGER_ERROR_NONE              Successful
/// @retval #APP_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_MANAGER_ERROR_REQUEST_FAILED          Internal error
///
/// @see app_manager_event_create()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_event_destroy(
  app_manager_event_h handle,
) =>
    tizenCapiAppfwAppManager.app_manager_event_destroy(
      handle,
    );

/// @brief Sets the event to handle to listen.
/// You can combine multiple status using OR operation which you want to listen.
/// @since_tizen 3.0
///
/// Parameter handle     The app manager event handle
/// Parameter status_type The status of the application
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #APP_MANAGER_ERROR_NONE              Successful
/// @retval #APP_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_MANAGER_ERROR_REQUEST_FAILED          Internal error
///
/// @see app_manager_event_status_type_e
/// @see app_manager_set_event_cb()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_event_set_status(
  app_manager_event_h handle,
  int status_type,
) =>
    tizenCapiAppfwAppManager.app_manager_event_set_status(
      handle,
      status_type,
    );

/// @brief  Retrieves all application contexts of running applications.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks  In case of ui applications, sub apps in application groups will not be shown.
/// Parameter   callback   The callback function to invoke
/// Parameter   user_data  The user data to be passed to the callback function
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           Internal I/O error
/// @post   This function invokes app_manager_app_context_cb() for each application context.
/// @see app_manager_app_context_cb()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_foreach_app_context(
  app_manager_app_context_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_manager_foreach_app_context(
      callback,
      user_data,
    );

/// @brief  Retrieves all installed applications information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   callback   The callback function to invoke
/// Parameter   user_data  The user data to be passed to the callback function
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @post    This function invokes app_manager_app_info_cb() for each application information.
/// @see app_manager_app_info_cb()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_foreach_app_info(
  app_manager_app_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_manager_foreach_app_info(
      callback,
      user_data,
    );

/// @brief  Retrieves all application contexts of running applications including sub apps.
/// @details You can iterate all the running application contexts using this function.
/// This function is similar to app_manager_foreach_app_context() except that this function iterates application contexts including sub apps in application groups.
/// @since_tizen 3.0
/// Parameter   callback   The callback function to invoke
/// Parameter   user_data  The user data to be passed to the callback function
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           Internal I/O error
/// @post   This function invokes app_manager_app_context_cb() for each application context.
/// @see app_manager_app_context_cb()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_foreach_running_app_context(
  app_manager_app_context_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_manager_foreach_running_app_context(
      callback,
      user_data,
    );

/// @brief  Gets the application context for the given ID of the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks  This function returns #APP_MANAGER_ERROR_NO_SUCH_APP if the application with the given application ID is not running. \n
/// You must release @a app_context using app_context_destroy().
/// Parameter   app_id       The ID of the application
/// Output parameter  app_context  The application context of the given application ID
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #APP_MANAGER_ERROR_NO_SUCH_APP        No such application
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_get_app_context(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<app_context_h> app_context,
) =>
    tizenCapiAppfwAppManager.app_manager_get_app_context(
      app_id,
      app_context,
    );

/// @brief  Gets the ID of the application for the given process ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks  This function returns #APP_MANAGER_ERROR_NO_SUCH_APP if the application with the given process ID is not valid. \n
/// You must release @a app_id using free().
/// Parameter   pid     The process ID of the application
/// Output parameter  app_id  The ID of the application
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_get_app_id(
  int pid,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiAppfwAppManager.app_manager_get_app_id(
      pid,
      app_id,
    );

/// @brief  Gets the application information for the given application ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     You must release @a app_info using app_info_destroy().
/// Parameter   app_id    The ID of the application
/// Output parameter  app_info  The application information for the given application ID
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #APP_MANAGER_ERROR_NO_SUCH_APP        No such application
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_get_app_info(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<app_info_h> app_info,
) =>
    tizenCapiAppfwAppManager.app_manager_get_app_info(
      app_id,
      app_info,
    );

/// @deprecated Deprecated since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif.
/// @brief  Gets the absolute path to the shared data directory of the application specified
/// with an application ID.
/// @details     An application can only read the files of other application's shared data directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     The specified @a path should be released with free().
/// @remarks     To access the path returned by this function may not work as intended in certain devices due to some implementation issues.
///
/// Parameter      app_id  The ID of the application
/// Parameter  path    The absolute path to the shared data directory of the application
/// specified with the @a app_id
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_NO_SUCH_APP        No such application
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_get_external_shared_data_path(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiAppfwAppManager.app_manager_get_external_shared_data_path(
      app_id,
      path,
    );

/// @brief  Gets the absolute path to the shared data directory of the application specified
/// with an application ID.
/// @details     An application can only read the files of other application's shared data directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     The specified @a path should be released with free().\n
/// Since Tizen 3.0, the shared/data directory is supported only for the applications that declare the http://tizen.org/privilege/appdir.shareddata privilege.
/// The function will fail with #APP_MANAGER_ERROR_NOT_SUPPORTED if the privilege is not declared.
///
/// Parameter   app_id  The ID of the application
/// Output parameter  path    The absolute path to the shared data directory of the application
/// specified with the @a app_id
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_NOT_SUPPORTED      Not supported
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_NO_SUCH_APP        No such application
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_get_shared_data_path(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiAppfwAppManager.app_manager_get_shared_data_path(
      app_id,
      path,
    );

/// @brief  Gets the absolute path to the shared resource directory of the application specified
/// with an application ID.
/// @details     An application can only read the files of other application's shared resource directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     The specified @a path should be released with free().
///
/// Parameter      app_id  The ID of the application
/// Parameter  path    The absolute path to the shared resource directory of the application
/// specified with the @a app_id
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_NO_SUCH_APP        No such application
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_get_shared_resource_path(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiAppfwAppManager.app_manager_get_shared_resource_path(
      app_id,
      path,
    );

/// @brief  Gets the absolute path to the shared trusted directory of the application specified
/// with an application ID.
/// @details     An application signed with the same certificate can read and write the files of
/// other application's shared trusted directory.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks     The specified @a path should be released with free().
///
/// Parameter      app_id  The ID of the application
/// Parameter  path    The absolute path to the shared trusted directory of the application
/// specified with the @a app_id
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_NO_SUCH_APP        No such application
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_get_shared_trusted_path(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiAppfwAppManager.app_manager_get_shared_trusted_path(
      app_id,
      path,
    );

/// @brief  Checks whether the application with the given ID of the application is running.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   app_id   The ID of the application
/// Output parameter  running  @c true if the application is running, \n
/// otherwise @c false if not running
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_is_running(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Bool> running,
) =>
    tizenCapiAppfwAppManager.app_manager_is_running(
      app_id,
      running,
    );

/// @brief  Terminates the back ground application.\n
/// UI applications that are in paused state or some service applications could be required to terminate by this function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/appmanager.kill.bgapp
/// @remarks This function returns after it just sends a request for terminating a background application.\n
/// Platform will decide if the target application could be terminated or not according to the state of the target application.
/// Parameter   app_context  The application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_REQUEST_FAILED  Failed to send terminate request
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_request_terminate_bg_app(
  app_context_h app_context,
) =>
    tizenCapiAppfwAppManager.app_manager_request_terminate_bg_app(
      app_context,
    );

/// @brief  Resumes the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// Parameter   app_context  The application context
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_PERMISSION_DENIED  Permission denied
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_APP_NO_RUNNING     App is not running
/// @retval  #APP_MANAGER_ERROR_REQUEST_FAILED     Internal resume error
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_resume_app(
  app_context_h app_context,
) =>
    tizenCapiAppfwAppManager.app_manager_resume_app(
      app_context,
    );

/// @brief  Registers a callback function to be invoked when the applications get launched or terminated.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter   callback   The callback function to register
/// Parameter   user_data  The user data to be passed to the callback function
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval  #APP_MANAGER_ERROR_NONE               Successful
/// @retval  #APP_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #APP_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #APP_MANAGER_ERROR_IO_ERROR           Internal I/O error
/// @post It will invoke app_manager_app_context_event_cb() when the application is launched or terminated.
/// @see app_manager_unset_app_context_event_cb()
/// @see app_manager_app_context_event_cb()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_set_app_context_event_cb(
  app_manager_app_context_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_manager_set_app_context_event_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets the application's icon path into given path.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// @remarks   The icon file should be included in package which the applications belongs to.
/// Parameter app_id    The ID of the application
/// Parameter icon_path The path of icon file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #APP_MANAGER_ERROR_NONE                 Successful
/// @retval #APP_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #APP_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #APP_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #APP_MANAGER_ERROR_IO_ERROR             Internal error
///
/// @see app_manager_event_create()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_set_app_icon(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Char> icon_path,
) =>
    tizenCapiAppfwAppManager.app_manager_set_app_icon(
      app_id,
      icon_path,
    );

/// @brief Registers a callback function to be invoked when the app is event has occurred.
/// @since_tizen 3.0
/// Parameter handle    The app manager event handle
/// Parameter callback   The callback function to be registered
/// Parameter user_data  The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #APP_MANAGER_ERROR_NONE              Successful
/// @retval #APP_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_MANAGER_ERROR_REQUEST_FAILED          Internal error
/// @post app_manager_event_cb() will be invoked.
///
/// @see app_manager_event_set_status()
/// @see app_manager_event_cb()
/// @see app_manager_unset_event_cb()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_set_event_cb(
  app_manager_event_h handle,
  app_manager_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppManager.app_manager_set_event_cb(
      handle,
      callback,
      user_data,
    );

/// @brief  Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @see app_manager_app_context_event_cb()
///
/// Module getter: `tizenCapiAppfwAppManager`.
void app_manager_unset_app_context_event_cb() =>
    tizenCapiAppfwAppManager.app_manager_unset_app_context_event_cb();

/// @brief Unregisters the callback function.
/// @since_tizen 3.0
///
/// Parameter handle The app manager event handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #APP_MANAGER_ERROR_NONE              Successful
/// @retval #APP_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_MANAGER_ERROR_REQUEST_FAILED          Internal error
///
/// @see app_manager_event_cb()
/// @see app_manager_set_event_cb()
///
/// Module getter: `tizenCapiAppfwAppManager`.
int app_manager_unset_event_cb(
  app_manager_event_h handle,
) =>
    tizenCapiAppfwAppManager.app_manager_unset_event_cb(
      handle,
    );

