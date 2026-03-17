// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiSystemMediaKey`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-system-media-key.so.0`.
///
/// System / Media key.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_system_media_key;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Unregisters the change event callback function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #MEDIA_KEY_ERROR_NONE Successful
/// @retval  #MEDIA_KEY_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #MEDIA_KEY_ERROR_OPERATION_FAILED Release key failed
/// @see media_key_reserve()
///
/// Module getter: `tizenCapiSystemMediaKey`.
int media_key_release() =>
    tizenCapiSystemMediaKey.media_key_release();

/// @brief Registers a change event callback for all media keys.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #MEDIA_KEY_ERROR_NONE Successful
/// @retval  #MEDIA_KEY_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #MEDIA_KEY_ERROR_OPERATION_FAILED Reserve key failed
/// @see media_key_release()
///
/// Module getter: `tizenCapiSystemMediaKey`.
int media_key_reserve(
  media_key_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemMediaKey.media_key_reserve(
      callback,
      user_data,
    );

