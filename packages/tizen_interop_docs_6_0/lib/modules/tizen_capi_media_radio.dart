// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaRadio`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-radio.so.0`.
///
/// Multimeida / Radio.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_radio;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates a radio handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a radio using radio_destroy().
/// Output parameter radio A new handle to radio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_destroy()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_create(
  ffi.Pointer<radio_h> radio,
) =>
    tizenCapiMediaRadio.radio_create(
      radio,
    );

/// @brief Destroys the radio handle and releases all its resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks To completely shutdown the radio operation, call this function with a valid radio handle.
///
/// Parameter radio The handle to radio to be destroyed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_create()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_destroy(
  radio_h radio,
) =>
    tizenCapiMediaRadio.radio_destroy(
      radio,
    );

/// @brief Gets channel spacing.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter   radio           The handle to radio
/// Output parameter  channel_spacing The channel spacing value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_get_channel_spacing(
  radio_h radio,
  ffi.Pointer<ffi.Int> channel_spacing,
) =>
    tizenCapiMediaRadio.radio_get_channel_spacing(
      radio,
      channel_spacing,
    );

/// @brief Gets the current frequency of the radio.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  radio     The handle to radio
/// Output parameter frequency The current frequency [87500 ~ 108000] (kHz)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_set_frequency()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_get_frequency(
  radio_h radio,
  ffi.Pointer<ffi.Int> frequency,
) =>
    tizenCapiMediaRadio.radio_get_frequency(
      radio,
      frequency,
    );

/// @brief Gets the min, max frequency of the region.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter  radio    The handle to radio
/// Output parameter min_freq The min frequency [87500 ~ 108000] (kHz)
/// Output parameter max_freq The max frequency [87500 ~ 108000] (kHz)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_get_frequency_range(
  radio_h radio,
  ffi.Pointer<ffi.Int> min_freq,
  ffi.Pointer<ffi.Int> max_freq,
) =>
    tizenCapiMediaRadio.radio_get_frequency_range(
      radio,
      min_freq,
      max_freq,
    );

/// @brief Gets the current signal strength of the radio.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  radio    The handle to radio
/// Output parameter strength The current signal strength [-128 ~ 128] (dBm)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_get_signal_strength(
  radio_h radio,
  ffi.Pointer<ffi.Int> strength,
) =>
    tizenCapiMediaRadio.radio_get_signal_strength(
      radio,
      strength,
    );

/// @brief Gets the radio's current state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  radio The handle to radio
/// Output parameter state The current state of the radio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_get_state(
  radio_h radio,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaRadio.radio_get_state(
      radio,
      state,
    );

/// @brief Gets the radio's current volume.
/// @details The range of @a volume is from @c 0 to @c 1.0, inclusive (1.0 = 100%).
/// This function gets the radio volume, not the system volume.
/// To get the system volume, use the @ref CAPI_MEDIA_SOUND_MANAGER_MODULE API.
/// @since_tizen 3.0
/// Parameter  radio  The handle to radio
/// Output parameter volume The current volume [0.0 ~ 1.0](1.0 = 100%)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_set_volume()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_get_volume(
  radio_h radio,
  ffi.Pointer<ffi.Float> volume,
) =>
    tizenCapiMediaRadio.radio_get_volume(
      radio,
      volume,
    );

/// @brief Gets the radio's mute status.
/// @details If the mute status is @c true, no sounds are played. If @c false, sounds are played.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  radio The handle to radio
/// Output parameter muted The current mute status: (@c true = mute, @c false = not muted)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_set_mute()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_is_muted(
  radio_h radio,
  ffi.Pointer<ffi.Bool> muted,
) =>
    tizenCapiMediaRadio.radio_is_muted(
      radio,
      muted,
    );

/// @brief Starts scanning radio signals, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio     The handle to radio
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_INVALID_STATE Invalid radio state
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @pre The radio state must be set to #RADIO_STATE_READY or #RADIO_STATE_PLAYING.
/// @post The radio state will be #RADIO_STATE_SCANNING during a search. After the scan is completed, the radio state will be set back to the state from before the function call(#RADIO_STATE_READY or #RADIO_STATE_PLAYING).
/// @post It invokes radio_scan_updated_cb() when the scan information updates.
/// @post It invokes radio_scan_completed_cb() when the scan completes, if you set a callback with radio_set_scan_completed_cb().
/// @see radio_scan_stop()
/// @see radio_set_scan_completed_cb()
/// @see radio_scan_completed_cb()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_scan_start(
  radio_h radio,
  radio_scan_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRadio.radio_scan_start(
      radio,
      callback,
      user_data,
    );

/// @brief Stops scanning radio signals, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio     The handle to radio
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid state
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_INVALID_STATE Invalid radio state
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @pre The radio state must be set to #RADIO_STATE_SCANNING by calling radio_scan_start().
/// @post It invokes radio_scan_stopped_cb() when the scan stops.
/// @post After the scan stopped, the radio state will be set back to the state from before the radio_scan_start() function call(#RADIO_STATE_READY or #RADIO_STATE_PLAYING).
/// @see radio_scan_start()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_scan_stop(
  radio_h radio,
  radio_scan_stopped_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRadio.radio_scan_stop(
      radio,
      callback,
      user_data,
    );

/// @brief Seeks down the effective frequency of the radio, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio     The handle to radio
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_INVALID_STATE Invalid radio state
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @pre The radio state must be set to #RADIO_STATE_PLAYING by calling radio_start().
/// @post It invokes radio_seek_completed_cb() when the seek completes.
/// @see radio_seek_up()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_seek_down(
  radio_h radio,
  radio_seek_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRadio.radio_seek_down(
      radio,
      callback,
      user_data,
    );

/// @brief Seeks up the effective frequency of the radio, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio     The handle to radio
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_INVALID_STATE Invalid radio state
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @pre The radio state must be set to #RADIO_STATE_PLAYING by calling radio_start().
/// @post It invokes radio_seek_completed_cb() when the seek completes.
/// @see radio_seek_down()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_seek_up(
  radio_h radio,
  radio_seek_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRadio.radio_seek_up(
      radio,
      callback,
      user_data,
    );

/// @brief Sets the radio frequency.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio     The handle to radio
/// Parameter frequency The frequency to set [87500 ~ 108000] (kHz)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_get_frequency()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_set_frequency(
  radio_h radio,
  int frequency,
) =>
    tizenCapiMediaRadio.radio_set_frequency(
      radio,
      frequency,
    );

/// @brief Sets a callback function to be invoked when the radio is interrupted.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio     The handle to radio
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @post  radio_interrupted_cb() will be invoked.
/// @see radio_unset_interrupted_cb()
/// @see #radio_interrupted_code_e
/// @see radio_interrupted_cb()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_set_interrupted_cb(
  radio_h radio,
  radio_interrupted_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRadio.radio_set_interrupted_cb(
      radio,
      callback,
      user_data,
    );

/// @brief Sets the radio's mute status.
/// @details If the mute status is @c true, no sounds will be played. If @c false, sounds will be played. Until this function is called, by default the radio is not muted.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio The handle to radio
/// Parameter muted The new mute status: (@c true = mute, @c false = not muted)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_is_muted()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_set_mute(
  radio_h radio,
  bool muted,
) =>
    tizenCapiMediaRadio.radio_set_mute(
      radio,
      muted,
    );

/// @brief Sets a callback function to be invoked when the scan finishes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio     The handle to radio
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @post radio_scan_completed_cb() will be invoked.
/// @see radio_unset_scan_completed_cb()
/// @see radio_scan_completed_cb()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_set_scan_completed_cb(
  radio_h radio,
  radio_scan_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRadio.radio_set_scan_completed_cb(
      radio,
      callback,
      user_data,
    );

/// @brief Sets the radio's volume.
/// @details  Setting this volume adjusts the radio's instance volume, not the system volume.
/// The valid range is from 0 to 1.0, inclusive (1.0 = 100%). Default value is 1.0.
/// To change system volume, use the @ref CAPI_MEDIA_SOUND_MANAGER_MODULE API.
/// Finally, it does not support to set other value into each channel currently.
/// @since_tizen 3.0
/// Parameter radio  The handle to radio
/// Parameter volume The volume to set [0.0 ~ 1.0](1.0 = 100%)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_get_volume()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_set_volume(
  radio_h radio,
  double volume,
) =>
    tizenCapiMediaRadio.radio_set_volume(
      radio,
      volume,
    );

/// @brief Starts playing the radio.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio The handle to radio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_STATE Invalid radio state
/// @retval #RADIO_ERROR_SOUND_POLICY Sound policy error
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @retval #RADIO_ERROR_NO_ANTENNA No Antenna error
/// @pre The radio state must be set to #RADIO_STATE_READY by calling radio_create().
/// @post The radio state will be #RADIO_STATE_PLAYING.
/// @see radio_stop()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_start(
  radio_h radio,
) =>
    tizenCapiMediaRadio.radio_start(
      radio,
    );

/// @brief Stops playing the radio.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio The handle to radio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid state
/// @retval #RADIO_ERROR_INVALID_STATE Invalid radio state
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @pre The radio state must be set to #RADIO_STATE_PLAYING by calling radio_start().
/// @post The radio state will be #RADIO_STATE_READY.
/// @see radio_start()
/// @see radio_scan_start()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_stop(
  radio_h radio,
) =>
    tizenCapiMediaRadio.radio_stop(
      radio,
    );

/// @brief Unsets the interrupted callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio The handle to radio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_set_interrupted_cb()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_unset_interrupted_cb(
  radio_h radio,
) =>
    tizenCapiMediaRadio.radio_unset_interrupted_cb(
      radio,
    );

/// @brief Unsets the scan completed callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter radio The handle to radio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RADIO_ERROR_NONE Successful
/// @retval #RADIO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RADIO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RADIO_ERROR_NOT_SUPPORTED Not supported
/// @see radio_set_scan_completed_cb()
///
/// Module getter: `tizenCapiMediaRadio`.
int radio_unset_scan_completed_cb(
  radio_h radio,
) =>
    tizenCapiMediaRadio.radio_unset_scan_completed_cb(
      radio,
    );

