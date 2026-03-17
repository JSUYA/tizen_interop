// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaRecorder`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-recorder.so.0`.
///
/// Multimedia / Recorder.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_recorder;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Registers a callback function to be called when the recorder device state changes.
/// @since_tizen 3.0
/// Parameter  callback  The callback function to register
/// Parameter  user_data The user data to be passed to the callback function
/// Output parameter cb_id     The id of the registered callback
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @post This function will invoke recorder_device_state_changed_cb() when the recorder device's state changes.
/// @see recorder_remove_device_state_changed_cb()
/// @see recorder_device_state_changed_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_add_device_state_changed_cb(
  recorder_device_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> cb_id,
) =>
    tizenCapiMediaRecorder.recorder_add_device_state_changed_cb(
      callback,
      user_data,
      cb_id,
    );

/// @brief Gets the number of the audio channel.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder      The handle to the media recorder
/// Output parameter channel_count The number of the audio channel
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_audio_channel()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_audio_channel(
  recorder_h recorder,
  ffi.Pointer<ffi.Int> channel_count,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_audio_channel(
      recorder,
      channel_count,
    );

/// @brief Gets the audio device for recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter device   The type of an audio device
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_audio_device()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_audio_device(
  recorder_h recorder,
  ffi.Pointer<ffi.Int32> device,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_audio_device(
      recorder,
      device,
    );

/// @brief Gets the bitrate of an audio encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter bitrate  The bitrate in bits per second
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_audio_encoder_bitrate()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_audio_encoder_bitrate(
  recorder_h recorder,
  ffi.Pointer<ffi.Int> bitrate,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_audio_encoder_bitrate(
      recorder,
      bitrate,
    );

/// @brief Gets the sampling rate of an audio stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder   The handle to the media recorder
/// Output parameter samplerate The sample rate in Hertz
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_audio_samplerate()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_audio_samplerate(
  recorder_h recorder,
  ffi.Pointer<ffi.Int> samplerate,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_audio_samplerate(
      recorder,
      samplerate,
    );

/// @brief Gets the video orientation in a video metadata tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder    The handle to a media recorder
/// Output parameter orientation The information of the video orientation
/// @return  @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_orientation_tag()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_orientation_tag(
  recorder_h recorder,
  ffi.Pointer<ffi.Int32> orientation,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_orientation_tag(
      recorder,
      orientation,
    );

/// @brief Gets the recording motion rate.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This attribute is valid only in a video recorder. \n
/// If the rate bigger than @c 0 and smaller than @c 1, video is recorded in a slow motion mode. \n
/// If the rate bigger than @c 1, video is recorded in a fast motion mode (time lapse recording).
/// @remarks Audio data is not recorded. \n
/// To reset slow motion recording, set the rate to @c 1.
/// Parameter  recorder The handle to the media recorder
/// Output parameter rate     The recording motion rate \n
/// It is computed with fps.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_recording_motion_rate()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_recording_motion_rate(
  recorder_h recorder,
  ffi.Pointer<ffi.Double> rate,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_recording_motion_rate(
      recorder,
      rate,
    );

/// @brief Gets the maximum size of a recording file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter kbyte    The maximum size of recording file (KB) \n
/// @c 0 means unlimited recording size.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_size_limit()
/// @see recorder_attr_get_time_limit()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_size_limit(
  recorder_h recorder,
  ffi.Pointer<ffi.Int> kbyte,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_size_limit(
      recorder,
      kbyte,
    );

/// @brief Gets the time limit of a recording file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter second   The time limit of the recording file (in seconds) \n
/// @c 0 means unlimited recording time.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_time_limit()
/// @see recorder_attr_get_size_limit()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_time_limit(
  recorder_h recorder,
  ffi.Pointer<ffi.Int> second,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_time_limit(
      recorder,
      second,
    );

/// @brief Gets the bitrate of a video encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter bitrate  The bitrate in bits per second
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_set_audio_encoder_bitrate()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_get_video_encoder_bitrate(
  recorder_h recorder,
  ffi.Pointer<ffi.Int> bitrate,
) =>
    tizenCapiMediaRecorder.recorder_attr_get_video_encoder_bitrate(
      recorder,
      bitrate,
    );

/// @brief Gets the mute state of a recorder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// @return  @c true if the recorder is not recording any sound,
/// otherwise @c false if the recorder is recording
/// @exception #RECORDER_ERROR_NONE Successful
/// @exception #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @see recorder_attr_set_mute()
///
/// Module getter: `tizenCapiMediaRecorder`.
bool recorder_attr_is_muted(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_attr_is_muted(
      recorder,
    );

/// @brief Sets the number of the audio channel.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This attribute is applied only in #RECORDER_STATE_CREATED state. \n
/// For mono recording, setting channel to @c 1. \n
/// For stereo recording, setting channel to @c 2.
/// Parameter recorder      The handle to the media recorder
/// Parameter channel_count The number of the audio channel
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY (for video recorder only).\n
/// Since 2.3.1, this API also works for audio recorder when its state is #RECORDER_STATE_READY.
/// @see recorder_attr_get_audio_channel()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_audio_channel(
  recorder_h recorder,
  int channel_count,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_audio_channel(
      recorder,
      channel_count,
    );

/// @brief Sets the audio device for recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// Parameter device   The type of an audio device
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY (for video recorder only).\n
/// Since 2.3.1, this API also works for audio recorder when its state is #RECORDER_STATE_READY.
/// @see recorder_attr_get_audio_device()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_audio_device(
  recorder_h recorder,
  int device,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_audio_device(
      recorder,
      device,
    );

/// @brief Sets the bitrate of an audio encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// Parameter bitrate  The bitrate (for mms : 12200[bps], normal : 288000[bps])
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_attr_get_audio_encoder_bitrate()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_audio_encoder_bitrate(
  recorder_h recorder,
  int bitrate,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_audio_encoder_bitrate(
      recorder,
      bitrate,
    );

/// @brief Sets the sampling rate of an audio stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder   The handle to the media recorder
/// Parameter samplerate The sample rate in Hertz
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY (for video recorder only).\n
/// Since 2.3.1, this API also works for audio recorder when its state is #RECORDER_STATE_READY.
/// @see recorder_attr_get_audio_samplerate()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_audio_samplerate(
  recorder_h recorder,
  int samplerate,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_audio_samplerate(
      recorder,
      samplerate,
    );

/// @brief Sets the mute state of a recorder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// Parameter enable   The mute state
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_is_muted()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_mute(
  recorder_h recorder,
  bool enable,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_mute(
      recorder,
      enable,
    );

/// @brief Sets the video orientation in a video metadata tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder    The handle to a media recorder
/// Parameter orientation The information of the video orientation
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_attr_get_orientation_tag()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_orientation_tag(
  recorder_h recorder,
  int orientation,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_orientation_tag(
      recorder,
      orientation,
    );

/// @brief Sets the recording motion rate.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This attribute is valid only in a video recorder. \n
/// If the rate bigger than @c 0 and smaller than @c 1, video is recorded in a slow motion mode. \n
/// If the rate bigger than @c 1, video is recorded in a fast motion mode (time lapse recording).
/// @remarks Audio data is not recorded. \n
/// To reset slow motion recording, set the rate to @c 1.
/// Parameter recorder The handle to the media recorder
/// Parameter rate     The recording motion rate \n
/// It is computed with fps. (@c 0<rate<@c 1 for slow motion, @c 1<rate for fast motion(time lapse recording), @c 1 to reset).
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_attr_get_recording_motion_rate()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_recording_motion_rate(
  recorder_h recorder,
  double rate,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_recording_motion_rate(
      recorder,
      rate,
    );

/// @brief Sets the maximum size of a recording file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks After reaching the limitation, the recording data is discarded and not written in the recording file.
/// Parameter recorder The handle to the media recorder
/// Parameter kbyte    The maximum size of the recording file(KB) \n
/// @c 0 means unlimited recording size.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_attr_get_size_limit()
/// @see recorder_attr_set_time_limit()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_size_limit(
  recorder_h recorder,
  int kbyte,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_size_limit(
      recorder,
      kbyte,
    );

/// @brief Sets the time limit of a recording file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks After reaching the limitation, the recording data is discarded and not written in the recording file.
/// Parameter recorder The handle to the media recorder
/// Parameter second   The time limit of the recording file (in seconds) \n
/// @c 0 means unlimited recording size.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_attr_get_time_limit()
/// @see recorder_attr_set_size_limit()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_time_limit(
  recorder_h recorder,
  int second,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_time_limit(
      recorder,
      second,
    );

/// @brief Sets the bitrate of a video encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// Parameter bitrate  The bitrate in bits per second
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_attr_get_video_encoder_bitrate()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_attr_set_video_encoder_bitrate(
  recorder_h recorder,
  int bitrate,
) =>
    tizenCapiMediaRecorder.recorder_attr_set_video_encoder_bitrate(
      recorder,
      bitrate,
    );

/// @brief Cancels the recording.
/// @details The recording data is discarded and not written in the recording file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks When you want to record audio or video file, you need to add privilege according to rules below additionally. \n
/// If you want to save contents to internal storage, you should add mediastorage privilege. \n
/// If you want to save contents to external storage, you should add externalstorage privilege.
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_RECORDING set by recorder_start() or #RECORDER_STATE_PAUSED by recorder_pause().
/// @post The recorder state will be #RECORDER_STATE_READY.
/// @see recorder_pause()
/// @see recorder_commit()
/// @see recorder_cancel()
/// @see recorder_start()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_cancel(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_cancel(
      recorder,
    );

/// @brief Stops recording and saves the result.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks When you want to record audio or video file, you need to add privilege according to rules below additionally. \n
/// If you want to save contents to internal storage, you should add mediastorage privilege. \n
/// If you want to save contents to external storage, you should add externalstorage privilege.
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_RECORDING set by recorder_start() or #RECORDER_STATE_PAUSED by recorder_pause().
/// @post The recorder state will be #RECORDER_STATE_READY.
/// @see recorder_pause()
/// @see recorder_cancel()
/// @see recorder_set_filename()
/// @see recorder_start()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_commit(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_commit(
      recorder,
    );

/// @brief Creates a recorder handle to record an audio.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a recorder using recorder_destroy().
/// @remarks The privilege %http://tizen.org/privilege/recorder is not required since 4.0,\n
/// but it is required in all earlier versions.
/// @remarks Since 4.0, It's related to the following feature: %http://tizen.org/feature/media.audio_recording \n
/// instead of using %http://tizen.org/feature/microphone
/// Output parameter recorder A handle to the recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @post The recorder state will be #RECORDER_STATE_CREATED.
/// @see recorder_destroy()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_create_audiorecorder(
  ffi.Pointer<recorder_h> recorder,
) =>
    tizenCapiMediaRecorder.recorder_create_audiorecorder(
      recorder,
    );

/// @brief Creates a recorder handle to record a video.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a recorder using recorder_destroy(). \n
/// The @a camera handle also could be used for capturing images. \n
/// If the camera state was #CAMERA_STATE_CREATED, the preview format will be changed to the recommended preview format for recording.
/// @remarks The created recorder state will be different according to camera state : \n
/// #CAMERA_STATE_CREATED -> #RECORDER_STATE_CREATED\n
/// #CAMERA_STATE_PREVIEW -> #RECORDER_STATE_READY\n
/// #CAMERA_STATE_CAPTURED -> #RECORDER_STATE_READY
/// @remarks The privilege %http://tizen.org/privilege/recorder is not required since 4.0,\n
/// but it is required in all earlier versions.
/// @remarks Since 4.0, It's related to the following feature: %http://tizen.org/feature/media.video_recording \n
/// instead of using %http://tizen.org/feature/microphone
/// Parameter  camera   The handle to the camera
/// Output parameter recorder A handle to the recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_create()
/// @see camera_stop_preview()
/// @see recorder_destroy()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_create_videorecorder(
  camera_h camera,
  ffi.Pointer<recorder_h> recorder,
) =>
    tizenCapiMediaRecorder.recorder_create_videorecorder(
      camera,
      recorder,
    );

/// @brief Destroys the recorder handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The video recorder's camera handle is not released by this function.
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @pre The recorder state should be #RECORDER_STATE_CREATED.
/// @post The recorder state will be #RECORDER_STATE_NONE.
/// @see camera_destroy()
/// @see recorder_create_videorecorder()
/// @see recorder_create_audiorecorder()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_destroy(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_destroy(
      recorder,
    );

/// @brief Retrieves all supported audio encoders by invoking a specific callback for each supported audio encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder  The handle to the media recorder
/// Parameter callback  The iteration callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post recorder_supported_audio_encoder_cb() will be invoked.
/// @see recorder_set_audio_encoder()
/// @see recorder_get_audio_encoder()
/// @see recorder_supported_audio_encoder_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_foreach_supported_audio_encoder(
  recorder_h recorder,
  recorder_supported_audio_encoder_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_foreach_supported_audio_encoder(
      recorder,
      callback,
      user_data,
    );

/// @brief Retrieves all supported file formats by invoking a specific callback for each supported file format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder  The handle to the media recorder
/// Parameter callback  The iteration callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post recorder_supported_file_format_cb() will be invoked.
/// @see recorder_get_file_format()
/// @see recorder_set_file_format()
/// @see recorder_supported_file_format_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_foreach_supported_file_format(
  recorder_h recorder,
  recorder_supported_file_format_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_foreach_supported_file_format(
      recorder,
      callback,
      user_data,
    );

/// @brief Retrieves all supported video encoders by invoking a specific callback for each supported video encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder  The handle to the media recorder
/// Parameter callback  The iteration callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post recorder_supported_video_encoder_cb() will be invoked.
/// @see recorder_set_video_encoder()
/// @see recorder_get_video_encoder()
/// @see recorder_supported_video_encoder_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_foreach_supported_video_encoder(
  recorder_h recorder,
  recorder_supported_video_encoder_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_foreach_supported_video_encoder(
      recorder,
      callback,
      user_data,
    );

/// @brief Retrieves all supported video resolutions by invoking callback function once for each supported video resolution.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder   The handle to the media recorder
/// Parameter foreach_cb The callback function to be invoked
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes recorder_supported_video_resolution_cb() repeatedly to retrieve each supported video resolution.
/// @see recorder_set_video_resolution()
/// @see recorder_get_video_resolution()
/// @see recorder_supported_video_resolution_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_foreach_supported_video_resolution(
  recorder_h recorder,
  recorder_supported_video_resolution_cb foreach_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_foreach_supported_video_resolution(
      recorder,
      foreach_cb,
      user_data,
    );

/// @brief Gets the audio codec for encoding an audio stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter codec    The audio codec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_audio_encoder()
/// @see recorder_foreach_supported_audio_encoder()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_get_audio_encoder(
  recorder_h recorder,
  ffi.Pointer<ffi.Int32> codec,
) =>
    tizenCapiMediaRecorder.recorder_get_audio_encoder(
      recorder,
      codec,
    );

/// @brief Gets the peak audio input level that was sampled since the last call to this function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks @c 0 dB indicates maximum input level, @c -300 dB indicates minimum input level.
/// Parameter  recorder The handle to the media recorder
/// Output parameter dB       The audio input level in dB
/// @return  @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_RECORDING or #RECORDER_STATE_PAUSED.
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_get_audio_level(
  recorder_h recorder,
  ffi.Pointer<ffi.Double> dB,
) =>
    tizenCapiMediaRecorder.recorder_get_audio_level(
      recorder,
      dB,
    );

/// @brief Gets the state of recorder device.
/// @since_tizen 3.0
/// Parameter  type  The recorder type
/// Output parameter state The current state of the device
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_get_device_state(
  int type,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaRecorder.recorder_get_device_state(
      type,
      state,
    );

/// @brief Gets the file format for recording media stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter format   The media file format
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_file_format()
/// @see recorder_foreach_supported_file_format()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_get_file_format(
  recorder_h recorder,
  ffi.Pointer<ffi.Int32> format,
) =>
    tizenCapiMediaRecorder.recorder_get_file_format(
      recorder,
      format,
    );

/// @brief Gets the file path to record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a path using free().
/// Parameter  recorder The handle to the media recorder
/// Output parameter path     The recording file path
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_filename()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_get_filename(
  recorder_h recorder,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiMediaRecorder.recorder_get_filename(
      recorder,
      path,
    );

/// @brief Gets the recorder's current state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter state    The current state of the recorder
/// @return  @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_get_state(
  recorder_h recorder,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaRecorder.recorder_get_state(
      recorder,
      state,
    );

/// @brief Gets the video codec for encoding video stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter codec    The video codec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_video_encoder()
/// @see recorder_foreach_supported_video_encoder()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_get_video_encoder(
  recorder_h recorder,
  ffi.Pointer<ffi.Int32> codec,
) =>
    tizenCapiMediaRecorder.recorder_get_video_encoder(
      recorder,
      codec,
    );

/// @brief Gets the resolution of the video recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  recorder The handle to the media recorder
/// Output parameter width    The video width
/// Output parameter height   The video height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_video_resolution()
/// @see recorder_foreach_supported_video_resolution()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_get_video_resolution(
  recorder_h recorder,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaRecorder.recorder_get_video_resolution(
      recorder,
      width,
      height,
    );

/// @brief Pauses the recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks Recording can be resumed with recorder_start().
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_RECORDING.
/// @post The recorder state will be #RECORDER_STATE_PAUSED.
/// @see recorder_start()
/// @see recorder_commit()
/// @see recorder_cancel()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_pause(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_pause(
      recorder,
    );

/// @brief Prepares the media recorder for recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Before calling the function, it is required to properly set audio encoder (recorder_set_audio_encoder()),
/// video encoder(recorder_set_video_encoder()) and file format (recorder_set_file_format()).
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_RESOURCE_CONFLICT Resource conflict error
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state should be #RECORDER_STATE_CREATED by recorder_create_videorecorder(), recorder_create_audiorecorder() or recorder_unprepare().
/// @post The recorder state will be #RECORDER_STATE_READY.
/// @post If recorder handle is created by recorder_create_videorecorder(), the camera state will be changed to #CAMERA_STATE_PREVIEW.
/// @see recorder_create_videorecorder()
/// @see recorder_create_audiorecorder()
/// @see recorder_unprepare()
/// @see recorder_set_audio_encoder()
/// @see recorder_set_video_encoder()
/// @see recorder_set_file_format()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_prepare(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_prepare(
      recorder,
    );

/// @brief Unregisters a callback function.
/// @since_tizen 3.0
/// Parameter cb_id The id of the registered callback
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @see recorder_add_device_state_changed_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_remove_device_state_changed_cb(
  int cb_id,
) =>
    tizenCapiMediaRecorder.recorder_remove_device_state_changed_cb(
      cb_id,
    );

/// @brief Sets the audio codec for encoding an audio stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You can get available audio encoders by using recorder_foreach_supported_audio_encoder(). \n
/// If set to #RECORDER_AUDIO_CODEC_DISABLE, the audio track is not created in recording files.\n
/// Since 2.3.1, it could be returned #RECORDER_ERROR_INVALID_OPERATION \n
/// when it's audio recorder and its state is #RECORDER_STATE_READY \n
/// because of checking codec compatibility with current file format.
/// Parameter recorder The handle to the media recorder
/// Parameter codec    The audio codec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation (Since 2.3.1)
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_get_audio_encoder()
/// @see recorder_foreach_supported_audio_encoder()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_audio_encoder(
  recorder_h recorder,
  int codec,
) =>
    tizenCapiMediaRecorder.recorder_set_audio_encoder(
      recorder,
      codec,
    );

/// @brief Registers a callback function to be called when audio stream data is being delivered.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This callback function holds the same buffer that will be recorded. \n
/// Therefore if an user changes the buffer, the result file will have the buffer. \n
/// @remarks The callback is called via internal thread of Frameworks. Therefore do not invoke UI API, recorder_unprepare(), recorder_commit() and recorder_cancel() in callback.\n
/// This callback function to be called in #RECORDER_STATE_RECORDING and #RECORDER_STATE_PAUSED state.
///
/// Parameter recorder  The handle to the recorder
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state should be #RECORDER_STATE_READY or #RECORDER_STATE_CREATED.
/// @see recorder_unset_audio_stream_cb()
/// @see recorder_audio_stream_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_audio_stream_cb(
  recorder_h recorder,
  recorder_audio_stream_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_audio_stream_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when an asynchronous operation error occurred.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This callback informs critical error situation.\n
/// When this callback is invoked, user should release the resource and terminate the application. \n
/// These error codes will occur. \n
/// #RECORDER_ERROR_DEVICE \n
/// #RECORDER_ERROR_INVALID_OPERATION \n
/// #RECORDER_ERROR_OUT_OF_MEMORY
/// Parameter recorder  The handle to the recorder
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return  @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function will invoke recorder_error_cb() when an asynchronous operation error occur.
/// @see recorder_unset_error_cb()
/// @see recorder_error_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_error_cb(
  recorder_h recorder,
  recorder_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_error_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Sets the file format for recording media stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Since 2.3.1, it could be returned #RECORDER_ERROR_INVALID_OPERATION \n
/// when it's audio recorder and its state is #RECORDER_STATE_READY \n
/// because of checking codec compatibility with current encoder.
/// Parameter recorder The handle to the media recorder
/// Parameter format   The media file format
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation (Since 2.3.1)
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY (for video recorder only).\n
/// Since 2.3.1, this API also works for audio recorder when its state is #RECORDER_STATE_READY.
/// @see recorder_get_file_format()
/// @see recorder_foreach_supported_file_format()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_file_format(
  recorder_h recorder,
  int format,
) =>
    tizenCapiMediaRecorder.recorder_set_file_format(
      recorder,
      format,
    );

/// @brief Sets the file path to record.
/// @details This function sets file path which defines where newly recorded data should be stored.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the same file already exists in the file system, then old file will be overwritten.
/// Parameter recorder The handle to the media recorder
/// Parameter path     The recording file path
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_get_filename()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_filename(
  recorder_h recorder,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiMediaRecorder.recorder_set_filename(
      recorder,
      path,
    );

/// @brief Registers a callback function to be called when the media recorder is interrupted according to a policy.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder  The handle to the media recorder
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_unset_interrupted_cb()
/// @see recorder_interrupted_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_interrupted_cb(
  recorder_h recorder,
  recorder_interrupted_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_interrupted_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when the media recorder interrupt is started according to a policy.
/// @since_tizen 4.0
/// Parameter recorder  The handle to the media recorder
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see recorder_unset_interrupt_started_cb()
/// @see recorder_interrupt_started_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_interrupt_started_cb(
  recorder_h recorder,
  recorder_interrupt_started_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_interrupt_started_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when muxed stream data is delivered.
/// @since_tizen 4.0
/// @remarks This callback receives the data that will be recorded, \n
/// but any changes to this data will not affect the recorded file.
/// Parameter recorder  The handle to the recorder
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @pre The recorder state should be #RECORDER_STATE_READY or #RECORDER_STATE_CREATED.
/// @see recorder_unset_muxed_stream_cb()
/// @see recorder_muxed_stream_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_muxed_stream_cb(
  recorder_h recorder,
  recorder_muxed_stream_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_muxed_stream_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Registers the callback function to be run when reached the recording limit.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder  The handle to media recorder
/// Parameter callback  The function pointer of user callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post recorder_recording_limit_reached_cb() will be invoked.
/// @see recorder_unset_recording_limit_reached_cb()
/// @see recorder_attr_set_size_limit()
/// @see recorder_attr_set_time_limit()
/// @see recorder_recording_limit_reached_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_recording_limit_reached_cb(
  recorder_h recorder,
  recorder_recording_limit_reached_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_recording_limit_reached_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked when the recording information changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder  The handle to the media recorder
/// Parameter callback  The function pointer of user callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post recorder_recording_status_cb() will be invoked.
/// @see recorder_unset_recording_status_cb()
/// @see recorder_recording_status_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_recording_status_cb(
  recorder_h recorder,
  recorder_recording_status_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_recording_status_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Sets the recorder's sound manager stream information.
/// @since_tizen 3.0
/// @remarks You can set sound stream information including audio routing.
/// For more details, please refer to @ref CAPI_MEDIA_SOUND_MANAGER_MODULE
/// Parameter recorder    The handle to the media recorder
/// Parameter stream_info The sound manager info
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY
/// @see #sound_stream_info_h
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_sound_stream_info(
  recorder_h recorder,
  sound_stream_info_h stream_info,
) =>
    tizenCapiMediaRecorder.recorder_set_sound_stream_info(
      recorder,
      stream_info,
    );

/// @brief Registers the callback function that will be invoked when the recorder state changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder  The handle to the media recorder
/// Parameter callback  The function pointer of user callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post recorder_state_changed_cb() will be invoked.
/// @see recorder_unset_state_changed_cb()
/// @see recorder_state_changed_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_state_changed_cb(
  recorder_h recorder,
  recorder_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_state_changed_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when each video frame is delivered before encoding.
/// @since_tizen 6.0
/// @remarks The audio stream will be disabled by force if @a callback is set.
/// Parameter recorder  The handle to the recorder
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @pre The recorder state should be #RECORDER_STATE_READY or #RECORDER_STATE_CREATED.
/// @post The @a callback will be invoked when each video frame is delivered before encoding, \n
/// and it will be encoded if the @a callback returns @c true, otherwise dropped.
/// @see recorder_unset_video_encode_decision_cb()
/// @see recorder_video_encode_decision_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_video_encode_decision_cb(
  recorder_h recorder,
  recorder_video_encode_decision_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaRecorder.recorder_set_video_encode_decision_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Sets the video codec for encoding video stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You can get available video encoders by using recorder_foreach_supported_video_encoder().
/// Parameter recorder The handle to the media recorder
/// Parameter codec    The video codec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_get_video_encoder()
/// @see recorder_foreach_supported_video_encoder()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_video_encoder(
  recorder_h recorder,
  int codec,
) =>
    tizenCapiMediaRecorder.recorder_set_video_encoder(
      recorder,
      codec,
    );

/// @brief Sets the resolution of the video recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function should be called before recording (recorder_start()).
/// Parameter recorder  The handle to the media recorder
/// Parameter width     The video width
/// Parameter height    The video height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_CREATED or #RECORDER_STATE_READY.
/// @see recorder_start()
/// @see recorder_get_video_resolution()
/// @see recorder_foreach_supported_video_resolution()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_set_video_resolution(
  recorder_h recorder,
  int width,
  int height,
) =>
    tizenCapiMediaRecorder.recorder_set_video_resolution(
      recorder,
      width,
      height,
    );

/// @brief Starts the recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks If file path has been set to an existing file, this file is removed automatically and updated by new one. \n
/// In the video recorder, some preview format does not support record mode. It will return #RECORDER_ERROR_INVALID_OPERATION error. \n
/// You should use default preview format or #CAMERA_PIXEL_FORMAT_NV12 in the record mode. \n
/// When you want to record audio or video file, you need to add privilege according to rules below additionally. \n
/// If you want to save contents to internal storage, you should add mediastorage privilege. \n
/// If you want to save contents to external storage, you should add externalstorage privilege. \n
/// The filename should be set before this function is invoked.
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state must be #RECORDER_STATE_READY by recorder_prepare() or #RECORDER_STATE_PAUSED by recorder_pause(). \n
/// The filename should be set by recorder_set_filename().
/// @post The recorder state will be #RECORDER_STATE_RECORDING.
/// @see recorder_pause()
/// @see recorder_commit()
/// @see recorder_cancel()
/// @see recorder_set_audio_encoder()
/// @see recorder_set_filename()
/// @see recorder_set_file_format()
/// @see recorder_recording_status_cb()
/// @see recorder_set_filename()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_start(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_start(
      recorder,
    );

/// @brief Resets the media recorder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The recorder state should be #RECORDER_STATE_READY set by recorder_prepare(), recorder_cancel() or recorder_commit().
/// @post The recorder state will be #RECORDER_STATE_CREATED.
/// @post If the recorder handle is created by recorder_create_videorecorder(), camera state will be changed to #CAMERA_STATE_CREATED.
/// @see recorder_prepare()
/// @see recorder_cancel()
/// @see recorder_commit()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unprepare(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unprepare(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see     recorder_set_audio_stream_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_audio_stream_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_audio_stream_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the recorder
/// @return  @c on success, otherwise a negative error value
/// @retval    #RECORDER_ERROR_NONE Successful
/// @retval    #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_error_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_error_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_error_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_interrupted_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_interrupted_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_interrupted_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 4.0
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see recorder_set_interrupt_started_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_interrupt_started_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_interrupt_started_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 4.0
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @pre The recorder state should be #RECORDER_STATE_READY or #RECORDER_STATE_CREATED.
/// @see recorder_set_muxed_stream_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_muxed_stream_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_muxed_stream_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_recording_limit_reached_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_recording_limit_reached_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_recording_limit_reached_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_recording_status_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_recording_status_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_recording_status_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #RECORDER_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see recorder_set_state_changed_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_state_changed_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_state_changed_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 6.0
/// Parameter recorder The handle to the media recorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #RECORDER_ERROR_NONE Successful
/// @retval #RECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #RECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #RECORDER_ERROR_NOT_SUPPORTED The feature is not supported
/// @pre The recorder state should be #RECORDER_STATE_READY or #RECORDER_STATE_CREATED.
/// @see recorder_set_video_encode_decision_cb()
///
/// Module getter: `tizenCapiMediaRecorder`.
int recorder_unset_video_encode_decision_cb(
  recorder_h recorder,
) =>
    tizenCapiMediaRecorder.recorder_unset_video_encode_decision_cb(
      recorder,
    );

