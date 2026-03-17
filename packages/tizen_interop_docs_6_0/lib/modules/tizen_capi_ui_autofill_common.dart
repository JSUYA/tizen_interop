// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiUiAutofillCommon`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-ui-autofill-common.so.0`.
///
/// UIX / Autofill common.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_ui_autofill_common;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates autofill authentication information.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a ai handle must be released with autofill_auth_info_destroy().
/// Output parameter ai The autofill authentication information handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_create(
  ffi.Pointer<autofill_auth_info_h> ai,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_create(
      ai,
    );

/// @brief Destroys autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_destroy(
  autofill_auth_info_h ai,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_destroy(
      ai,
    );

/// @brief Gets the app id from autofill authentication information.
/// @since_tizen 5.5
/// @remarks @a app_id must be released using free().
/// Parameter ai The autofill authentication information handle
/// Output parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_get_app_id(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_get_app_id(
      ai,
      app_id,
    );

/// @brief Gets the 'authentication needed' attribute from autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Output parameter authentication_needed The authentication need
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_get_authentication_needed(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Bool> authentication_needed,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_get_authentication_needed(
      ai,
      authentication_needed,
    );

/// @brief Gets the 'autofill data present' attribute from autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Output parameter autofill_data_present The autofill data presence
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_get_autofill_data_present(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Bool> autofill_data_present,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_get_autofill_data_present(
      ai,
      autofill_data_present,
    );

/// @brief Gets the service logo image path from autofill authentication information.
/// @since_tizen 5.5
/// @remarks @a service_logo_image_path must be released using free().
/// Parameter ai The autofill authentication information handle
/// Output parameter service_logo_image_path The autofill service logo image path
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_get_service_logo_image_path(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Pointer<ffi.Char>> service_logo_image_path,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_get_service_logo_image_path(
      ai,
      service_logo_image_path,
    );

/// @brief Gets the service message from autofill authentication information.
/// @since_tizen 5.5
/// @remarks @a service_message must be released using free().
/// Parameter ai The autofill authentication information handle
/// Output parameter service_message The autofill service message
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_get_service_message(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Pointer<ffi.Char>> service_message,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_get_service_message(
      ai,
      service_message,
    );

/// @brief Gets the service name from autofill authentication information.
/// @since_tizen 5.5
/// @remarks @a service_name must be released using free().
/// Parameter ai The autofill authentication information handle
/// Output parameter service_name The autofill service name
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_get_service_name(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Pointer<ffi.Char>> service_name,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_get_service_name(
      ai,
      service_name,
    );

/// @brief Gets the view id from autofill authentication information.
/// @since_tizen 5.5
/// @remarks @a view_id must be released using free().
/// Parameter ai The autofill authentication information handle
/// Parameter view_id The view ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_get_view_id(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Pointer<ffi.Char>> view_id,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_get_view_id(
      ai,
      view_id,
    );

/// @brief Sets the app id in autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_set_app_id(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_set_app_id(
      ai,
      app_id,
    );

/// @brief Sets the 'authentication needed' attribute in autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Parameter authentication_needed The authentication need
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_set_authentication_needed(
  autofill_auth_info_h ai,
  bool authentication_needed,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_set_authentication_needed(
      ai,
      authentication_needed,
    );

/// @brief Sets the 'autofill data present' attribute in autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Parameter autofill_data_present The autofill data presence
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_set_autofill_data_present(
  autofill_auth_info_h ai,
  bool autofill_data_present,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_set_autofill_data_present(
      ai,
      autofill_data_present,
    );

/// @brief Sets the service logo image path in autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Parameter service_logo_image_path The autofill service logo image path
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_set_service_logo_image_path(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Char> service_logo_image_path,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_set_service_logo_image_path(
      ai,
      service_logo_image_path,
    );

/// @brief Sets the service message in autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Parameter service_message The autofill service message
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_set_service_message(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Char> service_message,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_set_service_message(
      ai,
      service_message,
    );

/// @brief Sets the service name in autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Parameter service_name The autofill service name
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_set_service_name(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Char> service_name,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_set_service_name(
      ai,
      service_name,
    );

/// @brief Sets the view id in autofill authentication information.
/// @since_tizen 5.5
/// Parameter ai The autofill authentication information handle
/// Parameter view_id The view ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_auth_info_set_view_id(
  autofill_auth_info_h ai,
  ffi.Pointer<ffi.Char> view_id,
) =>
    tizenCapiUiAutofillCommon.autofill_auth_info_set_view_id(
      ai,
      view_id,
    );

/// @brief Creates autofill error information.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a ei handle must be released with autofill_error_info_destroy().
/// Output parameter ei The autofill error information handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_error_info_create(
  ffi.Pointer<autofill_error_info_h> ei,
) =>
    tizenCapiUiAutofillCommon.autofill_error_info_create(
      ei,
    );

/// @brief Destroys autofill error information.
/// @since_tizen 5.5
/// Parameter ei The autofill error information handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_error_info_destroy(
  autofill_error_info_h ei,
) =>
    tizenCapiUiAutofillCommon.autofill_error_info_destroy(
      ei,
    );

/// @brief Gets the app id from autofill error information.
/// @since_tizen 5.5
/// @remarks @a app_id must be released using free().
/// Parameter ei The autofill error information handle
/// Output parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_error_info_get_app_id(
  autofill_error_info_h ei,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_error_info_get_app_id(
      ei,
      app_id,
    );

/// @brief Gets the error code from autofill error information.
/// @since_tizen 5.5
/// Parameter ei The autofill error information handle
/// Output parameter error_code The autofill error code
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see get_error_message()
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_error_info_get_error_code(
  autofill_error_info_h ei,
  ffi.Pointer<ffi.Int32> error_code,
) =>
    tizenCapiUiAutofillCommon.autofill_error_info_get_error_code(
      ei,
      error_code,
    );

/// @brief Sets the app id in autofill error information.
/// @since_tizen 5.5
/// Parameter ei The autofill error information handle
/// Parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_error_info_set_app_id(
  autofill_error_info_h ei,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_error_info_set_app_id(
      ei,
      app_id,
    );

/// @brief Sets the error code in autofill error information.
/// @since_tizen 5.5
/// Parameter ei The autofill error information handle
/// Parameter error_code The autofill error code
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_error_info_set_error_code(
  autofill_error_info_h ei,
  int error_code,
) =>
    tizenCapiUiAutofillCommon.autofill_error_info_set_error_code(
      ei,
      error_code,
    );

/// @brief Adds autofill fill response group.
/// @since_tizen 5.5
/// Parameter h The handle for having a response of the requested autofill
/// Parameter it The autofill fill response group handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_add_group(
  autofill_fill_response_h h,
  autofill_fill_response_group_h it,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_add_group(
      h,
      it,
    );

/// @brief Creates a handle for having a response of the requested autofill.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a h handle must be released with autofill_fill_response_destroy().
/// Output parameter h The handle for having a response of the requested autofill
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_create(
  ffi.Pointer<autofill_fill_response_h> h,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_create(
      h,
    );

/// @brief Destroys a handle for having a response of the requested autofill.
/// @since_tizen 5.5
/// Parameter h The handle for having a response of the requested autofill
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_destroy(
  autofill_fill_response_h h,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_destroy(
      h,
    );

/// @brief Retrieves all groups of each fill response.
/// @since_tizen 5.5
/// Parameter h The handle for having a response of the requested autofill
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_foreach_group(
  autofill_fill_response_h h,
  autofill_fill_response_group_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_foreach_group(
      h,
      callback,
      user_data,
    );

/// @brief Gets the app ID from the handle for having a response of the requested autofill.
/// @since_tizen 5.5
/// @remarks @a app_id must be released using free().
/// Parameter h The handle for having a response of the requested autofill
/// Output parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_get_app_id(
  autofill_fill_response_h h,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_get_app_id(
      h,
      app_id,
    );

/// @brief Gets the number of fill response group.
/// @since_tizen 5.5
/// Parameter h The handle for having a response of the requested autofill
/// Output parameter count The number of group
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_get_group_count(
  autofill_fill_response_h h,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_get_group_count(
      h,
      count,
    );

/// @brief Gets the view ID from the handle for having a response of the requested autofill.
/// @since_tizen 5.5
/// @remarks @a view_id must be released using free().
/// Parameter h The handle for having a response of the requested autofill
/// Output parameter view_id The view ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_get_view_id(
  autofill_fill_response_h h,
  ffi.Pointer<ffi.Pointer<ffi.Char>> view_id,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_get_view_id(
      h,
      view_id,
    );

/// @brief Adds autofill item in an autofill fill response group.
/// @since_tizen 5.5
/// Parameter h The autofill fill response group handle
/// Parameter it The autofill fill response item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_group_add_item(
  autofill_fill_response_group_h h,
  autofill_fill_response_item_h it,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_group_add_item(
      h,
      it,
    );

/// @brief Clones an autofill fill response group.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a clone handle must be released with autofill_fill_response_group_destroy().
/// Parameter h The autofill fill response group handle
/// Parameter clone The autofill fill response group handle to be cloned
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_group_clone(
  autofill_fill_response_group_h h,
  ffi.Pointer<autofill_fill_response_group_h> clone,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_group_clone(
      h,
      clone,
    );

/// @brief Creates an autofill fill response group.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a h handle must be released with autofill_fill_response_group_destroy().
/// Output parameter h The autofill fill response group handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_group_create(
  ffi.Pointer<autofill_fill_response_group_h> h,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_group_create(
      h,
    );

/// @brief Destroys an autofill fill response group.
/// @since_tizen 5.5
/// Parameter h The autofill fill response group handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_group_destroy(
  autofill_fill_response_group_h h,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_group_destroy(
      h,
    );

/// @brief Retrieves all fill response items of each group.
/// @since_tizen 5.5
/// Parameter h The autofill fill response group handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_group_foreach_item(
  autofill_fill_response_group_h h,
  autofill_fill_response_item_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_group_foreach_item(
      h,
      callback,
      user_data,
    );

/// @brief Clones a handle for fill response item.
///
/// @since_tizen 5.5
///
/// Parameter it The autofill fill response item handle
/// Parameter clone The autofill fill response item handle to be cloned
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_clone(
  autofill_fill_response_item_h it,
  ffi.Pointer<autofill_fill_response_item_h> clone,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_clone(
      it,
      clone,
    );

/// @brief Creates a handle for fill response item.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a it handle must be released with autofill_fill_response_item_destroy().
/// Output parameter it The autofill fill response item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_create(
  ffi.Pointer<autofill_fill_response_item_h> it,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_create(
      it,
    );

/// @brief Destroys the handle for fill response item.
/// @since_tizen 5.5
/// Parameter it The autofill fill response item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_destroy(
  autofill_fill_response_item_h it,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_destroy(
      it,
    );

/// @brief Gets the type of autofill hint in the handle for fill response item.
/// @since_tizen 5.5
/// Parameter it The autofill fill response item handle
/// Output parameter hint The autofill hint
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_get_autofill_hint(
  autofill_fill_response_item_h it,
  ffi.Pointer<ffi.Int32> hint,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_get_autofill_hint(
      it,
      hint,
    );

/// @brief Gets the autofill ID from the handle for fill response item.
/// @since_tizen 5.5
/// @remarks @a id must be released using free().
/// Parameter it The autofill fill response item handle
/// Output parameter id The autofill fill response item ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_get_id(
  autofill_fill_response_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> id,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_get_id(
      it,
      id,
    );

/// @brief Gets the presentation text from the handle for fill response item.
/// @since_tizen 5.5
/// @remarks @a presentation_text must be released using free().
/// Parameter it The autofill fill response item handle
/// Output parameter presentation_text The presentation text
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_get_presentation_text(
  autofill_fill_response_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> presentation_text,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_get_presentation_text(
      it,
      presentation_text,
    );

/// @brief Gets the autofill value from the handle for fill response item.
/// @since_tizen 5.5
/// @remarks @a value must be released using free().
/// Parameter it The autofill fill response item handle
/// Output parameter value The autofill fill response item value
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_get_value(
  autofill_fill_response_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_get_value(
      it,
      value,
    );

/// @brief Sets the type of autofill hint in the handle for fill response item.
/// @since_tizen 5.5
/// Parameter it The autofill fill response item handle
/// Parameter hint The autofill hint
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_set_autofill_hint(
  autofill_fill_response_item_h it,
  int hint,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_set_autofill_hint(
      it,
      hint,
    );

/// @brief Sets the autofill ID in the handle for fill response item.
/// @since_tizen 5.5
/// Parameter it The autofill fill response item handle
/// Parameter id The autofill fill response item ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_set_id(
  autofill_fill_response_item_h it,
  ffi.Pointer<ffi.Char> id,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_set_id(
      it,
      id,
    );

/// @brief Sets the presentation text in the handle for fill response item.
/// @since_tizen 5.5
/// Parameter it The autofill fill response item handle
/// Parameter presentation_text The presentation text
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_set_presentation_text(
  autofill_fill_response_item_h it,
  ffi.Pointer<ffi.Char> presentation_text,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_set_presentation_text(
      it,
      presentation_text,
    );

/// @brief Sets the autofill value in the handle for fill response item.
/// @since_tizen 5.5
/// Parameter it The autofill fill response item handle
/// Parameter value The autofill fill response item value
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_item_set_value(
  autofill_fill_response_item_h it,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_item_set_value(
      it,
      value,
    );

/// @brief Sets the app ID in the handle for having a response of the requested autofill.
/// @since_tizen 5.5
/// Parameter h The handle for having a response of the requested autofill
/// Parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_set_app_id(
  autofill_fill_response_h h,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_set_app_id(
      h,
      app_id,
    );

/// @brief Sets the view ID in the handle for having a response of the requested autofill.
/// @since_tizen 5.5
/// Parameter h The handle for having a response of the requested autofill
/// Parameter view_id The view ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_fill_response_set_view_id(
  autofill_fill_response_h h,
  ffi.Pointer<ffi.Char> view_id,
) =>
    tizenCapiUiAutofillCommon.autofill_fill_response_set_view_id(
      h,
      view_id,
    );

/// @brief Clones an autofill item.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a clone handle must be released with autofill_item_destroy().
/// Parameter it The autofill item handle
/// Output parameter clone The autofill item handle to be cloned
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_clone(
  autofill_item_h it,
  ffi.Pointer<autofill_item_h> clone,
) =>
    tizenCapiUiAutofillCommon.autofill_item_clone(
      it,
      clone,
    );

/// @brief Creates an autofill item.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a it handle must be released with autofill_item_destroy().
/// Output parameter it The autofill item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
/// @see autofill_item_destroy()
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_create(
  ffi.Pointer<autofill_item_h> it,
) =>
    tizenCapiUiAutofillCommon.autofill_item_create(
      it,
    );

/// @brief Destroys an autofill item.
/// @since_tizen 5.5
/// Parameter it The autofill item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_destroy(
  autofill_item_h it,
) =>
    tizenCapiUiAutofillCommon.autofill_item_destroy(
      it,
    );

/// @brief Gets the autofill hint from an autofill item.
/// @since_tizen 5.5
/// Parameter it The autofill item handle
/// Output parameter hint The autofill hint
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_get_autofill_hint(
  autofill_item_h it,
  ffi.Pointer<ffi.Int32> hint,
) =>
    tizenCapiUiAutofillCommon.autofill_item_get_autofill_hint(
      it,
      hint,
    );

/// @brief Gets the autofill ID from an autofill item.
/// @since_tizen 5.5
/// @remarks @a id must be released using free().
/// Parameter it The autofill item handle
/// Output parameter id The autofill ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_get_id(
  autofill_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> id,
) =>
    tizenCapiUiAutofillCommon.autofill_item_get_id(
      it,
      id,
    );

/// @brief Gets the autofill label from an autofill item.
/// @since_tizen 5.5
/// @remarks @a label must be released using free().
/// Parameter it The autofill item handle
/// Output parameter label The autofill label
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_get_label(
  autofill_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenCapiUiAutofillCommon.autofill_item_get_label(
      it,
      label,
    );

/// @brief Gets the sensitive data from an autofill item.
/// @since_tizen 5.5
/// Parameter it The autofill item handle
/// Output parameter sensitive The sensitive data or not
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_get_sensitive_data(
  autofill_item_h it,
  ffi.Pointer<ffi.Bool> sensitive,
) =>
    tizenCapiUiAutofillCommon.autofill_item_get_sensitive_data(
      it,
      sensitive,
    );

/// @brief Gets the autofill value from an autofill item.
/// @since_tizen 5.5
/// @remarks @a value must be released using free().
/// Parameter it The autofill item handle
/// Output parameter value The autofill value
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_get_value(
  autofill_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiUiAutofillCommon.autofill_item_get_value(
      it,
      value,
    );

/// @brief Sets the autofill hint (id (username), name, password, phone, credit card number, organization, so on) in an autofill item.
/// @since_tizen 5.5
/// Parameter it The autofill item handle
/// Parameter hint The autofill hint
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_set_autofill_hint(
  autofill_item_h it,
  int hint,
) =>
    tizenCapiUiAutofillCommon.autofill_item_set_autofill_hint(
      it,
      hint,
    );

/// @brief Sets the autofill ID in an autofill item.
/// @since_tizen 5.5
/// Parameter it The autofill item handle
/// Parameter id The autofill ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_set_id(
  autofill_item_h it,
  ffi.Pointer<ffi.Char> id,
) =>
    tizenCapiUiAutofillCommon.autofill_item_set_id(
      it,
      id,
    );

/// @brief Sets the autofill label in an autofill item.
/// @since_tizen 5.5
/// Parameter it The autofill item handle
/// Parameter label The autofill label
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_set_label(
  autofill_item_h it,
  ffi.Pointer<ffi.Char> label,
) =>
    tizenCapiUiAutofillCommon.autofill_item_set_label(
      it,
      label,
    );

/// @brief Sets the sensitive data in an autofill item.
/// @since_tizen 5.5
/// Parameter it The autofill item handle
/// Parameter sensitive The sensitive data or not
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_set_sensitive_data(
  autofill_item_h it,
  bool sensitive,
) =>
    tizenCapiUiAutofillCommon.autofill_item_set_sensitive_data(
      it,
      sensitive,
    );

/// @brief Sets the autofill value in an autofill item.
/// @since_tizen 5.5
/// Parameter it The autofill item handle
/// Parameter value The autofill value
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_item_set_value(
  autofill_item_h it,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiUiAutofillCommon.autofill_item_set_value(
      it,
      value,
    );

/// @brief Clones an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// Parameter clone The autofill save item handle to be cloned
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_clone(
  autofill_save_item_h it,
  ffi.Pointer<autofill_save_item_h> clone,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_clone(
      it,
      clone,
    );

/// @brief Creates autofill save item.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a it handle must be released with autofill_save_item_destroy().
/// Output parameter it The autofill save item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_create(
  ffi.Pointer<autofill_save_item_h> it,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_create(
      it,
    );

/// @brief Destroys an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_destroy(
  autofill_save_item_h it,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_destroy(
      it,
    );

/// @brief Gets the autofill hint from an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// Output parameter hint The autofill hint
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_get_autofill_hint(
  autofill_save_item_h it,
  ffi.Pointer<ffi.Int32> hint,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_get_autofill_hint(
      it,
      hint,
    );

/// @brief Gets the autofill ID from an autofill save item.
/// @since_tizen 5.5
/// @remarks @a id must be released using free().
/// Parameter it The autofill save item handle
/// Output parameter id The autofill ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_get_id(
  autofill_save_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> id,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_get_id(
      it,
      id,
    );

/// @brief Gets the autofill label from an autofill save item.
/// @since_tizen 5.5
/// @remarks @a label must be released using free().
/// Parameter it The autofill save item handle
/// Output parameter label The autofill label
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_get_label(
  autofill_save_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_get_label(
      it,
      label,
    );

/// @brief Gets the sensitive data from an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// Output parameter sensitive The sensitive data or not
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_get_sensitive_data(
  autofill_save_item_h it,
  ffi.Pointer<ffi.Bool> sensitive,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_get_sensitive_data(
      it,
      sensitive,
    );

/// @brief Gets the autofill value from an autofill save item.
/// @since_tizen 5.5
/// @remarks @a value must be released using free().
/// Parameter it The autofill save item handle
/// Output parameter value The autofill value
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_get_value(
  autofill_save_item_h it,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_get_value(
      it,
      value,
    );

/// @brief Sets the autofill hint (id(username), name, password, phone, credit card number, organization, so on) in an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// Parameter hint The autofill hint
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_set_autofill_hint(
  autofill_save_item_h it,
  int hint,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_set_autofill_hint(
      it,
      hint,
    );

/// @brief Sets the autofill ID in an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// Parameter id The autofill ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_set_id(
  autofill_save_item_h it,
  ffi.Pointer<ffi.Char> id,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_set_id(
      it,
      id,
    );

/// @brief Sets the autofill label in an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// Output parameter label The autofill label
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_set_label(
  autofill_save_item_h it,
  ffi.Pointer<ffi.Char> label,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_set_label(
      it,
      label,
    );

/// @brief Sets the sensitive data in an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// Parameter sensitive The sensitive data or not
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_set_sensitive_data(
  autofill_save_item_h it,
  bool sensitive,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_set_sensitive_data(
      it,
      sensitive,
    );

/// @brief Sets the autofill value in an autofill save item.
/// @since_tizen 5.5
/// Parameter it The autofill save item handle
/// Parameter value The autofill value
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_item_set_value(
  autofill_save_item_h it,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiUiAutofillCommon.autofill_save_item_set_value(
      it,
      value,
    );

/// @brief Adds autofill save item in the view having autofill entries.
/// @since_tizen 5.5
/// Parameter vi The handle of autofill for the saving view
/// Parameter it The autofill save item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_add_item(
  autofill_save_view_info_h vi,
  autofill_save_item_h it,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_add_item(
      vi,
      it,
    );

/// @brief Creates the view having autofill entries.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a vi handle must be released with autofill_save_view_info_destroy()
/// Output parameter vi The handle of autofill for the saving view
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_create(
  ffi.Pointer<autofill_save_view_info_h> vi,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_create(
      vi,
    );

/// @brief Destroys the view having autofill entries.
/// @since_tizen 5.5
/// Parameter vi The autofill view info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_destroy(
  autofill_save_view_info_h vi,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_destroy(
      vi,
    );

/// @brief Retrieves all items in the view having autofill entries.
/// @since_tizen 5.5
/// Parameter vi The handle of autofill for the saving view
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_foreach_item(
  autofill_save_view_info_h vi,
  autofill_save_item_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_foreach_item(
      vi,
      callback,
      user_data,
    );

/// @brief Gets the app ID from the view having autofill entries.
/// @since_tizen 5.5
/// @remarks @a app_id must be released using free().
/// Parameter vi The handle of autofill for the saving view
/// Output parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_get_app_id(
  autofill_save_view_info_h vi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_get_app_id(
      vi,
      app_id,
    );

/// @brief Gets the view ID from the view having autofill entries.
/// @since_tizen 5.5
/// @remarks @a view_id must be released using free().
/// Parameter vi The handle of autofill for the saving view
/// Output parameter view_id The view ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_get_view_id(
  autofill_save_view_info_h vi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> view_id,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_get_view_id(
      vi,
      view_id,
    );

/// @brief Gets the title of the view having autofill entries.
/// @since_tizen 5.5
/// @remarks @a view_title must be released using free().
/// Parameter vi The handle of autofill for the saving view
/// Output parameter view_title The view title
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_get_view_title(
  autofill_save_view_info_h vi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> view_title,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_get_view_title(
      vi,
      view_title,
    );

/// @brief Sets the app ID in the view having autofill entries.
/// @since_tizen 5.5
/// Parameter vi The handle of autofill for the saving view
/// Parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_set_app_id(
  autofill_save_view_info_h vi,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_set_app_id(
      vi,
      app_id,
    );

/// @brief Sets the view ID in the view having autofill entries.
/// @since_tizen 5.5
/// Parameter vi The handle of autofill for the saving view
/// Parameter view_id The view ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_set_view_id(
  autofill_save_view_info_h vi,
  ffi.Pointer<ffi.Char> view_id,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_set_view_id(
      vi,
      view_id,
    );

/// @brief Sets the title of the view having autofill entries.
/// @since_tizen 5.5
/// Parameter vi The handle of autofill for the saving view
/// Parameter view_title The view title
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_save_view_info_set_view_title(
  autofill_save_view_info_h vi,
  ffi.Pointer<ffi.Char> view_title,
) =>
    tizenCapiUiAutofillCommon.autofill_save_view_info_set_view_title(
      vi,
      view_title,
    );

/// @brief Adds autofill item in autofill view information.
/// @since_tizen 5.5
/// Parameter vi The autofill view info handle
/// Parameter it The autofill item handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_view_info_add_item(
  autofill_view_info_h vi,
  autofill_item_h it,
) =>
    tizenCapiUiAutofillCommon.autofill_view_info_add_item(
      vi,
      it,
    );

/// @brief Creates autofill view information.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a vi handle must be released with autofill_view_info_destroy().
/// Output parameter vi The autofill view info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_view_info_create(
  ffi.Pointer<autofill_view_info_h> vi,
) =>
    tizenCapiUiAutofillCommon.autofill_view_info_create(
      vi,
    );

/// @brief Destroys autofill view information.
/// @since_tizen 5.5
/// Parameter vi The autofill view info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_view_info_destroy(
  autofill_view_info_h vi,
) =>
    tizenCapiUiAutofillCommon.autofill_view_info_destroy(
      vi,
    );

/// @brief Retrieves all items in autofill view information.
/// @since_tizen 5.5
/// Parameter vi The autofill view info handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_view_info_foreach_item(
  autofill_view_info_h vi,
  autofill_item_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillCommon.autofill_view_info_foreach_item(
      vi,
      callback,
      user_data,
    );

/// @brief Gets the app id from autofill view information.
/// @since_tizen 5.5
/// @remarks @a app_id must be released using free().
/// Parameter vi The autofill view info handle
/// Output parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_view_info_get_app_id(
  autofill_view_info_h vi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_view_info_get_app_id(
      vi,
      app_id,
    );

/// @brief Gets the view id from autofill view information.
/// @since_tizen 5.5
/// @remarks @a view_id must be released using free().
/// Parameter vi The autofill view info handle
/// Output parameter view_id The view ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_view_info_get_view_id(
  autofill_view_info_h vi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> view_id,
) =>
    tizenCapiUiAutofillCommon.autofill_view_info_get_view_id(
      vi,
      view_id,
    );

/// @brief Sets the app id in autofill view information.
/// @since_tizen 5.5
/// Parameter vi The autofill view info handle
/// Parameter app_id The app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_view_info_set_app_id(
  autofill_view_info_h vi,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiUiAutofillCommon.autofill_view_info_set_app_id(
      vi,
      app_id,
    );

/// @brief Sets the view id in autofill view information.
/// @since_tizen 5.5
/// Parameter vi The autofill view info handle
/// Parameter view_id The view ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillCommon`.
int autofill_view_info_set_view_id(
  autofill_view_info_h vi,
  ffi.Pointer<ffi.Char> view_id,
) =>
    tizenCapiUiAutofillCommon.autofill_view_info_set_view_id(
      vi,
      view_id,
    );

