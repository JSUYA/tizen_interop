// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaScreenMirroring`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-screen-mirroring.so.0`.
///
/// Multimedia / Screen Mirroring.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_screen_mirroring;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates connection and prepare for receiving data from SCMIRRORING source.
///
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre The screen mirroring state should be #SCMIRRORING_SINK_STATE_PREPARED
/// @post The screen mirroring state will be #SCMIRRORING_SINK_STATE_CONNECTED
///
/// @see scmirroring_sink_create()
/// @see scmirroring_sink_set_state_changed_cb()
/// @see scmirroring_sink_prepare()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_connect(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_connect(
      scmirroring_sink,
    );

/// @brief Creates a new screen mirroring sink handle.
/// @since_tizen 2.4
///
/// @remarks You must release @a scmirroring_sink using scmirroring_sink_destroy().
///
/// Output parameter scmirroring_sink	A newly returned handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @post The screen mirroring state will be #SCMIRRORING_SINK_STATE_NULL
///
/// @see scmirroring_sink_destroy()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_create(
  ffi.Pointer<scmirroring_sink_h> scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_create(
      scmirroring_sink,
    );

/// @brief Destroys screen mirroring sink handle.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre The screen mirroring state should be #SCMIRRORING_SINK_STATE_NULL
///
/// @see scmirroring_sink_create()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_destroy(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_destroy(
      scmirroring_sink,
    );

/// @brief Disconnects and stops receiving data from the SCMIRRORING source.
///
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre The screen mirroring state should be #SCMIRRORING_SINK_STATE_CONNECTED
/// or #SCMIRRORING_SINK_STATE_PLAYING or #SCMIRRORING_SINK_STATE_PAUSED
/// @post The screen mirroring state will be #SCMIRRORING_SINK_STATE_DISCONNECTED
///
/// @see scmirroring_sink_create()
/// @see scmirroring_sink_set_state_changed_cb()
/// @see scmirroring_sink_prepare()
/// @see scmirroring_sink_connect()
/// @see scmirroring_sink_start()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_disconnect(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_disconnect(
      scmirroring_sink,
    );

/// @brief Gets the current state of screen mirroring sink.
/// @details The current state of screen mirroring sink is changed by calling CAPIs. And it provides the state of screen mirroring sink the time this api is called.
///
/// @since_tizen 5.0
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Output parameter state The current state of screen mirroring sink
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_get_current_state(
  scmirroring_sink_h scmirroring_sink,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_get_current_state(
      scmirroring_sink,
      state,
    );

/// @brief Gets negotiated audio bitwidth of screen mirroring sink.
/// @details The audio bitwidth is negotiated by screen mirroring source.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Output parameter bitwidth Bitwidth of audio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre Call scmirroring_sink_connect()
/// @pre The screen mirroring state must be #SCMIRRORING_SINK_STATE_CONNECTED or #SCMIRRORING_SINK_STATE_PLAYING
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_get_negotiated_audio_bitwidth(
  ffi.Pointer<scmirroring_sink_h> scmirroring_sink,
  ffi.Pointer<ffi.Int> bitwidth,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_get_negotiated_audio_bitwidth(
      scmirroring_sink,
      bitwidth,
    );

/// @brief Gets negotiated audio channel of screen mirroring sink.
/// @details The audio channel is negotiated by screen mirroring source.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Output parameter channel Channel of audio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre Call scmirroring_sink_connect()
/// @pre The screen mirroring state must be #SCMIRRORING_SINK_STATE_CONNECTED or #SCMIRRORING_SINK_STATE_PLAYING
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_get_negotiated_audio_channel(
  ffi.Pointer<scmirroring_sink_h> scmirroring_sink,
  ffi.Pointer<ffi.Int> channel,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_get_negotiated_audio_channel(
      scmirroring_sink,
      channel,
    );

/// @brief Gets negotiated audio codec of screen mirroring sink.
/// @details The audio codec is negotiated by screen mirroring source.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Output parameter codec Codec of audio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre Call scmirroring_sink_connect()
/// @pre The screen mirroring state must be #SCMIRRORING_SINK_STATE_CONNECTED or #SCMIRRORING_SINK_STATE_PLAYING
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_get_negotiated_audio_codec(
  ffi.Pointer<scmirroring_sink_h> scmirroring_sink,
  ffi.Pointer<ffi.Int32> codec,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_get_negotiated_audio_codec(
      scmirroring_sink,
      codec,
    );

/// @brief Gets negotiated audio sample rate of screen mirroring sink.
/// @details The audio sample rate is negotiated by screen mirroring source.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Output parameter sample_rate Sample rate of audio
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre Call scmirroring_sink_connect()
/// @pre The screen mirroring state must be #SCMIRRORING_SINK_STATE_CONNECTED or #SCMIRRORING_SINK_STATE_PLAYING
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_get_negotiated_audio_sample_rate(
  ffi.Pointer<scmirroring_sink_h> scmirroring_sink,
  ffi.Pointer<ffi.Int> sample_rate,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_get_negotiated_audio_sample_rate(
      scmirroring_sink,
      sample_rate,
    );

/// @brief Gets negotiated video codec of screen mirroring sink.
/// @details The video codec is negotiated by screen mirroring source.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Output parameter codec Codec of video
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre Call scmirroring_sink_connect()
/// @pre The screen mirroring state must be #SCMIRRORING_SINK_STATE_CONNECTED or #SCMIRRORING_SINK_STATE_PLAYING
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_get_negotiated_video_codec(
  ffi.Pointer<scmirroring_sink_h> scmirroring_sink,
  ffi.Pointer<ffi.Int32> codec,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_get_negotiated_video_codec(
      scmirroring_sink,
      codec,
    );

/// @brief Gets negotiated frame rate of screen mirroring sink.
/// @details The video frame rate is negotiated by screen mirroring source.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Output parameter frame_rate Frame rate of video
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre Call scmirroring_sink_connect()
/// @pre The screen mirroring state must be #SCMIRRORING_SINK_STATE_CONNECTED or #SCMIRRORING_SINK_STATE_PLAYING
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_get_negotiated_video_frame_rate(
  ffi.Pointer<scmirroring_sink_h> scmirroring_sink,
  ffi.Pointer<ffi.Int> frame_rate,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_get_negotiated_video_frame_rate(
      scmirroring_sink,
      frame_rate,
    );

/// @brief Gets negotiated video resolution of screen mirroring sink.
/// @details The video resolution is negotiated by screen mirroring source.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Output parameter width Width of video
/// Output parameter height Height of video
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre Call scmirroring_sink_connect()
/// @pre The screen mirroring state must be #SCMIRRORING_SINK_STATE_CONNECTED or #SCMIRRORING_SINK_STATE_PLAYING
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_get_negotiated_video_resolution(
  ffi.Pointer<scmirroring_sink_h> scmirroring_sink,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_get_negotiated_video_resolution(
      scmirroring_sink,
      width,
      height,
    );

/// @brief Pauses receiving data from the SCMIRRORING source.
/// @details This function pauses receiving data from the SCMIRRORING source,
/// which means it sends RTSP PAUSE message to source.
///
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre The screen mirroring state should be #SCMIRRORING_SINK_STATE_PLAYING
/// @post The screen mirroring state will be #SCMIRRORING_SINK_STATE_PAUSED
///
/// @see scmirroring_sink_create()
/// @see scmirroring_sink_set_state_changed_cb()
/// @see scmirroring_sink_prepare()
/// @see scmirroring_sink_connect()
/// @see scmirroring_sink_start()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_pause(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_pause(
      scmirroring_sink,
    );

/// @brief Prepares the screen mirroring sink handle and allocates specific resources.
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre The screen mirroring state should be #SCMIRRORING_SINK_STATE_NULL
/// @post The screen mirroring state will be #SCMIRRORING_SINK_STATE_PREPARED
///
/// @see scmirroring_sink_create()
/// @see scmirroring_sink_set_state_changed_cb()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_prepare(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_prepare(
      scmirroring_sink,
    );

/// @brief Resumes receiving data from the SCMIRRORING source.
/// @details This function pauses receiving data from the SCMIRRORING source, which means it sends RTSP PLAY message to source.
///
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre The screen mirroring state should be #SCMIRRORING_SINK_STATE_PAUSED
/// @post The screen mirroring state will be #SCMIRRORING_SINK_STATE_PLAYING
///
/// @see scmirroring_sink_pause()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_resume(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_resume(
      scmirroring_sink,
    );

/// @brief Pass window handle created by application and surface type(x11/evas).
/// @details This function will use handle created by the application to set the overlay &
/// display on the surface passed by the application
///
/// @since_tizen 2.4
///
/// @remark This function must be called in main thread of application.
/// Otherwise, it will return #SCMIRRORING_ERROR_INVALID_OPERATION by internal restriction. (since tizen 5.0)
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Parameter type Surface type(x11/evas)
/// Parameter display_surface The display_surface created by application to force sink to display content over it
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
///
/// @see scmirroring_sink_create()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_set_display(
  scmirroring_sink_h scmirroring_sink,
  int type,
  ffi.Pointer<ffi.Void> display_surface,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_set_display(
      scmirroring_sink,
      type,
      display_surface,
    );

/// @brief Sets server IP and port.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Parameter ip The server IP address to connect to
/// Parameter port The server port to connect to
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
///
/// @see scmirroring_sink_create()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_set_ip_and_port(
  scmirroring_sink_h scmirroring_sink,
  ffi.Pointer<ffi.Char> ip,
  ffi.Pointer<ffi.Char> port,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_set_ip_and_port(
      scmirroring_sink,
      ip,
      port,
    );

/// @brief Sets resolutions of screen mirroring sink.
/// @details This function sets resolutions of screen mirroring sink using scmirroring_resolution_e as following.
/// (ex. SCMIRRORING_RESOLUTION_1920x1080_P30 | SCMIRRORING_RESOLUTION_1280x720_P30)
/// Use it only when you want to set specific resolutions but if screen mirroring source does not support
/// the resolutions which you set, the screen mirroring sink will be disconnected.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Parameter resolution Resolution of screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
///
/// @see scmirroring_sink_create()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_set_resolution(
  scmirroring_sink_h scmirroring_sink,
  int resolution,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_set_resolution(
      scmirroring_sink,
      resolution,
    );

/// @brief Registers a callback function to be called when state change happens.
/// @details This function registers user callback and this callback is called when each status is changed.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data passed to the callback registration function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
///
/// @see scmirroring_sink_create()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_set_state_changed_cb(
  scmirroring_sink_h scmirroring_sink,
  scmirroring_sink_state_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_set_state_changed_cb(
      scmirroring_sink,
      callback,
      user_data,
    );

/// @brief Starts receiving data from the SCMIRRORING source and display it(mirror).
///
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @pre Call scmirroring_sink_connect()
/// @pre The screen mirroring state should be #SCMIRRORING_SINK_STATE_CONNECTED
/// @post The screen mirroring state will be #SCMIRRORING_SINK_STATE_PLAYING
///
/// @see scmirroring_sink_create()
/// @see scmirroring_sink_set_state_changed_cb()
/// @see scmirroring_sink_prepare()
/// @see scmirroring_sink_connect()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_start(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_start(
      scmirroring_sink,
    );

/// @brief Unprepares screen mirroring.
/// @details This function unprepares screen mirroring, which closes specific resources.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
/// @pre Call scmirroring_sink_prepare()
/// @post The screen mirroring state will be #SCMIRRORING_SINK_STATE_NULL
///
/// @see scmirroring_sink_create()
/// @see scmirroring_sink_set_state_changed_cb()
/// @see scmirroring_sink_prepare()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_unprepare(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_unprepare(
      scmirroring_sink,
    );

/// @brief Unregisters the callback function user registered.
///
/// @since_tizen 2.4
///
/// Parameter scmirroring_sink The handle to the screen mirroring sink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SCMIRRORING_ERROR_NONE Successful
/// @retval #SCMIRRORING_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SCMIRRORING_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SCMIRRORING_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SCMIRRORING_ERROR_NOT_SUPPORTED Not supported
/// @retval #SCMIRRORING_ERROR_UNKNOWN Unknown Error
///
/// @pre Create a screen mirroring sink handle by calling scmirroring_sink_create().
/// @pre Register user callback by calling scmirroring_sink_set_state_changed_cb().
///
/// @see scmirroring_sink_create()
/// @see scmirroring_sink_set_state_changed_cb()
///
/// Module getter: `tizenCapiMediaScreenMirroring`.
int scmirroring_sink_unset_state_changed_cb(
  scmirroring_sink_h scmirroring_sink,
) =>
    tizenCapiMediaScreenMirroring.scmirroring_sink_unset_state_changed_cb(
      scmirroring_sink,
    );

