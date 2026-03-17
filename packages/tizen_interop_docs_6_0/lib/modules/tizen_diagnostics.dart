// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenDiagnostics`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libdiagnostics.so.1`.
///
/// System / Diagnostics.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_diagnostics;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Frees diagnostics data.
/// @since_tizen 6.0
///
/// Parameter data Diagnostics data handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #DIAGNOSTICS_ERROR_NONE Success
/// @retval #DIAGNOSTICS_ERROR_NOT_SUPPORTED Not supported
/// @retval #DIAGNOSTICS_ERROR_INVALID_PARAMETER Provided parameter is invalid
///
/// Module getter: `tizenDiagnostics`.
int diagnostics_data_destroy(
  diagnostics_data_h data,
) =>
    tizenDiagnostics.diagnostics_data_destroy(
      data,
    );

/// @brief Reads diagnostics data.
/// @since_tizen 6.0
/// @remarks @a data should be released with diagnostics_data_destroy().
/// This function is intended for use in loop until EOF is reached.
/// EOF is when @a bytes_read == 0 and function returns #DIAGNOSTICS_ERROR_NONE.
/// Parameter data Diagnostics data handle
/// Parameter buf Buffer to store read data \n
/// Provided buffer must be large enough to contain @a count number of bytes
/// Parameter count Number of bytes to read
/// Parameter timeout_ms Timeout [ms] for reading requested number of bytes (timeout_ms <= 0 means to wait forever)
/// Output parameter bytes_read Real number of read bytes
///
/// @return 0 on success, otherwise a negative error value
/// @retval #DIAGNOSTICS_ERROR_NONE Success
/// @retval #DIAGNOSTICS_ERROR_NOT_SUPPORTED Not supported
/// @retval #DIAGNOSTICS_ERROR_INVALID_PARAMETER Provided parameter is invalid
/// @retval #DIAGNOSTICS_ERROR_TIMED_OUT Timeout occured
/// @retval #DIAGNOSTICS_ERROR_TRY_AGAIN Try again
/// @retval #DIAGNOSTICS_ERROR_IO_ERROR Internal error occured while trying to read data, result is unspecified and *bytes_read is not updated
///
/// Module getter: `tizenDiagnostics`.
int diagnostics_data_read(
  diagnostics_data_h data,
  ffi.Pointer<ffi.Void> buf,
  int count,
  int timeout_ms,
  ffi.Pointer<ffi.Size> bytes_read,
) =>
    tizenDiagnostics.diagnostics_data_read(
      data,
      buf,
      count,
      timeout_ms,
      bytes_read,
    );

/// @brief Frees diagnostics context.
/// @since_tizen 6.0
///
/// Parameter ctx Diagnostics context handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #DIAGNOSTICS_ERROR_NONE Success
/// @retval #DIAGNOSTICS_ERROR_NOT_SUPPORTED Not supported
/// @retval #DIAGNOSTICS_ERROR_INVALID_PARAMETER Provided parameter is invalid
///
/// Module getter: `tizenDiagnostics`.
int diagnostics_destroy(
  diagnostics_ctx_h ctx,
) =>
    tizenDiagnostics.diagnostics_destroy(
      ctx,
    );

/// @brief Gets diagnostics context provider's id.
/// @since_tizen 6.0
/// @remarks @a client_id should be released with free().
///
/// Parameter ctx Diagnostics context handle
/// Output parameter client_id An id of the context provider
///
/// @return 0 on success, otherwise a negative error value
/// @retval #DIAGNOSTICS_ERROR_NONE Success
/// @retval #DIAGNOSTICS_ERROR_NOT_SUPPORTED Not supported
/// @retval #DIAGNOSTICS_ERROR_INVALID_PARAMETER Provided parameter is invalid
///
/// Module getter: `tizenDiagnostics`.
int diagnostics_get_client_id(
  diagnostics_ctx_h ctx,
  ffi.Pointer<ffi.Pointer<ffi.Char>> client_id,
) =>
    tizenDiagnostics.diagnostics_get_client_id(
      ctx,
      client_id,
    );

/// @platform
/// @brief Gets report data.
/// @since_tizen 6.0
/// @privlevel platform
/// @privilege
/// @remarks @a data should be released with diagnostics_data_destroy().
/// This function is permitted only to an app signed by platform level certificates.
///
/// Parameter ctx Diagnostics context handle
/// Parameter params Array of parameters \n
/// Refer to context provider's documentation for available parameters
/// Parameter params_size Number of parameters
/// Output parameter data Diagnostics data handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #DIAGNOSTICS_ERROR_NONE Success
/// @retval #DIAGNOSTICS_ERROR_NOT_SUPPORTED Not supported
/// @retval #DIAGNOSTICS_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DIAGNOSTICS_ERROR_INVALID_PARAMETER Provided parameter is invalid
/// @retval #DIAGNOSTICS_ERROR_IO_ERROR Internal error occured
/// @retval #DIAGNOSTICS_ERROR_OUT_OF_MEMORY Not enough memory to create data handle
///
/// Module getter: `tizenDiagnostics`.
int diagnostics_get_data(
  diagnostics_ctx_h ctx,
  ffi.Pointer<ffi.Pointer<ffi.Char>> params,
  int params_size,
  ffi.Pointer<diagnostics_data_h> data,
) =>
    tizenDiagnostics.diagnostics_get_data(
      ctx,
      params,
      params_size,
      data,
    );

/// @platform
/// @brief Requests client to dump data.
/// @since_tizen 6.0
/// @privlevel platform
/// @privilege
/// @remarks @a data should be released with diagnostics_data_destroy().
/// This function is permitted only to an app signed by platform level certificates.
///
/// Parameter client_id An id of app or service to request
/// Parameter params Array of parameters
/// Parameter params_size Number of parameters
/// Output parameter data Dumpsys data handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #DIAGNOSTICS_ERROR_NONE Success
/// @retval #DIAGNOSTICS_ERROR_NOT_SUPPORTED Not supported
/// @retval #DIAGNOSTICS_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DIAGNOSTICS_ERROR_INVALID_PARAMETER Provided parameter is invalid
/// @retval #DIAGNOSTICS_ERROR_IO_ERROR Internal error occured
/// @retval #DIAGNOSTICS_ERROR_OUT_OF_MEMORY Not enough memory to create data handle
///
/// Module getter: `tizenDiagnostics`.
int diagnostics_request_client_data(
  ffi.Pointer<ffi.Char> client_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> params,
  int params_size,
  ffi.Pointer<diagnostics_data_h> data,
) =>
    tizenDiagnostics.diagnostics_request_client_data(
      client_id,
      params,
      params_size,
      data,
    );

/// @brief Sets the callback for bug report notification.
/// @since_tizen 6.0
///
/// Parameter callback A callback function to set
/// Parameter user_data The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #DIAGNOSTICS_ERROR_NONE Success
/// @retval #DIAGNOSTICS_ERROR_NOT_SUPPORTED Not supported
/// @retval #DIAGNOSTICS_ERROR_INVALID_PARAMETER Provided parameter is invalid
/// @retval #DIAGNOSTICS_ERROR_RESOURCE_BUSY Callback already registered
/// @retval #DIAGNOSTICS_ERROR_IO_ERROR Internal error occured
///
/// Module getter: `tizenDiagnostics`.
int diagnostics_set_notification_cb(
  diagnostics_notification_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDiagnostics.diagnostics_set_notification_cb(
      callback,
      user_data,
    );

/// @brief Unsets the callback for bug report notification.
/// @since_tizen 6.0
///
/// @return 0 on success, otherwise a negative error value
/// @retval #DIAGNOSTICS_ERROR_NONE Success
/// @retval #DIAGNOSTICS_ERROR_NOT_SUPPORTED Not supported
/// @retval #DIAGNOSTICS_ERROR_IO_ERROR Internal error occured
///
/// Module getter: `tizenDiagnostics`.
int diagnostics_unset_notification_cb() =>
    tizenDiagnostics.diagnostics_unset_notification_cb();

