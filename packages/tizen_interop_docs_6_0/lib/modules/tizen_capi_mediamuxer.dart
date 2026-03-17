// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediamuxer`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-mediamuxer.so.0`.
///
/// Multimedia / Media Muxer.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_mediamuxer;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds the media track of interest to the muxer handle.
/// @since_tizen 3.0
/// Parameter  muxer        The media muxer handle
/// Parameter  media_format The format of media muxer
/// Output parameter track_index  The index of the media track
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_IDLE.
/// @see #media_format_h
/// @see mediamuxer_create()
/// @see mediamuxer_prepare()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_add_track(
  mediamuxer_h muxer,
  media_format_h media_format,
  ffi.Pointer<ffi.Int> track_index,
) =>
    tizenCapiMediamuxer.mediamuxer_add_track(
      muxer,
      media_format,
      track_index,
    );

/// @brief Closes the track from further writing of data.
/// @since_tizen 3.0
/// @remarks For each added track, user needs to call this function to indicate the end of stream.
/// Parameter muxer       The media muxer handle
/// Parameter track_index The selected track index
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_MUXING.
/// @see mediamuxer_write_sample()
/// @see mediamuxer_pause()
/// @see mediamuxer_unprepare()
/// @see #mediamuxer_error_e
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_close_track(
  mediamuxer_h muxer,
  int track_index,
) =>
    tizenCapiMediamuxer.mediamuxer_close_track(
      muxer,
      track_index,
    );

/// @brief Creates a media muxer handle for muxing.
/// @since_tizen 3.0
/// @remarks You must release @a muxer using mediamuxer_destroy() function.
/// Output parameter muxer A new handle to media muxer
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @retval #MEDIAMUXER_ERROR_OUT_OF_MEMORY Allocation Failed, Out of Memory.
/// @post The media muxer state will be #MEDIAMUXER_STATE_IDLE.
/// @see mediamuxer_destroy()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_create(
  ffi.Pointer<mediamuxer_h> muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_create(
      muxer,
    );

/// @brief Removes the instance of media muxer and clear all its context memory.
/// @since_tizen 3.0
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre Create a media muxer handle by calling mediamuxer_create() function.
/// @post The media muxer state will be #MEDIAMUXER_STATE_NONE.
/// @see mediamuxer_create()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_destroy(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_destroy(
      muxer,
    );

/// @brief Gets media muxer state.
/// @since_tizen 3.0
/// Parameter  muxer The media muxer handle
/// Output parameter state The media muxer sate
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media muxer handle by calling mediamuxer_create() function.
/// @see #mediamuxer_state_e
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_get_state(
  mediamuxer_h muxer,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediamuxer.mediamuxer_get_state(
      muxer,
      state,
    );

/// @brief Pauses the media muxer.
/// @since_tizen 3.0
/// @remarks To temporarily disable writing data for muxing. This function pauses a playing muxer
/// If the prior state of the muxer is not in PLAYING, no action will be taken.
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_MUXING.
/// @post The media muxer state will be #MEDIAMUXER_STATE_PAUSED.
/// @see mediamuxer_write_sample()
/// @see mediamuxer_resume()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_pause(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_pause(
      muxer,
    );

/// @brief Prepares the media muxer.
/// @since_tizen 3.0
/// @remarks Initiates the necessary parameters.
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_IDLE.
/// @post The media muxer state will be #MEDIAMUXER_STATE_READY.
/// @see mediamuxer_create()
/// @see mediamuxer_unprepare()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_prepare(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_prepare(
      muxer,
    );

/// @brief Resumes the media muxer.
/// @since_tizen 3.0
/// @remarks Make it ready for any further writing. This function will resume a paused muxer.
/// If the prior state of the muxer is not playing, no action will be taken.
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_PAUSED.
/// @post The media muxer state will be #MEDIAMUXER_STATE_MUXING.
/// @see mediamuxer_pause()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_resume(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_resume(
      muxer,
    );

/// @brief Sets the sink path of output stream.
/// @since_tizen 3.0
/// @remarks The mediastorage privilege(http://tizen.org/privilege/mediastorage) should be added if any video/audio files are to be saved in the internal storage.
/// @remarks The externalstorage privilege(http://tizen.org/privilege/externalstorage) should be added if any video/audio files are to be saved in the external storage.
/// Parameter muxer  A new handle to media muxer
/// Parameter path   The location of the output media file, such as the file path
/// This is the path at which the muxed file should be saved.
/// Parameter format The format of the output media file
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIAMUXER_ERROR_INVALID_PATH Invalid path
/// @pre The media muxer state will be #MEDIAMUXER_STATE_IDLE by calling mediamuxer_create()
/// @see #mediamuxer_output_format_e
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_set_data_sink(
  mediamuxer_h muxer,
  ffi.Pointer<ffi.Char> path,
  int format,
) =>
    tizenCapiMediamuxer.mediamuxer_set_data_sink(
      muxer,
      path,
      format,
    );

/// @brief Sets an EOS (end of stream) callback function to be invoked when an EOS occurs.
/// @since_tizen 4.0
/// Parameter muxer     The media muxer handle
/// Parameter callback  Callback function pointer
/// Parameter user_data The user data passed from the code where
/// mediamuxer_set_eos_cb() was invoked;\n
/// this data will be accessible from mediamuxer_eos_cb()
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre Create a media muxer handle by calling mediamuxer_create() function.
/// @post mediamuxer_eos_cb() will be invoked.
/// @see mediamuxer_unset_eos_cb()
/// @see mediamuxer_eos_cb()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_set_eos_cb(
  mediamuxer_h muxer,
  mediamuxer_eos_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediamuxer.mediamuxer_set_eos_cb(
      muxer,
      callback,
      user_data,
    );

/// @brief Sets a error callback function to be invoked when an error occurs.
/// @since_tizen 3.0
/// Parameter muxer     The media muxer handle
/// Parameter callback  Callback function pointer
/// Parameter user_data The user data passed from the code where
/// mediamuxer_set_error_cb() was invoked
/// This data will be accessible from @a user_data mediamuxer_error_cb()
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a media muxer handle by calling mediamuxer_create() function.
/// @post mediamuxer_error_cb() will be invoked.
/// @see mediamuxer_unset_error_cb()
/// @see mediamuxer_error_cb()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_set_error_cb(
  mediamuxer_h muxer,
  mediamuxer_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediamuxer.mediamuxer_set_error_cb(
      muxer,
      callback,
      user_data,
    );

/// @brief Starts the media muxer.
/// @since_tizen 3.0
/// @remarks Keeps the muxer ready for writing data.
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_READY.
/// @post The media muxer state will be #MEDIAMUXER_STATE_MUXING.
/// @see mediamuxer_prepare()
/// @see mediamuxer_stop()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_start(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_start(
      muxer,
    );

/// @brief Stops the media muxer.
/// @since_tizen 3.0
/// @remarks Keeps the muxer ready for writing data.
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_MUXING
/// or #MEDIAMUXER_STATE_PAUSED.
/// @post The media muxer state will be #MEDIAMUXER_STATE_READY.
/// @see mediamuxer_start()
/// @see mediamuxer_unprepare()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_stop(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_stop(
      muxer,
    );

/// @brief Unprepares the media muxer.
/// @since_tizen 3.0
/// @remarks Unrefs the variables created after calling mediamuxer_prepare().
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_READY or
/// set to #MEDIAMUXER_STATE_PAUSED by calling mediamuxer_pause().
/// @post The media muxer state will be #MEDIAMUXER_STATE_IDLE.
/// @see mediamuxer_write_sample()
/// @see mediamuxer_pause()
/// @see mediamuxer_destroy()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_unprepare(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_unprepare(
      muxer,
    );

/// @brief Unsets the EOS (end of stream) callback function.
/// @since_tizen 4.0
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @see mediamuxer_eos_cb()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_unset_eos_cb(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_unset_eos_cb(
      muxer,
    );

/// @brief Unsets the error callback function.
/// @since_tizen 3.0
/// Parameter muxer The media muxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see mediamuxer_error_cb()
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_unset_error_cb(
  mediamuxer_h muxer,
) =>
    tizenCapiMediamuxer.mediamuxer_unset_error_cb(
      muxer,
    );

/// @brief Writes the media packet of interest to the muxer handle.
/// @since_tizen 3.0
/// Parameter muxer       The media muxer handle
/// Parameter track_index The index of the media track
/// Parameter inbuf       The packet of media muxer
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIAMUXER_ERROR_NONE Successful
/// @retval #MEDIAMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIAMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIAMUXER_ERROR_INVALID_STATE Invalid state
/// @pre The media muxer state must be set to #MEDIAMUXER_STATE_READY by calling mediamuxer_prepare() or
/// set to #MEDIAMUXER_STATE_PAUSED by calling mediamuxer_pause().
/// @post The media muxer state will be #MEDIAMUXER_STATE_MUXING.
/// @see mediamuxer_prepare()
/// @see mediamuxer_close_track()
/// @see mediamuxer_pause()
/// @see #media_packet_h
///
/// Module getter: `tizenCapiMediamuxer`.
int mediamuxer_write_sample(
  mediamuxer_h muxer,
  int track_index,
  media_packet_h inbuf,
) =>
    tizenCapiMediamuxer.mediamuxer_write_sample(
      muxer,
      track_index,
      inbuf,
    );

