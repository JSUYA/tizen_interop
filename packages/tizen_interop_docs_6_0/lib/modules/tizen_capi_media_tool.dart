// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaTool`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-tool.so.0`.
///
/// Multimedia / Media Tool.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_tool;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Converts the channels in the @a channel_mask to a positions array.
/// @details The size of the position array is equal to the number of channels,
/// that can be obtained with media_format_get_audio_info().
/// @since_tizen 5.5
/// @remarks  A @a channel_mask with fewer bits set than the number of channels is considered valid.
/// The @a positions should be released with free().
/// Parameter  fmt    The media format handle
/// Parameter  channel_mask    The input channel_mask
/// Output parameter positions    The channel positions array, its length is equal to the number of channels
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @pre The number of channels must be set with media_format_set_audio_channel().
/// @pre The channel should be set before calling media_format_channel_positions_from_mask().
/// @see media_format_set_audio_channel()
/// @see media_format_get_audio_info()
/// @par Example
/// @code
/// int channels;
/// uint64_t channel_mask;
/// media_format_channel_position_e *positions;
///
/// media_format_get_audio_info(fmt, NULL, &channels, NULL, NULL, NULL);
/// positions = malloc(channels * sizeof(media_format_channel_position_e));
/// media_format_channel_positions_from_mask(fmt, channel_mask, &positions);
/// ...
/// free(positions);
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_channel_positions_from_mask(
  media_format_h fmt,
  int channel_mask,
  ffi.Pointer<ffi.Pointer<ffi.Int32>> positions,
) =>
    tizenCapiMediaTool.media_format_channel_positions_from_mask(
      fmt,
      channel_mask,
      positions,
    );

/// @brief Converts the @a positions array to a bitmask.
/// @since_tizen 5.5
/// @remarks  A @a channel_mask_out with fewer bits set than the number of channels is considered valid.
/// Parameter  fmt    The media format handle
/// Parameter  positions    The channel positions array, its lengh is equal to the number of channels
/// Output parameter channel_mask_out    the output channel mask
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @pre The number of channels must be set with media_format_set_audio_channel().
/// @pre The channel should be set before calling media_format_channel_positions_to_mask().
/// @see media_format_set_audio_channel()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_channel_positions_to_mask(
  media_format_h fmt,
  ffi.Pointer<ffi.Int32> positions,
  ffi.Pointer<ffi.Uint64> channel_mask_out,
) =>
    tizenCapiMediaTool.media_format_channel_positions_to_mask(
      fmt,
      positions,
      channel_mask_out,
    );

/// @brief Creates a media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @details	It creates media format. and reference count will be set to 1
/// For destroying #media_format_h handle, use media_format_unref().
/// Output parameter fmt allocated #media_format_h
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_ref()
/// @see media_format_unref()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_create(
  ffi.Pointer<media_format_h> fmt,
) =>
    tizenCapiMediaTool.media_format_create(
      fmt,
    );

/// @brief Gets audio aac header type of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to get audio information
/// Output parameter aac_header_type The #media_format_aac_header_type_e, ex) #MEDIA_FORMAT_AAC_HEADER_ADTS
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_set_audio_aac_header_type()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_audio_aac_header_type(
  media_format_h fmt,
  ffi.Pointer<ffi.Int32> aac_header_type,
) =>
    tizenCapiMediaTool.media_format_get_audio_aac_header_type(
      fmt,
      aac_header_type,
    );

/// @brief Gets audio aac type of media format.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter fmt #media_format_h to get audio information
/// Output parameter is_adts AAC ADTS flag of the audio
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_set_audio_aac_type()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_audio_aac_type(
  media_format_h fmt,
  ffi.Pointer<ffi.Bool> is_adts,
) =>
    tizenCapiMediaTool.media_format_get_audio_aac_type(
      fmt,
      is_adts,
    );

/// @brief Gets the number of bits of information in digital audio using pulse-code modulation (PCM).
/// @since_tizen 5.5
/// Parameter fmt The media format handle
/// Output parameter bit_depth The number of bits of information in each sample
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_set_audio_aac_header_type()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_audio_bit_depth(
  media_format_h fmt,
  ffi.Pointer<ffi.Int> bit_depth,
) =>
    tizenCapiMediaTool.media_format_get_audio_bit_depth(
      fmt,
      bit_depth,
    );

/// @brief Gets audio channel mask of media format.
/// @since_tizen 5.5
/// Parameter fmt The media format handle
/// Output parameter channel_mask The output channel mask
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_set_audio_channel_mask()
/// @see media_format_channel_positions_from_mask()
/// @par Example
/// @code
/// int channels;
/// uint64_t channel_mask;
/// media_format_channel_position_e *positions;
///
/// media_format_get_audio_info(fmt, NULL, &channels, NULL, NULL, NULL);
/// positions = malloc(channels * sizeof(media_format_channel_position_e));
/// media_format_get_audio_channel_mask(fmt, &channel_mask);
/// media_format_channel_positions_from_mask(fmt, channel_mask, &positions);
/// ...
/// free(positions);
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_audio_channel_mask(
  media_format_h fmt,
  ffi.Pointer<ffi.Uint64> channel_mask,
) =>
    tizenCapiMediaTool.media_format_get_audio_channel_mask(
      fmt,
      channel_mask,
    );

/// @brief Gets audio information of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @details   returns mimetype, channels, height, samplerate bps, max bps of this media format.
/// Parameter fmt #media_format_h to get audio information
/// Output parameter mimetype #media_format_mimetype_e , ex) #MEDIA_FORMAT_PCM
/// Output parameter channel channel of the audio
/// Output parameter samplerate sampling rate of the audio
/// Output parameter bit bit resolution of the audio
/// Output parameter avg_bps average bps of the audio
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_set_audio_mime()
/// @see media_format_set_audio_channel()
/// @see media_format_set_audio_samplerate()
/// @see media_format_set_audio_bit()
/// @see media_format_set_audio_avg_bps()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_audio_info(
  media_format_h fmt,
  ffi.Pointer<ffi.Int32> mimetype,
  ffi.Pointer<ffi.Int> channel,
  ffi.Pointer<ffi.Int> samplerate,
  ffi.Pointer<ffi.Int> bit,
  ffi.Pointer<ffi.Int> avg_bps,
) =>
    tizenCapiMediaTool.media_format_get_audio_info(
      fmt,
      mimetype,
      channel,
      samplerate,
      bit,
      avg_bps,
    );

/// @brief Gets container MIME type of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to get container mime type
/// Output parameter mimetype The #media_format_mimetype_e, ex) #MEDIA_FORMAT_CONTAINER_MP4
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_set_container_mime()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_container_mime(
  media_format_h fmt,
  ffi.Pointer<ffi.Int32> mimetype,
) =>
    tizenCapiMediaTool.media_format_get_container_mime(
      fmt,
      mimetype,
    );

/// @brief Gets extra data of media format.
/// @details	The user can get extra data which user sets value via media_format_set_extra().
/// @since_tizen 4.0
/// @remarks The application is responsible for freeing @a extra_data.
/// For description of extra data behavior upon making an object writable,
/// see the description of media_format_make_writable().
/// Parameter  fmt   The media format handle
/// Output parameter extra_data    The extra data to get
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @see media_format_set_extra()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_extra(
  media_format_h fmt,
  ffi.Pointer<ffi.Pointer<ffi.Void>> extra_data,
) =>
    tizenCapiMediaTool.media_format_get_extra(
      fmt,
      extra_data,
    );

/// @brief Gets text track information of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to get text information
/// Output parameter mimetype The #media_format_mimetype_e, ex) #MEDIA_FORMAT_TEXT_MP4
/// Output parameter type The #media_format_text_type_e
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_set_text_mime()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_text_info(
  media_format_h fmt,
  ffi.Pointer<ffi.Int32> mimetype,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiMediaTool.media_format_get_text_info(
      fmt,
      mimetype,
      type,
    );

/// @brief Gets format type of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to get format type
/// Output parameter formattype The #media_format_type_e, ex) #MEDIA_FORMAT_AUDIO
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_type(
  media_format_h fmt,
  ffi.Pointer<ffi.Int32> formattype,
) =>
    tizenCapiMediaTool.media_format_get_type(
      fmt,
      formattype,
    );

/// @brief Gets video frame rate of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to get
/// Output parameter frame_rate The video frame rate
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_video_frame_rate(
  media_format_h fmt,
  ffi.Pointer<ffi.Int> frame_rate,
) =>
    tizenCapiMediaTool.media_format_get_video_frame_rate(
      fmt,
      frame_rate,
    );

/// @brief Gets video information of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @details   returns mimetype, width, height, average bps, max bps of this media format.
/// Parameter fmt #media_format_h to get video information
/// Output parameter mimetype #media_format_mimetype_e , ex) #MEDIA_FORMAT_H264_HP
/// Output parameter width width of the video
/// Output parameter height height of the video
/// Output parameter avg_bps average bps of the video
/// Output parameter max_bps max bps of the video
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_set_video_mime()
/// @see media_format_set_video_width()
/// @see media_format_set_video_height()
/// @see media_format_set_video_avg_bps()
/// @see media_format_set_video_max_bps()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_get_video_info(
  media_format_h fmt,
  ffi.Pointer<ffi.Int32> mimetype,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
  ffi.Pointer<ffi.Int> avg_bps,
  ffi.Pointer<ffi.Int> max_bps,
) =>
    tizenCapiMediaTool.media_format_get_video_info(
      fmt,
      mimetype,
      width,
      height,
      avg_bps,
      max_bps,
    );

/// @brief Checks whether the given media format is little endian.
/// @since_tizen 5.5
/// Parameter  fmt    The media format  handle
/// Output parameter is_little_endian  @c true if the given media format is little endian,
/// @c false if the given media format is big endian
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_mimetype_e
/// @see media_format_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_is_little_endian(
  media_format_h fmt,
  ffi.Pointer<ffi.Bool> is_little_endian,
) =>
    tizenCapiMediaTool.media_format_is_little_endian(
      fmt,
      is_little_endian,
    );

/// @brief Checks whether the #media_format_h is writable or not.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt exist #media_format_h
/// Output parameter is_writable if ref_count is 1, return true. if not, return false
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_make_writable()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_is_writable(
  media_format_h fmt,
  ffi.Pointer<ffi.Bool> is_writable,
) =>
    tizenCapiMediaTool.media_format_is_writable(
      fmt,
      is_writable,
    );

/// @brief Returns a writable copy of #media_format_h.
/// @details If there is only one reference count on fmt, the caller must be the owner,
/// and so this function will return the object unchanged.
/// while, if there is more than one reference count on the object, a new object will be returned.
/// The caller will own a reference to the returned object.
/// In a nutshell, this function unrefs the fmt and refs the out_fmt returned.
/// Don't access fmt after calling this function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If a new object is returned, it will not have its own copy of extra data.
/// The new object's extra data object will be the original object's extra data.
/// Parameter fmt exist #media_format_h , don't access it after calling this function
/// Output parameter out_fmt new copied #media_format_h, the caller is owner of this object
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_is_writable()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_make_writable(
  media_format_h fmt,
  ffi.Pointer<media_format_h> out_fmt,
) =>
    tizenCapiMediaTool.media_format_make_writable(
      fmt,
      out_fmt,
    );

/// @brief Increases reference count of #media_format_h object.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @details    increase ref_count of #media_format_h
/// Parameter fmt exist #media_format_h
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_unref()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_ref(
  media_format_h fmt,
) =>
    tizenCapiMediaTool.media_format_ref(
      fmt,
    );

/// @brief Sets audio aac header type of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to get audio information
/// Parameter aac_header_type The #media_format_aac_header_type_e, ex) #MEDIA_FORMAT_AAC_HEADER_ADTS
/// @pre must set audio MIME type by media_format_set_audio_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_audio_aac_header_type()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_audio_aac_header_type(
  media_format_h fmt,
  int aac_header_type,
) =>
    tizenCapiMediaTool.media_format_set_audio_aac_header_type(
      fmt,
      aac_header_type,
    );

/// @brief Sets audio aac type of media format.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @details   Sets audio aac data type of this media format
/// Parameter fmt #media_format_h to set
/// Parameter is_adts aac adts flag of the audio
/// @pre must set audio MIME type by media_format_set_audio_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_audio_aac_type()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_audio_aac_type(
  media_format_h fmt,
  bool is_adts,
) =>
    tizenCapiMediaTool.media_format_set_audio_aac_type(
      fmt,
      is_adts,
    );

/// @brief Sets audio avg_bps of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set
/// Parameter avg_bps average bit per second of the audio
/// @pre must set audio MIME type by media_format_set_audio_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_audio_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_audio_avg_bps(
  media_format_h fmt,
  int avg_bps,
) =>
    tizenCapiMediaTool.media_format_set_audio_avg_bps(
      fmt,
      avg_bps,
    );

/// @brief Sets audio bit of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @details   Sets audio bit resolution of this media format
/// Parameter fmt #media_format_h to set
/// Parameter bit bit of the audio
/// @pre must set audio MIME type by media_format_set_audio_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_audio_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_audio_bit(
  media_format_h fmt,
  int bit,
) =>
    tizenCapiMediaTool.media_format_set_audio_bit(
      fmt,
      bit,
    );

/// @brief Sets audio channel of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set audio information
/// Parameter channel channel of the audio
/// @pre must set audio MIME type by media_format_set_audio_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_audio_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_audio_channel(
  media_format_h fmt,
  int channel,
) =>
    tizenCapiMediaTool.media_format_set_audio_channel(
      fmt,
      channel,
    );

/// @brief Sets audio channel mask of media format.
/// @since_tizen 5.5
/// Parameter fmt The media format handle
/// Parameter channel_mask The input channel mask
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_audio_channel_mask()
/// @see media_format_channel_positions_to_mask()
/// @par Example
/// @code
/// uint64_t channel_mask;
/// media_format_channel_position_e position[2];
///
/// position[0] = MEDIA_FORMAT_CHANNEL_POSITION_FRONT_LEFT;
/// position[1] = MEDIA_FORMAT_CHANNEL_POSITION_FRONT_RIGHT;
///
/// media_format_channel_positions_to_mask(fmt, position, &channel_mask);
/// media_format_set_audio_channel_mask(fmt, channel_mask);
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_audio_channel_mask(
  media_format_h fmt,
  int channel_mask,
) =>
    tizenCapiMediaTool.media_format_set_audio_channel_mask(
      fmt,
      channel_mask,
    );

/// @brief Sets audio MIME type of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set audio information
/// Parameter mimetype #media_format_mimetype_e , ex) #MEDIA_FORMAT_PCM
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_audio_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_audio_mime(
  media_format_h fmt,
  int mimetype,
) =>
    tizenCapiMediaTool.media_format_set_audio_mime(
      fmt,
      mimetype,
    );

/// @brief Sets audio samplerate of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set
/// Parameter samplerate sampling rate of the audio
/// @pre must set audio MIME type by media_format_set_audio_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_audio_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_audio_samplerate(
  media_format_h fmt,
  int samplerate,
) =>
    tizenCapiMediaTool.media_format_set_audio_samplerate(
      fmt,
      samplerate,
    );

/// @brief Sets container MIME type of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to set
/// Parameter mimetype The #media_format_mimetype_e, ex) #MEDIA_FORMAT_CONTAINER_MP4
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_container_mime()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_container_mime(
  media_format_h fmt,
  int mimetype,
) =>
    tizenCapiMediaTool.media_format_set_container_mime(
      fmt,
      mimetype,
    );

/// @brief Sets extra data of media format.
/// @details	The user can set data that media format does not support.
/// @since_tizen 4.0
/// @remarks The application is responsible for freeing @a extra_data.
/// For description of extra data behavior upon making an object writable,
/// see the description of media_format_make_writable().
/// Parameter fmt   The media format handle
/// Parameter extra_data  The extra data to set
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @see media_format_get_extra()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_extra(
  media_format_h fmt,
  ffi.Pointer<ffi.Void> extra_data,
) =>
    tizenCapiMediaTool.media_format_set_extra(
      fmt,
      extra_data,
    );

/// @brief Sets text MIME type of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to set
/// Parameter mimetype The #media_format_mimetype_e, ex) #MEDIA_FORMAT_TEXT
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_text_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_text_mime(
  media_format_h fmt,
  int mimetype,
) =>
    tizenCapiMediaTool.media_format_set_text_mime(
      fmt,
      mimetype,
    );

/// @brief Sets text type of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to set
/// Parameter type The text type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_text_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_text_type(
  media_format_h fmt,
  int type,
) =>
    tizenCapiMediaTool.media_format_set_text_type(
      fmt,
      type,
    );

/// @brief Sets video avg_bps of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set
/// Parameter avg_bps average bps of the video
/// @pre must set video MIME type by media_format_set_video_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_video_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_video_avg_bps(
  media_format_h fmt,
  int avg_bps,
) =>
    tizenCapiMediaTool.media_format_set_video_avg_bps(
      fmt,
      avg_bps,
    );

/// @brief Sets video frame rate of media format.
/// @since_tizen 3.0
/// Parameter fmt The #media_format_h to set
/// Parameter frame_rate The video frame rate
/// @pre must set video MIME type by media_format_set_video_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_video_frame_rate(
  media_format_h fmt,
  int frame_rate,
) =>
    tizenCapiMediaTool.media_format_set_video_frame_rate(
      fmt,
      frame_rate,
    );

/// @brief Sets video height of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set
/// Parameter height height of the video
/// @pre must set video MIME type by media_format_set_video_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_video_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_video_height(
  media_format_h fmt,
  int height,
) =>
    tizenCapiMediaTool.media_format_set_video_height(
      fmt,
      height,
    );

/// @brief Sets video max_bps of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set
/// Parameter max_bps max bps of the video
/// @pre must set video MIME type by media_format_set_video_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_video_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_video_max_bps(
  media_format_h fmt,
  int max_bps,
) =>
    tizenCapiMediaTool.media_format_set_video_max_bps(
      fmt,
      max_bps,
    );

/// @brief Sets video MIME type of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set
/// Parameter mimetype #media_format_mimetype_e , ex) #MEDIA_FORMAT_H264_HP
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_video_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_video_mime(
  media_format_h fmt,
  int mimetype,
) =>
    tizenCapiMediaTool.media_format_set_video_mime(
      fmt,
      mimetype,
    );

/// @brief Sets video width of media format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt #media_format_h to set
/// Parameter width width of the video
/// @pre must set video MIME type by media_format_set_video_mime()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_get_video_info()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_set_video_width(
  media_format_h fmt,
  int width,
) =>
    tizenCapiMediaTool.media_format_set_video_width(
      fmt,
      width,
    );

/// @brief Decreases reference count of #media_format_h object.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter fmt exist #media_format_h
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_FORMAT_ERROR_NONE Successful
/// @retval #MEDIA_FORMAT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_FORMAT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_FORMAT_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_ref()
///
/// Module getter: `tizenCapiMediaTool`.
int media_format_unref(
  media_format_h fmt,
) =>
    tizenCapiMediaTool.media_format_unref(
      fmt,
    );

/// @brief    Allocates buffer with media packet handle.
/// @details  Before using media_packet_alloc(), media packet handle must be exist.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet   The existing media packet handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_packet_create()
/// @see media_packet_destroy()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_alloc(
  media_packet_h packet,
) =>
    tizenCapiMediaTool.media_packet_alloc(
      packet,
    );

/// @brief    Copies a media packet handle.
/// @details  It re-creates only media packet handle with exist media packet handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @c new_packet must be released by using media_packet_destroy().
/// Parameter   org_packet   The existing media packet handle
/// Parameter   fcb          The media_packet_finalize_cb() to register
/// Parameter   fcb_data     The user data to be passed to the media_packet_finalize_cb() function
/// Output parameter  new_packet   A new handle for media packet
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_packet_destroy()
/// @see media_packet_finalize_cb()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_copy(
  media_packet_h org_packet,
  media_packet_finalize_cb fcb,
  ffi.Pointer<ffi.Void> fcb_data,
  ffi.Pointer<media_packet_h> new_packet,
) =>
    tizenCapiMediaTool.media_packet_copy(
      org_packet,
      fcb,
      fcb_data,
      new_packet,
    );

/// @brief    Creates a media packet handle.
/// @details  It creates only media packet handle without allocated buffer.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @c packet must be released by using media_packet_destroy().
/// Parameter fmt       The allocated #media_format_h by caller
/// Parameter fcb       The media_packet_finalize_cb() to register
/// Parameter fcb_data  The user data to be passed to the media_packet_finalize_cb() function
/// Output parameter packet   A new handle for media packet
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Must have media_format_h instance by media_format_create()
/// @post Must do media_format_unref()
///
/// @see media_packet_destroy()
/// @see media_packet_finalize_cb()
/// @see media_format_unref()
/// @par Example
/// @code
/// #include <media_packet.h>
///
/// {
/// media_format_h fmt;
/// media_packet_h packet;
///
/// media_format_create(&fmt);
/// media_format_set_video_mime(fmt, MEDIA_FORMAT_H264_HP);
/// media_format_set_video_width(fmt, 640);
/// media_format_set_video_height(fmt, 480);
/// media_format_set_video_avg_bps(fmt, 10000000);
/// media_format_set_video_max_bps(fmt, 15000000);
///
/// media_packet_create (fmt, _finalize_callback, fcb_data, &packet);
/// media_format_unref(fmt);
///
/// ...
/// media_packet_destroy(packet);
/// }
///
/// int _finalize_callback(media_packet_h packet, int err, void* userdata)
/// {
/// ...
/// return MEDIA_PACKET_FINALIZE;
/// }
///
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_create(
  media_format_h fmt,
  media_packet_finalize_cb fcb,
  ffi.Pointer<ffi.Void> fcb_data,
  ffi.Pointer<media_packet_h> packet,
) =>
    tizenCapiMediaTool.media_packet_create(
      fmt,
      fcb,
      fcb_data,
      packet,
    );

/// @brief    Creates a media packet handle and allocates buffer.
/// @details  The buffer will be allocated to heap or tbm_surface.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a packet should be released using media_packet_destroy().
/// Parameter  fmt       The allocated #media_format_h by caller
/// Parameter  fcb       The media_packet_finalize_cb() to register
/// Parameter  fcb_data  The user data to be passed to the media_packet_finalize_cb() function
/// Output parameter packet    A new handle for media packet
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Must have media_format_h instance by media_format_create()
/// @post Must do media_format_unref()
///
/// @see media_packet_destroy()
/// @see media_packet_finalize_cb()
/// @see media_format_unref()
/// @par Example
/// @code
/// #include <media_packet.h>
///
/// {
/// media_format_h fmt;
/// media_packet_h packet;
///
/// media_format_create(&fmt);
/// media_format_set_video_mime(fmt, MEDIA_FORMAT_H264_HP);
/// media_format_set_video_width(fmt, 640);
/// media_format_set_video_height(fmt, 480);
/// media_format_set_video_avg_bps(fmt, 10000000);
/// media_format_set_video_max_bps(fmt, 15000000);
///
/// media_packet_create_alloc (fmt, _finalize_callback, fcb_data, &packet);
/// media_format_unref(fmt);
///
/// ...
/// media_packet_destroy(packet);
/// }
///
/// int _finalize_callback(media_packet_h packet, int err, void* userdata)
/// {
/// ...
/// return MEDIA_PACKET_FINALIZE;
/// }
///
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_create_alloc(
  media_format_h fmt,
  media_packet_finalize_cb fcb,
  ffi.Pointer<ffi.Void> fcb_data,
  ffi.Pointer<media_packet_h> packet,
) =>
    tizenCapiMediaTool.media_packet_create_alloc(
      fmt,
      fcb,
      fcb_data,
      packet,
    );

/// @brief    Creates media packet handle with already allocated external buffer.
/// @details It does not support video's #MEDIA_FORMAT_RAW type.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @c packet must be released by using media_packet_destroy().
/// Parameter   fmt       The allocated #media_format_h by caller
/// Parameter   mem_ptr   The memory pointer which is created by external module
/// Parameter   size      The buffer size value to set
/// Parameter   fcb       The media_packet_finalize_cb() to register
/// Parameter   fcb_data  The user data to be passed to the media_packet_finalize_cb() function
/// Output parameter  packet  A new handle for media packet
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Must have media_format_h instance by media_format_create()
/// @post Must do media_format_unref()
///
/// @see media_packet_destroy()
/// @see media_packet_finalize_cb()
/// @see media_format_unref()
/// @par Example
/// @code
/// #include <media_packet.h>
///
/// {
/// media_format_h fmt;
/// media_packet_h packet;
///
/// media_format_create(&fmt);
/// media_format_set_video_mime(fmt, MEDIA_FORMAT_H264_HP);
/// media_format_set_video_width(fmt, 640);
/// media_format_set_video_height(fmt, 480);
/// media_format_set_video_avg_bps(fmt, 10000000);
/// media_format_set_video_max_bps(fmt, 15000000);
///
/// media_packet_create_from_external_memory (fmt, mem_ptr, size,  _finalize_callback, fcb_data, &packet);
/// media_format_unref(fmt);
///
/// ...
/// media_packet_destroy(packet);
/// }
///
/// int _finalize_callback(media_packet_h packet, int err, void* userdata)
/// {
/// ...
/// return MEDIA_PACKET_FINALIZE;
/// }
///
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_create_from_external_memory(
  media_format_h fmt,
  ffi.Pointer<ffi.Void> mem_ptr,
  int size,
  media_packet_finalize_cb fcb,
  ffi.Pointer<ffi.Void> fcb_data,
  ffi.Pointer<media_packet_h> packet,
) =>
    tizenCapiMediaTool.media_packet_create_from_external_memory(
      fmt,
      mem_ptr,
      size,
      fcb,
      fcb_data,
      packet,
    );

/// @brief    Creates media packet handle and allocates buffer with #tbm_surface_h.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @c packet must be released by using media_packet_destroy().
/// Parameter   fmt       The allocated #media_format_h by caller
/// Parameter   surface   The #tbm_surface_h by caller
/// Parameter   fcb       The media_packet_finalize_cb() to register
/// Parameter   fcb_data  The user data to be passed to the media_packet_finalize_cb() function
/// Output parameter  packet  A new handle for media packet
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Must have media_format_h instance by media_format_create()
/// @post Must do media_format_unref()
///
/// @see media_packet_destroy()
/// @see media_packet_finalize_cb()
/// @see media_format_unref()
/// @par Example
/// @code
/// #include <media_packet.h>
///
/// {
/// media_format_h fmt;
/// media_packet_h packet;
///
/// media_format_create(&fmt);
/// media_format_set_video_mime(fmt, MEDIA_FORMAT_H264_HP);
/// media_format_set_video_width(fmt, 640);
/// media_format_set_video_height(fmt, 480);
/// media_format_set_video_avg_bps(fmt, 10000000);
/// media_format_set_video_max_bps(fmt, 15000000);
///
/// media_packet_create_from_tbm_surface (fmt, surface, _finalize_callback, fcb_data, &packet);
/// media_format_unref(fmt);
///
/// ...
/// media_pacekt_destory(packet);
/// }
///
/// int _finalize_callback(media_packet_h packet, int err, void* userdata)
/// {
/// ...
/// return MEDIA_PACKET_FINALIZE;
/// }
///
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_create_from_tbm_surface(
  media_format_h fmt,
  tbm_surface_h surface,
  media_packet_finalize_cb fcb,
  ffi.Pointer<ffi.Void> fcb_data,
  ffi.Pointer<media_packet_h> packet,
) =>
    tizenCapiMediaTool.media_packet_create_from_tbm_surface(
      fmt,
      surface,
      fcb,
      fcb_data,
      packet,
    );

/// @brief Destroys the media packet handle.
/// @details  The registered finalize_callback() function will be invoked to destroy the media packet handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet  The handle to media packet to be destroyed
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_packet_create_alloc()
/// @see media_packet_create()
/// @see media_packet_copy()
/// @see media_packet_create_from_tbm_surface()
/// @see media_packet_create_from_external_memory()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_destroy(
  media_packet_h packet,
) =>
    tizenCapiMediaTool.media_packet_destroy(
      packet,
    );

/// @brief Gets buffer data pointer of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter data     The allocated buffer data pointer
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_buffer_data_ptr(
  media_packet_h packet,
  ffi.Pointer<ffi.Pointer<ffi.Void>> data,
) =>
    tizenCapiMediaTool.media_packet_get_buffer_data_ptr(
      packet,
      data,
    );

/// @brief Gets buffer size of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter size     The buffer size value to get
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_buffer_size(
  media_packet_h packet,
  ffi.Pointer<ffi.Uint64> size,
) =>
    tizenCapiMediaTool.media_packet_get_buffer_size(
      packet,
      size,
    );

/// @brief Gets codec data and the codec data size of media packet.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The @a codec_data should be released using free().
/// Parameter packet   The media packet handle
/// Output parameter codec_data    The codec data to get
/// Output parameter codec_data_size    The codec data size to get
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_codec_data(
  media_packet_h packet,
  ffi.Pointer<ffi.Pointer<ffi.Void>> codec_data,
  ffi.Pointer<ffi.UnsignedInt> codec_data_size,
) =>
    tizenCapiMediaTool.media_packet_get_codec_data(
      packet,
      codec_data,
      codec_data_size,
    );

/// @brief Gets decoding timestamp(dts) of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter dts      The dts in nanoseconds to get
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_dts(
  media_packet_h packet,
  ffi.Pointer<ffi.Uint64> dts,
) =>
    tizenCapiMediaTool.media_packet_get_dts(
      packet,
      dts,
    );

/// @brief Gets duration of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet    The media packet handle
/// Output parameter duration  The duration in nanoseconds to get
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_duration(
  media_packet_h packet,
  ffi.Pointer<ffi.Uint64> duration,
) =>
    tizenCapiMediaTool.media_packet_get_duration(
      packet,
      duration,
    );

/// @brief Gets extra data of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter extra    The extra data to get
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_extra(
  media_packet_h packet,
  ffi.Pointer<ffi.Pointer<ffi.Void>> extra,
) =>
    tizenCapiMediaTool.media_packet_get_extra(
      packet,
      extra,
    );

/// @brief Gets #media_buffer_flags_e of media packet.
/// @since_tizen 3.0
///
/// Parameter packet    The media packet handle
/// Output parameter flags    The #media_buffer_flags_e of media packet to get
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_buffer_flags_e
/// @see media_packet_unset_flags()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_flags(
  media_packet_h packet,
  ffi.Pointer<ffi.Int32> flags,
) =>
    tizenCapiMediaTool.media_packet_get_flags(
      packet,
      flags,
    );

/// @brief Gets #media_format_h of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter fmt      The media format of media packet
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_format_unref()
/// @par Example
/// @code
/// #include <media_packet.h>
///
/// {
/// media_format_h* fmt;
///
/// media_packet_get_format (pakcet, &fmt);
/// ..
///
/// media_format_unref(fmt);
/// ...
/// }
///
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_format(
  media_packet_h packet,
  ffi.Pointer<media_format_h> fmt,
) =>
    tizenCapiMediaTool.media_packet_get_format(
      packet,
      fmt,
    );

/// @brief Gets the number of planes from tbm surface in the given media packet.
/// @details Use only if the media_format_h is #MEDIA_FORMAT_RAW and #MEDIA_FORMAT_VIDEO.
/// It means that media_packet_h's buffer is allocated on tbm_surface.
/// If not sure of that, use media_packet_is_video() and media_packet_is_raw() or media_packet_has_tbm_surface_buffer().
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter num  The number of planes from tbm_surface
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_number_of_video_planes(
  media_packet_h packet,
  ffi.Pointer<ffi.Uint32> num,
) =>
    tizenCapiMediaTool.media_packet_get_number_of_video_planes(
      packet,
      num,
    );

/// @brief Gets presentation timestamp(pts) of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter pts      The pts in nanoseconds to get
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_pts(
  media_packet_h packet,
  ffi.Pointer<ffi.Uint64> pts,
) =>
    tizenCapiMediaTool.media_packet_get_pts(
      packet,
      pts,
    );

/// @brief Gets the rotation method.
/// @since_tizen 5.0
///
/// Parameter packet   The media packet handle
/// Output parameter method  The rotation method
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_rotate_method(
  media_packet_h packet,
  ffi.Pointer<ffi.Int32> method,
) =>
    tizenCapiMediaTool.media_packet_get_rotate_method(
      packet,
      method,
    );

/// @brief Gets TBM surface data of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter surface  The tbm_surface data pointer
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_tbm_surface(
  media_packet_h packet,
  ffi.Pointer<tbm_surface_h> surface,
) =>
    tizenCapiMediaTool.media_packet_get_tbm_surface(
      packet,
      surface,
    );

/// @brief Gets plane data pointer from tbm surface in the given media packet.
/// @details Use only if the media_format_h is #MEDIA_FORMAT_RAW and #MEDIA_FORMAT_VIDEO.
/// It means that media_packet_h's buffer is allocated on tbm_surface.
/// If not sure of that, use media_packet_is_video() and media_packet_is_raw() or media_packet_has_tbm_surface_buffer().
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @c plane_data_ptr must not be released by using free(). Note that It is released by media_packet_destory() or tbm_surface_destroy().
/// Parameter  packet   The media packet handle
/// Parameter  plane_idx   The plane index value
/// Output parameter plane_data_ptr  The plane data pointer from tbm_surface
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_video_plane_data_ptr(
  media_packet_h packet,
  int plane_idx,
  ffi.Pointer<ffi.Pointer<ffi.Void>> plane_data_ptr,
) =>
    tizenCapiMediaTool.media_packet_get_video_plane_data_ptr(
      packet,
      plane_idx,
      plane_data_ptr,
    );

/// @brief Gets stride height from tbm surface in the given media packet.
/// @details Use only if the media_format_h is #MEDIA_FORMAT_RAW and #MEDIA_FORMAT_VIDEO.
/// It means that media_packet_h's buffer is allocated on tbm_surface.
/// If not sure of that, use media_packet_is_video() and media_packet_is_raw() or media_packet_has_tbm_surface_buffer().
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter  packet   The media packet handle
/// Parameter  plane_idx   The plane index value
/// Output parameter stride_height  The stride height value from tbm_surface
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_video_stride_height(
  media_packet_h packet,
  int plane_idx,
  ffi.Pointer<ffi.Int> stride_height,
) =>
    tizenCapiMediaTool.media_packet_get_video_stride_height(
      packet,
      plane_idx,
      stride_height,
    );

/// @brief Gets stride width from tbm surface in the given media packet.
/// @details Use only if the media_format_h is #MEDIA_FORMAT_RAW and #MEDIA_FORMAT_VIDEO.
/// It means that media_packet_h's buffer is allocated on tbm_surface.
/// If not sure of that, use media_packet_is_video() and media_packet_is_raw() or media_packet_has_tbm_surface_buffer().
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter  packet   The media packet handle
/// Parameter  plane_idx   The plane index value
/// Output parameter stride_width  the stride value from tbm_surface
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_get_video_stride_width(
  media_packet_h packet,
  int plane_idx,
  ffi.Pointer<ffi.Int> stride_width,
) =>
    tizenCapiMediaTool.media_packet_get_video_stride_width(
      packet,
      plane_idx,
      stride_width,
    );

/// @brief Checks whether the allocated buffer is tbm surface or not.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter has_tbm_surface  @c true if the given media packet's allocated buffer is tbm surface,
/// otherwise @c false if the given media packet's allocated buffer is not tbm surface
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_has_tbm_surface_buffer(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> has_tbm_surface,
) =>
    tizenCapiMediaTool.media_packet_has_tbm_surface_buffer(
      packet,
      has_tbm_surface,
    );

/// @brief Checks whether the given media packet is for audio.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet    The media packet handle
/// Output parameter is_audio  @c true if the given media packet is for audio,
/// otherwise @c false if the given media packet is not for audio
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_mimetype_e
/// @see media_format_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_is_audio(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> is_audio,
) =>
    tizenCapiMediaTool.media_packet_is_audio(
      packet,
      is_audio,
    );

/// @brief Checks whether the given media packet is codec data.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet            The media packet handle
/// Output parameter is_codec_config  @c true if the given media packet is for codec data,
/// otherwise @c false if the given media packet is not for codec data
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_format_mimetype_e
/// @see media_format_data_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_is_codec_config(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> is_codec_config,
) =>
    tizenCapiMediaTool.media_packet_is_codec_config(
      packet,
      is_codec_config,
    );

/// @brief Checks whether the given media packet is encoded type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet      The media packet handle
/// Output parameter is_encoded  @c true if the given media packet is encoded,
/// otherwise @c false if the given media packet is not encoded
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_format_mimetype_e
/// @see media_format_data_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_is_encoded(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> is_encoded,
) =>
    tizenCapiMediaTool.media_packet_is_encoded(
      packet,
      is_encoded,
    );

/// @brief Checks whether the given media packet is eos.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet   The media packet handle
/// Output parameter is_eos  @c true if the given media packet is for eos,
/// otherwise @c false if the given media packet is not for eos
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_format_mimetype_e
/// @see media_format_data_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_is_end_of_stream(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> is_eos,
) =>
    tizenCapiMediaTool.media_packet_is_end_of_stream(
      packet,
      is_eos,
    );

/// @brief Checks whether the given media packet is raw type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter is_raw   @c true if the given media packet is for raw video,
/// otherwise @c false if the given media packet is not for raw video
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_format_mimetype_e
/// @see media_format_data_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_is_raw(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> is_raw,
) =>
    tizenCapiMediaTool.media_packet_is_raw(
      packet,
      is_raw,
    );

/// @brief Checks whether the given media packet is sync frame.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter is_sync  @c true if the given media packet is for sync frame,
/// otherwise @c false if the given media packet is not for sync frame
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_format_mimetype_e
/// @see media_format_data_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_is_sync_frame(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> is_sync,
) =>
    tizenCapiMediaTool.media_packet_is_sync_frame(
      packet,
      is_sync,
    );

/// @brief Checks whether the given media packet is for text.
/// @since_tizen 3.0
///
/// Parameter  packet    The media packet handle
/// Output parameter is_text  @c true if the given media packet is for text,
/// otherwise @c false if the given media packet is not for text
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
/// @see media_format_mimetype_e
/// @see media_format_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_is_text(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> is_text,
) =>
    tizenCapiMediaTool.media_packet_is_text(
      packet,
      is_text,
    );

/// @brief Checks whether the given media packet is for video.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter is_video @c true if the given media packet is for video,
/// otherwise @c false if the given media packet is not for video
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_format_mimetype_e
/// @see media_format_type_e
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_is_video(
  media_packet_h packet,
  ffi.Pointer<ffi.Bool> is_video,
) =>
    tizenCapiMediaTool.media_packet_is_video(
      packet,
      is_video,
    );

/// @brief	Acquires a media packet from the media packet pool.
/// @details	It will take a media packet from the queue and block until media packet is released into the pool again.
/// When there are no media packets available, it will be increased to @a max_buffers of given parameter.
///
/// @since_tizen 3.0
///
/// Parameter	pool	The media packet pool handle
/// Output parameter	pkt		The media packet handle
/// Parameter   timeout It indicates the millisecond-timeouts to block
/// while waiting for one of acquired packet to be released.
/// If the value of timeout is -1, the pool blocks indefinitely until media packet into the pool.
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION The user does not allocate the pool.\n
/// The pool should be allocated with media_packet_pool_allocate() before acquiring media packet from the pool.
/// @retval #MEDIA_PACKET_ERROR_NO_AVAILABLE_PACKET No available packet
/// @see media_packet_pool_release_packet()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_acquire_packet(
  media_packet_pool_h pool,
  ffi.Pointer<media_packet_h> pkt,
  int timeout,
) =>
    tizenCapiMediaTool.media_packet_pool_acquire_packet(
      pool,
      pkt,
      timeout,
    );

/// @brief	Allocates the media packet pool.
/// @details It will allocate media packets with @a min_buffers which given to media_packet_pool_set_size().
///
/// @since_tizen 3.0
///
/// Parameter	pool	The allocated pool handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION The user set the invalid format with media_packet_pool_set_format() or set the invalid size with media_packet_pool_set_size().\n
/// The user already allocate the pool.
/// @pre media_packet_pool_set_media_format() and media_pool_set_size() should be called before calling media_packet_pool_allocate()
/// @post The pool will be allocated. When the pool is allocated, media_packet_pool_acquire_packet() can be used to retrieve a packet from the pool.
/// @see media_packet_pool_set_media_format()
/// @see media_packet_pool_set_size()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_allocate(
  media_packet_pool_h pool,
) =>
    tizenCapiMediaTool.media_packet_pool_allocate(
      pool,
    );

/// @brief	Creates a media packet pool to handle the media packets.
/// @details	It creates a media packet pool instance
///
/// @since_tizen 3.0
///
/// @remarks	The @a pool must be released by using packet_pool_destroy().
/// Output parameter pool The media packet pool handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_create(
  ffi.Pointer<media_packet_pool_h> pool,
) =>
    tizenCapiMediaTool.media_packet_pool_create(
      pool,
    );

/// @brief	Deallocates all the media packets.
/// @details	Deallocates the packets allocated with media_packet_pool_allocate().
///
/// @since_tizen 3.0
///
/// Parameter  pool The media packet pool handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION The user does not release all media packets to the pool.
///
/// @pre media packet should be released before calling media_packet_pool_deallocate().
/// @post The pool will be deallocated. media_packet_pool_acquire_packet() calls will return an error.
/// @see media_packet_pool_allocate()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_deallocate(
  media_packet_pool_h pool,
) =>
    tizenCapiMediaTool.media_packet_pool_deallocate(
      pool,
    );

/// @brief	Destroys the media packet pool.
/// @details	Destroys the media packet pool handle and releases all its resources.
///
/// @since_tizen 3.0
///
/// Parameter	 pool	The handle to media packet pool to be destroyed
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION The user does not create media packet pool instance, or not deallocate all media packets with media_packet_pool_deallocate().
///
/// @see media_packet_pool_create()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_destroy(
  media_packet_pool_h pool,
) =>
    tizenCapiMediaTool.media_packet_pool_destroy(
      pool,
    );

/// @brief	Gets the media packet pool size.
/// @details	Gets the configuration values from the pool.
///
/// @since_tizen 3.0
///
/// Parameter	pool	The allocated pool handle
/// Output parameter	min_buffers		The minimum number of buffers to allocate
/// Output parameter	max_buffers		The maximum number of buffers to allocate
/// Output parameter	curr_buffers	The current number of allocated buffers
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @post After the pool has been configured, it can be allocated with media_packet_pool_allocate().
/// @see media_packet_pool_set_size()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_get_size(
  media_packet_pool_h pool,
  ffi.Pointer<ffi.Int> min_buffers,
  ffi.Pointer<ffi.Int> max_buffers,
  ffi.Pointer<ffi.Int> curr_buffers,
) =>
    tizenCapiMediaTool.media_packet_pool_get_size(
      pool,
      min_buffers,
      max_buffers,
      curr_buffers,
    );

/// @brief	Releases the media packet to pool.
/// @details	Rlease a packet back in the pool. It will put the packet back in the queue.
///
/// @since_tizen 3.0
///
/// Parameter  pool The media packet pool handle
/// Parameter  pkt The packet to release, the pkt should have previously been acquired from the pool with media_packet_pool_acquire_packet()
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION The user releases media packet which is not associated with a given pool.
/// @see media_packet_pool_acquire_packet()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_release_packet(
  media_packet_pool_h pool,
  media_packet_h pkt,
) =>
    tizenCapiMediaTool.media_packet_pool_release_packet(
      pool,
      pkt,
    );

/// @brief	Sets the media format for the media packet pool.
///
/// @since_tizen 3.0
///
/// Parameter	pool	The media packet pool handle
/// Parameter	fmt	The #media_format_h allocated by the caller
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Must have media_format_h instance by media_format_create().
/// @post Must do media_format_unref().
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_set_media_format(
  media_packet_pool_h pool,
  media_format_h fmt,
) =>
    tizenCapiMediaTool.media_packet_pool_set_media_format(
      pool,
      fmt,
    );

/// @brief	Sets the media packet pool size.
/// @details	Sets the number of packets to allocate with given parameters.
/// The media packet pool will be allocated with @a min_buffers when media_packet_pool_allocate() is called.
/// When there are no media packets available, it will be increased to @a max_buffers of given parameter.
///
/// @since_tizen 3.0
///
/// Parameter  pool The allocated pool handle
/// Parameter  min_buffers   The minimum number of buffers to allocate
/// Parameter  max_buffers   The maximum number of buffers to allocate
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_OUT_OF_MEMORY Out of memory
/// @post After the pool has been configured, it can be allocated with media_packet_pool_allocate().
/// @see media_packet_pool_get_size()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_pool_set_size(
  media_packet_pool_h pool,
  int min_buffers,
  int max_buffers,
) =>
    tizenCapiMediaTool.media_packet_pool_set_size(
      pool,
      min_buffers,
      max_buffers,
    );

/// @brief Sets buffer size of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Output parameter size     The buffer size value to set
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_set_buffer_size(
  media_packet_h packet,
  int size,
) =>
    tizenCapiMediaTool.media_packet_set_buffer_size(
      packet,
      size,
    );

/// @brief Sets decoding timestamp(dts) of media packet handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  packet   The media packet handle
/// Parameter  dts      The dts in nanoseconds to set
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_set_dts(
  media_packet_h packet,
  int dts,
) =>
    tizenCapiMediaTool.media_packet_set_dts(
      packet,
      dts,
    );

/// @brief Sets duration of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet    The media packet handle
/// Parameter duration  The duration in nanoseconds to set
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_set_duration(
  media_packet_h packet,
  int duration,
) =>
    tizenCapiMediaTool.media_packet_set_duration(
      packet,
      duration,
    );

/// @brief Sets extra data of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet   The media packet handle
/// Parameter extra    The extra data to set
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_set_extra(
  media_packet_h packet,
  ffi.Pointer<ffi.Void> extra,
) =>
    tizenCapiMediaTool.media_packet_set_extra(
      packet,
      extra,
    );

/// @brief Sets #media_buffer_flags_e of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet    The media packet handle
/// Parameter flags    The #media_buffer_flags_e of media packet to set
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_buffer_flags_e
/// @see media_packet_unset_flags()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_set_flags(
  media_packet_h packet,
  int flags,
) =>
    tizenCapiMediaTool.media_packet_set_flags(
      packet,
      flags,
    );

/// @brief Sets #media_format_h of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet   The media packet handle
/// Parameter fmt      The #media_format_h to set
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_format_unref()
/// @par Example
/// @code
/// #include <media_packet.h>
///
/// {
/// media_format_h fmt;
///
/// media_packet_set_format (pakcet, fmt);
/// ..
///
/// media_format_unref(fmt);
/// ...
/// }
///
/// @endcode
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_set_format(
  media_packet_h packet,
  media_format_h fmt,
) =>
    tizenCapiMediaTool.media_packet_set_format(
      packet,
      fmt,
    );

/// @brief Sets presentation timestamp(pts) of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet   The media packet handle
/// Parameter pts      The pts in nanoseconds to set
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_set_pts(
  media_packet_h packet,
  int pts,
) =>
    tizenCapiMediaTool.media_packet_set_pts(
      packet,
      pts,
    );

/// @brief Sets the rotation method.
/// @since_tizen 5.0
///
/// Parameter packet   The media packet handle
/// Parameter method   The rotation method
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_set_rotate_method(
  media_packet_h packet,
  int method,
) =>
    tizenCapiMediaTool.media_packet_set_rotate_method(
      packet,
      method,
    );

/// @brief Unsets #media_buffer_flags_e of media packet.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter packet   The media packet handle
/// Parameter flags    The #media_buffer_flags_e of media packet to unset
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_PACKET_ERROR_NONE              Successful
/// @retval #MEDIA_PACKET_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_PACKET_ERROR_INVALID_OPERATION Invalid operation
///
/// @see media_buffer_flags_e
/// @see media_packet_set_flags()
///
/// Module getter: `tizenCapiMediaTool`.
int media_packet_unset_flags(
  media_packet_h packet,
  int flags,
) =>
    tizenCapiMediaTool.media_packet_unset_flags(
      packet,
      flags,
    );

