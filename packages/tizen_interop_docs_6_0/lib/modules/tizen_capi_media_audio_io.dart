// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaAudioIo`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-audio-io.so.0`.
///
/// Multimedia / Audio I/O.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_audio_io;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates an audio device instance and returns an input handle to record PCM (pulse-code modulation) data.
///
/// @details This function is used for audio input initialization.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// @remarks @a input must be released using audio_in_destroy().
/// If the channel count of the requested @a channel is different from the system's supported channel count, then channel remapping will be processed internally.
///
/// Parameter sample_rate The audio sample rate \n
/// Before 5.0: 8000[Hz] ~ 48000[Hz] \n
/// Since 5.0: 8000[Hz] ~ 192000[Hz]
/// Parameter channel The audio channel type \n
/// Before 5.5: Mono or stereo \n
/// Since 5.5: Mono, stereo or multi-channels
/// Parameter type The type of audio sample \n
/// Before 5.0: 8 or 16-bit \n
/// Since 5.0: 8, 16 or 24-bit \n
/// Since 5.5: 8, 16, 24 or 32-bit
/// Output parameter input An audio input handle is created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_PERMISSION_DENIED Permission denied
/// @retval #AUDIO_IO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #AUDIO_IO_ERROR_DEVICE_NOT_OPENED Device not opened
/// @retval #AUDIO_IO_ERROR_SOUND_POLICY Sound policy error
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @post The state will be #AUDIO_IO_STATE_IDLE.\n
/// audio_in_set_sound_stream_info() is recommended to be called after this API.
/// @see audio_in_destroy()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_create(
  int sample_rate,
  int channel,
  int type,
  ffi.Pointer<audio_in_h> input,
) =>
    tizenCapiMediaAudioIo.audio_in_create(
      sample_rate,
      channel,
      type,
      input,
    );

/// @brief Releases the audio input handle and all its resources associated with an audio stream.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input to destroy
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_DEVICE_NOT_CLOSED Device not closed
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @see audio_in_create()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_destroy(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_destroy(
      input,
    );

/// @brief Drops the 'audio in' buffer that was peeked into.
///
/// @details This function works correctly only with read callback. Otherwise it won't operate as intended.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Works only in asynchronous (event) mode. This will remove 'audio in' data from the actual stream buffer. Use this if peeked data is not needed anymore.
///
/// Parameter input The handle to the audio input
/// @return 0 on success, otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING.
/// @see audio_in_peek()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_drop(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_drop(
      input,
    );

/// @brief Flushes and discards buffered audio data from the input stream.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter input The handle to the audio input
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING or #AUDIO_IO_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_flush(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_flush(
      input,
    );

/// @brief Gets the size to be allocated for the audio input buffer.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input
/// Output parameter size The buffer size (in bytes, the maximum size is 1 MB)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @see audio_in_read()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_get_buffer_size(
  audio_in_h input,
  ffi.Pointer<ffi.Int> size,
) =>
    tizenCapiMediaAudioIo.audio_in_get_buffer_size(
      input,
      size,
    );

/// @brief Gets the channel type of the audio input data stream.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input
/// Output parameter channel The audio channel type \n
/// Before 5.5: Mono or stereo \n
/// Since 5.5: Mono, stereo or multi-channels
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_get_channel(
  audio_in_h input,
  ffi.Pointer<ffi.Int32> channel,
) =>
    tizenCapiMediaAudioIo.audio_in_get_channel(
      input,
      channel,
    );

/// @brief Gets the sample rate of the audio input data stream.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input
/// Output parameter sample_rate The audio sample rate \n
/// Before 5.0: 8000[Hz] ~ 48000[Hz] \n
/// Since 5.0: 8000[Hz] ~ 192000[Hz]
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_get_sample_rate(
  audio_in_h input,
  ffi.Pointer<ffi.Int> sample_rate,
) =>
    tizenCapiMediaAudioIo.audio_in_get_sample_rate(
      input,
      sample_rate,
    );

/// @brief Gets the sample audio format of the audio input data stream.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input
/// Output parameter type The type of audio sample \n
/// Before 5.0: 8 or 16-bit \n
/// Since 5.0: 8, 16 or 24-bit \n
/// Since 5.5: 8, 16, 24 or 32-bit
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_get_sample_type(
  audio_in_h input,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiMediaAudioIo.audio_in_get_sample_type(
      input,
      type,
    );

/// @brief Gets the volume of the audio input data stream.
///
/// @since_tizen 6.0
///
/// @remarks The default @a volume of the audio input stream is 1.0.
///
/// Parameter input The handle to the audio input
/// Output parameter volume The current volume value of the audio input stream
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @see audio_in_set_volume()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_get_volume(
  audio_in_h input,
  ffi.Pointer<ffi.Double> volume,
) =>
    tizenCapiMediaAudioIo.audio_in_get_volume(
      input,
      volume,
    );

/// @brief Pauses buffering of audio data from the device.
///
/// @since_tizen 3.0
///
/// Parameter input The handle to the audio input
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING.
/// @post The state will be #AUDIO_IO_STATE_PAUSED.
/// @see audio_in_resume()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_pause(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_pause(
      input,
    );

/// @brief Peeks into the 'audio in' buffer.
///
/// @details This function works correctly only with read callback. Otherwise it won't operate as intended.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Works only in asynchronous (event) mode.
/// This function provides the pointer to the 'audio in' buffer. The pointed memory is owned by the platform, therefore the @a buffer should not be released by the application.
/// When the data in the @a buffer is not needed anymore, use audio_in_drop() with the @a input for which audio_in_peek() was called.
///
/// Parameter input The handle to the audio input
/// Output parameter buffer start buffer pointer of peeked 'audio in' data
/// Output parameter length amount of 'audio in' data to be peeked
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING.
/// @see audio_in_drop()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_peek(
  audio_in_h input,
  ffi.Pointer<ffi.Pointer<ffi.Void>> buffer,
  ffi.Pointer<ffi.UnsignedInt> length,
) =>
    tizenCapiMediaAudioIo.audio_in_peek(
      input,
      buffer,
      length,
    );

/// @brief Prepares the audio input for reading audio data by starting buffering of audio data from the device.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_DEVICE_POLICY_RESTRICTION Device policy restriction
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @post The state will be #AUDIO_IO_STATE_RUNNING.
/// @see audio_in_unprepare()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_prepare(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_prepare(
      input,
    );

/// @brief Reads audio data from the audio input buffer.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input
/// Output parameter buffer The PCM buffer address
/// Parameter length The length of the PCM data buffer (in bytes)
/// @return The number of read bytes on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_BUFFER Invalid buffer pointer
/// @retval #AUDIO_IO_ERROR_SOUND_POLICY Sound policy error
/// @retval #AUDIO_IO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING.
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_read(
  audio_in_h input,
  ffi.Pointer<ffi.Void> buffer,
  int length,
) =>
    tizenCapiMediaAudioIo.audio_in_read(
      input,
      buffer,
      length,
    );

/// @brief Resumes buffering audio data from the device.
///
/// @since_tizen 3.0
///
/// Parameter input The handle to the audio input
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_PAUSED.
/// @post The state will be #AUDIO_IO_STATE_RUNNING.
/// @see audio_in_pause()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_resume(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_resume(
      input,
    );

/// @brief Sets the sound stream information to the audio input.
///
/// @since_tizen 3.0
///
/// @remarks The sound stream information includes audio routing and volume type.
/// For more details, you can refer to @ref CAPI_MEDIA_SOUND_MANAGER_MODULE
/// System, Alarm, Notification, Emergency, Voice Information, Ringtone VOIP and Ringtone Call stream types are not supported in this API.
///
/// Parameter input The handle to the audio input
/// Parameter stream_info The handle of stream information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED_TYPE Not supported stream type
///
/// @pre The state should be #AUDIO_IO_STATE_IDLE.\n
/// Call audio_in_create() before calling this function.
/// @post Call audio_in_prepare() after calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_set_sound_stream_info(
  audio_in_h input,
  sound_stream_info_h stream_info,
) =>
    tizenCapiMediaAudioIo.audio_in_set_sound_stream_info(
      input,
      stream_info,
    );

/// @brief Sets the state changed callback function to the audio input handle.
///
/// @since_tizen 3.0
///
/// @remarks @a input must be created using audio_in_create().
///
/// Parameter input    The audio input handle
/// Parameter callback the state changed callback called when the state of the handle is changed (#audio_in_state_changed_cb)
/// Parameter user_data user data to be retrieved when callback is called
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @see audio_in_unset_state_changed_cb()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_set_state_changed_cb(
  audio_in_h input,
  audio_in_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaAudioIo.audio_in_set_state_changed_cb(
      input,
      callback,
      user_data,
    );

/// @brief Sets an asynchronous (event) callback function to handle recording PCM (pulse-code modulation) data.
///
/// @details @a callback will be called when you can read a PCM data.
/// It might cause dead lock if change the state of audio handle in callback.
/// (ex: audio_in_destroy(), audio_in_prepare(), audio_in_unprepare())
/// Recommend to use as a VOIP only.
/// Recommend not to hold callback too long.(it affects latency)
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks @a input must be created using audio_in_create().
///
/// Parameter input    An audio input handle
/// Parameter callback notify stream callback when user can read data (#audio_in_stream_cb)
/// Parameter user_data user data to be retrieved when callback is called
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #AUDIO_IO_ERROR_DEVICE_NOT_OPENED Device not opened
/// @retval #AUDIO_IO_ERROR_SOUND_POLICY Sound policy error
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @see audio_in_unset_stream_cb()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_set_stream_cb(
  audio_in_h input,
  audio_in_stream_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaAudioIo.audio_in_set_stream_cb(
      input,
      callback,
      user_data,
    );

/// @brief Sets the volume of the audio input data stream.
///
/// @since_tizen 6.0
///
/// @remarks The default @a volume of the audio input stream is 1.0.
/// If the @a volume is less than 1.0, the loudness of recorded data will be decreased.
/// If the @a volume is greater than 1.0, the loudness of recorded data will be increased,
/// which can be useful when the loudness of original recorded data is too low in certain environments.
/// Note that the volume can be clipped if the @a volume is greater than 1.0 and the loudness of original recorded data is high enough.
///
/// Parameter input The handle to the audio input
/// Parameter volume The volume value to be set (0.0 <= volume <= 2.0)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @see audio_in_get_volume()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_set_volume(
  audio_in_h input,
  double volume,
) =>
    tizenCapiMediaAudioIo.audio_in_set_volume(
      input,
      volume,
    );

/// @brief Unprepares the audio input.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @post The state will be #AUDIO_IO_STATE_IDLE.
/// @see audio_in_prepare()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_unprepare(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_unprepare(
      input,
    );

/// @brief Unregisters the state changed callback function of the audio input handle.
///
/// @since_tizen 3.0
///
/// Parameter input The handle to the audio input
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @see audio_in_set_state_changed_cb()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_unset_state_changed_cb(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_unset_state_changed_cb(
      input,
    );

/// @brief Unregisters the callback function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter input The handle to the audio input
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_OPERATION Invalid operation
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
///
/// @see audio_in_set_stream_cb()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_in_unset_stream_cb(
  audio_in_h input,
) =>
    tizenCapiMediaAudioIo.audio_in_unset_stream_cb(
      input,
    );

/// @brief Creates an audio device instance and returns an output handle to play PCM (pulse-code modulation) data.
///
/// @details This function is used for audio output initialization.
///
/// @since_tizen 3.0
///
/// @remarks @a output must be released by audio_out_destroy().
/// It is recommended to call audio_out_set_sound_stream_info() after this API.
/// Multi-channel playback is not supported.
///
/// Parameter sample_rate The audio sample rate \n
/// Before 5.0: 8000[Hz] ~ 48000[Hz] \n
/// Since 5.0: 8000[Hz] ~ 192000[Hz]
/// Parameter channel The audio channel type (mono or stereo)
/// Parameter type The type of audio sample \n
/// Before 5.0: 8 or 16-bit \n
/// Since 5.0: 8, 16 or 24-bit \n
/// Since 5.5: 8, 16, 24 or 32-bit
/// Output parameter output An audio output handle is created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #AUDIO_IO_ERROR_DEVICE_NOT_OPENED Device not opened
/// @retval #AUDIO_IO_ERROR_SOUND_POLICY Sound policy error
///
/// @post The state will be #AUDIO_IO_STATE_IDLE.\n
/// audio_out_set_sound_stream_info() is recommended to be called after this API.
/// @see audio_out_destroy()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_create_new(
  int sample_rate,
  int channel,
  int type,
  ffi.Pointer<audio_out_h> output,
) =>
    tizenCapiMediaAudioIo.audio_out_create_new(
      sample_rate,
      channel,
      type,
      output,
    );

/// @brief Releases the audio output handle, along with all its resources.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output to destroy
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #AUDIO_IO_ERROR_DEVICE_NOT_CLOSED Device not closed
///
/// @see audio_out_create_new()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_destroy(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_destroy(
      output,
    );

/// @brief Drains buffered audio data from the output stream.
///
/// @details This function waits until drains stream buffer completely. (e.g end of playback)
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter output The handle to the audio output
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING or #AUDIO_IO_STATE_PAUSED.
/// @see audio_out_flush()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_drain(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_drain(
      output,
    );

/// @brief Flushes and discards buffered audio data from the output stream.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter output The handle to the audio output
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING or #AUDIO_IO_STATE_PAUSED.
/// @see audio_out_drain()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_flush(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_flush(
      output,
    );

/// @brief Gets the size to be allocated for the audio output buffer.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// Output parameter size The suggested buffer size (in bytes, the maximum size is 1 MB)
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #AUDIO_IO_ERROR_NONE Successful
/// @retval  #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see audio_out_write()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_get_buffer_size(
  audio_out_h output,
  ffi.Pointer<ffi.Int> size,
) =>
    tizenCapiMediaAudioIo.audio_out_get_buffer_size(
      output,
      size,
    );

/// @brief Gets the channel type of the audio output data stream.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// Output parameter channel The audio channel type (mono or stereo)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_get_channel(
  audio_out_h output,
  ffi.Pointer<ffi.Int32> channel,
) =>
    tizenCapiMediaAudioIo.audio_out_get_channel(
      output,
      channel,
    );

/// @brief Gets the sample rate of the audio output data stream.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// Output parameter sample_rate The audio sample rate \n
/// Before 5.0: 8000[Hz] ~ 48000[Hz] \n
/// Since 5.0: 8000[Hz] ~ 192000[Hz]
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #AUDIO_IO_ERROR_NONE Successful
/// @retval  #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_get_sample_rate(
  audio_out_h output,
  ffi.Pointer<ffi.Int> sample_rate,
) =>
    tizenCapiMediaAudioIo.audio_out_get_sample_rate(
      output,
      sample_rate,
    );

/// @brief Gets the sample audio format of the audio output data stream.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// Output parameter type The type of audio sample \n
/// Before 5.0: 8 or 16-bit \n
/// Since 5.0: 8, 16 or 24-bit \n
/// Since 5.5: 8, 16, 24 or 32-bit
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_get_sample_type(
  audio_out_h output,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiMediaAudioIo.audio_out_get_sample_type(
      output,
      type,
    );

/// @brief Gets the sound type supported by the audio output device.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// Output parameter type The sound type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_get_sound_type(
  audio_out_h output,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiMediaAudioIo.audio_out_get_sound_type(
      output,
      type,
    );

/// @brief Pauses feeding of audio data to the device.
///
/// @since_tizen 3.0
///
/// Parameter output The handle to the audio output
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING.
/// @post The state will be #AUDIO_IO_STATE_PAUSED.
/// @see audio_out_resume()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_pause(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_pause(
      output,
    );

/// @brief Prepares the audio output for playback, this must be called before audio_out_write().
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @post The state will be #AUDIO_IO_STATE_RUNNING.
/// @see audio_out_unprepare()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_prepare(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_prepare(
      output,
    );

/// @brief Resumes feeding of audio data to the device.
///
/// @since_tizen 3.0
///
/// Parameter output The handle to the audio output
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_PAUSED.
/// @post The state will be #AUDIO_IO_STATE_RUNNING.
/// @see audio_out_pause()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_resume(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_resume(
      output,
    );

/// @brief Sets the sound stream information to the audio output.
///
/// @since_tizen 3.0
///
/// @remarks The sound stream information includes audio routing and volume type.
/// For more details, you can refer to @ref CAPI_MEDIA_SOUND_MANAGER_MODULE
/// Voice Recognition and Loopback stream types are not supported in this API.
///
/// Parameter output The handle to the audio output
/// Parameter stream_info The handle of stream information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED Not supported
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
/// @retval #AUDIO_IO_ERROR_NOT_SUPPORTED_TYPE Not supported stream type
///
/// @pre The state should be #AUDIO_IO_STATE_IDLE.\n
/// Call audio_out_create_new() before calling this function.
/// @post Call audio_out_prepare() after calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_set_sound_stream_info(
  audio_out_h output,
  sound_stream_info_h stream_info,
) =>
    tizenCapiMediaAudioIo.audio_out_set_sound_stream_info(
      output,
      stream_info,
    );

/// @brief Sets the state changed callback function to the audio output handle.
///
/// @since_tizen 3.0
///
/// @remarks @a input must be created using audio_out_create_new().
///
/// Parameter output    The audio output handle
/// Parameter callback the state changed callback called when the state of the handle is changed (#audio_out_state_changed_cb)
/// Parameter user_data user data to be retrieved when callback is called
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see audio_out_unset_state_changed_cb()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_set_state_changed_cb(
  audio_out_h output,
  audio_out_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaAudioIo.audio_out_set_state_changed_cb(
      output,
      callback,
      user_data,
    );

/// @brief Sets an asynchronous (event) callback function to handle playing PCM (pulse-code modulation) data.
///
/// @details @a callback will be called when you can write a PCM data.
/// It might cause dead lock if change the state of audio handle in callback.
/// (ex: audio_out_destroy(), audio_out_prepare(), audio_out_unprepare())
/// Recommend to use as a VOIP only.
/// Recommend not to hold callback too long.(it affects latency)
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks @a output must be created using audio_out_create_new().
///
/// Parameter output   An audio output handle
/// Parameter callback notify stream callback when user can write data (#audio_out_stream_cb)
/// Parameter user_data user data to be retrieved when callback is called
/// @return 0 on success, otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #AUDIO_IO_ERROR_DEVICE_NOT_OPENED Device not opened
/// @retval #AUDIO_IO_ERROR_SOUND_POLICY Sound policy error
///
/// @see audio_out_unset_stream_cb()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_set_stream_cb(
  audio_out_h output,
  audio_out_stream_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaAudioIo.audio_out_set_stream_cb(
      output,
      callback,
      user_data,
    );

/// @brief Unprepares the audio output.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @post The state will be #AUDIO_IO_STATE_IDLE.
/// @see audio_out_prepare()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_unprepare(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_unprepare(
      output,
    );

/// @brief Unregisters the state changed callback function of the audio output handle.
///
/// @since_tizen 3.0
///
/// Parameter output The handle to the audio output
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see audio_out_set_state_changed_cb()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_unset_state_changed_cb(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_unset_state_changed_cb(
      output,
    );

/// @brief Unregisters the callback function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// @return 0 on success, otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_NONE Successful
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_OPERATION Invalid operation
///
/// @see audio_out_set_stream_cb()
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_unset_stream_cb(
  audio_out_h output,
) =>
    tizenCapiMediaAudioIo.audio_out_unset_stream_cb(
      output,
    );

/// @brief Starts writing the audio data to the device.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter output The handle to the audio output
/// Parameter buffer The PCM buffer address
/// Parameter length The length of the PCM buffer (in bytes)
/// @return The written data size on success,
/// otherwise a negative error value
/// @retval #AUDIO_IO_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUDIO_IO_ERROR_INVALID_BUFFER Invalid buffer pointer
/// @retval #AUDIO_IO_ERROR_SOUND_POLICY Sound policy error
/// @retval #AUDIO_IO_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #AUDIO_IO_STATE_RUNNING.
///
/// Module getter: `tizenCapiMediaAudioIo`.
int audio_out_write(
  audio_out_h output,
  ffi.Pointer<ffi.Void> buffer,
  int length,
) =>
    tizenCapiMediaAudioIo.audio_out_write(
      output,
      buffer,
      length,
    );

