// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiUiAutofill`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-ui-autofill.so.0`.
///
/// UIX / Autofill.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_ui_autofill;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Requests of authentication information.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// Parameter vi The autofill view info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_auth_info_request(
  autofill_h ah,
  autofill_view_info_h vi,
) =>
    tizenCapiUiAutofill.autofill_auth_info_request(
      ah,
      vi,
    );

/// @brief Sets the callback to receive the authentication information.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_auth_info_unset_received_cb()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_auth_info_set_received_cb(
  autofill_h ah,
  autofill_auth_info_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofill.autofill_auth_info_set_received_cb(
      ah,
      callback,
      user_data,
    );

/// @brief Unsets the callback to receive the authentication information.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_auth_info_set_received_cb()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_auth_info_unset_received_cb(
  autofill_h ah,
) =>
    tizenCapiUiAutofill.autofill_auth_info_unset_received_cb(
      ah,
    );

/// @brief Cancels autofill request to fill out each input form.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// Parameter vi The autofill view info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
/// @see autofill_fill_request()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_cancel_fill_request(
  autofill_h ah,
  autofill_view_info_h vi,
) =>
    tizenCapiUiAutofill.autofill_cancel_fill_request(
      ah,
      vi,
    );

/// @brief Sends the autofill save view info.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// Parameter vi The autofill save view info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_commit(
  autofill_h ah,
  autofill_save_view_info_h vi,
) =>
    tizenCapiUiAutofill.autofill_commit(
      ah,
      vi,
    );

/// @brief Connects to autofill daemon.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_connect(
  autofill_h ah,
  autofill_connection_status_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofill.autofill_connect(
      ah,
      callback,
      user_data,
    );

/// @brief Creates a handle for autofill.
/// @since_tizen 5.5
/// @remarks If the function succeeds, @a ah handle must be released with autofill_destroy().
/// Output parameter ah The autofill handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
/// @see autofill_destroy()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_create(
  ffi.Pointer<autofill_h> ah,
) =>
    tizenCapiUiAutofill.autofill_create(
      ah,
    );

/// @brief Destroys an autofill.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_create()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_destroy(
  autofill_h ah,
) =>
    tizenCapiUiAutofill.autofill_destroy(
      ah,
    );

/// @brief Sets the callback to receive the error information.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_error_info_unset_received_cb()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_error_info_set_received_cb(
  autofill_h ah,
  autofill_error_info_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofill.autofill_error_info_set_received_cb(
      ah,
      callback,
      user_data,
    );

/// @brief Unsets the callback to receive the error information.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_error_info_set_received_cb()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_error_info_unset_received_cb(
  autofill_h ah,
) =>
    tizenCapiUiAutofill.autofill_error_info_unset_received_cb(
      ah,
    );

/// @brief Sends fill request to fill out each input form.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// Parameter vi The autofill view info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
/// @see autofill_cancel_fill_request()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_fill_request(
  autofill_h ah,
  autofill_view_info_h vi,
) =>
    tizenCapiUiAutofill.autofill_fill_request(
      ah,
      vi,
    );

/// @brief Sets the callback to receive autofill fill response.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_fill_response_unset_received_cb()
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_fill_response_set_received_cb(
  autofill_h ah,
  autofill_fill_response_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofill.autofill_fill_response_set_received_cb(
      ah,
      callback,
      user_data,
    );

/// @brief Unsets the callback to receive autofill fill response.
/// @since_tizen 5.5
/// Parameter ah The autofill handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofill`.
int autofill_fill_response_unset_received_cb(
  autofill_h ah,
) =>
    tizenCapiUiAutofill.autofill_fill_response_unset_received_cb(
      ah,
    );

