// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaCodec`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-codec.so.0`.
///
/// Multimedia / Media Codec.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_codec;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Sets the codec type and codec default info via media format.
/// @details Sets the value via media format instead of mediacodec_set_codec(), mediacodec_set_venc_info(),
/// mediacodec_set_vdec_info(), mediacodec_set_aenc_info(), and mediacodec_set_adec_info().
/// @since_tizen 4.0
/// @remarks When using the @a format parameter from the output of the media demuxer, you can use media format via media_packet_get_format().
/// Otherwise, you must set the following values after creating media format.
/// Set the audio or video codec type via media_format_set_video_mime() or media_format_set_audio_mime().
/// For video decoding, width, height must be set via media_format_set_video_width() and media_format_set_video_height().
/// For video encoding, width, height, target bitrate, and frame rate must be set via media_format_set_video_avg_bps() and media_format_set_video_frame_rate().
/// For audio decoding, samplerate, channel, and bit must be set via media_format_set_audio_samplerate(), media_format_set_audio_channel() and media_format_set_audio_bit().
/// For audio encoding, samplerate, channel, bit, and bitrate must be set via media_format_set_audio_avg_bps().\n
/// If this codec is to be used as a decoder, pass the #MEDIACODEC_DECODER flag.
/// If this codec is to be used as an encoder, pass the #MEDIACODEC_ENCODER flag.\n
/// The software codec is used as default setting (#MEDIACODEC_SUPPORT_TYPE_SW) if user doesn't set hardware flag.
/// If you wants to use h/w decoder, you needs to pass the #MEDIACODEC_DECODER | #MEDIACODEC_SUPPORT_TYPE_HW.
/// Parameter mediacodec The mediacodec handle
/// Parameter format     The #media_format_h of input data
/// Parameter flags      The encoding/decoding scheme,
/// values of #mediacodec_support_type_e combined with bitwise 'or'
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_CODEC_NOT_FOUND Unsupported codec
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @pre The media format has been created and the required values for configuration have been set.
/// @see media_format_set_video_mime()
/// @see media_format_set_audio_mime()
/// @see media_format_set_video_width()
/// @see media_format_set_video_height()
/// @see media_format_set_video_avg_bps()
/// @see media_format_set_video_frame_rate()
/// @see media_format_set_audio_channel()
/// @see media_format_set_audio_samplerate()
/// @see media_format_set_audio_bit()
/// @see media_format_set_audio_avg_bps()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_configure_from_media_format(
  mediacodec_h mediacodec,
  media_format_h format,
  int flags,
) =>
    tizenCapiMediaCodec.mediacodec_configure_from_media_format(
      mediacodec,
      format,
      flags,
    );

/// @brief Creates a mediacodec handle for decoding/encoding.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks you must release @a mediacodec using mediacodec_destroy().\n
/// Although you can create multiple mediacodec handles at the same time,
/// the mediacodec cannot guarantee proper operation because of limited resources, like
/// audio or display device.
///
/// Output parameter mediacodec  A new handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_create(
  ffi.Pointer<mediacodec_h> mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_create(
      mediacodec,
    );

/// @brief Destroys the mediacodec handle and releases all its resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks To completely shutdown the mediacodec operation, call this function with a valid player handle from any
/// mediacodec
///
/// Parameter mediacodec The handle to mediacodec to be destroyed.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_destroy(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_destroy(
      mediacodec,
    );

/// @brief Flushes both input and output buffers.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter mediacodec The handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_flush_buffers(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_flush_buffers(
      mediacodec,
    );

/// @brief Retrieves all supported codecs by invoking callback function once for each supported codecs.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter callback   The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @see mediacodec_supported_codec_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_foreach_supported_codec(
  mediacodec_h mediacodec,
  mediacodec_supported_codec_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCodec.mediacodec_foreach_supported_codec(
      mediacodec,
      callback,
      user_data,
    );

/// @brief Gets the decoded or encoded packet from the output queue.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a packet should be released using media_packet_destroy().
/// Parameter mediacodec The handle to mediacodec
/// Output parameter packet    The current output of the decoder/encoder.
/// this function passed decoded/encoded frame to output queue.
/// Parameter timeOutUs  The timeout in microseconds. \n
/// The input buffer wait up to "timeOutUs" microseconds.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_get_output(
  mediacodec_h mediacodec,
  ffi.Pointer<media_packet_h> packet,
  int timeOutUs,
) =>
    tizenCapiMediaCodec.mediacodec_get_output(
      mediacodec,
      packet,
      timeOutUs,
    );

/// @brief Gets the media packet pool allocated for recycling media packets.
/// @details The user can get the pool allocated with the number of packets are required to be used in codecs.\n
/// It is recommended to use media packet pool for better stability and performance.
/// @since_tizen 3.0
/// @remarks The @a pool should be released using media_packet_pool_deallocate() and destroyed using media_packet_pool_destroy().
/// Parameter  mediacodec The mediacodec handle
/// Output parameter pool       The allocated pool handle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION The user calls mediacodec_get_packet_pool() before calling mediacodec_prepare().
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @pre mediacodec_get_packet_pool() should be called after calling mediacodec_prepare().
/// @post If the pool is used, media_packet_pool_deallocate() and media_packet_pool_destroy() should be called.
/// @see media_packet_pool_acquire_packet()
/// @see media_packet_pool_release_packet()
/// @see media_packet_pool_deallocate()
/// @see media_packet_pool_destroy()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_get_packet_pool(
  mediacodec_h mediacodec,
  ffi.Pointer<media_packet_pool_h> pool,
) =>
    tizenCapiMediaCodec.mediacodec_get_packet_pool(
      mediacodec,
      pool,
    );

/// @brief Verifies whether encoding can be performed with codec_type or not.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter  mediacodec   The handle to mediacodec
/// Parameter  codec_type   The identifier of the codec type of the encoder.
/// Parameter  encoder      Whether the encoder or decoder : (@c true = encoder, @c false = decoder).
/// Output parameter support_type (@c #MEDIACODEC_SUPPORT_TYPE_HW = mediacodec can be performed with hardware codec, @c #MEDIACODEC_SUPPORT_TYPE_SW = mediacodec can be performed with software codec)
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @code
/// #include <media_codec.h>
/// mediacodec_h mediacodec;
/// mediacodec_support_type_e type;
/// mediacodec_codec_type_e codec_type = MEDIACODEC_H264;
///
/// mediacodec_create(&mediacodec);
/// mediacodec_get_supported_type(mediacodec, codec_type, 1, &type);
///
/// if(type == MEDIACODEC_SUPPORT_TYPE_HW)
/// // only h/w supported
/// else if (type == MEDIACODEC_SUPPORT_TYPE_SW)
/// // only s/w supported
/// else if (type == (MEDIACODEC_SUPPORT_TYPE_HW|MEDIACODEC_SUPPORT_TYPE_SW)
/// // both supported
///
/// mediacodec_set_codec(mediacodec, codec_type, MEDIACODEC_ENCODER | MEDIACODEC_SUPPORT_TYPE_HW);
/// @endcode
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_get_supported_type(
  mediacodec_h mediacodec,
  int codec_type,
  bool encoder,
  ffi.Pointer<ffi.Int> support_type,
) =>
    tizenCapiMediaCodec.mediacodec_get_supported_type(
      mediacodec,
      codec_type,
      encoder,
      support_type,
    );

/// @brief Prepares @a mediacodec for encoding/decoding.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @retval #MEDIACODEC_ERROR_RESOURCE_OVERLOADED Exceed the instance limits (Since 5.0)
/// @retval #MEDIACODEC_ERROR_INTERNAL Internal error (Since 5.0)
/// @pre The mediacodec should call mediacodec_set_codec()and mediacodec_set_vdec_info()/mediacodec_set_venc_info() before calling mediacodec_prepare()
/// If the decoder is set by mediacodec_set_codec(), mediacodec_set_vdec_info() should be called. If the encoder is set by
/// mediacodec_set_codec(), mediacodec_set_venc_info() should be called.
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_prepare(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_prepare(
      mediacodec,
    );

/// @brief Decodes/Encodes a packet. The function passed undecoded/unencoded packet to the input queue and decode/encode a
/// frame sequentially.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter inbuf      The current input format for the decoder/encoder
/// Parameter timeOutUs  The timeout in microseconds. \n
/// The input buffer wait up to "timeOutUs" microseconds.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_OVERFLOW_INBUFFER Overflow inputbuffer
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_process_input(
  mediacodec_h mediacodec,
  media_packet_h inbuf,
  int timeOutUs,
) =>
    tizenCapiMediaCodec.mediacodec_process_input(
      mediacodec,
      inbuf,
      timeOutUs,
    );

/// @brief Sets the default info for the audio decoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter samplerate The samplerate for audio decoding.
/// Parameter channel    The channels for audio decoding.
/// Parameter bit        The bits resolution for audio decoding.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_adec_info(
  mediacodec_h mediacodec,
  int samplerate,
  int channel,
  int bit,
) =>
    tizenCapiMediaCodec.mediacodec_set_adec_info(
      mediacodec,
      samplerate,
      channel,
      bit,
    );

/// @brief Sets the default info for the audio encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter samplerate The samplerate for audio encoding.
/// Parameter channel    The channels for audio encoding.
/// Parameter bit        The bits resolution for audio encoding.
/// Parameter bitrate  The bitrate for audio encoding.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_aenc_info(
  mediacodec_h mediacodec,
  int samplerate,
  int channel,
  int bit,
  int bitrate,
) =>
    tizenCapiMediaCodec.mediacodec_set_aenc_info(
      mediacodec,
      samplerate,
      channel,
      bit,
      bitrate,
    );

/// @brief Sets a callback function to be invoked when the mediacodec needs more data or has enough data.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter callback   The callback function to register
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @pre mediacodec_set_buffer_status_cb() should be called before mediacodec_preare().
/// @post mediacodec_buffer_status_cb() will be invoked.
/// @see mediacodec_buffer_status_cb()
/// @see mediacodec_unset_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_buffer_status_cb(
  mediacodec_h mediacodec,
  mediacodec_buffer_status_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCodec.mediacodec_set_buffer_status_cb(
      mediacodec,
      callback,
      user_data,
    );

/// @brief Sets the codec type and decoder/encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If this codec is to be used as a decoder, pass the #MEDIACODEC_DECODER flag.
/// If this codec is to be used as an encoder, pass the #MEDIACODEC_ENCODER flag.\n
/// The software codec is used as default setting(#MEDIACODEC_SUPPORT_TYPE_SW) if user doesn't set hardware flag.
/// If user wants to use h/w decoder, user needs to pass the #MEDIACODEC_DECODER | #MEDIACODEC_SUPPORT_TYPE_HW.
/// Parameter mediacodec  The handle of mediacodec
/// Parameter codec_type  The identifier of the codec type of the decoder/encoder
/// Parameter flags  The encoding/decoding scheme, defined by #mediacodec_support_type_e
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_CODEC_NOT_FOUND Codec not found
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_codec(
  mediacodec_h mediacodec,
  int codec_type,
  int flags,
) =>
    tizenCapiMediaCodec.mediacodec_set_codec(
      mediacodec,
      codec_type,
      flags,
    );

/// @brief Sets eos callback the media codec for process, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter callback   The callback function to register
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @pre mediacodec_set_eos_cb() should be called before mediacodec_preare().
/// @post mediacodec_eos_cb() will be invoked.
/// @see mediacodec_eos_cb()
/// @see mediacodec_unset_eos_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_eos_cb(
  mediacodec_h mediacodec,
  mediacodec_eos_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCodec.mediacodec_set_eos_cb(
      mediacodec,
      callback,
      user_data,
    );

/// @brief Sets error callback the media codec for process, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter callback   The callback function to register
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @pre mediacodec_set_error_cb() should be called before mediacodec_preare().
/// @post mediacodec_error_cb() will be invoked.
/// @see mediacodec_error_cb()
/// @see mediacodec_unset_error_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_error_cb(
  mediacodec_h mediacodec,
  mediacodec_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCodec.mediacodec_set_error_cb(
      mediacodec,
      callback,
      user_data,
    );

/// @brief Sets empty buffer callback the media codec for process, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter callback   The callback function to register
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @pre mediacodec_set_input_buffer_used_cb() should be called before mediacodec_preare().
/// @post mediacodec_input_buffer_used_cb() will be invoked.
/// @see mediacodec_input_buffer_used_cb()
/// @see mediacodec_unset_input_buffer_used_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_input_buffer_used_cb(
  mediacodec_h mediacodec,
  mediacodec_input_buffer_used_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCodec.mediacodec_set_input_buffer_used_cb(
      mediacodec,
      callback,
      user_data,
    );

/// @brief Sets output buffer available callback the media codec for process, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter callback   The callback function to register
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @pre mediacodec_set_output_buffer_available_cb() should be called before mediacodec_preare().
/// @post mediacodec_output_buffer_available_cb() will be invoked.
/// @see mediacodec_output_buffer_available_cb()
/// @see mediacodec_unset_output_buffer_available_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_output_buffer_available_cb(
  mediacodec_h mediacodec,
  mediacodec_output_buffer_available_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCodec.mediacodec_set_output_buffer_available_cb(
      mediacodec,
      callback,
      user_data,
    );

/// @brief Sets the default info for the video decoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// Parameter width      The width for video decoding.
/// Parameter height     The height for video decoding.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_vdec_info(
  mediacodec_h mediacodec,
  int width,
  int height,
) =>
    tizenCapiMediaCodec.mediacodec_set_vdec_info(
      mediacodec,
      width,
      height,
    );

/// @brief Sets the default info for the video encoder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The frame rate is the speed of recording and the speed of playback.
/// If user wants the default setting for ratecontrol, set @a target_bits to @c 0.
/// Parameter mediacodec  The handle to mediacodec
/// Parameter width  The width for video encoding.
/// Parameter height  The height for video encoding.
/// Parameter fps  The frame rate in frames per second.
/// Parameter target_bits The target bitrates in bits per second.(a unit of kbit)
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_set_venc_info(
  mediacodec_h mediacodec,
  int width,
  int height,
  int fps,
  int target_bits,
) =>
    tizenCapiMediaCodec.mediacodec_set_venc_info(
      mediacodec,
      width,
      height,
      fps,
      target_bits,
    );

/// @brief Unprepares @a mediacodec for encoding/decoding.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIACODEC_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_unprepare(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_unprepare(
      mediacodec,
    );

/// @brief Unsets the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter mediacodec The handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @see mediacodec_set_buffer_status_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_unset_buffer_status_cb(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_unset_buffer_status_cb(
      mediacodec,
    );

/// @brief unsets eos callback the media codec for process, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @see mediacodec_set_eos_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_unset_eos_cb(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_unset_eos_cb(
      mediacodec,
    );

/// @brief Unsets error callback the media codec for process, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @see mediacodec_set_error_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_unset_error_cb(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_unset_error_cb(
      mediacodec,
    );

/// @brief Unsets input buffer used callback the media codec for process, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @see mediacodec_set_input_buffer_used_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_unset_input_buffer_used_cb(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_unset_input_buffer_used_cb(
      mediacodec,
    );

/// @brief unsets output buffer available callback the media codec for process, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter mediacodec The handle to mediacodec
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIACODEC_ERROR_NONE Successful
/// @retval #MEDIACODEC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIACODEC_ERROR_NOT_SUPPORTED_ON_DEVICE Not supported on device (Since 4.0)
/// @see mediacodec_set_output_buffer_available_cb()
///
/// Module getter: `tizenCapiMediaCodec`.
int mediacodec_unset_output_buffer_available_cb(
  mediacodec_h mediacodec,
) =>
    tizenCapiMediaCodec.mediacodec_unset_output_buffer_available_cb(
      mediacodec,
    );

