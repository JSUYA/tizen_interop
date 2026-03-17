// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiUiAutofillService`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-ui-autofill-service.so.0`.
///
/// UIX / Autofill service.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_ui_autofill_service;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Deinitializes autofill service library.
/// @since_tizen 5.5
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_deinitialize() =>
    tizenCapiUiAutofillService.autofill_service_deinitialize();

/// @brief Initializes autofill service library.
/// @since_tizen 5.5
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_initialize() =>
    tizenCapiUiAutofillService.autofill_service_initialize();

/// @brief Sends the authentication information.
/// @since_tizen 5.5
/// Parameter context_id The autofill context identification value of an associated autofill client handle
/// Parameter h The autofill authentication info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_send_auth_info(
  int context_id,
  autofill_auth_info_h h,
) =>
    tizenCapiUiAutofillService.autofill_service_send_auth_info(
      context_id,
      h,
    );

/// @brief Sends error to the autofill client.
/// @since_tizen 5.5
/// Parameter context_id The autofill context identification value of an associated autofill client handle
/// Parameter h The autofill error info handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_send_error_info(
  int context_id,
  autofill_error_info_h h,
) =>
    tizenCapiUiAutofillService.autofill_service_send_error_info(
      context_id,
      h,
    );

/// @brief Sends the fill response.
/// @since_tizen 5.5
/// Parameter context_id The autofill context identification value of an associated autofill client handle
/// Parameter h The autofill fill response handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_send_fill_response(
  int context_id,
  autofill_fill_response_h h,
) =>
    tizenCapiUiAutofillService.autofill_service_send_fill_response(
      context_id,
      h,
    );

/// @brief Sets the callback to receive the request of authentication information.
/// @since_tizen 5.5
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_set_auth_info_requested_cb(
  autofill_service_auth_info_requested_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillService.autofill_service_set_auth_info_requested_cb(
      callback,
      user_data,
    );

/// @brief Sets the callback to receive the cancellation of autofill request.
/// @since_tizen 5.5
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_set_cancel_fill_requested_cb(
  autofill_service_cancel_fill_requested_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillService.autofill_service_set_cancel_fill_requested_cb(
      callback,
      user_data,
    );

/// @brief Sets the callback to receive the commit request.
/// @since_tizen 5.5
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_set_committed_cb(
  autofill_service_committed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillService.autofill_service_set_committed_cb(
      callback,
      user_data,
    );

/// @brief Sets the callback to receive the fill request.
/// @since_tizen 5.5
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_set_fill_requested_cb(
  autofill_service_fill_requested_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillService.autofill_service_set_fill_requested_cb(
      callback,
      user_data,
    );

/// @brief Sets the callback to receive the terminate request.
/// @since_tizen 5.5
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_set_terminate_received_cb(
  autofill_service_terminate_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillService.autofill_service_set_terminate_received_cb(
      callback,
      user_data,
    );

/// @brief Unsets the callback to receive the request of authentication information.
/// @since_tizen 5.5
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_unset_auth_info_requested_cb() =>
    tizenCapiUiAutofillService.autofill_service_unset_auth_info_requested_cb();

/// @brief Unsets the callback to receive the cancellation of autofill request.
/// @since_tizen 5.5
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_unset_cancel_fill_requested_cb() =>
    tizenCapiUiAutofillService.autofill_service_unset_cancel_fill_requested_cb();

/// @brief Unsets the callback to receive the commit request.
/// @since_tizen 5.5
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_unset_committed_cb() =>
    tizenCapiUiAutofillService.autofill_service_unset_committed_cb();

/// @brief Unsets the callback to receive the fill request.
/// @since_tizen 5.5
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_unset_fill_requested_cb() =>
    tizenCapiUiAutofillService.autofill_service_unset_fill_requested_cb();

/// @brief Unsets the callback to receive the terminate request.
/// @since_tizen 5.5
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
///
/// Module getter: `tizenCapiUiAutofillService`.
int autofill_service_unset_terminate_received_cb() =>
    tizenCapiUiAutofillService.autofill_service_unset_terminate_received_cb();

