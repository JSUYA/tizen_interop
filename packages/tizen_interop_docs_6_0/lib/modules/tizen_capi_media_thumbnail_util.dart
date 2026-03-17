// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaThumbnailUtil`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-thumbnail-util.so`.
///
/// Multimedia / Thumbnail Util.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_thumbnail_util;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @deprecated Deprecated since 5.0.
/// @brief Cancels the thumbnail extraction request for the given media.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks If there is no request to be canceled, this function returns #THUMBNAIL_UTIL_ERROR_INVALID_OPERATION
///
/// Parameter thumb         The media thumbnail info handle
/// Parameter request_id   The generated request id by thumbnail extraction request
///
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #THUMBNAIL_UTIL_ERROR_NONE              Successful
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre It is available before thumbnail_extracted_cb() is called.
/// @see thumbnail_util_extract()
///
/// Module getter: `tizenCapiMediaThumbnailUtil`.
int thumbnail_util_cancel(
  thumbnail_h thumb,
  ffi.Pointer<ffi.Char> request_id,
) =>
    tizenCapiMediaThumbnailUtil.thumbnail_util_cancel(
      thumb,
      request_id,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Creates thumbnail info handle.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The @a thumb info should be released using thumbnail_util_destroy().
///
/// Parameter thumb The handle to thumbnail info
///
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #THUMBNAIL_UTIL_ERROR_NONE Successful
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #THUMBNAIL_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see thumbnail_util_destroy()
///
/// Module getter: `tizenCapiMediaThumbnailUtil`.
int thumbnail_util_create(
  ffi.Pointer<thumbnail_h> thumb,
) =>
    tizenCapiMediaThumbnailUtil.thumbnail_util_create(
      thumb,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Destroys thumbnail info handle.
/// @details The function frees all resources related to the thumbnail info handle. This handle
/// can no longer be used to perform any operations. New thumbnail info handle has to
/// be created before the next usage.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter  thumb  The thumbnail info handle
///
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #THUMBNAIL_UTIL_ERROR_NONE              Successful
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Create a thumbnail info handle by calling thumbnail_util_create().
/// @see thumbnail_util_create()
///
/// Module getter: `tizenCapiMediaThumbnailUtil`.
int thumbnail_util_destroy(
  thumbnail_h thumb,
) =>
    tizenCapiMediaThumbnailUtil.thumbnail_util_destroy(
      thumb,
    );

/// @deprecated Deprecated since 5.0. Use thumbnail_util_extract_to_file() or thumbnail_util_extract_to_buffer() instead.
/// @brief Extracts the thumbnail for the given media, asynchronously.
/// @details This function extracts the thumbnail for given media item and calls registered
/// callback function for completion of extracting the thumbnail.\n
/// You can distinguish generated thumbnails by @a request_id. Therefore, the @a request_id must be maintained until the request is completed. \n
/// And the @a request_id is also used to cancel the request.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a request_id should be released using free(). \n
/// %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage. \n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage. \n
/// If you don't set the size, the thumbnail size will be set default size. Default size is 320x240. \n
/// Color space of the generated thumbnail is BGRA. \n
/// Since 3.0, %http://tizen.org/privilege/content.write privilege is not required. \n
///
/// Parameter thumb     The thumbnail info handle
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// Output parameter request_id The request id for the thumbnail extraction request
///
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #THUMBNAIL_UTIL_ERROR_NONE              Successful
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #THUMBNAIL_UTIL_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre Create a thumbnail info handle by calling thumbnail_util_create(). \n
/// The content path that you want to generate thumbnail must be set by calling thumbnail_util_set_path().
/// @post Thumbnail extraction result except canceled is provided by thumbnail_extracted_cb().
/// @see thumbnail_util_create()
/// @see thumbnail_util_set_path()
/// @see thumbnail_util_set_size()
/// @see thumbnail_extracted_cb()
/// @see thumbnail_util_cancel()
/// @see thumbnail_util_destroy()
///
/// Module getter: `tizenCapiMediaThumbnailUtil`.
int thumbnail_util_extract(
  thumbnail_h thumb,
  thumbnail_extracted_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaThumbnailUtil.thumbnail_util_extract(
      thumb,
      callback,
      user_data,
      request_id,
    );

/// @brief Extracts the thumbnail for the given media into a buffer, synchronously.
/// @details This function creates thumbnails from a given media file. \n
/// The generated thumbnail is returned as a raw data stream.
///
/// @since_tizen 5.0
///
/// @remarks %http://tizen.org/privilege/mediastorage is needed if input or output path points to media storage. \n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path points to external storage. \n
/// The width and height of the thumbnail to be generated cannot exceed 2000. \n
/// The width and height of the thumbnail to be generated cannot exceed the original resolution. \n
/// In the case of video file, color space of the generated thumbnail is RGB. \n
/// In the case of image file, color space of the generated thumbnail is BGRA. \n
/// The @a thumb_buffer should be released using free().
/// Since 5.5, if the width and height of the thumbnail to be generated exceeds the original resolution, the value changes to the original resolution. \n
/// In order to maintain the ratio, the requested size and generated size may be different. (Modify based on short axis)
///
/// Parameter path       The path of the original media file
/// Parameter width      The width of the thumbnail
/// Parameter height     The height of the thumbnail
/// Output parameter thumb_buffer   The raw data of the thumbnail which is generated
/// Output parameter thumb_size     The size of the thumbnail which is generated
/// Output parameter thumb_width    The width of the thumbnail which is generated
/// Output parameter thumb_height   The height of the thumbnail which is generated
///
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #THUMBNAIL_UTIL_ERROR_NONE              Successful
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #THUMBNAIL_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #THUMBNAIL_UTIL_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiMediaThumbnailUtil`.
int thumbnail_util_extract_to_buffer(
  ffi.Pointer<ffi.Char> path,
  int width,
  int height,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> thumb_buffer,
  ffi.Pointer<ffi.Size> thumb_size,
  ffi.Pointer<ffi.UnsignedInt> thumb_width,
  ffi.Pointer<ffi.UnsignedInt> thumb_height,
) =>
    tizenCapiMediaThumbnailUtil.thumbnail_util_extract_to_buffer(
      path,
      width,
      height,
      thumb_buffer,
      thumb_size,
      thumb_width,
      thumb_height,
    );

/// @brief Extracts the thumbnail for the given media into a file, synchronously.
/// @details This function creates thumbnail from a given media file. \n
/// The generated thumbnail is saved in the given thumbnail path. \n
/// The format of the thumbnail file is determined by the extension of the thumbnail path
/// (e.g. path is input.jpg and thumbnail_path is thumbnail.png then thumbnail.png is encoded in the PNG format). \n
/// If the extension is missing or the format is not supported, the thumbnail is encoded in the same format as the given media
/// (e.g. path is input.jpg and thumbnail_path is thumbnail.out then thumbnail.out is encoded in the JPEG format). \n
/// Supported image formats are as follows: \n
/// - GIF, JPEG, PNG, BMP, WBMP \n
/// Video files only support JPEG format thumbnail.
///
/// @since_tizen 5.0
///
/// @remarks %http://tizen.org/privilege/mediastorage is needed if input or output path points to media storage. \n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path points to external storage. \n
/// The width and height of the thumbnail to be generated cannot exceed 2000. \n
/// The width and height of the thumbnail to be generated cannot exceed the original resolution. \n
/// Since 5.5, if the width and height of the thumbnail to be generated exceeds the original resolution, the value changes to the original resolution. \n
/// In order to maintain the ratio, the requested size and generated size may be different. (Modify based on short axis) \n
/// If the parent directory of the thumbnail path to be generated does not exist, an error is returned.
///
/// Parameter path       The path of the original media file
/// Parameter width      The width of the thumbnail
/// Parameter height     The height of the thumbnail
/// Parameter thumbnail_path   The path to save the generated thumbnail
///
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #THUMBNAIL_UTIL_ERROR_NONE              Successful
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #THUMBNAIL_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #THUMBNAIL_UTIL_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiMediaThumbnailUtil`.
int thumbnail_util_extract_to_file(
  ffi.Pointer<ffi.Char> path,
  int width,
  int height,
  ffi.Pointer<ffi.Char> thumbnail_path,
) =>
    tizenCapiMediaThumbnailUtil.thumbnail_util_extract_to_file(
      path,
      width,
      height,
      thumbnail_path,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Sets the path of original media file.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter thumb     The thumbnail info handle
/// Parameter path        The path of the original media file
///
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #THUMBNAIL_UTIL_ERROR_NONE              Successful
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Create a thumbnail info handle by calling thumbnail_util_create().
/// @see thumbnail_util_create()
/// @see thumbnail_util_set_size()
/// @see thumbnail_util_destroy()
///
/// Module getter: `tizenCapiMediaThumbnailUtil`.
int thumbnail_util_set_path(
  thumbnail_h thumb,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiMediaThumbnailUtil.thumbnail_util_set_path(
      thumb,
      path,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Sets the size of thumbnail to be extracted.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks If you don't set the size, the thumbnail size will be set default size. Default size is 320x240. \n
/// If the set width is not a multiple of 8, it can be changed by inner process. the width will be a multiple of 8 greater than the set value.
///
/// Parameter thumb    The thumbnail info handle
/// Parameter width      The width of the thumbnail
/// Parameter height     The height of the thumbnail
///
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #THUMBNAIL_UTIL_ERROR_NONE              Successful
/// @retval #THUMBNAIL_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Create a thumbnail info handle by calling thumbnail_util_create().
/// @see thumbnail_util_create()
/// @see thumbnail_util_set_path()
/// @see thumbnail_util_destroy()
///
/// Module getter: `tizenCapiMediaThumbnailUtil`.
int thumbnail_util_set_size(
  thumbnail_h thumb,
  int width,
  int height,
) =>
    tizenCapiMediaThumbnailUtil.thumbnail_util_set_size(
      thumb,
      width,
      height,
    );

