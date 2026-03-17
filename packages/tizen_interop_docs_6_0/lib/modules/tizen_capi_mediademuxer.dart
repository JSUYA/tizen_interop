// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediademuxer`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-mediademuxer.so.0`.
///
/// Multimedia / Media Demuxer.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_mediademuxer;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates a media demuxer handle for demuxing.
/// @since_tizen 3.0
/// @remarks You must release @a demuxer using mediademuxer_destroy() function.
/// Output parameter demuxer A new handle to media demuxer
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @retval #MEDIADEMUXER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @post The media demuxer state will be #MEDIADEMUXER_STATE_IDLE.
/// @see mediademuxer_destroy()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_create(
  ffi.Pointer<mediademuxer_h> demuxer,
) =>
    tizenCapiMediademuxer.mediademuxer_create(
      demuxer,
    );

/// @brief Removes the instance of media demuxer and clear all its context memory.
/// @since_tizen 3.0
/// Parameter demuxer The media demuxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre Create a media demuxer handle by calling mediademuxer_create() function.
/// @post The media demuxer state will be #MEDIADEMUXER_STATE_NONE.
/// @see mediademuxer_create()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_destroy(
  mediademuxer_h demuxer,
) =>
    tizenCapiMediademuxer.mediademuxer_destroy(
      demuxer,
    );

/// @brief Gets media demuxer state.
/// @since_tizen 3.0
/// Parameter  demuxer The media demuxer handle
/// Output parameter state   The media demuxer sate
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media demuxer handle by calling mediademuxer_create() function.
/// @see #mediademuxer_state
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_get_state(
  mediademuxer_h demuxer,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediademuxer.mediademuxer_get_state(
      demuxer,
      state,
    );

/// @brief Gets the total track count present in the container stream.
/// @since_tizen 3.0
/// Parameter  demuxer The media demuxer handle
/// Output parameter count   The number of tracks present
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state should be #MEDIADEMUXER_STATE_READY.
/// @see mediademuxer_prepare()
/// @see mediademuxer_select_track()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_get_track_count(
  mediademuxer_h demuxer,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiMediademuxer.mediademuxer_get_track_count(
      demuxer,
      count,
    );

/// @brief Retrieves the track format of the read sample.
/// @since_tizen 3.0
/// @remarks The @a format should be released using media_format_unref() function.
/// Parameter  demuxer     The media demuxer handle
/// Parameter  track_index The index of the track
/// Output parameter format      The media format handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state must be set to #MEDIADEMUXER_STATE_DEMUXING by calling
/// mediademuxer_start() or set to #MEDIADEMUXER_STATE_READY by calling mediademuxer_prepare().
/// @see mediademuxer_get_track_count()
/// @see mediademuxer_select_track()
/// @see media_format_unref()
/// @see #media_format_h
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_get_track_info(
  mediademuxer_h demuxer,
  int track_index,
  ffi.Pointer<media_format_h> format,
) =>
    tizenCapiMediademuxer.mediademuxer_get_track_info(
      demuxer,
      track_index,
      format,
    );

/// @brief Prepares the media demuxer for demuxing.
/// @since_tizen 3.0
/// @remarks User should call this before mediademuxer_start() function.
/// Parameter demuxer The media demuxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state should be #MEDIADEMUXER_STATE_IDLE.
/// @pre mediademuxer_set_error_cb() should be called before mediademuxer_prepare().
/// @post The media demuxer state will be #MEDIADEMUXER_STATE_READY.
/// @see mediademuxer_set_data_source()
/// @see mediademuxer_unprepare()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_prepare(
  mediademuxer_h demuxer,
) =>
    tizenCapiMediademuxer.mediademuxer_prepare(
      demuxer,
    );

/// @brief Reads a frame(sample) of one single track.
/// @since_tizen 3.0
/// @remarks The @a outbuf should be released using media_packet_destroy() function.
/// @remarks Once this function is called, user app can call the mediatool APIs to extract
/// side information such as pts, size, duration, flags etc.
/// Parameter  demuxer     The media demuxer handle
/// Parameter  track_index The index of track of which data is needed
/// Output parameter outbuf      The media packet handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state should be #MEDIADEMUXER_STATE_DEMUXING.
/// @see mediademuxer_start()
/// @see mediademuxer_get_track_info()
/// @see mediademuxer_seek() if need to seek to a particular location
/// @see mediademuxer_unselect_track()
/// @see mediademuxer_stop()
/// @see media_packet_destroy()
/// @see #media_packet_h
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_read_sample(
  mediademuxer_h demuxer,
  int track_index,
  ffi.Pointer<media_packet_h> outbuf,
) =>
    tizenCapiMediademuxer.mediademuxer_read_sample(
      demuxer,
      track_index,
      outbuf,
    );

/// @brief Seeks to a particular instance of time (in milli seconds).
/// @since_tizen 3.0
/// @remarks If mediademuxer_seek() is followed by mediademuxer_read_sample(), outbuf will be the key frame right before the seek position.
/// Parameter demuxer The media demuxer handle
/// Parameter pos     The value of the new start position
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state should be #MEDIADEMUXER_STATE_DEMUXING.
/// @see mediademuxer_read_sample()
/// @see mediademuxer_stop()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_seek(
  mediademuxer_h demuxer,
  int pos,
) =>
    tizenCapiMediademuxer.mediademuxer_seek(
      demuxer,
      pos,
    );

/// @brief Selects the track to be performed.
/// @since_tizen 3.0
/// Parameter demuxer     The media demuxer handle
/// Parameter track_index The track index on which is selected for read
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state should be #MEDIADEMUXER_STATE_READY.
/// @see mediademuxer_get_track_count()
/// @see mediademuxer_start()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_select_track(
  mediademuxer_h demuxer,
  int track_index,
) =>
    tizenCapiMediademuxer.mediademuxer_select_track(
      demuxer,
      track_index,
    );

/// @brief Sets the source path of input stream.
/// @since_tizen 3.0
/// @remarks The mediastorage privilege(http://tizen.org/privilege/mediastorage) should be added if any video/audio files are used to play located in the internal storage.
/// @remarks The externalstorage privilege(http://tizen.org/privilege/externalstorage) should be added if any video/audio files are used to play located in the external storage.
/// @remarks You must release @a demuxer using mediademuxer_destroy() function.
/// Parameter demuxer The media demuxer handle
/// Parameter path    The content location, such as the file path
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @retval #MEDIADEMUXER_ERROR_INVALID_PATH Invalid path
/// @pre The media muxer state will be #MEDIADEMUXER_STATE_IDLE by calling mediademuxer_create() function.
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_set_data_source(
  mediademuxer_h demuxer,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiMediademuxer.mediademuxer_set_data_source(
      demuxer,
      path,
    );

/// @brief Sets an eos callback function to be invoked when an eos occurs.
/// @since_tizen 3.0
/// Parameter demuxer   The media demuxer handle
/// Parameter callback  Callback function pointer
/// Parameter user_data The user data passed from the code where
/// mediademuxer_set_eos_cb() was invoked
/// This data will be accessible from mediademuxer_eos_cb()
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @pre Create a media demuxer handle by calling mediademuxer_create() function.
/// @post mediademuxer_eos_cb() will be invoked.
/// @see mediademuxer_unset_eos_cb()
/// @see mediademuxer_eos_cb()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_set_eos_cb(
  mediademuxer_h demuxer,
  mediademuxer_eos_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediademuxer.mediademuxer_set_eos_cb(
      demuxer,
      callback,
      user_data,
    );

/// @brief Sets an error callback function to be invoked when an error occurs.
/// @since_tizen 3.0
/// Parameter demuxer   The media demuxer handle
/// Parameter callback  Callback function pointer
/// Parameter user_data The user data passed from the code where
/// mediademuxer_set_error_cb() was invoked
/// This data will be accessible from mediademuxer_error_cb()
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @pre Create a media demuxer handle by calling mediademuxer_create() function.
/// @post mediademuxer_error_cb() will be invoked.
/// @see mediademuxer_unset_error_cb()
/// @see mediademuxer_error_cb()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_set_error_cb(
  mediademuxer_h demuxer,
  mediademuxer_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediademuxer.mediademuxer_set_error_cb(
      demuxer,
      callback,
      user_data,
    );

/// @brief Starts the media demuxer.
/// @since_tizen 3.0
/// @remarks User should call this before mediademuxer_read_sample() function.
/// Parameter demuxer The media demuxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state should be #MEDIADEMUXER_STATE_READY.
/// @post The media demuxer state will be #MEDIADEMUXER_STATE_DEMUXING.
/// @see mediademuxer_prepare()
/// @see mediademuxer_get_track_count()
/// @see mediademuxer_select_track()
/// @see mediademuxer_get_track_info()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_start(
  mediademuxer_h demuxer,
) =>
    tizenCapiMediademuxer.mediademuxer_start(
      demuxer,
    );

/// @brief Stops the media demuxer.
/// @since_tizen 3.0
/// @remarks User can call this if need to stop demuxing if needed.
/// Parameter demuxer The media demuxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state must be set to #MEDIADEMUXER_STATE_DEMUXING.
/// @post The media demuxer state will be in  #MEDIADEMUXER_STATE_READY.
/// @see mediademuxer_start()
/// @see mediademuxer_unprepare()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_stop(
  mediademuxer_h demuxer,
) =>
    tizenCapiMediademuxer.mediademuxer_stop(
      demuxer,
    );

/// @brief Resets the media demuxer.
/// @since_tizen 3.0
/// @remarks User should call this before mediademuxer_destroy() function.
/// Parameter demuxer The media demuxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state should be #MEDIADEMUXER_STATE_READY.
/// @post The media demuxer state will be #MEDIADEMUXER_STATE_IDLE.
/// @see mediademuxer_prepare()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_unprepare(
  mediademuxer_h demuxer,
) =>
    tizenCapiMediademuxer.mediademuxer_unprepare(
      demuxer,
    );

/// @brief Unselects the selected track.
/// @since_tizen 3.0
/// Parameter demuxer     The media demuxer handle
/// Parameter track_index The track index to be unselected
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIADEMUXER_ERROR_INVALID_OPERATION Invalid Operation
/// @pre The media demuxer state must be set to #MEDIADEMUXER_STATE_DEMUXING by calling
/// mediademuxer_read_sample() or set to #MEDIADEMUXER_STATE_READY by calling mediademuxer_select_track().
/// @see mediademuxer_select_track()
/// @see mediademuxer_read_sample()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_unselect_track(
  mediademuxer_h demuxer,
  int track_index,
) =>
    tizenCapiMediademuxer.mediademuxer_unselect_track(
      demuxer,
      track_index,
    );

/// @brief Unsets the eos callback function.
/// @since_tizen 3.0
/// Parameter demuxer The media demuxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @see mediademuxer_eos_cb()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_unset_eos_cb(
  mediademuxer_h demuxer,
) =>
    tizenCapiMediademuxer.mediademuxer_unset_eos_cb(
      demuxer,
    );

/// @brief Unsets the error callback function.
/// @since_tizen 3.0
/// Parameter demuxer The media demuxer handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIADEMUXER_ERROR_NONE Successful
/// @retval #MEDIADEMUXER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIADEMUXER_ERROR_INVALID_STATE Invalid state
/// @see mediademuxer_error_cb()
///
/// Module getter: `tizenCapiMediademuxer`.
int mediademuxer_unset_error_cb(
  mediademuxer_h demuxer,
) =>
    tizenCapiMediademuxer.mediademuxer_unset_error_cb(
      demuxer,
    );

