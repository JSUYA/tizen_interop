// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaStreamer`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-streamer.so.0`.
///
/// Multimedia / Media Streamer.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_streamer;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates an instance of media streamer and
/// passes the handle to the caller.
/// @since_tizen 3.0
/// @remarks The @a streamer should be released using media_streamer_destroy().
/// Output parameter streamer    Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @post The media streamer state will be #MEDIA_STREAMER_STATE_IDLE.
/// @see media_streamer_destroy()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_create(
  ffi.Pointer<media_streamer_h> streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_create(
      streamer,
    );

/// @brief Destroys media streamer.
/// @since_tizen 3.0
/// @remarks Nodes in streamer will be removed automatically.
/// Don't need to remove nodes by calling media_streamer_node_remove().
/// If you want to change the node without destroying streamer handle,
/// you can call the media_streamer_node_remove().
/// after setting the streamer state to #MEDIA_STREAMER_STATE_IDLE state.
/// Parameter streamer     Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create a media streamer handle by calling media_streamer_create().
/// @post The media streamer state will be #MEDIA_STREAMER_STATE_NONE.
/// @see media_streamer_create()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_destroy(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_destroy(
      streamer,
    );

/// @brief Gets the total running time of the associated media.
/// @since_tizen 3.0
/// @remarks The streamer's source node type should be #MEDIA_STREAMER_NODE_SRC_TYPE_FILE or #MEDIA_STREAMER_NODE_SRC_TYPE_HTTP.\n
/// If not, return value will be #MEDIA_STREAMER_ERROR_NONE and duration will be -1.
/// Parameter  streamer     Media streamer handle
/// Output parameter duration     The duration in milliseconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre The media streamer state must be one of these: #MEDIA_STREAMER_STATE_PAUSED, or #MEDIA_STREAMER_STATE_PLAYING.
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_get_duration(
  media_streamer_h streamer,
  ffi.Pointer<ffi.Int> duration,
) =>
    tizenCapiMediaStreamer.media_streamer_get_duration(
      streamer,
      duration,
    );

/// @brief Gets the current position in milliseconds.
/// @since_tizen 3.0
/// Parameter  streamer     Media streamer handle
/// Output parameter time         The current position in milliseconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre The media streamer state must be one of these: #MEDIA_STREAMER_STATE_PAUSED, or #MEDIA_STREAMER_STATE_PLAYING.
/// @see media_streamer_set_play_position()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_get_play_position(
  media_streamer_h streamer,
  ffi.Pointer<ffi.Int> time,
) =>
    tizenCapiMediaStreamer.media_streamer_get_play_position(
      streamer,
      time,
    );

/// @brief Gets media streamer state.
/// @since_tizen 3.0
/// Parameter  streamer     Media streamer handle
/// Output parameter state        Media streamer state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE    Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media streamer handle by calling media_streamer_create().
/// @see #media_streamer_state_e
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_get_state(
  media_streamer_h streamer,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaStreamer.media_streamer_get_state(
      streamer,
      state,
    );

/// @brief Adds node to media streamer.
/// @since_tizen 3.0
/// @remarks Before 6.0, this function returns #MEDIA_STREAMER_ERROR_INVALID_STATE if @a streamer is not in the #MEDIA_STREAMER_STATE_IDLE state.\n
/// Since 6.0, this function can be called in any state of @a streamer.
/// Parameter streamer    Media streamer handle
/// Parameter node        Media streamer node handle to be added
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create media streamer handle by calling media_streamer_create().
/// @pre Create node handle by calling media_streamer_node_create().
/// @see media_streamer_create()
/// @see media_streamer_node_create()
/// @see media_streamer_node_create_src()
/// @see media_streamer_node_create_sink()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_add(
  media_streamer_h streamer,
  media_streamer_node_h node,
) =>
    tizenCapiMediaStreamer.media_streamer_node_add(
      streamer,
      node,
    );

/// @brief Creates media streamer node except #MEDIA_STREAMER_NODE_TYPE_SRC and #MEDIA_STREAMER_NODE_TYPE_SINK.
/// @details Creates node specific @a type with specific format of input and output data.
/// @since_tizen 3.0
/// @remarks The node type should not be #MEDIA_STREAMER_NODE_TYPE_SRC and #MEDIA_STREAMER_NODE_TYPE_SINK.\n
/// To create source / sink type node, media_streamer_node_create_src() / media_streamer_node_create_sink() should be called.\n
/// The internet privilege (%http://tizen.org/privilege/internet) should be added if #MEDIA_STREAMER_NODE_TYPE_WEBRTC is set.\n
/// You can release the @a node using media_streamer_node_destroy().
/// Parameter  type      Created node type
/// Parameter  in_fmt    Media format handle for input data
/// Parameter  out_fmt   Media format handle for output data
/// Output parameter node      Media streamer node handle to be created
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_STREAMER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see #media_streamer_node_type_e
/// @see #media_format_h
/// @see media_streamer_node_destroy()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_create(
  int type,
  media_format_h in_fmt,
  media_format_h out_fmt,
  ffi.Pointer<media_streamer_node_h> node,
) =>
    tizenCapiMediaStreamer.media_streamer_node_create(
      type,
      in_fmt,
      out_fmt,
      node,
    );

/// @brief Creates media streamer sink node.
/// @since_tizen 3.0
/// @remarks The internet privilege(%http://tizen.org/privilege/internet) should be added if any URIs are used to transmit the output data.\n
/// You can release the @a sink using media_streamer_node_destroy().\n
/// If @a type is #MEDIA_STREAMER_NODE_SINK_TYPE_ADAPTIVE, the HTTP server will be started and the server will be able to transmit the output data to the other device.
/// The application must have an authentication responsibility between a server and client because the data transmission is not secure.
/// Parameter  type     Type of sink node to be created
/// Output parameter sink     Media streamer sink node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_STREAMER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see #media_streamer_node_sink_type_e
/// @see media_streamer_node_destroy()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_create_sink(
  int type,
  ffi.Pointer<media_streamer_node_h> sink,
) =>
    tizenCapiMediaStreamer.media_streamer_node_create_sink(
      type,
      sink,
    );

/// @brief Creates media streamer source node.
/// @since_tizen 3.0
/// @remarks The internet privilege(%http://tizen.org/privilege/internet) should be added if any URIs are used to play from network.\n
/// The camera privilege(%http://tizen.org/privilege/camera) should be added if the source node handles the camera device.\n
/// The recorder privilege(%http://tizen.org/privilege/recorder) should be added if the source node handles the recorder device.\n
/// You can release the @a src using media_streamer_node_destroy().
/// Parameter  type     Media streamer source node type
/// Output parameter src      Media streamer source node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_STREAMER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see #media_streamer_node_src_type_e
/// @see media_streamer_node_destroy()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_create_src(
  int type,
  ffi.Pointer<media_streamer_node_h> src,
) =>
    tizenCapiMediaStreamer.media_streamer_node_create_src(
      type,
      src,
    );

/// @brief Destroys media streamer node.
/// @since_tizen 3.0
/// Parameter node        Media streamer node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create node handle by calling media_streamer_node_create().
/// @pre If the node was added to media streamer, it has to be removed by calling media_streamer_node_remove().
/// @see media_streamer_node_create()
/// @see media_streamer_node_create_src()
/// @see media_streamer_node_create_sink()
/// @see media_streamer_node_remove()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_destroy(
  media_streamer_node_h node,
) =>
    tizenCapiMediaStreamer.media_streamer_node_destroy(
      node,
    );

/// @brief Gets media format for pad of media streamer node.
/// @since_tizen 3.0
/// @remarks The @a fmt should be released using media_format_unref().
/// Parameter node        Media streamer node handle
/// Parameter pad_name    Pad name
/// Output parameter fmt        Media format handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create a node handle by calling media_streamer_node_create(), media_streamer_node_create_src(), or media_streamer_node_create_sink().
/// @pre Get pad name by calling media_streamer_node_get_pad_name().
/// @see #media_format_h
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_get_pad_format(
  media_streamer_node_h node,
  ffi.Pointer<ffi.Char> pad_name,
  ffi.Pointer<media_format_h> fmt,
) =>
    tizenCapiMediaStreamer.media_streamer_node_get_pad_format(
      node,
      pad_name,
      fmt,
    );

/// @brief Gets name of node pads.
/// @since_tizen 3.0
/// @remarks The @a src_pad_name and the @a sink_pad_name should be released using free().\n
/// @a src_pad_name or @a sink_pad_name can be null according to the node type.\n
/// In case of source type node, @a sink_pad_name will be null.\n
/// In case of sink type node, @a src_pad_name will be null.
/// Parameter  node            Media streamer node handle
/// Output parameter src_pad_name    Array of source pad name
/// Output parameter src_pad_num     The number of source pads
/// Output parameter sink_pad_name   Array of sink pad name
/// Output parameter sink_pad_num    The number of sink pads
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a node handle by calling media_streamer_node_create(), media_streamer_node_create_src(), or media_streamer_node_create_sink().
/// @see media_streamer_node_create()
/// @see media_streamer_node_create_src()
/// @see media_streamer_node_create_sink()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_get_pad_name(
  media_streamer_node_h node,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> src_pad_name,
  ffi.Pointer<ffi.Int> src_pad_num,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> sink_pad_name,
  ffi.Pointer<ffi.Int> sink_pad_num,
) =>
    tizenCapiMediaStreamer.media_streamer_node_get_pad_name(
      node,
      src_pad_name,
      src_pad_num,
      sink_pad_name,
      sink_pad_num,
    );

/// @brief Gets value of parameter.
/// @details Gets parameter one by one without creating param bundle.
/// @since_tizen 3.0
/// @remarks The @a param_value should be released using free().
/// Parameter node         Media streamer node handle
/// Parameter param_name   Param name of node
/// Output parameter param_value Param value of node
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create a node handle by calling media_streamer_node_create(), media_streamer_node_create_src(), or media_streamer_node_create_sink().
/// @pre Get param list to know the param name by calling media_streamer_node_get_params().
/// @see media_streamer_node_create()
/// @see media_streamer_node_create_src()
/// @see media_streamer_node_create_sink()
/// @see media_streamer_node_get_params()
/// @see media_streamer_node_set_param()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_get_param(
  media_streamer_node_h node,
  ffi.Pointer<ffi.Char> param_name,
  ffi.Pointer<ffi.Pointer<ffi.Char>> param_value,
) =>
    tizenCapiMediaStreamer.media_streamer_node_get_param(
      node,
      param_name,
      param_value,
    );

/// @brief Gets node parameter list.
/// @since_tizen 3.0
/// @remarks The @a param_list should be released using bundle_free().\n
/// Refer to the "Parameter information of node" in this file to get info.
/// Parameter  node         Media streamer node handle
/// Output parameter param_list   Key value array of media streamer node parameters
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create a node handle by calling media_streamer_node_create(), media_streamer_node_create_src(), or media_streamer_node_create_sink().
/// @post Set params which are needed to set by calling media_streamer_node_set_params() or media_streamer_node_set_param().
/// @see media_streamer_node_create()
/// @see media_streamer_node_create_src()
/// @see media_streamer_node_create_sink()
/// @see media_streamer_node_set_params()
/// @see media_streamer_node_set_param()
/// @see #bundle
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_get_params(
  media_streamer_node_h node,
  ffi.Pointer<ffi.Pointer<bundle>> param_list,
) =>
    tizenCapiMediaStreamer.media_streamer_node_get_params(
      node,
      param_list,
    );

/// @brief Links two media streamer nodes.
/// @since_tizen 3.0
/// @remarks Pads are node's input and output, where you can connect other nodes.\n
/// (@a node1) - (@a node2)\n
/// @a node1 and @a node2 are determined relatively.\n
/// In case of (A)-(B)-(C),\n
/// (B) can be @a node2 with (A) or (B) can be @a node1 with (C).\n
/// However, source type node is always @a node1 and sink type node is always @a node2.\n
/// (A) is source type node and it should be @a node1.\n
/// (C) is sink type node and it should be @a node2.
/// Parameter node1     Media streamer node handle which has the @a src_pad_name pad
/// Parameter src_pad_name  The name of the source pad of the @a node1
/// Parameter node2     Media streamer node handle which has the @a sink_pad_name pad
/// Parameter sink_pad_name The name of the sink pad of the @a node2
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create node handles by calling media_streamer_node_create(), media_streamer_node_create_src(), or media_streamer_node_create_sink().
/// And add the nodes into streamer by calling media_streamer_node_add().
/// @see media_streamer_node_create()
/// @see media_streamer_node_create_src()
/// @see media_streamer_node_create_sink()
/// @see media_streamer_node_add()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_link(
  media_streamer_node_h node1,
  ffi.Pointer<ffi.Char> src_pad_name,
  media_streamer_node_h node2,
  ffi.Pointer<ffi.Char> sink_pad_name,
) =>
    tizenCapiMediaStreamer.media_streamer_node_link(
      node1,
      src_pad_name,
      node2,
      sink_pad_name,
    );

/// @brief Pulls packet from custom sink node.
/// @details This function can be called only for #MEDIA_STREAMER_NODE_SINK_TYPE_CUSTOM type node.
/// @since_tizen 3.0
/// @remarks The @a packet should be released using media_packet_destroy().
/// Parameter sink      Media streamer sink node handle
/// Output parameter packet   Media packet handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create a sink node handle by calling media_streamer_node_create_sink().
/// @pre Set media_streamer_sink_data_ready_cb() by calling media_streamer_sink_set_data_ready_cb().
/// @see #media_packet_h
/// @see media_streamer_node_create_sink()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_pull_packet(
  media_streamer_node_h sink,
  ffi.Pointer<media_packet_h> packet,
) =>
    tizenCapiMediaStreamer.media_streamer_node_pull_packet(
      sink,
      packet,
    );

/// @brief Pushes packet into custom source node.
/// @details This function can be called only for #MEDIA_STREAMER_NODE_SRC_TYPE_CUSTOM type node.
/// @since_tizen 3.0
/// Parameter src       Media streamer source node handle
/// Parameter packet    Media packet handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a source node handle by calling media_streamer_node_create_src().
/// @pre The media streamer state must be set to #MEDIA_STREAMER_STATE_IDLE at least.
/// @see #media_packet_h
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_push_packet(
  media_streamer_node_h src,
  media_packet_h packet,
) =>
    tizenCapiMediaStreamer.media_streamer_node_push_packet(
      src,
      packet,
    );

/// @brief Removes media streamer node from streamer.
/// @since_tizen 3.0
/// @remarks To remove node without error posting, the state of streamer should be #MEDIA_STREAMER_STATE_IDLE.\n
/// If the node is linked, it will be unlinked before removing.
/// Parameter streamer    Media streamer handle
/// Parameter node        Media streamer node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Add node to streamer by calling media_streamer_node_add().
/// @see media_streamer_node_add()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_remove(
  media_streamer_h streamer,
  media_streamer_node_h node,
) =>
    tizenCapiMediaStreamer.media_streamer_node_remove(
      streamer,
      node,
    );

/// @brief Sets a callback function to be invoked when a source pad of @a node is ready to give decoded data.
/// @since_tizen 6.0
/// @remarks The available type of @a node for this function is #MEDIA_STREAMER_NODE_TYPE_WEBRTC.
/// Parameter node      Media streamer node handle
/// Parameter callback  The decoded ready callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media streamer node handle by calling media_streamer_node_create().
/// @post media_streamer_node_decoded_ready_cb() will be invoked.
/// @see media_streamer_node_unset_decoded_ready_cb()
/// @see media_streamer_node_decoded_ready_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_set_decoded_ready_cb(
  media_streamer_node_h node,
  media_streamer_node_decoded_ready_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_node_set_decoded_ready_cb(
      node,
      callback,
      user_data,
    );

/// @brief Sets media format for pad of media streamer node.
/// @since_tizen 3.0
/// Parameter node        Media streamer node handle
/// Parameter pad_name    Pad name
/// Parameter fmt         Media format handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create a node handle by calling media_streamer_node_create(), media_streamer_node_create_src(), or media_streamer_node_create_sink().
/// @pre Get pad name by calling media_streamer_node_get_pad_name().
/// @see #media_format_h
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_set_pad_format(
  media_streamer_node_h node,
  ffi.Pointer<ffi.Char> pad_name,
  media_format_h fmt,
) =>
    tizenCapiMediaStreamer.media_streamer_node_set_pad_format(
      node,
      pad_name,
      fmt,
    );

/// @brief Sets single parameter of node.
/// @details Sets parameter one by one without creating param bundle.
/// @since_tizen 3.0
/// @remarks The mediastorage privilege(%http://tizen.org/privilege/mediastorage) should be added if any video/audio files are written in the internal storage devices.\n
/// The externalstorage privilege(%http://tizen.org/privilege/externalstorage) should be added if any video/audio files are written in the external storage devices.
/// Parameter node        Media streamer node handle
/// Parameter param_name  Param name of node
/// Parameter param_value Param value of node
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create a node handle by calling media_streamer_node_create(), media_streamer_node_create_src(), or media_streamer_node_create_sink().
/// @pre Get param list to set by calling media_streamer_node_get_params().
/// @see media_streamer_node_create()
/// @see media_streamer_node_create_src()
/// @see media_streamer_node_create_sink()
/// @see media_streamer_node_get_params()
/// @see media_streamer_node_get_param()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_set_param(
  media_streamer_node_h node,
  ffi.Pointer<ffi.Char> param_name,
  ffi.Pointer<ffi.Char> param_value,
) =>
    tizenCapiMediaStreamer.media_streamer_node_set_param(
      node,
      param_name,
      param_value,
    );

/// @brief Sets parameters of node.
/// @details Many parameters can be set at one time all together by using bundle.
/// @since_tizen 3.0
/// @remarks The mediastorage privilege(%http://tizen.org/privilege/mediastorage) should be added if any video/audio files are written in the internal storage devices.\n
/// The externalstorage privilege(%http://tizen.org/privilege/externalstorage) should be added if any video/audio files are written in the external storage devices.
/// Parameter node        Media streamer node handle
/// Parameter param_list  Key value array of media streamer node parameters
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre Create a node handle by calling media_streamer_node_create(), media_streamer_node_create_src(), or media_streamer_node_create_sink().
/// @pre Get param list to set by calling media_streamer_node_get_params().
/// @see media_streamer_node_create()
/// @see media_streamer_node_create_src()
/// @see media_streamer_node_create_sink()
/// @see media_streamer_node_get_params()
/// @see #bundle
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_set_params(
  media_streamer_node_h node,
  ffi.Pointer<bundle> param_list,
) =>
    tizenCapiMediaStreamer.media_streamer_node_set_params(
      node,
      param_list,
    );

/// @brief Unsets the decoded ready callback function.
/// @since_tizen 6.0
/// Parameter node    Media streamer node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see media_streamer_node_set_decoded_ready_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_node_unset_decoded_ready_cb(
  media_streamer_node_h node,
) =>
    tizenCapiMediaStreamer.media_streamer_node_unset_decoded_ready_cb(
      node,
    );

/// @brief Pauses the media streamer.
/// @since_tizen 3.0
/// Parameter streamer     Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre The media streamer state must be set to #MEDIA_STREAMER_STATE_PLAYING.
/// @post The media streamer state will be #MEDIA_STREAMER_STATE_PAUSED.
/// @see media_streamer_create()
/// @see media_streamer_play()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_pause(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_pause(
      streamer,
    );

/// @brief Sets media streamer state to #MEDIA_STREAMER_STATE_PLAYING.
/// @details Start running the current streamer, or resumes it if paused.
/// @since_tizen 3.0
/// Parameter streamer     Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre The media streamer state must be set to #MEDIA_STREAMER_STATE_READY by calling media_streamer_prepare() or
/// set to #MEDIA_STREAMER_STATE_PAUSED by calling media_streamer_pause().
/// @post The media streamer state will be #MEDIA_STREAMER_STATE_PLAYING.
/// @see media_streamer_create()
/// @see media_streamer_pause()
/// @see media_streamer_stop()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_play(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_play(
      streamer,
    );

/// @brief Sets media streamer state to #MEDIA_STREAMER_STATE_READY.
/// @since_tizen 3.0
/// Parameter streamer     Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre The media streamer state must be set to #MEDIA_STREAMER_STATE_IDLE
/// by calling media_streamer_create() or media_streamer_unprepare().
/// @pre At least one source and one sink should be added and linked in the streamer
/// by calling media_streamer_node_create_src(), media_streamer_node_create_sink() and media_streamer_node_link().
/// @post The media streamer state will be #MEDIA_STREAMER_STATE_READY.
/// @see media_streamer_unprepare()
/// @see media_streamer_create()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_prepare(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_prepare(
      streamer,
    );

/// @brief Sets a error callback function to be invoked when an error occurs.
/// @since_tizen 3.0
/// @remarks Following error codes can be delivered by error callback.\n
/// #MEDIA_STREAMER_ERROR_INVALID_OPERATION,\n
/// #MEDIA_STREAMER_ERROR_FILE_NO_SPACE_ON_DEVICE,\n
/// #MEDIA_STREAMER_ERROR_NOT_SUPPORTED,\n
/// #MEDIA_STREAMER_ERROR_CONNECTION_FAILED,\n
/// #MEDIA_STREAMER_ERROR_RESOURCE_CONFLICT
/// Parameter streamer  Media streamer handle
/// Parameter callback  Callback function pointer
/// Parameter user_data The user data passed from the code where
/// media_streamer_set_error_cb() was invoked
/// This data will be accessible from media_streamer_error_cb()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media streamer handle by calling media_streamer_create().
/// @post media_streamer_error_cb() will be invoked.
/// @see media_streamer_unset_error_cb()
/// @see media_streamer_error_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_set_error_cb(
  media_streamer_h streamer,
  media_streamer_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_set_error_cb(
      streamer,
      callback,
      user_data,
    );

/// @brief Sets a callback function to be invoked when the media streamer is interrupted.
/// @since_tizen 3.0
/// Parameter streamer  Media streamer handle
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @post media_streamer_interrupted_cb() will be invoked.
/// @see media_streamer_unset_interrupted_cb()
/// @see #media_streamer_interrupted_code_e
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_set_interrupted_cb(
  media_streamer_h streamer,
  media_streamer_interrupted_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_set_interrupted_cb(
      streamer,
      callback,
      user_data,
    );

/// @brief Changes playback position to the defined time value, asynchronously.
/// @since_tizen 3.0
/// Parameter streamer     Media streamer handle
/// Parameter time         Time in millisecond
/// Parameter accurate     If @c true, it will seek to the accurate position, but this might be considerably slower for some formats,
/// otherwise @c false, it will seek to the nearest keyframe
/// Parameter callback     The callback function to register
/// Parameter user_data    The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE    Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @retval #MEDIA_STREAMER_ERROR_SEEK_FAILED Seek operation failure
/// @pre The media streamer state must be one of these: #MEDIA_STREAMER_STATE_PAUSED, or #MEDIA_STREAMER_STATE_PLAYING.
/// @post It invokes media_streamer_set_play_position() when seek operation completes, if you set a callback.
/// @see media_streamer_get_play_position()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_set_play_position(
  media_streamer_h streamer,
  int time,
  bool accurate,
  media_streamer_position_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_set_play_position(
      streamer,
      time,
      accurate,
      callback,
      user_data,
    );

/// @brief Sets a callback that will be triggered after media streamer state is changed.
/// @since_tizen 3.0
/// Parameter streamer  Media streamer handle
/// Parameter callback  Callback function pointer
/// Parameter user_data The user data passed from the code
/// where media_streamer_set_state_change_cb() was invoked
/// This data will be accessible from media_streamer_state_changed_cb()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media streamer handle by calling media_streamer_create().
/// @post media_streamer_state_changed_cb() will be invoked.
/// @see media_streamer_unset_state_change_cb()
/// @see media_streamer_state_changed_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_set_state_change_cb(
  media_streamer_h streamer,
  media_streamer_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_set_state_change_cb(
      streamer,
      callback,
      user_data,
    );

/// @brief Sets a callback function to be called when the custom sink is ready for data processing.
/// @details This function can be called only for #MEDIA_STREAMER_NODE_SINK_TYPE_CUSTOM sink type node.
/// @since_tizen 3.0
/// Parameter sink      Media streamer sink node handle
/// Parameter callback  Callback function pointer
/// Parameter user_data The user data passed from the code where
/// media_streamer_sink_set_data_ready_cb() was invoked
/// This data will be accessible from media_streamer_sink_data_ready_cb()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media streamer sink handle by calling media_streamer_node_create_sink().
/// @pre Add created media streamer sink node to media streamer by calling media_streamer_node_add().
/// @post media_streamer_sink_data_ready_cb() will be invoked.
/// @see media_streamer_sink_unset_data_ready_cb()
/// @see media_streamer_sink_data_ready_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_sink_set_data_ready_cb(
  media_streamer_node_h sink,
  media_streamer_sink_data_ready_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_sink_set_data_ready_cb(
      sink,
      callback,
      user_data,
    );

/// @brief Sets a callback function to be called when custom sink detect the end-of-stream.
/// @since_tizen 3.0
/// Parameter sink      Media streamer sink node handle
/// Parameter callback  Callback function pointer
/// Parameter user_data The user data passed from the code where
/// media_streamer_sink_set_eos_cb() was invoked.
/// This data will be accessible from media_streamer_sink_eos_cb()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media streamer sink handle by calling media_streamer_node_create_sink().
/// @pre Add created media streamer sink node to media streamer by calling media_streamer_node_add().
/// @post media_streamer_sink_eos_cb() will be invoked.
/// @see media_streamer_sink_unset_eos_cb()
/// @see media_streamer_sink_eos_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_sink_set_eos_cb(
  media_streamer_node_h sink,
  media_streamer_sink_eos_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_sink_set_eos_cb(
      sink,
      callback,
      user_data,
    );

/// @brief Unsets the sink data ready callback function.
/// @since_tizen 3.0
/// Parameter sink    Media streamer sink node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see media_streamer_sink_set_data_ready_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_sink_unset_data_ready_cb(
  media_streamer_node_h sink,
) =>
    tizenCapiMediaStreamer.media_streamer_sink_unset_data_ready_cb(
      sink,
    );

/// @brief Unsets the sink end-of-stream callback function.
/// @since_tizen 3.0
/// Parameter sink    Media streamer sink node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see media_streamer_sink_set_eos_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_sink_unset_eos_cb(
  media_streamer_node_h sink,
) =>
    tizenCapiMediaStreamer.media_streamer_sink_unset_eos_cb(
      sink,
    );

/// @brief Sets a callback function to be invoked when buffer underrun or overflow is occurred.
/// @details This function can be called only for #MEDIA_STREAMER_NODE_SRC_TYPE_CUSTOM source type node.
/// @since_tizen 3.0
/// @remarks This function is used for media stream playback only.
/// Parameter src       Media streamer source node handle
/// Parameter callback  The buffer status callback function to register
/// Parameter user_data The user data passed from the code where
/// media_streamer_src_set_buffer_status_cb() was invoked
/// This data will be accessible from media_streamer_custom_buffer_status_cb()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media streamer source node handle by calling media_streamer_node_create_src().
/// @pre Add created media streamer source node to media streamer by calling media_streamer_node_add().
/// @post media_streamer_custom_buffer_status_cb() will be invoked.
/// @see media_streamer_src_unset_buffer_status_cb()
/// @see media_streamer_custom_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_src_set_buffer_status_cb(
  media_streamer_node_h src,
  media_streamer_custom_buffer_status_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_src_set_buffer_status_cb(
      src,
      callback,
      user_data,
    );

/// @brief Unsets the source buffer status callback function.
/// @since_tizen 3.0
/// Parameter src    Media streamer source node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see media_streamer_src_set_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_src_unset_buffer_status_cb(
  media_streamer_node_h src,
) =>
    tizenCapiMediaStreamer.media_streamer_src_unset_buffer_status_cb(
      src,
    );

/// @brief Stops the media streamer.
/// @since_tizen 3.0
/// Parameter streamer     Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre The media streamer state must be set to #MEDIA_STREAMER_STATE_PLAYING by calling media_streamer_play() or
/// set to #MEDIA_STREAMER_STATE_PAUSED by calling media_streamer_pause().
/// @post The media streamer state will be #MEDIA_STREAMER_STATE_READY.
/// @see media_streamer_create()
/// @see media_streamer_play()
/// @see media_streamer_pause()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_stop(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_stop(
      streamer,
    );

/// @brief Sets media streamer state to #MEDIA_STREAMER_STATE_IDLE.
/// @details The most recently used media is reset and no longer associated with the media streamer.
/// @since_tizen 3.0
/// Parameter streamer     Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_STREAMER_ERROR_INVALID_STATE Invalid state
/// @pre The media streamer state should be higher than #MEDIA_STREAMER_STATE_IDLE.
/// @post The media streamer state will be #MEDIA_STREAMER_STATE_IDLE.
/// @see media_streamer_prepare()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_unprepare(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_unprepare(
      streamer,
    );

/// @brief Unsets the error callback function.
/// @since_tizen 3.0
/// Parameter streamer  Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see media_streamer_error_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_unset_error_cb(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_unset_error_cb(
      streamer,
    );

/// @brief Unsets the callback function.
/// @since_tizen 3.0
/// Parameter streamer Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see media_streamer_set_interrupted_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_unset_interrupted_cb(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_unset_interrupted_cb(
      streamer,
    );

/// @brief Unsets the state changed callback function.
/// @since_tizen 3.0
/// Parameter streamer  Media streamer handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_STREAMER_ERROR_INVALID_OPERATION Invalid operation
/// @see media_streamer_set_state_change_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_unset_state_change_cb(
  media_streamer_h streamer,
) =>
    tizenCapiMediaStreamer.media_streamer_unset_state_change_cb(
      streamer,
    );

/// @brief Sets a callback function to be invoked when WebRTC node needs to send a message to the remote peer of WebRTC connection.
/// @details This function can be called only for #MEDIA_STREAMER_NODE_TYPE_WEBRTC type node.
/// @since_tizen 6.0
/// Parameter webrtc    Media streamer WebRTC node handle
/// Parameter callback  The WebRTC message callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Create a media streamer WebRTC node handle by calling media_streamer_node_create().
/// @post media_streamer_webrtc_message_cb() will be invoked.
/// @see media_streamer_webrtc_node_unset_message_cb()
/// @see media_streamer_webrtc_message_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_webrtc_node_set_message_cb(
  media_streamer_node_h webrtc,
  media_streamer_webrtc_message_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaStreamer.media_streamer_webrtc_node_set_message_cb(
      webrtc,
      callback,
      user_data,
    );

/// @brief Unsets the WebRTC message callback function.
/// @since_tizen 6.0
/// Parameter webrtc    Media streamer WebRTC node handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_STREAMER_ERROR_NONE Successful
/// @retval #MEDIA_STREAMER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see media_streamer_webrtc_node_set_message_cb()
///
/// Module getter: `tizenCapiMediaStreamer`.
int media_streamer_webrtc_node_unset_message_cb(
  media_streamer_node_h webrtc,
) =>
    tizenCapiMediaStreamer.media_streamer_webrtc_node_unset_message_cb(
      webrtc,
    );

