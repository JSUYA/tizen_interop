// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaPlayer`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-player.so.0`.
///
/// Multimedia / Player.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_player;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the 360 video direction of view.
/// @details This function is to get horizontal (yaw) and vertical (pitch) angles
/// of current direction of view in radians.
/// @since_tizen 5.0
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter  player   The handle to the media player
/// Output parameter yaw      Pointer to store current value of direction of view
/// angle around vertical axis
/// Output parameter pitch    Pointer to store current value of direction of view
/// angle around lateral axis
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_set_direction_of_view()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_get_direction_of_view(
  player_h player,
  ffi.Pointer<ffi.Float> yaw,
  ffi.Pointer<ffi.Float> pitch,
) =>
    tizenCapiMediaPlayer.player_360_get_direction_of_view(
      player,
      yaw,
      pitch,
    );

/// @brief Gets the field of view information of 360 video.
/// @details This function is to get the field of view information.
/// @since_tizen 5.0
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter  player              The handle to the media player
/// Output parameter horizontal_degrees  Pointer to store current value of horizontal
/// field of view to display in degrees.
/// Output parameter vertical_degrees    Pointer to store current value of vertical
/// field of view to display in degrees.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_set_field_of_view()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_get_field_of_view(
  player_h player,
  ffi.Pointer<ffi.Int> horizontal_degrees,
  ffi.Pointer<ffi.Int> vertical_degrees,
) =>
    tizenCapiMediaPlayer.player_360_get_field_of_view(
      player,
      horizontal_degrees,
      vertical_degrees,
    );

/// @brief Gets the current zoom level of 360 video.
/// @details  The zoom means scaling of the flat image cut from the panorama.
/// The valid range is from 1.0 to 10.0. Where 1.0 is actual image and
/// values above are zoom-in factor. Default value is 1.0 - no zoom.
/// @since_tizen 5.0
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter  player    The handle to the media player
/// Output parameter level     Pointer to store current value of zoom level
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_set_zoom()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_get_zoom(
  player_h player,
  ffi.Pointer<ffi.Float> level,
) =>
    tizenCapiMediaPlayer.player_360_get_zoom(
      player,
      level,
    );

/// @brief Gets information whether the current content of the player is spherical.
/// @since_tizen 5.0
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter   player         The handle to the media player
/// Output parameter  is_spherical   The value indicating whether the content is spherical
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_STATE     Invalid player state
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_is_content_spherical(
  player_h player,
  ffi.Pointer<ffi.Bool> is_spherical,
) =>
    tizenCapiMediaPlayer.player_360_is_content_spherical(
      player,
      is_spherical,
    );

/// @brief Gets the 360 video display mode.
/// @since_tizen 5.0
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter   player    The handle to the media player
/// Output parameter  enabled   Pointer to store current 360 video display mode:
/// (@c true = display with 360 video mode,
/// @c false = display with full panorama mode)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_set_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_is_enabled(
  player_h player,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaPlayer.player_360_is_enabled(
      player,
      enabled,
    );

/// @brief Sets the 360 video direction of view.
/// @details This function is to set horizontal (yaw) and vertical (pitch) angles
/// of current direction of view in radians. Default direction of view
/// is taken from meta-data stored in the media. If meta-data omits
/// these values, zeros are assumed to be equal to the centre of the
/// panorama image.
/// @since_tizen 5.0
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter player   The handle to the media player
/// Parameter yaw      The angle value around vertical axis. Valid values are in
/// range [-PI, PI]. Default value is 0.
/// Parameter pitch    The angle value around lateral axis. Valid values are in
/// range [-PI/2, PI/2]. Default value is 0.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_get_direction_of_view()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_set_direction_of_view(
  player_h player,
  double yaw,
  double pitch,
) =>
    tizenCapiMediaPlayer.player_360_set_direction_of_view(
      player,
      yaw,
      pitch,
    );

/// @brief Sets the 360 video mode.
/// @details In case the media content is spherical, display mode can be selected by this function.
/// @since_tizen 5.0
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter player   The handle to the media player
/// Parameter enabled  The 360 video display status: @c true = display with 360 video mode,
/// @c false = display with full panorama mode. The default value is @c true.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_is_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_set_enabled(
  player_h player,
  bool enabled,
) =>
    tizenCapiMediaPlayer.player_360_set_enabled(
      player,
      enabled,
    );

/// @brief Sets the field of view information of 360 video.
/// @details This function is to set the field of view to decide the output frame size.
/// @since_tizen 5.0
/// @remarks values above the default ones extend the field of view to significantly
/// distorted areas and will not be useful in most cases.
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter player              The handle to the media player
/// Parameter horizontal_degrees  The horizontal field of view to display in degrees\n
/// Valid range is 1~360 degrees. Default value is 120 degrees.
/// Parameter vertical_degrees    The vertical field of view to display in degrees\n
/// Valid range is 1~180 degrees. Default value is 67 degrees.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_get_field_of_view()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_set_field_of_view(
  player_h player,
  int horizontal_degrees,
  int vertical_degrees,
) =>
    tizenCapiMediaPlayer.player_360_set_field_of_view(
      player,
      horizontal_degrees,
      vertical_degrees,
    );

/// @brief Sets the zoom level of 360 video.
/// @details  The zoom means scaling of the flat image cut from the panorama.
/// The valid range is from 1.0 to 10.0, where 1.0 is the actual image and
/// values above are zoom-in factor. Default value is 1.0 - no zoom.
/// @since_tizen 5.0
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter player    The handle to the media player
/// Parameter level     The zoom level\n
/// Valid range is 1.0~10.0. Default value is 1.0.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_get_zoom()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_set_zoom(
  player_h player,
  double level,
) =>
    tizenCapiMediaPlayer.player_360_set_zoom(
      player,
      level,
    );

/// @brief Sets the zoom level with field of view information of 360 video.
/// @details This function is provided to reduce the distortion of zoom operation.
/// The zoom means scaling of the flat image cut from the panorama
/// which is decided by the field of view data.
/// The zoom level valid range is from 1.0 to 10.0, where 1.0 is the actual image and
/// values above are zoom-in factor. Default value is 1.0 - no zoom.
/// @since_tizen 5.0
/// @remarks The degree values above the default ones extend the field of view to significantly
/// distorted areas and will not be useful in most cases.
/// @remarks This function is related to the following features:\n
/// %http://tizen.org/feature/multimedia.player.spherical_video\n
/// %http://tizen.org/feature/opengles.version.2_0\n
/// Parameter player              The handle to the media player
/// Parameter level               The zoom level\n
/// Valid range is 1.0~10.0. Default value is 1.0.
/// Parameter horizontal_degrees  The horizontal field of view to display in degrees\n
/// Valid range is 1~360 degrees. Default value is 120 degrees.
/// Parameter vertical_degrees    The vertical field of view to display in degrees\n
/// Valid range is 1~180 degrees. Default value is 67 degrees.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE              Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_360_set_zoom()
/// @see player_360_get_zoom()
/// @see player_360_set_field_of_view()
/// @see player_360_get_field_of_view()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_360_set_zoom_with_field_of_view(
  player_h player,
  double level,
  int horizontal_degrees,
  int vertical_degrees,
) =>
    tizenCapiMediaPlayer.player_360_set_zoom_with_field_of_view(
      player,
      level,
      horizontal_degrees,
      vertical_degrees,
    );

/// @brief Clears the equalizer effect.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If player_audio_effect_equalizer_is_available() returns @a available parameter as @c false,
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_audio_effect_equalizer_is_available()
/// @see player_audio_effect_set_equalizer_band_level()
/// @see player_audio_effect_set_equalizer_all_bands()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_equalizer_clear(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_audio_effect_equalizer_clear(
      player,
    );

/// @brief Checks whether the custom equalizer effect is available.
/// @details This function returns the availability of the audio effect function group and
/// it could be unavailable depending on the platform capabilities.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// @a available will be @c false.
/// Parameter  player    The handle to the media player
/// Output parameter available If @c true the specified audio effect is available,
/// otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see player_audio_effect_set_equalizer_band_level()
/// @see player_audio_effect_set_equalizer_all_bands()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_equalizer_is_available(
  player_h player,
  ffi.Pointer<ffi.Bool> available,
) =>
    tizenCapiMediaPlayer.player_audio_effect_equalizer_is_available(
      player,
      available,
    );

/// @brief Gets the band frequency of the equalizer.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If player_audio_effect_equalizer_is_available() returns @a available parameter as @c false,
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player The handle to the media player
/// Parameter  index The index of the requested equalizer band
/// Output parameter frequency The frequency of the given band [dB]
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_audio_effect_equalizer_is_available()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_get_equalizer_band_frequency(
  player_h player,
  int index,
  ffi.Pointer<ffi.Int> frequency,
) =>
    tizenCapiMediaPlayer.player_audio_effect_get_equalizer_band_frequency(
      player,
      index,
      frequency,
    );

/// @brief Gets the band frequency range of the equalizer.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If player_audio_effect_equalizer_is_available() returns @a available parameter as @c false,
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player The handle to the media player
/// Parameter  index The index of the requested equalizer band
/// Output parameter range The frequency range of the given band [dB]
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_audio_effect_equalizer_is_available()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_get_equalizer_band_frequency_range(
  player_h player,
  int index,
  ffi.Pointer<ffi.Int> range,
) =>
    tizenCapiMediaPlayer.player_audio_effect_get_equalizer_band_frequency_range(
      player,
      index,
      range,
    );

/// @brief Gets the gain set for the given equalizer band.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If player_audio_effect_equalizer_is_available() returns @a available parameter as @c false,
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter   player The handle to the media player
/// Parameter   index The index of the requested equalizer band
/// Output parameter   level The gain in decibel of the given band [dB]
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_audio_effect_equalizer_is_available()
/// @see player_audio_effect_set_equalizer_band_level()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_get_equalizer_band_level(
  player_h player,
  int index,
  ffi.Pointer<ffi.Int> level,
) =>
    tizenCapiMediaPlayer.player_audio_effect_get_equalizer_band_level(
      player,
      index,
      level,
    );

/// @brief Gets the number of equalizer bands.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If player_audio_effect_equalizer_is_available() returns @a available parameter as @c false,
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player The handle to the media player
/// Output parameter count The number of equalizer bands
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_audio_effect_equalizer_is_available()
/// @see player_audio_effect_set_equalizer_band_level()
/// @see player_audio_effect_set_equalizer_all_bands()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_get_equalizer_bands_count(
  player_h player,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiMediaPlayer.player_audio_effect_get_equalizer_bands_count(
      player,
      count,
    );

/// @brief Gets the valid band level range of the equalizer.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If player_audio_effect_equalizer_is_available() returns @a available parameter as @c false,
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player The handle to the media player
/// Output parameter min The minimum value to be set [dB]
/// Output parameter max The maximum value to be set [dB]
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_audio_effect_equalizer_is_available()
/// @see player_audio_effect_set_equalizer_band_level()
/// @see player_audio_effect_set_equalizer_all_bands()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_get_equalizer_level_range(
  player_h player,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaPlayer.player_audio_effect_get_equalizer_level_range(
      player,
      min,
      max,
    );

/// @brief Sets all bands of the equalizer.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If player_audio_effect_equalizer_is_available() returns @a available parameter as @c false,
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE and
/// this will not work at all even if it was called before enabling audio offload
/// which makes audio effect function group unavailable. (Since 5.5)
/// Parameter player The handle to the media player
/// Parameter band_levels The list of band levels to be set
/// Parameter length The length of the band level
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_audio_effect_equalizer_is_available()
/// @see player_audio_effect_get_equalizer_bands_count()
/// @see player_audio_effect_get_equalizer_level_range()
/// @see player_audio_effect_set_equalizer_band_level()
/// @see player_audio_offload_set_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_set_equalizer_all_bands(
  player_h player,
  ffi.Pointer<ffi.Int> band_levels,
  int length,
) =>
    tizenCapiMediaPlayer.player_audio_effect_set_equalizer_all_bands(
      player,
      band_levels,
      length,
    );

/// @brief Sets the gain set for the given equalizer band.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If player_audio_effect_equalizer_is_available() returns @a available parameter as @c false,
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE and
/// this will not work at all even if it was called before enabling audio offload
/// which makes audio effect function group unavailable. (Since 5.5)
/// Parameter player The handle to the media player
/// Parameter index The index of the equalizer band to be set
/// Parameter level The new gain in decibel that is set to the given band [dB]
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_audio_effect_equalizer_is_available()
/// @see player_audio_effect_get_equalizer_bands_count()
/// @see player_audio_effect_get_equalizer_level_range()
/// @see player_audio_effect_get_equalizer_band_level()
/// @see player_audio_effect_set_equalizer_all_bands()
/// @see player_audio_offload_set_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_effect_set_equalizer_band_level(
  player_h player,
  int index,
  int level,
) =>
    tizenCapiMediaPlayer.player_audio_effect_set_equalizer_band_level(
      player,
      index,
      level,
    );

/// @brief Retrieves all supported media formats for audio offload.
/// @details The supported media format can vary depending on the device capabilities.
/// @since_tizen 5.5
/// @remarks This function is related to the following feature:\n
/// %http://tizen.org/feature/multimedia.player.audio_offload\n
/// Parameter player      The handle to the media player
/// Parameter callback    The iteration callback function
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_supported_media_format_cb()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_audio_offload_is_activated()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_offload_foreach_supported_format(
  player_h player,
  player_supported_media_format_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_audio_offload_foreach_supported_format(
      player,
      callback,
      user_data,
    );

/// @brief Gets the activation status of audio offload.
/// @details Audio offload could be inactivated depending on the
/// audio device capability even if the audio offload feature is supported.
/// @since_tizen 5.5
/// @remarks This function is related to the following feature:\n
/// %http://tizen.org/feature/multimedia.player.audio_offload\n
/// Parameter   player     The handle to the media player
/// Output parameter  activated  The activation status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid state
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED
/// @see player_audio_offload_foreach_supported_format()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_offload_is_activated(
  player_h player,
  ffi.Pointer<ffi.Bool> activated,
) =>
    tizenCapiMediaPlayer.player_audio_offload_is_activated(
      player,
      activated,
    );

/// @brief Gets the enabling status of audio offload.
/// @since_tizen 5.5
/// @remarks This function is related to the following feature:\n
/// %http://tizen.org/feature/multimedia.player.audio_offload\n
/// Parameter   player   The handle to the media player
/// Output parameter  enabled  The enabling status (default: false)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @see player_audio_offload_foreach_supported_format()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_activated()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_offload_is_enabled(
  player_h player,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaPlayer.player_audio_offload_is_enabled(
      player,
      enabled,
    );

/// @brief Enables or disables the audio offload.
/// @details The player lets the hardware decode and render the sound if the audio offload is enabled.
/// This will reduce the power consumption, but will disable the ability to handle output PCM.
/// Please check the remarks for a list of functions which will not work if offloading is enabled.
/// @since_tizen 5.5
/// @remarks This function is related to the following feature:\n
/// %http://tizen.org/feature/multimedia.player.audio_offload\n
/// @remarks The sound stream type of the player should be #SOUND_STREAM_TYPE_MEDIA.\n
/// @remarks If audio offload is enabled, functions for audio effect are not available.\n
/// @remarks If audio offload is enabled, the following functions will return #PLAYER_ERROR_NOT_AVAILABLE
/// and they will not work at all even if they were called before enabling offload. :\n
/// player_set_media_packet_audio_frame_decoded_cb()\n
/// player_unset_media_packet_audio_frame_decoded_cb()\n
/// player_set_audio_latency_mode()\n
/// player_get_audio_latency_mode()\n
/// player_set_playback_rate()\n
/// player_get_current_track()\n
/// player_get_track_language_code()\n
/// player_get_track_count()\n
/// player_select_track()\n
/// player_set_replaygain_enabled()\n
/// player_is_replaygain_enabled()\n
/// player_audio_pitch_set_enabled()\n
/// player_audio_pitch_is_enabled()\n
/// player_audio_pitch_set_value()\n
/// player_audio_pitch_get_value()\n
/// Parameter player   The handle to the media player
/// Parameter enabled  The new audio offload status (default: false)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @pre The player state must be #PLAYER_STATE_IDLE.
/// @see player_set_sound_stream_info()
/// @see player_audio_effect_equalizer_is_available()
/// @see player_set_interrupted_cb()
/// @see player_audio_offload_foreach_supported_format()
/// @see player_audio_offload_is_enabled()
/// @see player_audio_offload_is_activated()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_offload_set_enabled(
  player_h player,
  bool enabled,
) =>
    tizenCapiMediaPlayer.player_audio_offload_set_enabled(
      player,
      enabled,
    );

/// @brief Gets the pitch of audio.
/// @since_tizen 5.5
/// @remarks This function is used for audio content only.
/// @remarks Depending on audio codec type or by enabling audio offload,
/// this function could be unavailable and this will return #PLAYER_ERROR_NOT_AVAILABLE.
/// Parameter  player The handle to the media player
/// Output parameter value  The audio stream pitch value \n
/// Valid range is 0.5~2. Default value is 1.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available
/// @see player_audio_pitch_set_enabled()
/// @see player_audio_pitch_is_enabled()
/// @see player_audio_pitch_set_value()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_pitch_get_value(
  player_h player,
  ffi.Pointer<ffi.Float> value,
) =>
    tizenCapiMediaPlayer.player_audio_pitch_get_value(
      player,
      value,
    );

/// @brief Gets the status of controlling the pitch of audio.
/// @since_tizen 5.5
/// @remarks This function is used for audio content only.
/// @remarks Depending on audio codec type or by enabling audio offload,
/// this function could be unavailable and this will return #PLAYER_ERROR_NOT_AVAILABLE.
/// Parameter   player   The handle to the media player
/// Output parameter  enabled  The audio pitch control status (default: false)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available
/// @see player_audio_pitch_set_enabled()
/// @see player_audio_pitch_set_value()
/// @see player_audio_pitch_get_value()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_pitch_is_enabled(
  player_h player,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaPlayer.player_audio_pitch_is_enabled(
      player,
      enabled,
    );

/// @brief Enables or disables controlling the pitch of audio.
/// @since_tizen 5.5
/// @remarks This function is used for audio content only.
/// @remarks Enabling pitch control could increase the CPU usage on some devices.
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE and
/// this will not work at all even if this was called before enabling offload.
/// @remarks This function could be unavailable depending on the audio codec type and
/// this will return #PLAYER_ERROR_NOT_AVAILABLE.
/// Parameter player   The handle to the media player
/// Parameter enabled  The new audio pitch control status (default: false)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available
/// @pre The player state must be #PLAYER_STATE_IDLE.
/// @see player_audio_pitch_is_enabled()
/// @see player_audio_pitch_set_value()
/// @see player_audio_pitch_get_value()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_pitch_set_enabled(
  player_h player,
  bool enabled,
) =>
    tizenCapiMediaPlayer.player_audio_pitch_set_enabled(
      player,
      enabled,
    );

/// @brief Sets the pitch of audio.
/// @since_tizen 5.5
/// @remarks This function is used for audio content only.
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE and
/// this will not work at all even if this was called before enabling offload.
/// @remarks This function could be unavailable depending on the audio codec type and
/// this will return #PLAYER_ERROR_NOT_AVAILABLE.
/// Parameter player The handle to the media player
/// Parameter value  The audio stream pitch value  \n
/// Valid range is 0.5~2. Default value is 1.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available
/// @pre The pitch control must be enabled by calling player_audio_pitch_set_enabled() function.
/// @see player_audio_pitch_set_enabled()
/// @see player_audio_pitch_is_enabled()
/// @see player_audio_pitch_get_value()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_audio_pitch_set_value(
  player_h player,
  double value,
) =>
    tizenCapiMediaPlayer.player_audio_pitch_set_value(
      player,
      value,
    );

/// @brief Captures the video frame, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If the content is encrypted or there are copyright issues with it,
/// this function could be unsupported depending on the DRM policy.
/// In case the function is not supported by the DRM policy, it will return an error.
/// Parameter player      The handle to the media player
/// Parameter callback    The callback function to register
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be set to #PLAYER_STATE_PLAYING by calling player_start() or set to #PLAYER_STATE_PAUSED by calling player_pause().
/// @pre Video display type should be set by calling player_set_display() otherwise, audio stream is only processed even though video file is set.
/// @post It invokes player_video_captured_cb() when capture completes, if you set a callback.
/// @see player_video_captured_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_capture_video(
  player_h player,
  player_video_captured_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_capture_video(
      player,
      callback,
      user_data,
    );

/// @brief Creates a player handle for playing multimedia content.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks You must release @a player by using player_destroy().\n
/// Although you can create multiple player handles at the same time,
/// the player cannot guarantee proper operation because of limited resources, such as
/// audio or display device.
///
/// Output parameter player   A new handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_RESOURCE_LIMIT Cannot create more instance due to resource(socket, thread, etc) limitation on system.
/// @post The player state will be #PLAYER_STATE_IDLE.
/// @see player_destroy()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_create(
  ffi.Pointer<player_h> player,
) =>
    tizenCapiMediaPlayer.player_create(
      player,
    );

/// @brief Destroys the media player handle and releases all its resources.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks To completely shutdown player operation, call this function with a valid player handle from any player state.
/// Parameter player   The handle to the media player to be destroyed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @pre The player state must be one of #PLAYER_STATE_IDLE, #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED.
/// @post The player state will be #PLAYER_STATE_NONE.
/// @see player_create()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_destroy(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_destroy(
      player,
    );

/// @brief Retrieves all the streaming variant information.
/// @since_tizen 4.0
/// @remarks This function is used for adaptive streaming(hls/mpeg dash) only.
/// Parameter player      The handle to the media player
/// Parameter callback    The iteration callback function
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED
/// @see player_adaptive_variant_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_foreach_adaptive_variant(
  player_h player,
  player_adaptive_variant_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_foreach_adaptive_variant(
      player,
      callback,
      user_data,
    );

/// @brief Retrieves all supported media formats for the playback of external media stream.
/// @details The supported media format can vary depending on the device capabilities.
/// @since_tizen 5.5
/// Parameter player      The handle to the media player
/// Parameter callback    The iteration callback function
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_supported_media_format_cb()
/// @see player_set_media_stream_info()
/// @see player_push_media_stream()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_foreach_media_stream_supported_format(
  player_h player,
  player_supported_media_format_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_foreach_media_stream_supported_format(
      player,
      callback,
      user_data,
    );

/// @brief Gets the album art in the media resource.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks You must not release @a album_art.
/// The @a album_art is managed by the platform and will be released
/// when the player is unprepared or destroyed by calling player_unprepare() or player_destroy().
/// Parameter player The handle to the media player
/// Output parameter album_art The encoded artwork image
/// Output parameter size The encoded artwork size
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_album_art(
  player_h player,
  ffi.Pointer<ffi.Pointer<ffi.Void>> album_art,
  ffi.Pointer<ffi.Int> size,
) =>
    tizenCapiMediaPlayer.player_get_album_art(
      player,
      album_art,
      size,
    );

/// @brief Gets the default codec type of the audio decoder.
/// @since_tizen 5.5
/// Parameter  player        The handle to the media player
/// Output parameter codec_type    The default codec type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_audio_codec_type(
  player_h player,
  ffi.Pointer<ffi.Int32> codec_type,
) =>
    tizenCapiMediaPlayer.player_get_audio_codec_type(
      player,
      codec_type,
    );

/// @brief Gets the current audio latency mode.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player The handle to the media player
/// Output parameter latency_mode The latency mode to get from the audio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see #audio_latency_mode_e
/// @see player_set_audio_latency_mode()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_audio_latency_mode(
  player_h player,
  ffi.Pointer<ffi.Int32> latency_mode,
) =>
    tizenCapiMediaPlayer.player_get_audio_latency_mode(
      player,
      latency_mode,
    );

/// @brief Gets the audio stream information.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The playback type should be local playback or HTTP streaming playback.
/// Parameter player The handle to the media player
/// Output parameter  sample_rate The audio sample rate [Hz] \n
/// Value can be invalid if there is no audio stream information.
/// Output parameter  channel The audio channel (1: mono, 2: stereo) \n
/// Value can be invalid if there is no audio stream information.
/// Output parameter  bit_rate The audio bit rate [Hz] \n
/// Value can be invalid if there is no audio stream information.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_audio_stream_info(
  player_h player,
  ffi.Pointer<ffi.Int> sample_rate,
  ffi.Pointer<ffi.Int> channel,
  ffi.Pointer<ffi.Int> bit_rate,
) =>
    tizenCapiMediaPlayer.player_get_audio_stream_info(
      player,
      sample_rate,
      channel,
      bit_rate,
    );

/// @brief Gets the audio and video codec information.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks You must release @a audio_codec and @a video_codec using free().
/// @remarks The playback type should be local playback or HTTP streaming playback.
/// Parameter player The handle to the media player
/// Output parameter audio_codec The name of the audio codec \n
/// It can be @c NULL if there is no audio codec.
/// Output parameter video_codec The name of the video codec \n
/// It can be @c NULL if there is no video codec.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_codec_info(
  player_h player,
  ffi.Pointer<ffi.Pointer<ffi.Char>> audio_codec,
  ffi.Pointer<ffi.Pointer<ffi.Char>> video_codec,
) =>
    tizenCapiMediaPlayer.player_get_codec_info(
      player,
      audio_codec,
      video_codec,
    );

/// @brief Gets the media content information.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks You must release @a value using @c free().
/// @remarks The playback type should be local playback or HTTP streaming playback.
/// Parameter  player The handle to the media player
/// Parameter key The key attribute name to get
/// Output parameter value The value of the key attribute \n
/// It can be an empty string if there is no content information.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #PLAYER_ERROR_OUT_OF_MEMORY Not enough memory is available
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_content_info(
  player_h player,
  int key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiMediaPlayer.player_get_content_info(
      player,
      key,
      value,
    );

/// @brief Gets current track index.
/// @details Index starts from 0.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter  player   The handle to the media player
/// Parameter  type     The type of target stream which is #PLAYER_STREAM_TYPE_AUDIO or #PLAYER_STREAM_TYPE_TEXT
/// Output parameter index    The index of track
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED
/// @see player_audio_offload_set_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_current_track(
  player_h player,
  int type,
  ffi.Pointer<ffi.Int> index,
) =>
    tizenCapiMediaPlayer.player_get_current_track(
      player,
      type,
      index,
    );

/// @brief Gets the video display mode.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If no display is set, no operation is performed.
/// Parameter player The handle to the media player
/// Output parameter mode The current display mode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval  #PLAYER_ERROR_NONE Successful
/// @retval  #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see #player_display_mode_e
/// @see player_set_display_mode()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_display_mode(
  player_h player,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaPlayer.player_get_display_mode(
      player,
      mode,
    );

/// @brief Gets the rotation of the video surface display.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// Output parameter rotation The current rotation of the display
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval  #PLAYER_ERROR_NONE Successful
/// @retval  #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see     #player_display_rotation_e
/// @see     player_set_display_rotation()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_display_rotation(
  player_h player,
  ffi.Pointer<ffi.Int32> rotation,
) =>
    tizenCapiMediaPlayer.player_get_display_rotation(
      player,
      rotation,
    );

/// @brief Gets the total running time of the associated media.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The media source is associated with the player, using either player_set_uri() or player_set_memory_buffer().
/// @remarks The playback type should be local playback or HTTP streaming playback.
/// Parameter   player         The handle to the media player
/// Output parameter  milliseconds   The duration in milliseconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
/// @see player_set_uri()
/// @see player_set_memory_buffer()
/// @see player_get_duration_nsec()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_duration(
  player_h player,
  ffi.Pointer<ffi.Int> milliseconds,
) =>
    tizenCapiMediaPlayer.player_get_duration(
      player,
      milliseconds,
    );

/// @brief Gets the total running time in nanoseconds of the associated media.
/// @since_tizen 5.0
/// Parameter   player         The handle to the media player
/// Output parameter  nanoseconds    The duration time in nanoseconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
/// @see player_set_uri()
/// @see player_set_memory_buffer()
/// @see player_get_duration()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_duration_nsec(
  player_h player,
  ffi.Pointer<ffi.Int64> nanoseconds,
) =>
    tizenCapiMediaPlayer.player_get_duration_nsec(
      player,
      nanoseconds,
    );

/// @brief Gets the maximum limit of the streaming variant.
/// @since_tizen 4.0
/// @remarks This function is used for adaptive streaming(hls/mpeg dash) only.
/// Parameter  player      The handle to the media player
/// Output parameter bandwidth   The max bandwidth limit of the stream variant (default: -1)
/// Output parameter width       The max width limit of the stream variant (default: -1)
/// Output parameter height      The max height limit of the stream variant (default: -1)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_foreach_adaptive_variant()
/// @see player_set_max_adaptive_variant_limit()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_max_adaptive_variant_limit(
  player_h player,
  ffi.Pointer<ffi.Int> bandwidth,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaPlayer.player_get_max_adaptive_variant_limit(
      player,
      bandwidth,
      width,
      height,
    );

/// @brief Gets the max size bytes of buffer.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks This function is used for media stream playback only.
/// @remarks If the buffer level over the max size, player_media_stream_buffer_status_cb() will be invoked with overflow status.
/// Parameter player The handle to the media player
/// Parameter type   The type of target stream
/// Output parameter max_size The max bytes of buffer
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see player_set_media_stream_buffer_max_size()
/// @see player_media_stream_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_media_stream_buffer_max_size(
  player_h player,
  int type,
  ffi.Pointer<ffi.UnsignedLongLong> max_size,
) =>
    tizenCapiMediaPlayer.player_get_media_stream_buffer_max_size(
      player,
      type,
      max_size,
    );

/// @brief Gets the buffer threshold percent of buffer.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks This function is used for media stream playback only.
/// @remarks If the buffer level drops below the percent value, player_media_stream_buffer_status_cb() will be invoked with underrun status.
/// Parameter player The handle to the media player
/// Parameter type   The type of target stream
/// Output parameter percent The minimum threshold(0~100) of buffer
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see player_set_media_stream_buffer_min_threshold()
/// @see player_media_stream_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_media_stream_buffer_min_threshold(
  player_h player,
  int type,
  ffi.Pointer<ffi.UnsignedInt> percent,
) =>
    tizenCapiMediaPlayer.player_get_media_stream_buffer_min_threshold(
      player,
      type,
      percent,
    );

/// @brief Gets the current position in milliseconds.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter   player        The handle to the media player
/// Output parameter  milliseconds  The current position in milliseconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_SEEK_FAILED Seek operation failure
/// @see player_set_play_position()
/// @see player_set_play_position_nsec()
/// @see player_get_play_position_nsec()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_play_position(
  player_h player,
  ffi.Pointer<ffi.Int> milliseconds,
) =>
    tizenCapiMediaPlayer.player_get_play_position(
      player,
      milliseconds,
    );

/// @brief Gets the current position in nanoseconds.
/// @since_tizen 5.0
/// Parameter   player        The handle to the media player
/// Output parameter  nanoseconds   The current position in nanoseconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_SEEK_FAILED Seek operation failure
/// @see player_set_play_position()
/// @see player_get_play_position()
/// @see player_set_play_position_nsec()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_play_position_nsec(
  player_h player,
  ffi.Pointer<ffi.Int64> nanoseconds,
) =>
    tizenCapiMediaPlayer.player_get_play_position_nsec(
      player,
      nanoseconds,
    );

/// @brief Gets the player's current state.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter  player   The handle to the media player
/// Output parameter state    The current state of the player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #player_state_e
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_state(
  player_h player,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaPlayer.player_get_state(
      player,
      state,
    );

/// @brief Gets the streaming buffering time.
/// @since_tizen 4.0
/// Parameter  player        The handle to the media player
/// Output parameter prebuffer_ms  The time duration of buffering data that must be prerolled to start playback
/// If the user did not set any value by calling player_set_streaming_buffering_time() function (or if the value was set to 0),
/// the value is @c 0 which means platform default value depending on the streaming type and network status. \n
/// The value is set to time duration instead of @c 0
/// if the player state is one of: #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED. (since 5.5)
/// Output parameter rebuffer_ms   The time duration of buffering data that must be prerolled to resume playback
/// if player is paused for buffering internally. \n
/// If the user did not set any value by calling player_set_streaming_buffering_time() function (or if the value was set to 0),
/// the value is @c 0 which means platform default value depending on the streaming type and network status. \n
/// The value is set to time duration instead of @c 0
/// if the player state is one of: #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED. (since 5.5)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @if WEARABLE @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature @endif
/// @see player_set_streaming_buffering_time()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_streaming_buffering_time(
  player_h player,
  ffi.Pointer<ffi.Int> prebuffer_ms,
  ffi.Pointer<ffi.Int> rebuffer_ms,
) =>
    tizenCapiMediaPlayer.player_get_streaming_buffering_time(
      player,
      prebuffer_ms,
      rebuffer_ms,
    );

/// @brief Gets the download progress for streaming playback.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// Output parameter start The starting position of received data in percentage [0, 100]
/// Output parameter end The end position of received data in percentage [0, 100]
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_streaming_download_progress(
  player_h player,
  ffi.Pointer<ffi.Int> start,
  ffi.Pointer<ffi.Int> end,
) =>
    tizenCapiMediaPlayer.player_get_streaming_download_progress(
      player,
      start,
      end,
    );

/// @brief Gets the track count.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player   The handle to the media player
/// Parameter type     The type of target stream which is #PLAYER_STREAM_TYPE_AUDIO or #PLAYER_STREAM_TYPE_TEXT
/// Output parameter count The number of track
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED
/// @see player_audio_offload_set_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_track_count(
  player_h player,
  int type,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiMediaPlayer.player_get_track_count(
      player,
      type,
      count,
    );

/// @brief Gets language code of a track.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks @a code must be released with @c free() by caller
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player   The handle to the media player
/// Parameter type     The type of target stream which is #PLAYER_STREAM_TYPE_AUDIO or #PLAYER_STREAM_TYPE_TEXT
/// Parameter index    The index of track
/// Output parameter code A language code in ISO 639-1. "und" will be returned if the language is undefined.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED
/// @see player_audio_offload_set_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_track_language_code(
  player_h player,
  int type,
  int index,
  ffi.Pointer<ffi.Pointer<ffi.Char>> code,
) =>
    tizenCapiMediaPlayer.player_get_track_language_code(
      player,
      type,
      index,
      code,
    );

/// @brief Gets the ROI (Region Of Interest) area of the content video source.
/// @since_tizen 5.0
/// @remarks This function gets the ratio value of the each coordinate and size based on the video resolution size.
/// @remarks The ROI area is valid only in #PLAYER_DISPLAY_TYPE_OVERLAY.
/// Parameter  player     The handle to the media player
/// Output parameter x_scale    The current X coordinate ratio value of the video source area based on the video width size
/// Output parameter y_scale    The current Y coordinate ratio value of the video source area based on the video height size
/// Output parameter w_scale    The current width ratio value of the video source area based on the video width size
/// Output parameter h_scale    The current height ratio value of the video source area based on the video height size
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval  #PLAYER_ERROR_NONE Successful
/// @retval  #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see #player_display_type_e
/// @see player_set_display()
/// @see player_get_video_size()
/// @see player_set_video_roi_area()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_video_roi_area(
  player_h player,
  ffi.Pointer<ffi.Double> x_scale,
  ffi.Pointer<ffi.Double> y_scale,
  ffi.Pointer<ffi.Double> w_scale,
  ffi.Pointer<ffi.Double> h_scale,
) =>
    tizenCapiMediaPlayer.player_get_video_roi_area(
      player,
      x_scale,
      y_scale,
      w_scale,
      h_scale,
    );

/// @brief Gets the video display's height and width.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The playback type should be local playback or HTTP streaming playback.
/// Parameter player The handle to the media player
/// Output parameter width The width of the video \n
/// Value can be invalid if there is no video or no display is set.
/// Output parameter height The height of the video \n
/// Value can be invalid value if there is no video or no display is set.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_video_size(
  player_h player,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaPlayer.player_get_video_size(
      player,
      width,
      height,
    );

/// @brief Gets the video stream information.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The playback type should be local playback or HTTP streaming playback.
/// Parameter player The handle to the media player
/// Output parameter  fps The frame per second of the video \n
/// It can be @c 0 if there is no video stream information.
/// Output parameter  bit_rate The video bit rate [Hz] \n
/// It can be an invalid value if there is no video stream information.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_video_stream_info(
  player_h player,
  ffi.Pointer<ffi.Int> fps,
  ffi.Pointer<ffi.Int> bit_rate,
) =>
    tizenCapiMediaPlayer.player_get_video_stream_info(
      player,
      fps,
      bit_rate,
    );

/// @brief Gets the player's current volume factor.
/// @details The range of @a left and @a right is from @c 0 to @c 1.0, inclusive (1.0 = 100%).
/// This function gets the player volume, not the system volume.
/// To get the system volume, use the @ref CAPI_MEDIA_SOUND_MANAGER_MODULE API.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter  player   The handle to the media player
/// Output parameter left     The current left volume scalar
/// Output parameter right    The current right volume scalar
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_volume()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_get_volume(
  player_h player,
  ffi.Pointer<ffi.Float> left,
  ffi.Pointer<ffi.Float> right,
) =>
    tizenCapiMediaPlayer.player_get_volume(
      player,
      left,
      right,
    );

/// @brief Gets the audio only mode status.
/// @since_tizen 4.0
/// Parameter  player       The handle to the media player
/// Output parameter audio_only   The current audio only status: (@c true = audio only enabled, @c false = audio only disabled)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE                Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION   Invalid operation
/// @see player_set_audio_only()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_is_audio_only(
  player_h player,
  ffi.Pointer<ffi.Bool> audio_only,
) =>
    tizenCapiMediaPlayer.player_is_audio_only(
      player,
      audio_only,
    );

/// @brief Gets the visibility of the video display.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// Output parameter visible The current visibility of the display (@c true = visible, @c false = non-visible )
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval  #PLAYER_ERROR_NONE Successful
/// @retval  #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_display_visible()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_is_display_visible(
  player_h player,
  ffi.Pointer<ffi.Bool> visible,
) =>
    tizenCapiMediaPlayer.player_is_display_visible(
      player,
      visible,
    );

/// @brief Gets the player's looping status.
/// @details If the looping status is @c true, playback automatically restarts upon finishing.
/// If it is @c false, it won't.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter   player The handle to the media player
/// Output parameter  looping The looping status: (@c true = looping, @c false = non-looping )
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_looping()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_is_looping(
  player_h player,
  ffi.Pointer<ffi.Bool> looping,
) =>
    tizenCapiMediaPlayer.player_is_looping(
      player,
      looping,
    );

/// @brief Gets the player's mute status.
/// @details If the mute status is @c true, no sounds are played.
/// If it is @c false, sounds are played at the previously set volume level.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter   player The handle to the media player
/// Output parameter  muted  The current mute status: (@c true = mute, @c false = not muted)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_mute()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_is_muted(
  player_h player,
  ffi.Pointer<ffi.Bool> muted,
) =>
    tizenCapiMediaPlayer.player_is_muted(
      player,
      muted,
    );

/// @brief Gets the player's replaygain status.
/// @since_tizen 5.0
/// @remarks Depending on audio codec type or by enabling audio offload,
/// this function could be unavailable and this will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter   player    The handle to the media player
/// Output parameter  enabled   Pointer to store current replaygain status:
/// (@c true = enabled replaygain,
/// @c false = disabled replaygain)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_set_replaygain_enabled()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_is_replaygain_enabled(
  player_h player,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaPlayer.player_is_replaygain_enabled(
      player,
      enabled,
    );

/// @brief Pauses the player.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks You can resume playback using player_start().
///
/// Parameter   player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid state
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_SOUND_POLICY Sound policy error
/// @pre The player state must be set to #PLAYER_STATE_PLAYING.
/// @post The player state will be #PLAYER_STATE_PAUSED.
/// @see player_start()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_pause(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_pause(
      player,
    );

/// @brief Prepares the media player for playback.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The mediastorage privilege(http://tizen.org/privilege/mediastorage) must be added if any video/audio files are used to play located in the internal storage.
/// @remarks The externalstorage privilege(http://tizen.org/privilege/externalstorage) must be added if any video/audio files are used to play located in the external storage.
/// @remarks The internet privilege(http://tizen.org/privilege/internet) must be added if any URLs are used to play from network.
/// Parameter player   The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_URI Invalid URI
/// @retval #PLAYER_ERROR_NO_SUCH_FILE File not found
/// @retval #PLAYER_ERROR_NOT_SUPPORTED_FILE File not supported
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PLAYER_ERROR_NOT_SUPPORTED_AUDIO_CODEC Not support audio codec format (Since 4.0)
/// @retval #PLAYER_ERROR_NOT_SUPPORTED_VIDEO_CODEC Not support video codec format (Since 4.0)
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare(). After that, call player_set_uri() to load the media content you want to play.
/// @post The player state will be #PLAYER_STATE_READY.
/// @see player_prepare_async()
/// @see player_unprepare()
/// @see player_set_uri()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_prepare(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_prepare(
      player,
    );

/// @brief Prepares the media player for playback, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The mediastorage privilege(http://tizen.org/privilege/mediastorage) must be added if any video/audio files are used to play located in the internal storage.
/// The externalstorage privilege(http://tizen.org/privilege/externalstorage) must be added if any video/audio files are used to play located in the external storage.
/// The internet privilege(http://tizen.org/privilege/internet) must be added if any URLs are used to play from network. \n
/// Since 5.0: To cancel the asynchronous preparing, call player_unprepare() even in #PLAYER_STATE_IDLE state.
/// Parameter player      The handle to the media player
/// Parameter callback    The callback function to register
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_URI Invalid URI
/// @retval #PLAYER_ERROR_NO_SUCH_FILE File not found
/// @retval #PLAYER_ERROR_NOT_SUPPORTED_FILE File not supported
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_PERMISSION_DENIED Permission denied
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare(). After that, call player_set_uri() to load the media content you want to play.
/// @post It invokes player_prepared_cb() when playback is prepared.
/// @see player_prepare()
/// @see player_prepared_cb()
/// @see player_unprepare()
/// @see player_set_uri()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_prepare_async(
  player_h player,
  player_prepared_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_prepare_async(
      player,
      callback,
      user_data,
    );

/// @brief  Pushes elementary stream to decode audio or video.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks player_set_media_stream_info() must be called before using this function.
/// @remarks The available buffer size can be set by calling player_set_media_stream_buffer_max_size().
/// If there is no available buffer space, this function will return error since 3.0.
/// Parameter  player   The handle to media player
/// Parameter  packet   The media packet to decode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid state
/// @retval #PLAYER_ERROR_NOT_SUPPORTED_FILE File not supported
/// @retval #PLAYER_ERROR_BUFFER_SPACE No buffer space available (since 3.0)
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation (since 3.0)
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
/// @see player_set_media_stream_info()
/// @see player_set_media_stream_buffer_max_size()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_push_media_stream(
  player_h player,
  media_packet_h packet,
) =>
    tizenCapiMediaPlayer.player_push_media_stream(
      player,
      packet,
    );

/// @brief Selects a track to play.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player   The handle to the media player
/// Parameter type     The type of target stream which is #PLAYER_STREAM_TYPE_AUDIO or #PLAYER_STREAM_TYPE_TEXT
/// Parameter index    The index of track
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED
/// @see player_get_current_track()
/// @see player_audio_offload_set_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_select_track(
  player_h player,
  int type,
  int index,
) =>
    tizenCapiMediaPlayer.player_select_track(
      player,
      type,
      index,
    );

/// @brief Sets the default codec type of the audio decoder.
/// @since_tizen 5.5
/// @remarks The default codec type could be different depending on the device capability.
/// S/W codec type is supported basically.
/// @remarks If selected H/W audio codec type does not support in some cases,
/// S/W audio codec type could be used instead.\n
/// @remarks If application use the H/W audio codec type by default,
/// following functions should be called after setting codec type
/// because the availability could be changed depending on the codec capability. :\n
/// player_audio_effect_equalizer_is_available()\n
/// player_set_media_packet_audio_frame_decoded_cb()\n
/// player_unset_media_packet_audio_frame_decoded_cb()\n
/// player_set_replaygain_enabled()\n
/// player_is_replaygain_enabled()\n
/// player_audio_pitch_set_enabled()\n
/// player_audio_pitch_is_enabled()\n
/// player_audio_pitch_set_value()\n
/// player_audio_pitch_get_value()\n
/// Parameter player       The handle to the media player
/// Parameter codec_type   The default codec type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_NOT_SUPPORTED_AUDIO_CODEC Not support audio codec type
/// @pre The player state must be #PLAYER_STATE_IDLE by player_create() or player_unprepare().
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_audio_codec_type(
  player_h player,
  int codec_type,
) =>
    tizenCapiMediaPlayer.player_set_audio_codec_type(
      player,
      codec_type,
    );

/// @brief Sets the audio latency mode.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The default audio latency mode of the player is #AUDIO_LATENCY_MODE_MID.
/// To get the current audio latency mode, use player_get_audio_latency_mode().
/// If it's high mode, audio output interval can be increased so, it can keep more audio data to play.
/// But, state transition like pause or resume can be more slower than default(mid) mode.
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE and
/// this will not work at all even if it was called before enabling offload. (Since 5.5)
/// Parameter player The handle to the media player
/// Parameter latency_mode The latency mode to be applied to the audio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see #audio_latency_mode_e
/// @see player_get_audio_latency_mode()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_audio_latency_mode(
  player_h player,
  int latency_mode,
) =>
    tizenCapiMediaPlayer.player_set_audio_latency_mode(
      player,
      latency_mode,
    );

/// @brief Sets the audio only mode.
/// @details This function is used to disable or enable video rendering during playback.
/// @since_tizen 4.0
/// Parameter player       The handle to the media player
/// Parameter audio_only   The new audio only status: (@c true = enable audio only, @c false = disable audio only)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE                Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION   Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE       Invalid player state
/// @pre The player state must be one of: #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED.
/// @see player_is_audio_only()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_audio_only(
  player_h player,
  bool audio_only,
) =>
    tizenCapiMediaPlayer.player_set_audio_only(
      player,
      audio_only,
    );

/// @brief Sets a callback function to be invoked when there is a change in the buffering status of a media stream.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The media resource should be streamed over the network.
/// Parameter player      The handle to the media player
/// Parameter callback    The callback function to register
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @if WEARABLE @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature @endif
/// @post  player_buffering_cb() will be invoked.
/// @see player_unset_buffering_cb()
/// @see player_set_uri()
/// @see player_buffering_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_buffering_cb(
  player_h player,
  player_buffering_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_buffering_cb(
      player,
      callback,
      user_data,
    );

/// @brief Sets a callback function to be invoked when the playback is finished.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player      The handle to the media player
/// Parameter callback    The callback function to register
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @post  player_completed_cb() will be invoked.
/// @see player_unset_completed_cb()
/// @see player_completed_cb()
/// @see player_start()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_completed_cb(
  player_h player,
  player_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_completed_cb(
      player,
      callback,
      user_data,
    );

/// @brief Sets the video display.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks To get @a display to set, use #GET_DISPLAY().
/// @remarks We are not supporting changing display.
/// @remarks This function must be called before calling the player_prepare() or player_prepare_async() \n
/// to reflect the display type.
/// @remarks This function must be called in main thread of application.
/// Otherwise, it will return #PLAYER_ERROR_INVALID_OPERATION by internal restriction.
/// To avoid #PLAYER_ERROR_INVALID_OPERATION in sub thread, ecore_thread_main_loop_begin() and
/// ecore_thread_main_loop_end() can be used, but deadlock can be also occurred if main thread is busy.
/// So, it's not recommended to use them. (since 5.0)
/// Parameter   player The handle to the media player
/// Parameter   type The display type
/// Parameter   display The handle to display
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @see #player_display_type_e
/// @see player_set_display_mode()
/// @see player_set_display_roi_area()
/// @see player_set_display_visible()
/// @see player_set_display_rotation()
/// @see ecore_thread_main_loop_begin()
/// @see ecore_thread_main_loop_end()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_display(
  player_h player,
  int type,
  player_display_h display,
) =>
    tizenCapiMediaPlayer.player_set_display(
      player,
      type,
      display,
    );

/// @brief Sets the video display mode.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If no display is set, no operation is performed.
/// Parameter player   The handle to the media player
/// Parameter mode     The display mode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see #player_display_mode_e
/// @see player_set_display()
/// @see player_get_display_mode()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_display_mode(
  player_h player,
  int mode,
) =>
    tizenCapiMediaPlayer.player_set_display_mode(
      player,
      mode,
    );

/// @brief Sets the ROI (Region Of Interest) area of display.
/// @since_tizen 3.0
/// @remarks If no display is set, no operation is performed and
/// the ROI area is valid only in #PLAYER_DISPLAY_MODE_DST_ROI display mode.
/// @remarks The minimum value of width and height are 1.
/// @remarks ROI area can be set before setting ROI display mode. (since 4.0)
/// Parameter player The handle to the media player
/// Parameter x X coordinate of area
/// Parameter y Y coordinate of area
/// Parameter width Width of area
/// Parameter height Height of area
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval  #PLAYER_ERROR_NONE Successful
/// @retval  #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_display()
/// @see player_set_display_mode()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_display_roi_area(
  player_h player,
  int x,
  int y,
  int width,
  int height,
) =>
    tizenCapiMediaPlayer.player_set_display_roi_area(
      player,
      x,
      y,
      width,
      height,
    );

/// @brief Sets the rotation settings of the video surface display.
/// @details Use this function to change the video orientation to portrait mode.
/// The video out will be rotated in a counterclockwise direction.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If no display is set, no operation is performed.
/// Parameter player   The handle to the media player
/// Parameter rotation The rotation of the display
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see #player_display_rotation_e
/// @see  player_set_display()
/// @see  player_get_display_rotation()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_display_rotation(
  player_h player,
  int rotation,
) =>
    tizenCapiMediaPlayer.player_set_display_rotation(
      player,
      rotation,
    );

/// @brief Sets the visibility of the video display.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If no display is set, no operation is performed.
/// @remarks If you set visible before calling player_set_display(), it will be applied on #PLAYER_STATE_READY state.
/// Parameter player   The handle to the media player
/// Parameter visible The visibility of the display (@c true = visible, @c false = non-visible )
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_display()
/// @see player_is_display_visible()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_display_visible(
  player_h player,
  bool visible,
) =>
    tizenCapiMediaPlayer.player_set_display_visible(
      player,
      visible,
    );

/// @brief Sets a callback function to be invoked when an error occurs.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player      The handle to the media player
/// Parameter callback    The callback function to register
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @post  player_error_cb() will be invoked.
/// @see player_unset_error_cb()
/// @see player_error_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_error_cb(
  player_h player,
  player_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_error_cb(
      player,
      callback,
      user_data,
    );

/// @brief Sets a callback function to be invoked when the playback is interrupted or the interrupt is completed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player      The handle to the media player
/// Parameter callback    The callback function to register
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @post  player_interrupted_cb() will be invoked.
/// @see player_unset_interrupted_cb()
/// @see #player_interrupted_code_e
/// @see player_interrupted_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_interrupted_cb(
  player_h player,
  player_interrupted_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_interrupted_cb(
      player,
      callback,
      user_data,
    );

/// @brief Sets the player's looping status.
/// @details If the looping status is @c true, playback automatically restarts upon finishing.
/// If it is @c false, it won't. The default value is @c false.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter   player The handle to the media player
/// Parameter   looping The new looping status: (@c true = looping, @c false = non-looping )
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_is_looping()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_looping(
  player_h player,
  bool looping,
) =>
    tizenCapiMediaPlayer.player_set_looping(
      player,
      looping,
    );

/// @brief Sets the maximum limit of the streaming variant.
/// @since_tizen 4.0
/// @remarks This function is used for adaptive streaming(hls/mpeg dash) only.
/// @remarks The bandwidth setting can only be applied if there is no width, height information at streaming variant header.
/// Application can get all the variant information by calling player_foreach_adaptive_variant() function.
/// @remarks If there is no affordable stream for the condition, the minimum bandwidth stream will be selected.
/// Parameter player      The handle to the media player
/// Parameter bandwidth   The max bandwidth limit of the stream variant (default: -1)
/// Parameter width       The max width limit of the stream variant (default: -1)
/// Parameter height      The max height limit of the stream variant (default: -1)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_foreach_adaptive_variant()
/// @see player_get_max_adaptive_variant_limit()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_max_adaptive_variant_limit(
  player_h player,
  int bandwidth,
  int width,
  int height,
) =>
    tizenCapiMediaPlayer.player_set_max_adaptive_variant_limit(
      player,
      bandwidth,
      width,
      height,
    );

/// @brief Sets a callback function for getting the decoded audio data.
/// @details This function is used to get audio PCM data of input media content via registered callback.\n
/// An application can specify the output PCM format by @ref CAPI_MEDIA_TOOL_MEDIA_FORMAT_MODULE API.
/// @since_tizen 5.5
/// @remarks This function must be called before calling player_prepare() or player_prepare_async().\n
/// A registered callback is called in a separate thread (not in the main loop).\n
/// The audio PCM data can be retrieved using a registered callback as a media packet
/// and it is available until it's destroyed by media_packet_destroy().\n
/// The packet has to be destroyed as quickly as possible after rendering the data\n
/// and all the packets have to be destroyed before player_unprepare() is called.\n
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE and
/// this will not work at all even if this was called before enabling offload.
/// @remarks This function could be unavailable depending on the audio codec type and
/// this will return #PLAYER_ERROR_NOT_AVAILABLE.
/// @remarks If the content is encrypted or there are copyright issues with it,
/// this function could be unsupported depending on the DRM policy.
/// Parameter player     The handle to the media player
/// Parameter format     The media format handle about required audio PCM specification.
/// This format has to include PCM MIME type, audio channel and sampling rate.
/// If the format is NULL, the original PCM format or platform default PCM format will be applied.
/// Parameter opt        The audio extract option
/// Parameter callback   The callback function to be registered
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid state
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available
/// @pre The player's state must be #PLAYER_STATE_IDLE.
/// @see player_unset_media_packet_audio_frame_decoded_cb()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
/// @par Example
/// @code
/// #include <player.h>
/// #include <media_format.h>
/// ...
/// player_h player = NULL;
/// media_format_h a_format = NULL;
/// ...
/// media_format_create(&a_format);
/// media_format_set_audio_mime(a_format, MEDIA_FORMAT_PCM_F32LE);
/// media_format_set_audio_channel(a_format, 2);
/// media_format_set_audio_samplerate(a_format, 44100);
///
/// player_set_media_packet_audio_frame_decoded_cb(player, a_format, PLAYER_AUDIO_EXTRACT_DEFAULT, _audio_pcm_cb, udata);
///
/// media_format_unref(a_format);
/// ...
/// @endcode
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_media_packet_audio_frame_decoded_cb(
  player_h player,
  media_format_h format,
  int opt,
  player_media_packet_audio_decoded_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_media_packet_audio_frame_decoded_cb(
      player,
      format,
      opt,
      callback,
      user_data,
    );

/// @brief Sets a callback function for getting the decoded video frame.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks This function must be called before calling player_prepare() or player_prepare_async().\n
/// A registered callback is called in a separate thread (not in the main loop).\n
/// A video frame can be retrieved using a registered callback as a media packet.\n
/// The callback function holds the same buffer that will be drawn on the display device.\n
/// So if you change the media packet in a registered callback, it will be displayed on the device\n
/// and the media packet is available until it's destroyed by media_packet_destroy().\n
/// The packet have to be destroyed as quickly as possible after rendering the packet\n
/// and all the packets have to be destroyed before player_unprepare() is called.\n
/// @remarks If the content is encrypted or there are copyright issues with it,
/// this function could be unsupported depending on the DRM policy.
/// Parameter player The handle to the media player
/// Parameter callback The callback function to be registered
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid state
/// @pre The player's state must be #PLAYER_STATE_IDLE. And, #PLAYER_DISPLAY_TYPE_NONE must be set by calling player_set_display().
/// @see player_unset_media_packet_video_frame_decoded_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_media_packet_video_frame_decoded_cb(
  player_h player,
  player_media_packet_video_decoded_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_media_packet_video_frame_decoded_cb(
      player,
      callback,
      user_data,
    );

/// @brief Sets the max size bytes of buffer.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks This function is used for media stream playback only.
/// @remarks If the buffer level over the max size, player_media_stream_buffer_status_cb() will be invoked with overflow status.
/// Parameter player The handle to the media player
/// Parameter type   The type of target stream
/// Parameter max_size The max bytes of buffer, it has to be bigger than zero. (default: 200000)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see player_get_media_stream_buffer_max_size()
/// @see player_media_stream_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_media_stream_buffer_max_size(
  player_h player,
  int type,
  int max_size,
) =>
    tizenCapiMediaPlayer.player_set_media_stream_buffer_max_size(
      player,
      type,
      max_size,
    );

/// @brief Sets the buffer threshold percent of buffer.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks This function is used for media stream playback only.
/// @remarks If the buffer level drops below the percent value, player_media_stream_buffer_status_cb() will be invoked with underrun status.
/// Parameter player The handle to the media player
/// Parameter type   The type of target stream
/// Parameter percent The minimum threshold(0~100) of buffer (default: 0)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see player_get_media_stream_buffer_min_threshold()
/// @see player_media_stream_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_media_stream_buffer_min_threshold(
  player_h player,
  int type,
  int percent,
) =>
    tizenCapiMediaPlayer.player_set_media_stream_buffer_min_threshold(
      player,
      type,
      percent,
    );

/// @brief Sets a callback function to be invoked when buffer underrun or overflow is occurred.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks This function is used for media stream playback only.
/// @remarks The callback is called in a separate thread (not in the main loop).
/// Parameter player   The handle to the media player
/// Parameter type     The type of target stream
/// Parameter callback The buffer status callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @post player_media_stream_buffer_status_cb() will be invoked.
/// @see player_unset_media_stream_buffer_status_cb()
/// @see player_media_stream_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_media_stream_buffer_status_cb(
  player_h player,
  int type,
  player_media_stream_buffer_status_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_media_stream_buffer_status_cb(
      player,
      type,
      callback,
      user_data,
    );

/// @brief  Sets contents information for media stream.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks AV format must be set before pushing elementary stream with player_push_media_stream().
/// @remarks This function must be called before calling the player_prepare() or player_prepare_async()
/// to reflect the media information.
/// @remarks The supported media format MIME type can be checked
/// by calling player_foreach_media_stream_supported_format(). (Since 5.5)
/// Parameter player The handle to media player
/// Parameter type   The type of target stream
/// Parameter format The media format to set media information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid state
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_SUPPORTED_FORMAT Not supported format (Since 5.5)
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @see player_push_media_stream()
/// @see player_foreach_media_stream_supported_format()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_media_stream_info(
  player_h player,
  int type,
  media_format_h format,
) =>
    tizenCapiMediaPlayer.player_set_media_stream_info(
      player,
      type,
      format,
    );

/// @brief Sets a callback function to be invoked when seeking is occurred.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks This function is used for media stream playback only.
/// @remarks The callback is called in a separate thread (not in the main loop).
/// Parameter player    The handle to the media player
/// Parameter type      The type of target stream
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @post player_media_stream_seek_cb() will be invoked.
/// @see player_unset_media_stream_seek_cb()
/// @see player_media_stream_seek_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_media_stream_seek_cb(
  player_h player,
  int type,
  player_media_stream_seek_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_media_stream_seek_cb(
      player,
      type,
      callback,
      user_data,
    );

/// @brief Sets memory as the data source.
///
/// @details Associates media content, cached in memory, with the player. Unlike the case of player_set_uri(), the media resides in memory.
/// If the function call is successful, subsequent calls to player_prepare() and player_start() will start playing the media.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If you provide an invalid data, you won't receive an error message until you call player_start().
/// @remarks This function must be called before calling the player_prepare() or player_prepare_async()
/// to build the player based on the data.
///
/// Parameter player   The handle to the media player
/// Parameter data     The memory pointer of media data
/// Parameter size     The size of media data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @see player_set_uri()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_memory_buffer(
  player_h player,
  ffi.Pointer<ffi.Void> data,
  int size,
) =>
    tizenCapiMediaPlayer.player_set_memory_buffer(
      player,
      data,
      size,
    );

/// @brief Sets the player's mute status.
/// @details If the mute status is @c true, no sounds are played.
/// If it is @c false, sounds are played at the previously set volume level.
/// Until this function is called, by default the player is not muted.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter   player The handle to the media player
/// Parameter   muted The new mute status: (@c true = mute, @c false = not muted)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_is_muted()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_mute(
  player_h player,
  bool muted,
) =>
    tizenCapiMediaPlayer.player_set_mute(
      player,
      muted,
    );

/// @brief Sets the playback rate.
/// @details The default value is @c 1.0.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks #PLAYER_ERROR_INVALID_OPERATION occurs when streaming playback.
/// @remarks No operation is performed, if @a rate is @c 0.
/// @remarks The sound is muted, when playback rate is under @c 0.0 and over @c 2.0.
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter player   The handle to the media player
/// Parameter rate     The playback rate (-5.0x ~ 5.0x)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED.
/// @see player_audio_offload_set_enabled()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_playback_rate(
  player_h player,
  double rate,
) =>
    tizenCapiMediaPlayer.player_set_playback_rate(
      player,
      rate,
    );

/// @brief Sets the seek position for playback, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks This function will trigger the seeking operation on player instance like in the case of player_set_play_position_nsec().
/// Normally application needs to wait for player_seek_completed_cb() before calling setting position function again.
/// Otherwise it will return #PLAYER_ERROR_SEEK_FAILED.
/// @remarks Calling player_pause() or player_start() before player_seek_completed_cb() is invoked will cause #PLAYER_ERROR_INVALID_OPERATION to be returned.
/// @remarks Please note that if application is playing external media data via player_set_media_stream_info(),
/// then consecutive calling of this function will always succeed and there is no need to wait for player_seek_completed_cb()
/// before next calling of this function.(Since 3.0)
/// @remarks Even if you don't set visible to true by calling player_set_display_visible(),
/// the video will be shown when the player_seek_completed_cb() is invoked.
/// @remarks In case of non-seekable content, the function will return #PLAYER_ERROR_INVALID_OPERATION
/// and the player will keep playing without changing the play position.
/// Parameter player        The handle to the media player
/// Parameter milliseconds  The position in milliseconds from the start to the seek point
/// Parameter accurate      If @c true the nearest frame position is returned, but this might be considerably slow,
/// if @c false the nearest key frame position is returned, this might be faster but less accurate.
/// Parameter callback      The callback function to register
/// Parameter user_data     The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_SEEK_FAILED Seek operation failure
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED.
/// @post It invokes player_seek_completed_cb() when seek operation completes, if you set a callback.
/// @see player_get_play_position()
/// @see player_set_play_position_nsec()
/// @see player_get_play_position_nsec()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_play_position(
  player_h player,
  int milliseconds,
  bool accurate,
  player_seek_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_play_position(
      player,
      milliseconds,
      accurate,
      callback,
      user_data,
    );

/// @brief Sets the seek position in nanoseconds for playback, asynchronously.
/// @since_tizen 5.0
/// @remarks This function will trigger the seeking operation on player instance like in the case of player_set_play_position().
/// Normally application needs to wait for player_seek_completed_cb() before calling setting position function again.
/// Otherwise it will return #PLAYER_ERROR_SEEK_FAILED.
/// @remarks Calling player_pause() or player_start() before player_seek_completed_cb() is invoked will cause #PLAYER_ERROR_INVALID_OPERATION to be returned.
/// @remarks Please note that if application is playing external media data via player_set_media_stream_info(),
/// then consecutive calling of this function will always succeed and there is no need to wait for player_seek_completed_cb()
/// before next calling of this function.
/// @remarks Even if you don't set visible to true by calling player_set_display_visible(),
/// the video will be shown when the player_seek_completed_cb() is invoked.
/// @remarks In case of non-seekable content, the function will return #PLAYER_ERROR_INVALID_OPERATION
/// and the player will keep playing without changing the play position.
/// Parameter player        The handle to the media player
/// Parameter nanoseconds   The position in nanoseconds from the start to the seek point
/// Parameter accurate      If @c true the nearest frame position is returned, but this might be considerably slow,
/// if @c false the nearest key frame position is returned, this might be faster but less accurate.
/// Parameter callback      The callback function to register
/// Parameter user_data     The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_SEEK_FAILED Seek operation failure
/// @pre The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED.
/// @post It invokes player_seek_completed_cb() when seek operation completes, if you set a callback.
/// @see player_set_play_position()
/// @see player_get_play_position()
/// @see player_get_play_position_nsec()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_play_position_nsec(
  player_h player,
  int nanoseconds,
  bool accurate,
  player_seek_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_play_position_nsec(
      player,
      nanoseconds,
      accurate,
      callback,
      user_data,
    );

/// @brief Sets the player's replaygain status.
/// @details If the replaygain status is @c true, replaygain is applied (if contents has a replaygain tag).
/// If it is @c false, the replaygain isn't affected by tag and properties.
/// @since_tizen 5.0
/// @remarks If audio offload is enabled by calling player_audio_offload_set_enabled(),
/// this function will return #PLAYER_ERROR_NOT_AVAILABLE and
/// this will not work at all even if this was called before enabling offload. (Since 5.5)
/// @remarks This function could be unavailable depending on the audio codec type and
/// this will return #PLAYER_ERROR_NOT_AVAILABLE. (Since 5.5)
/// Parameter   player The handle to the media player
/// Parameter   enabled The new replaygain status: (@c true = enable, @c false = disable)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available (Since 5.5)
/// @see player_is_replaygain_enabled()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_replaygain_enabled(
  player_h player,
  bool enabled,
) =>
    tizenCapiMediaPlayer.player_set_replaygain_enabled(
      player,
      enabled,
    );

/// @brief Sets the player's sound manager stream information.
/// @since_tizen 3.0
/// @remarks You can set sound stream information including audio routing and volume type.
/// For more details, please refer to sound_manager.h
/// @remarks This function must be called before calling the player_prepare() or player_prepare_async()
/// to reflect the sound stream information when the player is building.
/// @remarks This function is related to the following feature:\n
/// %http://tizen.org/feature/multimedia.player.stream_info\n
/// If this feature is not supported, the stream_type of the player is fixed to the #SOUND_STREAM_TYPE_MEDIA.
/// Parameter player The handle to the media player
/// Parameter stream_info The sound manager info type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create().
/// @see #sound_stream_info_h
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @par Example
/// @code
/// #include <player.h>
/// #include <sound_manager.h>
/// ...
/// player_h player = NULL;
/// sound_stream_info_h stream_info = NULL;
/// sound_stream_type_e stream_type = SOUND_STREAM_TYPE_MEDIA;
/// ...
/// sound_manager_create_stream_information (stream_type, _focus_callback, use_data, &stream_info);
/// player_create (&player);
/// player_set_sound_stream_info (player, stream_info);
/// ...
/// player_prepare_async (player, _prepared_cb, udata);
/// ...
/// @endcode
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_sound_stream_info(
  player_h player,
  sound_stream_info_h stream_info,
) =>
    tizenCapiMediaPlayer.player_set_sound_stream_info(
      player,
      stream_info,
    );

/// @brief Sets the streaming buffering time.
/// @since_tizen 4.0
/// Parameter player        The handle to the media player
/// Parameter prebuffer_ms  The time duration of buffering data that must be prerolled to start playback. \n
/// The value should be more than 1000 milliseconds to ensure the normal buffering. \n
/// There are, however, two exceptions: \n
/// 0: Indicate to use platform default value depending on the streaming type and network status (default) \n
/// -1: Indicate to use current value (since 5.5)
/// Parameter rebuffer_ms   The time duration of buffering data that must be prerolled to resume playback
/// if player is paused for buffering internally. \n
/// The value should be more than 1000 milliseconds to ensure the normal buffering. \n
/// There are, however, two exceptions: \n
/// 0: Indicate to use platform default value depending on the streaming type and network status (default) \n
/// -1: Indicate to use current value (since 5.5)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid state
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation (since 5.5)
/// @if WEARABLE @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature @endif
/// @pre The player state must be #PLAYER_STATE_IDLE.
/// @see player_get_streaming_buffering_time()
/// @par Example
/// @code
/// #include <player.h>
/// bool set_buffering_time(player_h p)
/// {
/// int err = PLAYER_ERROR_NONE;
///
/// // sets the prebuffer_ms to 5000 milliseconds but does not change the rebuffer_ms
/// err =  player_set_streaming_buffering_time(p, 5000, -1);
/// if (err != PLAYER_ERROR_NONE) {
/// printf("Fail to set buffering time = 0x%x\n", err);
/// return false;
/// }
/// return true;
/// }
/// @endcode
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_streaming_buffering_time(
  player_h player,
  int prebuffer_ms,
  int rebuffer_ms,
) =>
    tizenCapiMediaPlayer.player_set_streaming_buffering_time(
      player,
      prebuffer_ms,
      rebuffer_ms,
    );

/// @brief Sets the cookie for streaming playback.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks This function must be called before calling the player_prepare() or player_prepare_async()
/// to reflect the cookie information when the streaming connection is set up.
/// Parameter player The handle to the media player
/// Parameter cookie The cookie to set
/// Parameter size The size of the cookie
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @see player_set_uri()
/// @see player_set_streaming_user_agent()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_streaming_cookie(
  player_h player,
  ffi.Pointer<ffi.Char> cookie,
  int size,
) =>
    tizenCapiMediaPlayer.player_set_streaming_cookie(
      player,
      cookie,
      size,
    );

/// @brief Sets the streaming user agent for playback.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks This function must be called before calling the player_prepare() or player_prepare_async()
/// to reflect the user agent information when the streaming connection is set up.
/// Parameter player The handle to the media player
/// Parameter user_agent The user agent to set
/// Parameter size The size of the user agent
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @see player_set_uri()
/// @see player_set_streaming_cookie()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_streaming_user_agent(
  player_h player,
  ffi.Pointer<ffi.Char> user_agent,
  int size,
) =>
    tizenCapiMediaPlayer.player_set_streaming_user_agent(
      player,
      user_agent,
      size,
    );

/// @brief Sets a subtitle path.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks Only MicroDVD/SubViewer(*.sub), SAMI(*.smi), and SubRip(*.srt) subtitle formats are supported.
/// @remarks The mediastorage privilege(http://tizen.org/privilege/mediastorage) must be added if any files are used to play located in the internal storage.
/// @remarks The externalstorage privilege(http://tizen.org/privilege/externalstorage) must be added if any files are used to play located in the external storage.
/// @remarks The path value can be @c NULL for reset before calling player_prepare() or player_prepare_async().
///
/// Parameter player   The handle to the media player
/// Parameter path     The absolute path of the subtitle file, it can be @c NULL in the #PLAYER_STATE_IDLE state.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PLAYER_ERROR_NO_SUCH_FILE File not found (Since 4.0)
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_subtitle_path(
  player_h player,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiMediaPlayer.player_set_subtitle_path(
      player,
      path,
    );

/// @brief Sets the seek position for the subtitle.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif.1
/// @remarks Only MicroDVD/SubViewer(*.sub), SAMI(*.smi), and SubRip(*.srt) subtitle formats are supported.
/// Parameter  player        The handle to the media player
/// Parameter  milliseconds  The position in milliseconds from the start to the seek point
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre The subtitle must be set by calling player_set_subtitle_path().
/// @pre The player state must be one of #PLAYER_STATE_PLAYING or #PLAYER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_subtitle_position_offset(
  player_h player,
  int milliseconds,
) =>
    tizenCapiMediaPlayer.player_set_subtitle_position_offset(
      player,
      milliseconds,
    );

/// @brief Sets a callback function to be invoked when a subtitle updates.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The callback is called in a separate thread (not in the main loop).
/// Parameter player      The handle to the media player
/// Parameter callback    The callback function to register
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @pre The subtitle must be set by calling player_set_subtitle_path().
/// @post  player_subtitle_updated_cb() will be invoked.
/// @see player_unset_subtitle_updated_cb()
/// @see player_subtitle_updated_cb()
/// @see player_set_subtitle_path()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_subtitle_updated_cb(
  player_h player,
  player_subtitle_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_subtitle_updated_cb(
      player,
      callback,
      user_data,
    );

/// @brief Sets the data source (file-path, HTTP or RTSP URI) to use.
///
/// @details Associates media contents, referred to by the URI, with the player.
/// If the function call is successful, subsequent calls to player_prepare() and player_start() will start playing the media.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks If you use HTTP or RTSP, URI must start with "http://" or "rtsp://". The default protocol is "file://".
/// If you provide an invalid URI, you won't receive an error message until you call player_start().
/// @remarks This function must be called before calling the player_prepare() or player_prepare_async() to build the player based on the URI information.
/// @remarks The mediastorage privilege(http://tizen.org/privilege/mediastorage) must be added if any video/audio files are used to play located in the internal storage.
/// @remarks The externalstorage privilege(http://tizen.org/privilege/externalstorage) must be added if any video/audio files are used to play located in the external storage.
/// @remarks The internet privilege(http://tizen.org/privilege/internet) must be added if any URLs are used to play from network.
///
/// Parameter player   The handle to the media player
/// Parameter uri      The content location, such as the file path, the URI of the HTTP or RTSP stream you want to play
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_PERMISSION_DENIED Permission denied
/// @if WEARABLE @retval #PLAYER_ERROR_FEATURE_NOT_SUPPORTED_ON_DEVICE Unsupported feature @endif
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @see player_set_memory_buffer()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_uri(
  player_h player,
  ffi.Pointer<ffi.Char> uri,
) =>
    tizenCapiMediaPlayer.player_set_uri(
      player,
      uri,
    );

/// @brief Sets the ROI (Region Of Interest) area of the content video source.
/// @details This function is to set the ROI area of video content to render it
/// on #PLAYER_DISPLAY_TYPE_OVERLAY display with current display mode.
/// It can be regarded as zooming operation because the selected video area will be rendered fit to the display.
/// @since_tizen 5.0
/// @remarks This function requires the ratio value of the each coordinate and size based on the video resolution size
/// to consider the dynamic resolution video content.
/// @remarks This function have to be called after calling player_set_display() and the ROI area is valid only in #PLAYER_DISPLAY_TYPE_OVERLAY.
/// Parameter player     The handle to the media player
/// Parameter x_scale    X coordinate ratio value of the video source area based on the video width size \n
/// Valid range is 0.0~1.0.
/// Parameter y_scale    Y coordinate ratio value of the video source area based on the video height size \n
/// Valid range is 0.0~1.0.
/// Parameter w_scale    Width ratio value of the video source area based on the video width size \n
/// Valid range is from greater than 0.0 to 1.0.
/// Parameter h_scale    Height ratio value of the video source area based on the video height size \n
/// Valid range is from greater than 0.0 to 1.0.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval  #PLAYER_ERROR_NONE Successful
/// @retval  #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see #player_display_type_e
/// @see player_set_display()
/// @see player_set_display_mode()
/// @see player_get_video_size()
/// @see player_get_video_roi_area()
/// @par Example
/// @code
/// #include <player.h>
/// ...
/// player_h player = NULL;
/// player_display_h display = NULL;
/// int width = 0, height = 0;
/// ...
/// player_set_display (player, PLAYER_DISPLAY_TYPE_OVERLAY, display);
/// player_get_video_size (player, &width, &height);
/// ...
/// player_set_video_roi_area (player, 30/(double)width, 30/(double)height, 480/(double)width, 270/(double)height);
/// ...
/// @endcode
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_video_roi_area(
  player_h player,
  double x_scale,
  double y_scale,
  double w_scale,
  double h_scale,
) =>
    tizenCapiMediaPlayer.player_set_video_roi_area(
      player,
      x_scale,
      y_scale,
      w_scale,
      h_scale,
    );

/// @brief Sets a callback function to be invoked when video stream is changed.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks The stream changing is detected just before rendering operation.
/// @remarks The callback is called in a separate thread (not in the main loop).
/// @remarks This function must be called before calling the player_prepare() or player_prepare_async()
/// to reflect the requirement when the player is building.
/// Parameter player      The handle to the media player
/// Parameter callback    The stream changed callback function to register
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre The player state must be set to #PLAYER_STATE_IDLE by calling player_create() or player_unprepare().
/// @post player_video_stream_changed_cb() will be invoked.
/// @see player_unset_video_stream_changed_cb()
/// @see player_video_stream_changed_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_video_stream_changed_cb(
  player_h player,
  player_video_stream_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaPlayer.player_set_video_stream_changed_cb(
      player,
      callback,
      user_data,
    );

/// @brief Sets the player's volume.
/// @details  Setting this volume adjusts the player's instance volume, not the system volume.
/// The valid range is from 0 to 1.0, inclusive (1.0 = 100%). Default value is 1.0.
/// To change system volume, use the @ref CAPI_MEDIA_SOUND_MANAGER_MODULE API.
/// Finally, it does not support to set other value into each channel currently.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player   The handle to the media player
/// Parameter left     The left volume scalar
/// Parameter right    The right volume scalar
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_get_volume()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_set_volume(
  player_h player,
  double left,
  double right,
) =>
    tizenCapiMediaPlayer.player_set_volume(
      player,
      left,
      right,
    );

/// @brief Starts or resumes playback.
/// @details Plays current media content, or resumes playback if the player is paused or buffering during HTTP streaming play.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks Even if you don't set visible to true by calling player_set_display_visible(), the video will be shown on #PLAYER_STATE_PLAYING state.
/// @remarks Since 3.0: \n
/// Sound can be mixed with other sounds, if you don't control the stream focus in sound-manager module.\n
/// You can refer to @ref CAPI_MEDIA_SOUND_MANAGER_MODULE.
/// @remarks Since 5.0: \n
/// In case of HTTP streaming playback, the player could be internally paused for buffering.
/// If the application calls this function during the buffering, the playback will be resumed by force
/// and the buffering message posting by player_buffering_cb() will be stopped.
/// Parameter   player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_CONNECTION_FAILED Network connection failed
/// @retval #PLAYER_ERROR_SOUND_POLICY Sound policy error
/// @pre Before 5.0: The player state must be #PLAYER_STATE_READY or #PLAYER_STATE_PAUSED. \n
/// @pre Since 5.0: The player state must be one of #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, or #PLAYER_STATE_PAUSED.
/// @post The player state will be #PLAYER_STATE_PLAYING.
/// @post It invokes player_completed_cb() when playback completes, if you set a callback with player_set_completed_cb().
/// @see player_prepare()
/// @see player_prepare_async()
/// @see player_stop()
/// @see player_pause()
/// @see player_set_completed_cb()
/// @see player_completed_cb()
/// @see player_set_display_visible()
/// @see player_set_buffering_cb()
/// @see player_buffering_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_start(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_start(
      player,
    );

/// @brief Stops playing media content.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter   player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid state
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @retval #PLAYER_ERROR_SOUND_POLICY Sound policy error
/// @pre The player state must be set to #PLAYER_STATE_PLAYING by calling player_start() or set to #PLAYER_STATE_PAUSED by calling player_pause().
/// @post The player state will be #PLAYER_STATE_READY.
/// @see player_start()
/// @see player_pause()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_stop(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_stop(
      player,
    );

/// @brief Resets the media player.
/// @details The most recently used media is reset and no longer associated with the player.
/// Playback is no longer possible. If you want to use the player again, you must set the data URI and call
/// player_prepare() again.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player   The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid player state
/// @pre Before 5.0: The player state must be one of: #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, #PLAYER_STATE_PAUSED. \n
/// @pre Since 5.0: The player state must be one of: #PLAYER_STATE_IDLE, #PLAYER_STATE_READY, #PLAYER_STATE_PLAYING, #PLAYER_STATE_PAUSED.
/// #PLAYER_STATE_IDLE is allowed only if player preparation was started with player_prepare_async().
/// @post The player state will be #PLAYER_STATE_IDLE.
/// @see player_prepare()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unprepare(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unprepare(
      player,
    );

/// @brief Unsets the buffering callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_buffering_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_buffering_cb(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unset_buffering_cb(
      player,
    );

/// @brief Unsets the playback completed callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_completed_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_completed_cb(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unset_completed_cb(
      player,
    );

/// @brief Unsets the error callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_error_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_error_cb(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unset_error_cb(
      player,
    );

/// @brief Unsets the interrupted callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_interrupted_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_interrupted_cb(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unset_interrupted_cb(
      player,
    );

/// @brief Unsets the callback notifying the decoded audio data.
/// @since_tizen 5.5
/// @remarks Depending on the audio codec type or by enabling audio offload,
/// this function could be unavailable and this will return #PLAYER_ERROR_NOT_AVAILABLE.
/// Parameter player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_STATE Invalid state
/// @retval #PLAYER_ERROR_NOT_AVAILABLE Not available
/// @pre The player's state must be #PLAYER_STATE_READY or #PLAYER_STATE_IDLE
/// @see player_set_media_packet_audio_frame_decoded_cb()
/// @see player_audio_offload_set_enabled()
/// @see player_audio_offload_is_enabled()
/// @see player_set_audio_codec_type()
/// @see player_get_audio_codec_type()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_media_packet_audio_frame_decoded_cb(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unset_media_packet_audio_frame_decoded_cb(
      player,
    );

/// @brief Unsets the callback notifying the decoded video frame.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre The player's state must be #PLAYER_STATE_READY or #PLAYER_STATE_IDLE
/// @see player_set_media_packet_video_frame_decoded_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_media_packet_video_frame_decoded_cb(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unset_media_packet_video_frame_decoded_cb(
      player,
    );

/// @brief Unsets the buffer status callback function.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks This function is used for media stream playback only.
/// Parameter player The handle to the media player
/// Parameter type   The type of target stream
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see player_set_media_stream_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_media_stream_buffer_status_cb(
  player_h player,
  int type,
) =>
    tizenCapiMediaPlayer.player_unset_media_stream_buffer_status_cb(
      player,
      type,
    );

/// @brief Unsets the seek callback function.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// Parameter player The handle to the media player
/// Parameter type   The type of target stream
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see player_set_media_stream_seek_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_media_stream_seek_cb(
  player_h player,
  int type,
) =>
    tizenCapiMediaPlayer.player_unset_media_stream_seek_cb(
      player,
      type,
    );

/// @brief Unsets the subtitle updated callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter player The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PLAYER_ERROR_INVALID_OPERATION Invalid operation
/// @see player_set_subtitle_updated_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_subtitle_updated_cb(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unset_subtitle_updated_cb(
      player,
    );

/// @brief Unsets the video stream changed callback function.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// Parameter player   The handle to the media player
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PLAYER_ERROR_NONE Successful
/// @retval #PLAYER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see player_set_video_stream_changed_cb()
///
/// Module getter: `tizenCapiMediaPlayer`.
int player_unset_video_stream_changed_cb(
  player_h player,
) =>
    tizenCapiMediaPlayer.player_unset_video_stream_changed_cb(
      player,
    );

