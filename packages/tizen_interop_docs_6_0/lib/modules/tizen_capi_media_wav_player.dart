// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaWavPlayer`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-wav-player.so.0`.
///
/// Multimedia / WAV Player.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_wav_player;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Plays a WAV file multiple times.
/// @since_tizen 6.0
///
/// @remarks Voice Recognition and VOIP stream types are not supported by this function.
///
/// Parameter path	The file path to play
/// Parameter stream_info	The sound stream information handle
/// Parameter loop_count	The number of times the file should be played (@c 0 indicates infinite loops)
/// Parameter callback	The callback function to be invoked when the WAV file is no longer being played
/// Parameter user_data	The user data to be passed to the callback function
/// Output parameter id	The WAV player ID (can be set to @c NULL)
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WAV_PLAYER_ERROR_NONE Successful
/// @retval #WAV_PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #WAV_PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #WAV_PLAYER_ERROR_FORMAT_NOT_SUPPORTED Not supported format
/// @retval #WAV_PLAYER_ERROR_NOT_SUPPORTED_TYPE Not supported stream type
///
/// @post	It invokes wav_player_playback_completed_cb() when the WAV file is no longer being played.
/// @see wav_player_stop()
/// @see wav_player_playback_completed_cb()
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
///
/// Module getter: `tizenCapiMediaWavPlayer`.
int wav_player_start_loop(
  ffi.Pointer<ffi.Char> path,
  sound_stream_info_h stream_info,
  int loop_count,
  wav_player_playback_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaWavPlayer.wav_player_start_loop(
      path,
      stream_info,
      loop_count,
      callback,
      user_data,
      id,
    );

/// @brief Plays a WAV file with stream information of sound-manager.
/// @since_tizen 3.0
///
/// @remarks Voice Recognition and VOIP stream types are not supported by this function.
///
/// Parameter path	The file path to play
/// Parameter stream_info	The sound stream information handle
/// Parameter callback	The callback function to be invoked when the WAV file is no longer being played
/// Parameter user_data	The user data to be passed to the callback function
/// Output parameter id	The WAV player ID (can be set to @c NULL)
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WAV_PLAYER_ERROR_NONE Successful
/// @retval #WAV_PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #WAV_PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #WAV_PLAYER_ERROR_FORMAT_NOT_SUPPORTED Not supported format
/// @retval #WAV_PLAYER_ERROR_NOT_SUPPORTED_TYPE Not supported stream type
///
/// @post	It invokes wav_player_playback_completed_cb() when the WAV file is no longer being played.
/// @see wav_player_stop()
/// @see wav_player_playback_completed_cb()
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
///
/// Module getter: `tizenCapiMediaWavPlayer`.
int wav_player_start_new(
  ffi.Pointer<ffi.Char> path,
  sound_stream_info_h stream_info,
  wav_player_playback_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaWavPlayer.wav_player_start_new(
      path,
      stream_info,
      callback,
      user_data,
      id,
    );

/// @brief Stops playing the WAV file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks If the playback of @a id has been already finished at the server side and\n
/// wav_player_playback_completed_cb() is not invoked yet, #WAV_PLAYER_ERROR_INVALID_OPERATION will be returned.
///
/// Parameter id	The WAV player ID to stop
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #WAV_PLAYER_ERROR_NONE Successful
/// @retval #WAV_PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #WAV_PLAYER_ERROR_INVALID_OPERATION Invalid operation
///
/// @see	wav_player_start_new()
///
/// Module getter: `tizenCapiMediaWavPlayer`.
int wav_player_stop(
  int id,
) =>
    tizenCapiMediaWavPlayer.wav_player_stop(
      id,
    );

