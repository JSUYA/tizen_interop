// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiBaseCommon`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-base-common.so.0`.
///
/// Base / Common Error.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_base_common;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the message for given the error code.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remark This function returns a static pointer; subsequent calls will overwrite it.
/// Parameter err The error value to be returned
/// @return The error's message
/// @see #tizen_error_e
///
/// @code
/// char* errMsg;
/// location_manager_h location_handle;
/// int result = location_manager_create(LOCATION_METHOD_GPS, &location_handle);
///
/// if (LOCATIONS_ERROR_NONE != result) {
/// errMsg = get_error_message(result);
/// dlog_print(DLOG_INFO, "MyTag", "%s", errMsg);
/// }
/// @endcode
///
/// Module getter: `tizenCapiBaseCommon`.
ffi.Pointer<ffi.Char> get_error_message(
  int err,
) =>
    tizenCapiBaseCommon.get_error_message(
      err,
    );

/// @brief Gets the last error code in the thread.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @details This function retrieves the last error code which is set by set_last_result()
/// @return One of #tizen_error_e
/// @see #tizen_error_e
/// @see set_last_result()
///
/// Module getter: `tizenCapiBaseCommon`.
int get_last_result() =>
    tizenCapiBaseCommon.get_last_result();

/// @brief Sets the last error code to be returned in the thread.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter err The error code to be returned
/// @see #tizen_error_e
/// @see get_last_result()
///
/// Module getter: `tizenCapiBaseCommon`.
void set_last_result(
  int err,
) =>
    tizenCapiBaseCommon.set_last_result(
      err,
    );

