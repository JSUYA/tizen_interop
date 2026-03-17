// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaStreamrecorder`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-streamrecorder.so.0`.
///
/// Multimedia / StreamRecorder.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_streamrecorder;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Cancels the recording.
/// @details The recording data is discarded and not written in the recording file.
/// @since_tizen 3.0
/// @remarks When you want to record audio or video file, you need to add privilege according to rules below additionally. \n
/// %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage.\n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
/// Parameter  recorder  The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #STREAMRECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_RECORDING set by streamrecorder_start() or #STREAMRECORDER_STATE_PAUSED by streamrecorder_pause().
/// @post The streamrecorder state will be #STREAMRECORDER_STATE_PREPARED.
/// @see streamrecorder_create()
/// @see streamrecorder_pause()
/// @see streamrecorder_commit()
/// @see streamrecorder_start()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_cancel(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_cancel(
      recorder,
    );

/// @brief Stops recording and saves the result.
/// @since_tizen 3.0
/// @remarks When you want to record audio or video file, you need to add privilege according to rules below additionally. \n
/// %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage.\n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
/// Parameter  recorder  The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #STREAMRECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_RECORDING set by streamrecorder_start() or #STREAMRECORDER_STATE_PAUSED by streamrecorder_pause().
/// @post The streamrecorder state will be #STREAMRECORDER_STATE_PREPARED.
/// @see streamrecorder_create()
/// @see streamrecorder_pause()
/// @see streamrecorder_cancel()
/// @see streamrecorder_set_filename()
/// @see streamrecorder_start()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_commit(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_commit(
      recorder,
    );

/// @brief Creates a streamrecorder handle to record a video or audio.
/// @since_tizen 3.0
/// @remarks You must release @a recorder using streamrecorder_destroy().
/// Output parameter  recorder	A handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_create(
  ffi.Pointer<streamrecorder_h> recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_create(
      recorder,
    );

/// @brief Destroys the streamrecorder handle.
/// @since_tizen 3.0
/// Parameter	recorder    The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre  The recorder state should be #STREAMRECORDER_STATE_CREATED.
/// @post The recorder state will be #STREAMRECORDER_STATE_NONE.
/// @see streamrecorder_create()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_destroy(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_destroy(
      recorder,
    );

/// @brief Sets the video source as live buffer to be used for recording.
/// @since_tizen 3.0
/// @remarks if you want to enable video or audio or both recording, call before streamrecorder_prepare()
/// Parameter  recorder  A handle to the streamrecorder
/// Parameter  type The type of source input
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be only #STREAMRECORDER_STATE_CREATED
/// @see streamrecorder_create()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_enable_source_buffer(
  streamrecorder_h recorder,
  int type,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_enable_source_buffer(
      recorder,
      type,
    );

/// @brief Retrieves all supported audio encoders by invoking a specific callback for each supported audio encoder.
/// @since_tizen 3.0
/// Parameter recorder  The handle to the streamrecorder
/// Parameter callback	The iteration callback
/// Parameter user_data	The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @post  streamrecorder_supported_audio_encoder_cb() will be invoked.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_audio_encoder()
/// @see	streamrecorder_get_audio_encoder()
/// @see	streamrecorder_supported_audio_encoder_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_foreach_supported_audio_encoder(
  streamrecorder_h recorder,
  streamrecorder_supported_audio_encoder_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_foreach_supported_audio_encoder(
      recorder,
      callback,
      user_data,
    );

/// @brief Retrieves all supported file formats by invoking a specific callback for each supported file format.
/// @since_tizen 3.0
/// Parameter recorder  The handle to the streamrecorder
/// Parameter callback The iteration callback
/// Parameter user_data	The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @post  streamrecorder_supported_file_format_cb() will be invoked.
/// @see streamrecorder_create()
/// @see streamrecorder_get_file_format()
/// @see streamrecorder_set_file_format()
/// @see streamrecorder_supported_file_format_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_foreach_supported_file_format(
  streamrecorder_h recorder,
  streamrecorder_supported_file_format_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_foreach_supported_file_format(
      recorder,
      callback,
      user_data,
    );

/// @brief Retrieves all supported video encoders by invoking a specific callback for each supported video encoder.
/// @since_tizen 3.0
/// Parameter recorder	The handle to the streamrecorder
/// Parameter callback	The iteration callback
/// Parameter user_data	The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @post  streamrecorder_supported_video_encoder_cb() will be invoked.
/// @see streamrecorder_create()
/// @see streamrecorder_set_video_encoder()
/// @see streamrecorder_get_video_encoder()
/// @see	streamrecorder_supported_video_encoder_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_foreach_supported_video_encoder(
  streamrecorder_h recorder,
  streamrecorder_supported_video_encoder_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_foreach_supported_video_encoder(
      recorder,
      callback,
      user_data,
    );

/// @brief Retrieves all supported video resolutions by invoking callback function once for each supported video resolution.
/// @since_tizen 3.0
/// Parameter recorder	The handle to the streamrecorder
/// Parameter foreach_cb	The callback function to be invoked
/// Parameter user_data	The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @post	This function invokes streamrecorder_supported_video_resolution_cb() repeatedly to retrieve each supported video resolution.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_video_resolution()
/// @see	streamrecorder_get_video_resolution()
/// @see	streamrecorder_supported_video_resolution_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_foreach_supported_video_resolution(
  streamrecorder_h recorder,
  streamrecorder_supported_video_resolution_cb foreach_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_foreach_supported_video_resolution(
      recorder,
      foreach_cb,
      user_data,
    );

/// @brief Gets the number of the audio channel.
/// @since_tizen 3.0
/// Parameter recorder  The handle to the streamrecorder
/// Output parameter channel_count  The number of the audio channel
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_audio_channel()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_audio_channel(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int> channel_count,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_audio_channel(
      recorder,
      channel_count,
    );

/// @brief Gets the audio codec for encoding an audio stream.
/// @since_tizen 3.0
/// Parameter recorder The handle to the streamrecorder
/// Output parameter codec   The audio codec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_audio_encoder()
/// @see streamrecorder_foreach_supported_audio_encoder()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_audio_encoder(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int32> codec,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_audio_encoder(
      recorder,
      codec,
    );

/// @brief Gets the bitrate of an audio encoder.
/// @since_tizen 3.0
/// Parameter  recorder  The handle to the streamrecorder
/// Output parameter bitrate   The bitrate in bits per second
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_audio_encoder_bitrate()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_audio_encoder_bitrate(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int> bitrate,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_audio_encoder_bitrate(
      recorder,
      bitrate,
    );

/// @brief Gets the sampling rate of an audio stream.
/// @since_tizen 3.0
/// Parameter  recorder    The handle to the streamrecorder
/// Output parameter samplerate  The sample rate in Hertz
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_audio_samplerate()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_audio_samplerate(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int> samplerate,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_audio_samplerate(
      recorder,
      samplerate,
    );

/// @brief Gets the file format for recording media stream.
/// @since_tizen 3.0
/// Parameter recorder The handle to the streamrecorder
/// Output parameter format   The media file format
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see streamrecorder_set_file_format()
/// @see streamrecorder_foreach_supported_file_format()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_file_format(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int32> format,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_file_format(
      recorder,
      format,
    );

/// @brief Gets the file path to record.
/// @since_tizen 3.0
/// @remarks You must release @a path using free().
/// Parameter	recorder    The handle to the streamrecorder
/// Output parameter	path    The recording file path
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see	streamrecorder_set_filename()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_filename(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_filename(
      recorder,
      path,
    );

/// @brief Gets the recording mode.
/// @since_tizen 6.0
/// @remarks #STREAMRECORDER_MODE_STREAM_BUFFER indicates recording with media buffer. \n
/// #STREAMRECORDER_MODE_DEVICE_LOOPBACK indicates recording the device's own screen (display) and audio.
/// Parameter recorder       The handle to the streamrecorder
/// Output parameter mode  The recording mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED.\n
/// @see streamrecorder_create()
/// @see streamrecorder_set_mode()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_mode(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_mode(
      recorder,
      mode,
    );

/// @brief Gets the maximum size of a recording file.
/// @since_tizen 3.0
/// Parameter recorder The handle to the streamrecorder
/// Parameter type The recording limit type
/// Output parameter limit If limit type is #STREAMRECORDER_RECORDING_LIMIT_TYPE_SIZE, the limit value is the maximum size of the recording file(KB), \n
/// otherwise limit value is the maximum time of the recording file (in seconds) \n
/// @c 0 means unlimited recording size or time.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_recording_limit()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_recording_limit(
  streamrecorder_h recorder,
  int type,
  ffi.Pointer<ffi.Int> limit,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_recording_limit(
      recorder,
      type,
      limit,
    );

/// @brief Gets the streamrecorder's current state.
/// @since_tizen 3.0
/// Parameter  recorder The handle to the streamrecorder
/// Output parameter	state  The current state of the streamrecorder
/// @return  @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_state(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_state(
      recorder,
      state,
    );

/// @brief Gets the video codec for encoding video stream.
/// @since_tizen 3.0
/// Parameter recorder The handle to the streamrecorder
/// Output parameter codec   The video codec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see streamrecorder_set_video_encoder()
/// @see streamrecorder_foreach_supported_video_encoder()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_video_encoder(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int32> codec,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_video_encoder(
      recorder,
      codec,
    );

/// @brief Gets the bitrate of a video encoder.
/// @since_tizen 3.0
/// Parameter  recorder  The handle to the streamrecorder
/// Output parameter bitrate   The bitrate in bits per second
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_audio_encoder_bitrate()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_video_encoder_bitrate(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int> bitrate,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_video_encoder_bitrate(
      recorder,
      bitrate,
    );

/// @brief Gets the recording frame rate.
/// @since_tizen 3.0
/// Parameter recorder The handle to the camera
/// Output parameter framerate The frame rate for recording that already is set
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see streamrecorder_set_video_framerate()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_video_framerate(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int> framerate,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_video_framerate(
      recorder,
      framerate,
    );

/// @brief Gets the resolution of the video recording.
/// @since_tizen 3.0
/// Parameter recorder	The handle to the streamrecorder
/// Output parameter width	The video width
/// Output parameter height	The video height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_set_video_resolution()
/// @see	streamrecorder_foreach_supported_video_resolution()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_video_resolution(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_video_resolution(
      recorder,
      width,
      height,
    );

/// @brief Gets the video source format.
/// @since_tizen 3.0
/// @remarks This function should be called before prepared state.
/// Parameter recorder The handle to the streamrecorder
/// Output parameter format The color type of video source that already is set
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see streamrecorder_set_video_source_format()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_get_video_source_format(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Int32> format,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_get_video_source_format(
      recorder,
      format,
    );

/// @brief Pauses the recording.
/// @since_tizen 3.0
/// @remarks Recording can be resumed with streamrecorder_start().
/// Parameter  recorder  The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_RECORDING.
/// @post The streamrecorder state will be #STREAMRECORDER_STATE_PAUSED.
/// @see streamrecorder_create()
/// @see streamrecorder_commit()
/// @see streamrecorder_cancel()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_pause(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_pause(
      recorder,
    );

/// @brief Prepares the streamrecorder for recording.
/// @since_tizen 3.0
/// @remarks Before calling the function, it is required to properly set streamrecorder_enable_source_buffer(),
/// audio encoder (streamrecorder_set_audio_encoder()),
/// video encoder(streamrecorder_set_video_encoder()) and file format (streamrecorder_set_file_format()).
/// Parameter	recorder  The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre  The recorder state should be #STREAMRECORDER_STATE_CREATED. \n
/// The streamrecorder_enable_source_buffer() should be invoked before this function.
/// @post The streamrecorder state will be #STREAMRECORDER_STATE_PREPARED
/// @see streamrecorder_create()
/// @see	streamrecorder_unprepare()
/// @see	streamrecorder_set_audio_encoder()
/// @see	streamrecorder_set_video_encoder()
/// @see	streamrecorder_set_file_format()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_prepare(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_prepare(
      recorder,
    );

/// @brief Pushes buffer to StreamRecorder to record audio/video.
/// @since_tizen 3.0
/// @remarks When you want to record audio or video file, you need to add privilege according to rules below additionally. \n
/// %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage.\n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
/// Parameter	recorder	The handle to the streamrecorder
/// Parameter	inbuf The media packet containing buffer and other associated values
/// @return  @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_push_stream_buffer(
  streamrecorder_h recorder,
  media_packet_h inbuf,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_push_stream_buffer(
      recorder,
      inbuf,
    );

/// @brief Sets the number of the audio channel.
/// @since_tizen 3.0
/// @remarks This attribute is applied only in #STREAMRECORDER_STATE_CREATED state. \n
/// For mono recording, setting channel to @c 1. \n
/// For stereo recording, setting channel to @c 2.
/// Parameter recorder       The handle to the streamrecorder
/// Parameter channel_count  The number of the audio channel
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED.\n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_get_audio_channel()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_audio_channel(
  streamrecorder_h recorder,
  int channel_count,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_audio_channel(
      recorder,
      channel_count,
    );

/// @brief Sets the audio codec for encoding an audio stream.
/// @since_tizen 3.0
/// @remarks You can get available audio encoders by using streamrecorder_foreach_supported_audio_encoder(). \n
/// Parameter recorder The handle to the streamrecorder
/// Parameter codec    The audio codec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_get_audio_encoder()
/// @see streamrecorder_foreach_supported_audio_encoder()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_audio_encoder(
  streamrecorder_h recorder,
  int codec,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_audio_encoder(
      recorder,
      codec,
    );

/// @brief Sets the bitrate of an audio encoder.
/// @since_tizen 3.0
/// Parameter recorder  The handle to the streamrecorder
/// Parameter bitrate   The bitrate (for mms : 12200[bps], normal : 288000[bps])
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_get_audio_encoder_bitrate()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_audio_encoder_bitrate(
  streamrecorder_h recorder,
  int bitrate,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_audio_encoder_bitrate(
      recorder,
      bitrate,
    );

/// @brief Sets the sampling rate of an audio stream.
/// @since_tizen 3.0
/// Parameter recorder    The handle to the streamrecorder
/// Parameter samplerate The sample rate in Hertz
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_get_audio_samplerate()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_audio_samplerate(
  streamrecorder_h recorder,
  int samplerate,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_audio_samplerate(
      recorder,
      samplerate,
    );

/// @brief Registers a callback function to be called when asynchronous buffers are consumed.
/// @since_tizen 3.0
/// @remarks This callback informs to user dealloc buffer.\n
/// When this callback is invoked, user should release the buffer or media packet. \n
/// Parameter	recorder	The handle to the streamrecorder
/// Parameter	callback	The callback function to register
/// Parameter	user_data	The user data to be passed to the callback function
/// @return  @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see	streamrecorder_unset_buffer_consume_completed_cb()
/// @see	streamrecorder_push_stream_buffer()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_buffer_consume_completed_cb(
  streamrecorder_h recorder,
  streamrecorder_consume_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_buffer_consume_completed_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when an asynchronous operation error occurred.
/// @since_tizen 3.0
/// @remarks This callback informs critical error situation.\n
/// When this callback is invoked, user should release the resource and terminate the application. \n
/// These error codes will occur. \n
/// #STREAMRECORDER_ERROR_INVALID_OPERATION \n
/// #STREAMRECORDER_ERROR_OUT_OF_MEMORY
/// Parameter	recorder	The handle to the streamrecorder
/// Parameter	callback	The callback function to register
/// Parameter	user_data	The user data to be passed to the callback function
/// @return  @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @post	This function will invoke streamrecorder_error_cb() when an asynchronous operation error occur.
/// @see streamrecorder_create()
/// @see	streamrecorder_unset_error_cb()
/// @see	streamrecorder_error_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_error_cb(
  streamrecorder_h recorder,
  streamrecorder_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_error_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Sets the file format for recording media stream.
/// @since_tizen 3.0
/// Parameter recorder The handle to the streamrecorder
/// Parameter format   The media file format
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see streamrecorder_get_file_format()
/// @see streamrecorder_foreach_supported_file_format()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_file_format(
  streamrecorder_h recorder,
  int format,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_file_format(
      recorder,
      format,
    );

/// @brief Sets the file path to record.
/// @details This function sets file path which defines where newly recorded data should be stored.
/// @since_tizen 3.0
/// @remarks If the same file already exists in the file system, then old file will be overwritten.
/// Parameter	recorder	The handle to the streamrecorder
/// Parameter	path The recording file path
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see streamrecorder_get_filename()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_filename(
  streamrecorder_h recorder,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_filename(
      recorder,
      path,
    );

/// @brief Sets the recording mode.
/// @since_tizen 6.0
/// @remarks This attribute can be set only in the #STREAMRECORDER_STATE_CREATED state. \n
/// To record with media buffer, set the mode to #STREAMRECORDER_MODE_STREAM_BUFFER. \n
/// To record with the device's own screen (display) and audio, set the mode to #STREAMRECORDER_MODE_DEVICE_LOOPBACK.
/// Parameter recorder       The handle to the streamrecorder
/// Parameter mode  The recording mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED.\n
/// @see streamrecorder_create()
/// @see streamrecorder_get_mode()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_mode(
  streamrecorder_h recorder,
  int mode,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_mode(
      recorder,
      mode,
    );

/// @brief Registers the callback function that will be invoked when the streamrecorder get some notification.
/// @since_tizen 3.0
/// Parameter recorder	The handle to the streamrecorder
/// Parameter callback	The function pointer of user callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @post  streamrecorder_notify_cb() will be invoked.
/// @see streamrecorder_create()
/// @see streamrecorder_unset_notify_cb()
/// @see streamrecorder_notify_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_notify_cb(
  streamrecorder_h recorder,
  streamrecorder_notify_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_notify_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Sets the maximum size of a recording file.
/// @since_tizen 3.0
/// @remarks After reaching the limitation, the recording data is discarded and not written in the recording file.
/// Parameter recorder The handle to the streamrecorder
/// Parameter type The recording limit type
/// Parameter limit If limit type is #STREAMRECORDER_RECORDING_LIMIT_TYPE_SIZE, the limit value is the maximum size of the recording file(KB), \n
/// otherwise limit value is the maximum time of the recording file (in seconds) \n
/// @c 0 means unlimited recording size or time.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_get_recording_limit()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_recording_limit(
  streamrecorder_h recorder,
  int type,
  int limit,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_recording_limit(
      recorder,
      type,
      limit,
    );

/// @brief Registers the callback function to be run when reached the recording limit.
/// @since_tizen 3.0
/// Parameter	recorder	The handle to streamrecorder
/// Parameter	callback	The function pointer of user callback
/// Parameter	user_data	The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @post  streamrecorder_recording_limit_reached_cb() will be invoked.
/// @see streamrecorder_create()
/// @see	streamrecorder_unset_recording_limit_reached_cb()
/// @see	streamrecorder_recording_limit_reached_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_recording_limit_reached_cb(
  streamrecorder_h recorder,
  streamrecorder_recording_limit_reached_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_recording_limit_reached_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked when the recording information changes.
/// @since_tizen 3.0
/// Parameter  recorder   The handle to the streamrecorder
/// Parameter  callback   The function pointer of user callback
/// Parameter  user_data  The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @post  streamrecorder_recording_status_cb() will be invoked.
/// @see streamrecorder_create()
/// @see	streamrecorder_unset_recording_status_cb()
/// @see	streamrecorder_recording_status_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_recording_status_cb(
  streamrecorder_h recorder,
  streamrecorder_recording_status_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_recording_status_cb(
      recorder,
      callback,
      user_data,
    );

/// @brief Sets the video codec for encoding video stream.
/// @since_tizen 3.0
/// @remarks You can get available video encoders by using recorder_foreach_supported_video_encoder().
/// Parameter recorder The handle to the streamrecorder
/// Parameter codec    The video codec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see streamrecorder_get_video_encoder()
/// @see streamrecorder_foreach_supported_video_encoder()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_video_encoder(
  streamrecorder_h recorder,
  int codec,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_video_encoder(
      recorder,
      codec,
    );

/// @brief Sets the bitrate of a video encoder.
/// @since_tizen 3.0
/// Parameter recorder  The handle to the streamrecorder
/// Parameter bitrate   The bitrate in bits per second
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_get_video_encoder_bitrate()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_video_encoder_bitrate(
  streamrecorder_h recorder,
  int bitrate,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_video_encoder_bitrate(
      recorder,
      bitrate,
    );

/// @brief Sets the recording frame rate.
/// @since_tizen 3.0
/// @remarks This function should be called before prepared state.
/// Parameter recorder The handle to the streamrecorder
/// Parameter framerate The frame rate for recording
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see streamrecorder_get_video_framerate()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_video_framerate(
  streamrecorder_h recorder,
  int framerate,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_video_framerate(
      recorder,
      framerate,
    );

/// @brief Sets the resolution of the video recording.
/// @since_tizen 3.0
/// @remarks This function should be called before recording (streamrecorder_start()).
/// Parameter recorder	The handle to the streamrecorder
/// Parameter width	The input width
/// Parameter height	The input height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre    The streamrecorder state must be #STREAMRECORDER_STATE_CREATED. \n
/// streamrecorder_enable_source_buffer() should be invoked before this function.
/// @see streamrecorder_create()
/// @see	streamrecorder_start()
/// @see	streamrecorder_get_video_resolution()
/// @see	streamrecorder_foreach_supported_video_resolution()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_video_resolution(
  streamrecorder_h recorder,
  int width,
  int height,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_video_resolution(
      recorder,
      width,
      height,
    );

/// @brief Sets the video source format.
/// @since_tizen 3.0
/// @remarks This function should be called before prepared state.
/// Parameter recorder The handle to the streamrecorder
/// Parameter format The color type of video source
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see streamrecorder_get_video_source_format()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_set_video_source_format(
  streamrecorder_h recorder,
  int format,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_set_video_source_format(
      recorder,
      format,
    );

/// @brief Starts the recording.
/// @since_tizen 3.0
/// @remarks If file path has been set to an existing file, this file is removed automatically and updated by new one. \n
/// When you want to record audio or video file, you need to add privilege according to rules below additionally. \n
/// %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage.\n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
/// The filename should be set before this function is invoked.
/// Parameter  recorder  The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @retval #STREAMRECORDER_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre The streamrecorder state must be #STREAMRECORDER_STATE_PREPARED by streamrecorder_prepare() or #STREAMRECORDER_STATE_PAUSED by streamrecorder_pause(). \n
/// The filename should be set by streamrecorder_set_filename().
/// @post The recorder state will be #STREAMRECORDER_STATE_RECORDING.
/// @see streamrecorder_create()
/// @see	streamrecorder_pause()
/// @see	streamrecorder_commit()
/// @see	streamrecorder_cancel()
/// @see	streamrecorder_set_audio_encoder()
/// @see	streamrecorder_set_filename()
/// @see	streamrecorder_set_file_format()
/// @see	streamrecorder_recording_status_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_start(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_start(
      recorder,
    );

/// @brief Resets the streamrecorder.
/// @since_tizen 3.0
/// Parameter  recorder  The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STREAMRECORDER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #STREAMRECORDER_ERROR_INVALID_STATE Invalid state
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @pre  The streamrecorder state should be #STREAMRECORDER_STATE_PREPARED set by streamrecorder_prepare(), streamrecorder_cancel() or streamrecorder_commit().
/// @post The streamrecorder state will be #STREAMRECORDER_STATE_CREATED.
/// @see streamrecorder_create()
/// @see	streamrecorder_prepare()
/// @see	streamrecorder_cancel()
/// @see	streamrecorder_commit()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_unprepare(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_unprepare(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 3.0
/// Parameter	recorder	The handle to the streamrecorder
/// @return  @c on success, otherwise a negative error value
/// @retval    #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval    #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see	streamrecorder_set_buffer_consume_completed_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_unset_buffer_consume_completed_cb(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_unset_buffer_consume_completed_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 3.0
/// Parameter	recorder	The handle to the streamrecorder
/// @return  @c on success, otherwise a negative error value
/// @retval    #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval    #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see	streamrecorder_set_error_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_unset_error_cb(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_unset_error_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 3.0
/// Parameter  recorder The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see streamrecorder_set_notify_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_unset_notify_cb(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_unset_notify_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 3.0
/// Parameter  recorder  The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see streamrecorder_create()
/// @see	streamrecorder_set_recording_limit_reached_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_unset_recording_limit_reached_cb(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_unset_recording_limit_reached_cb(
      recorder,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 3.0
/// Parameter  recorder    The handle to the streamrecorder
/// @return @c 0 on success, otherwise a negative error value
/// @retval #STREAMRECORDER_ERROR_NONE Successful
/// @retval #STREAMRECORDER_ERROR_NOT_SUPPORTED Not supported
/// @retval #STREAMRECORDER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a stream recorder handle by calling streamrecorder_create().
/// @see	streamrecorder_set_recording_status_cb()
///
/// Module getter: `tizenCapiMediaStreamrecorder`.
int streamrecorder_unset_recording_status_cb(
  streamrecorder_h recorder,
) =>
    tizenCapiMediaStreamrecorder.streamrecorder_unset_recording_status_cb(
      recorder,
    );

