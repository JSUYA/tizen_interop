// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwAppControl`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-app-control.so.0`.
///
/// Application Framework / Application / App Control.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_app_control;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds the action handle of the app_control.
/// @since_tizen 5.5
/// @remarks The @a handle must be released using app_control_remove_action_handler().
///
/// Parameter   action          The action name of the app_control
/// Parameter   callback        The callback function
/// Parameter   user_data       The user data to be passed to the callback function
/// Output parameter  handle          The app_control action handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #APP_CONTROL_ERROR_KEY_NOT_FOUND Specified app_control ID not found
/// @retval #APP_CONTROL_ERROR_IO_ERROR IO error
/// @see app_control_action_cb()
/// @see app_control_remove_action_handler()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_add_action_handler(
  ffi.Pointer<ffi.Char> action,
  app_control_action_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<app_control_action_h> handle,
) =>
    tizenCapiAppfwAppControl.app_control_add_action_handler(
      action,
      callback,
      user_data,
      handle,
    );

/// @brief Adds extra data to the app_control.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The function replaces any existing value for the given key.
/// @remarks The function returns #APP_CONTROL_ERROR_INVALID_PARAMETER if @a key or @a value is a zero-length string.
/// @remarks The function returns #APP_CONTROL_ERROR_KEY_REJECTED if the application tries to use the same key with the system-defined key.
///
/// Parameter   app_control      The app_control handle
/// Parameter   key              The name of the extra data
/// Parameter   value            The value associated with the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_KEY_REJECTED Key not available
/// @see app_control_add_extra_data_array()
/// @see app_control_remove_extra_data()
/// @see app_control_get_extra_data()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_add_extra_data(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiAppfwAppControl.app_control_add_extra_data(
      app_control,
      key,
      value,
    );

/// @brief Adds the extra data array to the app_control.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The function replaces any existing value for the given key.
/// @remarks The function returns #APP_CONTROL_ERROR_INVALID_PARAMETER if @a key is a zero-length string.
/// @remarks The function returns #APP_CONTROL_ERROR_KEY_REJECTED if the application tries to use the same key with the system-defined key.
///
/// Parameter   app_control     The app_control handle
/// Parameter   key             The name of the extra data
/// Parameter   value           The array value associated with the given key
/// Parameter   length          The length of the array
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_KEY_REJECTED Key not available
/// @see app_control_add_extra_data()
/// @see app_control_remove_extra_data()
/// @see app_control_get_extra_data()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_add_extra_data_array(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
  int length,
) =>
    tizenCapiAppfwAppControl.app_control_add_extra_data_array(
      app_control,
      key,
      value,
      length,
    );

/// @brief Creates and returns a copy of the given app_control handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks A newly created app_control should be destroyed by calling the app_control_destroy() if it is no longer needed.
///
/// Output parameter  clone           If successful, a newly created app_control handle will be returned
/// Parameter   app_control     The app_control handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_destroy()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_clone(
  ffi.Pointer<app_control_h> clone,
  app_control_h app_control,
) =>
    tizenCapiAppfwAppControl.app_control_clone(
      clone,
      app_control,
    );

/// @brief Creates an app_control handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a app_control must be released using app_control_destroy().
///
/// Output parameter  app_control     The app_control handle to be newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_destroy()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_create(
  ffi.Pointer<app_control_h> app_control,
) =>
    tizenCapiAppfwAppControl.app_control_create(
      app_control,
    );

/// @brief Creates an app_control handle using the URI in app_control_uri handle.
///
/// @since_tizen 5.5
/// @remarks The @a app_control must be released using app_control_destroy().
///
/// Output parameter  app_control             The app_control handle to be newly created on success
/// Parameter   uri                     The URI handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_destroy()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_create_from_uri_handle(
  ffi.Pointer<app_control_h> app_control,
  app_control_uri_h uri,
) =>
    tizenCapiAppfwAppControl.app_control_create_from_uri_handle(
      app_control,
      uri,
    );

/// @brief Creates an app_control handle and sets its attributes.
///
/// @details Extra data of array type cannot be added with this function. If you need to add arrays to the app_control handle,
/// create the handle with app_control_create_with_parameters() and then add arrays with app_control_add_extra_data_array().
/// For details on key-value pairs that app_control_create_with_parameters() allows,
/// their types and constraints, see app_control_add_extra_data().
/// @since_tizen 5.5
/// @remarks The @a app_control must be released using app_control_destroy().
/// @remarks Setting the type of key-value extra data that the value is an array of strings is not allowed.
///
/// Output parameter  app_control             The app_control handle to be newly created on success
/// Parameter   operation               The operation to be performed
/// Parameter   uri                     The URI of the data this app_control is operating on
/// Parameter   mime                    The explicit MIME type of the data this app_control is operating on
/// Parameter   category                The explicit category
/// Parameter   app_id                  The ID of the application to explicitly launch
/// Parameter   mode                    The launch mode of the application
/// Parameter   extra_data_count        The count of a extra data
/// Parameter   ...                     The key-value pair list of app control extra data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #APP_CONTROL_ERROR_KEY_REJECTED Key not available
/// @see app_control_destroy()
/// @see app_control_add_extra_data()
/// @code
///
/// static int create_app_control()
/// {
/// app_control_h control;
/// int ret = app_control_create_with_parameters(&control, NULL, NULL, NULL, NULL,
/// "org.tizen.test", APP_CONTROL_LAUNCH_MODE_SINGLE, 2, "key1", "value1", "key2", "value2");
/// return ret;
/// }
/// @endcode
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_create_with_parameters(
  ffi.Pointer<app_control_h> app_control,
  ffi.Pointer<ffi.Char> operation,
  ffi.Pointer<ffi.Char> uri,
  ffi.Pointer<ffi.Char> mime,
  ffi.Pointer<ffi.Char> category,
  ffi.Pointer<ffi.Char> app_id,
  int mode,
  int extra_data_count,
) =>
    tizenCapiAppfwAppControl.app_control_create_with_parameters(
      app_control,
      operation,
      uri,
      mime,
      category,
      app_id,
      mode,
      extra_data_count,
    );

/// @brief Destroys the app_control handle and releases all its resources.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   app_control      The app_control handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_create()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_destroy(
  app_control_h app_control,
) =>
    tizenCapiAppfwAppControl.app_control_destroy(
      app_control,
    );

/// @brief Enables an additional launch result event on the launch request.
///
/// @details The function allows to receive the #APP_CONTROL_RESULT_APP_STARTED event on\n
/// application get launched by the app_control.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks app_control_reply_cb() will be called on the #APP_CONTROL_RESULT_APP_STARTED event received.
///
/// Parameter    app_control     The app_control handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_send_launch_request()
/// @see #APP_CONTROL_RESULT_APP_STARTED
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_enable_app_started_result_event(
  app_control_h app_control,
) =>
    tizenCapiAppfwAppControl.app_control_enable_app_started_result_event(
      app_control,
    );

/// @brief Retrieves all applications that can be launched to handle the given app_control request.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter    app_control     The app_control handle
/// Parameter    callback        The iteration callback function
/// Parameter    user_data       The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Success
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @post This function invokes app_control_app_matched_cb().
/// @see app_control_app_matched_cb()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_foreach_app_matched(
  app_control_h app_control,
  app_control_app_matched_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppControl.app_control_foreach_app_matched(
      app_control,
      callback,
      user_data,
    );

/// @brief Retrieves all extra data contained in app_control.
/// @details This function calls app_control_extra_data_cb() once for each key-value pair for extra data contained in app_control. \n
/// If the app_control_extra_data_cb() callback function returns @c false, then iteration will be finished.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter    app_control     The app_control handle
/// Parameter    callback        The iteration callback function
/// Parameter    user_data       The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @post This function invokes app_control_extra_data_cb().
/// @see app_control_extra_data_cb()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_foreach_extra_data(
  app_control_h app_control,
  app_control_extra_data_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppControl.app_control_foreach_extra_data(
      app_control,
      callback,
      user_data,
    );

/// @brief Gets the ID of the application to explicitly launch.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a app_id must be released with free().
///
/// Parameter   app_control     The app_control handle
/// Output parameter  app_id          The ID of the application to explicitly launch
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_set_app_id()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_app_id(
  app_control_h app_control,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiAppfwAppControl.app_control_get_app_id(
      app_control,
      app_id,
    );

/// @brief Gets the application ID of the caller from the launch request.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a app_control must be the launch request from app_control_cb().
/// @remarks This function returns #APP_CONTROL_ERROR_INVALID_PARAMETER if the given app_control is not the launch request.
/// @remarks The @a id must be released using free().
///
/// Parameter   app_control     The app_control handle from app_control_cb()
/// Output parameter  id              The application ID of the caller
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_caller(
  app_control_h app_control,
  ffi.Pointer<ffi.Pointer<ffi.Char>> id,
) =>
    tizenCapiAppfwAppControl.app_control_get_caller(
      app_control,
      id,
    );

/// @brief Gets the explicit category.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a category must be released using free().
///
/// Parameter   app_control     The app_control handle
/// Output parameter  category        The explicit category
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_set_category()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_category(
  app_control_h app_control,
  ffi.Pointer<ffi.Pointer<ffi.Char>> category,
) =>
    tizenCapiAppfwAppControl.app_control_get_category(
      app_control,
      category,
    );

/// @brief Gets the ID of the component.
/// @since_tizen 5.5
/// @remarks The @a component_id must be released using free().
///
/// Parameter   app_control     The app_control handle
/// Output parameter  component_id    The ID of the component which will receive the @a app_control
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_component_id(
  app_control_h app_control,
  ffi.Pointer<ffi.Pointer<ffi.Char>> component_id,
) =>
    tizenCapiAppfwAppControl.app_control_get_component_id(
      app_control,
      component_id,
    );

/// @brief Gets the extra data from the app_control.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a value must be released using free().
/// @remarks The function returns #APP_CONTROL_ERROR_INVALID_DATA_TYPE if @a value is of array data type.
///
/// Parameter   app_control     The app_control handle
/// Parameter   key             The name of the extra data
/// Output parameter value The value associated with the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_KEY_NOT_FOUND Specified key not found
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #APP_CONTROL_ERROR_INVALID_DATA_TYPE Invalid data type
/// @retval #APP_CONTROL_ERROR_KEY_REJECTED Key not available
/// @see app_control_add_extra_data()
/// @see app_control_add_extra_data_array()
/// @see app_control_remove_extra_data()
/// @see app_control_foreach_extra_data()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_extra_data(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiAppfwAppControl.app_control_get_extra_data(
      app_control,
      key,
      value,
    );

/// @brief Gets the extra data array from the app_control.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a value must be released using free().
/// @remarks The function returns #APP_CONTROL_ERROR_INVALID_DATA_TYPE if @a value is not of array data type.
///
/// Parameter   app_control     The app_control handle
/// Parameter   key             The name of the extra data
/// Output parameter  value           The array value associated with the given key
/// Output parameter  length          The length of the array
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_KEY_NOT_FOUND Specified key not found
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #APP_CONTROL_ERROR_INVALID_DATA_TYPE Invalid data type
/// @retval #APP_CONTROL_ERROR_KEY_REJECTED Key not available
/// @see app_control_add_extra_data()
/// @see app_control_add_extra_data_array()
/// @see app_control_remove_extra_data()
/// @see app_control_foreach_extra_data()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_extra_data_array(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> value,
  ffi.Pointer<ffi.Int> length,
) =>
    tizenCapiAppfwAppControl.app_control_get_extra_data_array(
      app_control,
      key,
      value,
      length,
    );

/// @brief Gets the launch mode of the application.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks Since Tizen 3.0, if launch mode is not set in the caller application control,
/// the function returns the #APP_CONTROL_LAUNCH_MODE_SINGLE launch mode.
///
/// Parameter   app_control      The app_control handle
/// Output parameter  mode             The launch mode of the application
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_set_launch_mode()
/// @see app_control_launch_mode_e
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_launch_mode(
  app_control_h app_control,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiAppfwAppControl.app_control_get_launch_mode(
      app_control,
      mode,
    );

/// @brief Gets the explicit MIME type of the data.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a mime must be released using free().
///
/// Parameter   app_control     The app_control handle
/// Output parameter  mime            The explicit MIME type of the data this app_control is operating on
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_set_mime()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_mime(
  app_control_h app_control,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mime,
) =>
    tizenCapiAppfwAppControl.app_control_get_mime(
      app_control,
      mime,
    );

/// @brief Gets the operation to be performed.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a operation must be released using free().
///
/// Parameter   app_control     The app_control handle
/// Output parameter  operation       The operation to be performed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_set_operation()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_operation(
  app_control_h app_control,
  ffi.Pointer<ffi.Pointer<ffi.Char>> operation,
) =>
    tizenCapiAppfwAppControl.app_control_get_operation(
      app_control,
      operation,
    );

/// @brief Gets the URI of the data.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a uri must be released using free().
///
/// Parameter   app_control     The app_control handle
/// Output parameter  uri             The URI of the data this app_control is operating on
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_set_uri()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_get_uri(
  app_control_h app_control,
  ffi.Pointer<ffi.Pointer<ffi.Char>> uri,
) =>
    tizenCapiAppfwAppControl.app_control_get_uri(
      app_control,
      uri,
    );

/// @brief Checks whether the extra data associated with the given @a key is of array data type.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   app_control     The app_control handle
/// Parameter   key             The name of the extra data
/// Output parameter  array           If @c true the extra data is of array data type, otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_add_extra_data()
/// @see app_control_add_extra_data_array()
/// @see app_control_remove_extra_data()
/// @see app_control_foreach_extra_data()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_is_extra_data_array(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Bool> array,
) =>
    tizenCapiAppfwAppControl.app_control_is_extra_data_array(
      app_control,
      key,
      array,
    );

/// @brief Checks whether the caller is requesting a reply from the launch request.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a app_control must be the launch request from app_control_cb().
/// @remarks This function returns #APP_CONTROL_ERROR_INVALID_PARAMETER if the given app_control is not the launch request.
///
/// Parameter   app_control     The app_control handle from app_control_cb()
/// Output parameter  requested       If @c true a reply is requested by the caller, otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_is_reply_requested(
  app_control_h app_control,
  ffi.Pointer<ffi.Bool> requested,
) =>
    tizenCapiAppfwAppControl.app_control_is_reply_requested(
      app_control,
      requested,
    );

/// @brief Removes the registered action handle of the app_control.
/// @since_tizen 5.5
///
/// Parameter    handle         The app_control action handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_add_action_handler()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_remove_action_handler(
  app_control_action_h handle,
) =>
    tizenCapiAppfwAppControl.app_control_remove_action_handler(
      handle,
    );

/// @brief Removes the extra data from the app_control.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   app_control     The app_control handle
/// Parameter   key             The name of the extra data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_KEY_NOT_FOUND Specified key not found
/// @retval #APP_CONTROL_ERROR_KEY_REJECTED Key not available
/// @see app_control_add_extra_data()
/// @see app_control_add_extra_data_array()
/// @see app_control_get_extra_data()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_remove_extra_data(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenCapiAppfwAppControl.app_control_remove_extra_data(
      app_control,
      key,
    );

/// @brief Replies to the launch request sent by the caller.
/// @details If the caller application sent the launch request to receive the result, the callee application can return the result back to the caller.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The function is not allowed to send reply #APP_CONTROL_RESULT_APP_STARTED as @a result which is reserved for platform developers.
///
/// Parameter   reply           The app_control handle in which the results of the callee are contained
/// Parameter   request         The app_control handle sent by the caller
/// Parameter   result          The result code of the launch request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_send_launch_request()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_reply_to_launch_request(
  app_control_h reply,
  app_control_h request,
  int result,
) =>
    tizenCapiAppfwAppControl.app_control_reply_to_launch_request(
      reply,
      request,
      result,
    );

/// @brief Sends the launch request.
///
/// @details The operation is mandatory information for the launch request. \n
/// If the operation is not specified, #APP_CONTROL_OPERATION_DEFAULT is used by default.
/// If the operation is #APP_CONTROL_OPERATION_DEFAULT, the application ID is mandatory to explicitly launch the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// @remarks The function returns #APP_CONTROL_ERROR_LAUNCH_REJECTED if the operation value is #APP_CONTROL_OPERATION_LAUNCH_ON_EVENT which is only for handling the event from the platform or other application, refer to the @ref CAPI_EVENT_MODULE module.
/// @remarks Since Tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, the launch request of the service application over out of packages is restricted by the platform. Also, implicit launch requests are NOT delivered to service applications since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif. To launch a service application, an explicit launch request with application ID given by the app_control_set_app_id() must be sent.
///
/// Parameter   app_control     The app_control handle
/// Parameter   callback        The callback function to be called when the reply is delivered
/// Parameter   user_data       The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #APP_CONTROL_ERROR_APP_NOT_FOUND The application to run the given launch request is not found
/// @retval #APP_CONTROL_ERROR_LAUNCH_REJECTED The application cannot be launched in current context
/// @retval #APP_CONTROL_ERROR_LAUNCH_FAILED Failed to launch the application
/// @retval #APP_CONTROL_ERROR_TIMED_OUT Failed due to timeout. The application that handles @a app_control may be busy
/// @post If the launch request is sent for the result, the result will come back through the app_control_reply_cb() from the callee application. Additional replies may be delivered on the app_control_enable_app_started_result_event() called.
/// @see app_control_reply_to_launch_request()
/// @see app_control_reply_cb()
/// @see app_control_enable_app_started_result_event()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_send_launch_request(
  app_control_h app_control,
  app_control_reply_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppControl.app_control_send_launch_request(
      app_control,
      callback,
      user_data,
    );

/// @brief Sends the launch request asynchronously.
///
/// @details The operation is mandatory information for the launch request. \n
/// If the operation is not specified, #APP_CONTROL_OPERATION_DEFAULT is used by default.
/// If the operation is #APP_CONTROL_OPERATION_DEFAULT, the application ID is mandatory to explicitly launch the application.
/// @details After the callee application is initialized or the launch request is delivered to the running application successfully, the result callback function will be invoked.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// @remarks The function returns #APP_CONTROL_ERROR_LAUNCH_REJECTED if the operation value is #APP_CONTROL_OPERATION_LAUNCH_ON_EVENT which is only for handling the event from the platform or other application, refer to the @ref CAPI_EVENT_MODULE Module.
/// @remarks The launch request of the service application over out of packages is restricted by the platform. Also, implicit launch requests are NOT delivered to service applications since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif. To launch a service application, an explicit launch request with application ID given by the app_control_set_app_id() must be sent.
///
/// Parameter   app_control     The app_control handle
/// Parameter   result_cb       The callback function to be called when the result is delivered
/// Parameter   reply_cb        The callback function to be called when the reply is delivered
/// Parameter   user_data       The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #APP_CONTROL_ERROR_APP_NOT_FOUND The application to run the given launch request is not found
/// @retval #APP_CONTROL_ERROR_LAUNCH_REJECTED The application cannot be launched in current context
/// @retval #APP_CONTROL_ERROR_LAUNCH_FAILED Failed to launch the application
/// @retval #APP_CONTROL_ERROR_TIMED_OUT Failed due to timeout. The application that handles @a app_control may be busy
/// @post If the launch request is sent for the result, the result will come back through the app_control_reply_cb() from the callee application. Additional replies may be delivered if app_control_enable_app_started_result_event() was called.
/// @see app_control_result_cb()
/// @see app_control_reply_to_launch_request()
/// @see app_control_reply_cb()
/// @see app_control_enable_app_started_result_event()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_send_launch_request_async(
  app_control_h app_control,
  app_control_result_cb result_cb,
  app_control_reply_cb reply_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAppControl.app_control_send_launch_request_async(
      app_control,
      result_cb,
      reply_cb,
      user_data,
    );

/// @brief Sends the launch request synchronously.
///
/// @details The operation is mandatory information for the launch request. \n
/// If the operation is not specified, #APP_CONTROL_OPERATION_DEFAULT is used by default.
/// If the operation is #APP_CONTROL_OPERATION_DEFAULT, the application ID is mandatory to explicitly launch the application.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// @remarks The function returns #APP_CONTROL_ERROR_LAUNCH_REJECTED if the operation value is #APP_CONTROL_OPERATION_LAUNCH_ON_EVENT, which is only for handling the event from the platform or other applications, refer to the @ref CAPI_EVENT_MODULE Module.
/// @remarks The platform does not allow launching service applications from packages other than the requesting application's package. Also, implicit launch requests are NOT delivered to service applications since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif. To launch a service application, an explicit launch request with application ID set by app_control_set_app_id() must be sent.
/// @remarks If the callee application doesn't respond, the function returns a negative error value.
/// @remarks The @a reply must be released using app_control_destroy().
///
/// Parameter   app_control     The app_control handle
/// Output parameter  reply           The app_control handle in which the results of the callee are contained
/// Output parameter  result          The result code of the launch request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #APP_CONTROL_ERROR_APP_NOT_FOUND The application to run the given launch request is not found
/// @retval #APP_CONTROL_ERROR_LAUNCH_REJECTED The application cannot be launched in current context
/// @retval #APP_CONTROL_ERROR_LAUNCH_FAILED Failed to launch the application
/// @retval #APP_CONTROL_ERROR_TIMED_OUT Failed due to timeout. The application that handles @a app_control may be busy
/// @see app_control_destroy()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_send_launch_request_sync(
  app_control_h app_control,
  ffi.Pointer<app_control_h> reply,
  ffi.Pointer<ffi.Int32> result,
) =>
    tizenCapiAppfwAppControl.app_control_send_launch_request_sync(
      app_control,
      reply,
      result,
    );

/// @brief Sends the terminate request to the application that is launched by app_control. This function is only effective for some applications that are provided by default for handling platform default app_controls. You are not allowed to terminate other general applications using this function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Since Tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, this function can be used to terminate sub-applications which were launched as group mode by the caller application.
/// Once callee application is being terminated by this function, other applications which were launched by the callee application as a group mode will be terminated as well.
///
/// Parameter   app_control     The app_control handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_send_launch_request()
/// @see app_control_set_launch_mode()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_send_terminate_request(
  app_control_h app_control,
) =>
    tizenCapiAppfwAppControl.app_control_send_terminate_request(
      app_control,
    );

/// @brief Sets the ID of the application to explicitly launch.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   app_control     The app_control handle
/// Parameter   app_id          The ID of the application to explicitly launch (if the @a app_id is @c NULL, it clears the previous value)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_control_get_app_id()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_set_app_id(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiAppfwAppControl.app_control_set_app_id(
      app_control,
      app_id,
    );

/// @brief Sets the explicit category.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   app_control     The app_control handle
/// Parameter   category 	The explicit category (if the @a category is @c NULL, it clears the previous value)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_get_category()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_set_category(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> category,
) =>
    tizenCapiAppfwAppControl.app_control_set_category(
      app_control,
      category,
    );

/// @brief Sets the ID of the component.
/// @since_tizen 5.5
/// @remarks If the @a component_id is null, the @a component_id set previously will be removed.
/// @remarks The @a component_id is declared by the component-based app, and it is unique globally.
///
/// Parameter   app_control     The app_control handle
/// Parameter   component_id    The ID of the component which will receive the @a app_control
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_set_component_id(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> component_id,
) =>
    tizenCapiAppfwAppControl.app_control_set_component_id(
      app_control,
      component_id,
    );

/// @brief Sets the launch mode of the application.
///
/// @details This function allows the callee application to be launched as a group or as a single mode.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks Although launch_mode were set as #APP_CONTROL_LAUNCH_MODE_GROUP, the callee application would be launched as a single mode if the manifest file of callee application defined the launch mode as "single".
/// This function can just set the preference of the caller application to launch an application.
/// @remarks Sub-applications which were launched as a group mode always have own process.
///
/// Parameter   app_control     The app_control handle
/// Parameter   mode            The launch mode of the application
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_get_launch_mode()
/// @see app_control_launch_mode_e
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_set_launch_mode(
  app_control_h app_control,
  int mode,
) =>
    tizenCapiAppfwAppControl.app_control_set_launch_mode(
      app_control,
      mode,
    );

/// @brief Sets the explicit MIME type of the data.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter    app_control     The app_control handle
/// Parameter    mime            The explicit MIME type of the data this app_control is operating on (if the @a mime is @c NULL, it clears the previous value)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_get_mime()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_set_mime(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> mime,
) =>
    tizenCapiAppfwAppControl.app_control_set_mime(
      app_control,
      mime,
    );

/// @brief Sets the operation to be performed.
///
/// @details The @a operation is the mandatory information for the launch request.
/// If the operation is not specified, #APP_CONTROL_OPERATION_DEFAULT is used for the launch request.
/// If the operation is #APP_CONTROL_OPERATION_DEFAULT, the package information is mandatory to explicitly launch the application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   app_control     The app_control handle
/// Parameter   operation       The operation to be performed (if the @a operation is @c NULL, it clears the previous value)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_get_operation()
/// @see APP_CONTROL_OPERATION_DEFAULT
/// @see APP_CONTROL_OPERATION_EDIT
/// @see APP_CONTROL_OPERATION_VIEW
/// @see APP_CONTROL_OPERATION_PICK
/// @see APP_CONTROL_OPERATION_CREATE_CONTENT
/// @see APP_CONTROL_OPERATION_CALL
/// @see APP_CONTROL_OPERATION_SEND
/// @see APP_CONTROL_OPERATION_SEND_TEXT
/// @see APP_CONTROL_OPERATION_DIAL
/// @see APP_CONTROL_OPERATION_SEARCH
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_set_operation(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> operation,
) =>
    tizenCapiAppfwAppControl.app_control_set_operation(
      app_control,
      operation,
    );

/// @brief Sets the URI of the data.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Since Tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, if the parameter @a uri is started with 'file://' and it is a regular file in this application's data path which can be obtained by calling the app_get_data_path() function, it will be shared to the callee application. Framework will grant a temporary permission to the callee application for this file and revoke it when the callee application is terminated. The callee application can just read it.
///
/// Parameter   app_control      The app_control handle
/// Parameter   uri              The URI of the data this app_control is operating on (if the @a uri is @c NULL, it clears the previous value)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_get_uri()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_set_uri(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> uri,
) =>
    tizenCapiAppfwAppControl.app_control_set_uri(
      app_control,
      uri,
    );

/// @brief Sets the URI of the app_control handle as the URI in the app_control_uri handle.
///
/// @since_tizen 5.5
/// Parameter app_control The app_control handle
/// Parameter uri The URI handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_CONTROL_ERROR_NONE Successful
/// @retval #APP_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see app_control_set_uri()
///
/// Module getter: `tizenCapiAppfwAppControl`.
int app_control_set_uri_by_handle(
  app_control_h app_control,
  app_control_uri_h uri,
) =>
    tizenCapiAppfwAppControl.app_control_set_uri_by_handle(
      app_control,
      uri,
    );

