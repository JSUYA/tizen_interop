// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaTonePlayer`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-tone-player.so.0`.
///
/// Multimedia / Tone Player.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_tone_player;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Plays a tone with stream information of sound-manager.
///
/// @since_tizen 3.0
///
/// @remarks Voice Recognition stream type is not supported in this API.
///
/// Parameter tone	The tone type to play
/// Parameter stream_info	The sound stream information handle
/// Parameter duration_ms	The tone duration in milliseconds \n
/// @c -1 indicates an infinite duration.
/// Output parameter id	The tone player ID ( can be set to @c NULL )
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TONE_PLAYER_ERROR_NONE Successful
/// @retval #TONE_PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TONE_PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #TONE_PLAYER_ERROR_NOT_SUPPORTED_TYPE Not supported stream type
///
/// @see tone_player_stop()
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
///
/// Module getter: `tizenCapiMediaTonePlayer`.
int tone_player_start_new(
  int tone,
  sound_stream_info_h stream_info,
  int duration_ms,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaTonePlayer.tone_player_start_new(
      tone,
      stream_info,
      duration_ms,
      id,
    );

/// @brief Stops playing the tone.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter id	The tone player ID to stop
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #TONE_PLAYER_ERROR_NONE Successful
/// @retval #TONE_PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TONE_PLAYER_ERROR_INVALID_OPERATION Invalid operation
///
/// @see tone_player_start_new()
///
/// Module getter: `tizenCapiMediaTonePlayer`.
int tone_player_stop(
  int id,
) =>
    tizenCapiMediaTonePlayer.tone_player_stop(
      id,
    );

