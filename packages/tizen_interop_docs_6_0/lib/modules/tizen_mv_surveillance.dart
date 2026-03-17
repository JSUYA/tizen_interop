// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenMvSurveillance`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libmv_surveillance.so`.
///
/// Multimedia / Media Vision Surveillance.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_mv_surveillance;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates surveillance event trigger handle.
///
/// @since_tizen 3.0
/// @remarks List of supported event types can be obtained by
/// mv_surveillance_foreach_supported_event_type() function
/// @remarks You must release @a trigger by using
/// mv_surveillance_event_trigger_destroy()
/// @param in  event_type    Name of the event type to be supported by the
/// @a trigger
/// @param out trigger       A new handle to the event trigger
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_surveillance_event_trigger_destroy()
/// @see mv_surveillance_foreach_supported_event_type()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_event_trigger_create(
  ffi.Pointer<ffi.Char> event_type,
  ffi.Pointer<mv_surveillance_event_trigger_h> trigger,
) =>
    tizenMvSurveillance.mv_surveillance_event_trigger_create(
      event_type,
      trigger,
    );

/// @brief Destroys the surveillance event trigger handle and releases all its
/// resources.
///
/// @since_tizen 3.0
/// @param in trigger    The handle to the event trigger to be destroyed
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_surveillance_event_trigger_create()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_event_trigger_destroy(
  mv_surveillance_event_trigger_h trigger,
) =>
    tizenMvSurveillance.mv_surveillance_event_trigger_destroy(
      trigger,
    );

/// @brief Starts traversing through list of supported event result value names.
///
/// @since_tizen 3.0
/// @remarks Supported event types, event result value names and their
/// descriptions can be found in
/// @ref CAPI_MEDIA_VISION_SURVEILLANCE_EVENT_TYPES documentation
/// section
/// @param in event_type    The name of the event type for which result value
/// names will be passed to the @a callback. Can be
/// set @c NULL. If set @c NULL then all supported
/// event result value names will be traversed
/// @param in callback      The callback function to be called for each
/// supported event result value name
/// @param in user_data     The user data to be passed to the @a callback
/// function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_surveillance_event_result_name_cb()
/// @see mv_surveillance_foreach_supported_event_type()
/// @see mv_surveillance_get_result_value()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_foreach_event_result_name(
  ffi.Pointer<ffi.Char> event_type,
  mv_surveillance_event_result_name_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvSurveillance.mv_surveillance_foreach_event_result_name(
      event_type,
      callback,
      user_data,
    );

/// @brief Starts traversing through list of supported event types.
///
/// @since_tizen 3.0
/// @remarks Supported event types and their descriptions can be found in
/// @ref CAPI_MEDIA_VISION_SURVEILLANCE_EVENT_TYPES documentation
/// section
/// @param in callback     The callback function to be called for each
/// supported event type
/// @param in user_data    The user data to be passed to the @a callback
/// function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_surveillance_event_type_cb()
/// @see mv_surveillance_foreach_event_result_name()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_foreach_supported_event_type(
  mv_surveillance_event_type_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvSurveillance.mv_surveillance_foreach_supported_event_type(
      callback,
      user_data,
    );

/// @brief Gets ROI (Region Of Interest) from the event trigger.
///
/// @since_tizen 3.0
/// @remarks If mv_surveillance_set_event_trigger_roi() has been never
/// called for @a trigger, then @a number_of_points output value will be
/// zero and @a roi pointer will be not changed.
/// @param in  trigger             The handle to the event trigger
/// @param out number_of_points    The number of ROI points
/// @param out roi                 The output array with ROI points
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Event trigger has to be created by
/// mv_surveillance_event_trigger_create() function
///
/// @post Memory for @a roi array must be released
///
/// @see mv_surveillance_event_trigger_h
/// @see mv_surveillance_set_event_trigger_roi()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_get_event_trigger_roi(
  mv_surveillance_event_trigger_h trigger,
  ffi.Pointer<ffi.Int> number_of_points,
  ffi.Pointer<ffi.Pointer<mv_point_s>> roi,
) =>
    tizenMvSurveillance.mv_surveillance_get_event_trigger_roi(
      trigger,
      number_of_points,
      roi,
    );

/// @brief Gets the surveillance event trigger type as character string.
///
/// @since_tizen 3.0
/// @remarks The @a event_type should be freed using free()
/// @param in  trigger       The handle to the event trigger
/// @param out event_type    The pointer to the character string which will be
/// filled by textual name of the event type
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Event trigger has to be created by
/// mv_surveillance_event_trigger_create() function
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_get_event_trigger_type(
  mv_surveillance_event_trigger_h trigger,
  ffi.Pointer<ffi.Pointer<ffi.Char>> event_type,
) =>
    tizenMvSurveillance.mv_surveillance_get_event_trigger_type(
      trigger,
      event_type,
    );

/// @brief Gets result value.
/// @details See the output values names in the event types descriptions located
/// in @ref CAPI_MEDIA_VISION_SURVEILLANCE_EVENT_TYPES documentation
/// section.
///
/// @since_tizen 3.0
/// @remarks The name can be obtained by
/// mv_surveillance_foreach_event_result_name() function
/// @param in result        The handle to the event result
/// @param in name          The name of the value to be gotten
/// @param [in, out] value    The pointer to variable which will be filled
/// by result value. To find the type of @a value
/// please refer to the
/// @ref CAPI_MEDIA_VISION_SURVEILLANCE_EVENT_TYPES
/// documentation section
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Memory for value has to be allocated
///
/// @see #mv_surveillance_event_trigger_h
/// @see mv_surveillance_event_occurred_cb()
/// @see mv_surveillance_subscribe_event_trigger()
/// @see mv_surveillance_unsubscribe_event_trigger()
/// @see mv_surveillance_foreach_supported_event_type()
/// @see mv_surveillance_foreach_event_result_name()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_get_result_value(
  mv_surveillance_result_h result,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Void> value,
) =>
    tizenMvSurveillance.mv_surveillance_get_result_value(
      result,
      name,
      value,
    );

/// @brief Pushes source to the surveillance system to detect events.
/// @details mv_surveillance_event_occurred_cb() will be called when any
/// subscribing event detected.
///
/// @since_tizen 3.0
/// @remarks mv_surveillance_set_event_trigger_roi() function can be used
/// to specify the polygon region where event can be detected only
/// @param in source             The handle to the media source
/// @param in video_stream_id    The identifier of video stream from which
/// @a source is coming
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre To receive surveillance results, some event triggers has to be
/// subscribed by mv_surveillance_subscribe_event_trigger() function
/// before mv_surveillance_push_source() calls
/// @pre Before calling of this method @a source has to be correctly filled.
/// mv_source_fill_by_media_packet(), mv_source_fill_by_buffer()
/// functions can be used to fill @a source
///
/// @see #mv_surveillance_event_trigger_h
/// @see mv_surveillance_event_occurred_cb()
/// @see mv_surveillance_subscribe_event_trigger()
/// @see mv_surveillance_unsubscribe_event_trigger()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_push_source(
  mv_source_h source,
  int video_stream_id,
) =>
    tizenMvSurveillance.mv_surveillance_push_source(
      source,
      video_stream_id,
    );

/// @brief Sets ROI (Region Of Interest) to the event trigger.
/// @details When ROI is set for the event trigger, then event check for this
/// @a trigger will be performed only inside the polygonal region
/// determined by @a roi parameter.
/// If this method has been never called for the @a trigger, then event
/// will be checked for the whole input frame (event check is performed
/// for each mv_surveillance_push_source() function call).
/// It is possible to change the ROI between
/// mv_surveillance_push_source() calls.
///
/// @since_tizen 3.0
/// @param in trigger             The handle to the event trigger
/// @param in number_of_points    The number of ROI points
/// @param in roi                 The input array with ROI points
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Event trigger has to be created by
/// mv_surveillance_event_trigger_create() function
///
/// @see mv_surveillance_event_trigger_h
/// @see mv_surveillance_get_event_trigger_roi()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_set_event_trigger_roi(
  mv_surveillance_event_trigger_h trigger,
  int number_of_points,
  ffi.Pointer<mv_point_s> roi,
) =>
    tizenMvSurveillance.mv_surveillance_set_event_trigger_roi(
      trigger,
      number_of_points,
      roi,
    );

/// @brief Subscribes @a trigger to process sources pushed from video identified
/// by @a video_stream_id.
/// @details When @a trigger is subscribed, then each time when function
/// mv_surveillance_push_source() is called for @a video_stream_id,
/// event occurrence is checked. If this check is successful,
/// @a callback is invoked. Details on occurred event can be obtained
/// using #mv_surveillance_result_h handle from @a callback.
///
/// @since_tizen 3.0
/// @remarks Use mv_surveillance_unsubscribe_event_trigger() function for
/// the same @a trigger and @a video_stream_id parameters to stop
/// subscription.
/// @param in trigger            The handle to the event trigger activating
/// calls of the @a callback function
/// @param in video_stream_id    The identifier of the video stream for which
/// event trigger activation will be checked
/// @param in engine_cfg         The engine configuration of the event
/// @param in callback           Callback to be called each time when event
/// occurrence is detected
/// @param in user_data          The user data to be passed to the @a callback
/// function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @post mv_surveillance_event_occurred_cb() will be called each time
/// @a trigger is activated after mv_surveillance_push_source() call
///
/// @see mv_surveillance_event_trigger_h
/// @see mv_surveillance_unsubscribe_event_trigger()
/// @see mv_surveillance_push_source()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_subscribe_event_trigger(
  mv_surveillance_event_trigger_h trigger,
  int video_stream_id,
  mv_engine_config_h engine_cfg,
  mv_surveillance_event_occurred_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvSurveillance.mv_surveillance_subscribe_event_trigger(
      trigger,
      video_stream_id,
      engine_cfg,
      callback,
      user_data,
    );

/// @brief Unsubscribes @a trigger from the event and stop calling @a video_stream_id.
///
/// @since_tizen 3.0
/// @remarks To start handling trigger activation use
/// mv_surveillance_subscribe_event_trigger().
/// @param in trigger            The handle to the event trigger for which
/// subscription will be stopped
/// @param in video_stream_id    The identifier of the video source for which
/// subscription will be stopped
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre To stop subscription it has to be created earlier with
/// mv_surveillance_subscribe_event_trigger() function
///
/// @see mv_surveillance_event_trigger_h
/// @see mv_surveillance_subscribe_event_trigger()
///
/// Module getter: `tizenMvSurveillance`.
int mv_surveillance_unsubscribe_event_trigger(
  mv_surveillance_event_trigger_h trigger,
  int video_stream_id,
) =>
    tizenMvSurveillance.mv_surveillance_unsubscribe_event_trigger(
      trigger,
      video_stream_id,
    );

