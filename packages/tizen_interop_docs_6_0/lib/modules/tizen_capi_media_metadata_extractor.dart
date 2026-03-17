// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaMetadataExtractor`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-metadata-extractor.so`.
///
/// Multimedia / Metadata Extractor.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_metadata_extractor;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a metadata should be released using metadata_extractor_destroy().
///
/// Parameter metadata The handle to metadata
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see metadata_extractor_destroy()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_create(
  ffi.Pointer<metadata_extractor_h> metadata,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_create(
      metadata,
    );

/// @brief Destroys metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter metadata The handle to metadata
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_OPERATION_FAILED Internal operation failed
///
/// @pre Create a metadata handle by calling metadata_extractor_create().
/// @see metadata_extractor_create()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_destroy(
  metadata_extractor_h metadata,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_destroy(
      metadata,
    );

/// @brief Gets the artwork image in a media file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a artwork and @a mime_type should be released using free(). \n
/// In case of accessing specific path in internal storage or external storage, you may add the privilege for accessing the path. \n
/// For example, if you get the specific path by using storage_get_directory(). you should add privilege %http://tizen.org/privilege/mediastorage or %http://tizen.org/privilege/externalstorage.
///
/// Parameter metadata The handle to metadata
/// Output parameter artwork The encoded artwork image
/// Output parameter size The encoded artwork size
/// Output parameter mime_type The MIME of the artwork
/// @return @c 0 on success, otherwise a negative error value
///
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #METADATA_EXTRACTOR_ERROR_OPERATION_FAILED Internal operation failed
/// @retval #METADATA_EXTRACTOR_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre Set the path to extract by calling metadata_extractor_set_path().
/// @see metadata_extractor_create()
/// @see metadata_extractor_destroy()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_get_artwork(
  metadata_extractor_h metadata,
  ffi.Pointer<ffi.Pointer<ffi.Void>> artwork,
  ffi.Pointer<ffi.Int> size,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mime_type,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_get_artwork(
      metadata,
      artwork,
      size,
      mime_type,
    );

/// @brief Gets the frame of a video media file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a frame should be released using free().
/// In case of accessing specific path in internal storage or external storage, you may add the privilege for accessing the path. \n
/// For example, if you get the specific path by using storage_get_directory(). you should add privilege %http://tizen.org/privilege/mediastorage or %http://tizen.org/privilege/externalstorage.
///
/// Parameter metadata The handle to metadata
/// Output parameter frame The raw frame data in RGB888
/// Output parameter size The frame data size
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #METADATA_EXTRACTOR_ERROR_OPERATION_FAILED Internal operation failed
/// @retval #METADATA_EXTRACTOR_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre Set the path to extract by calling metadata_extractor_set_path().
/// @see metadata_extractor_create()
/// @see metadata_extractor_destroy()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_get_frame(
  metadata_extractor_h metadata,
  ffi.Pointer<ffi.Pointer<ffi.Void>> frame,
  ffi.Pointer<ffi.Int> size,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_get_frame(
      metadata,
      frame,
      size,
    );

/// @brief Gets the frame of a video media.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a frame should be released using free().
/// In case of accessing specific path in internal storage or external storage, you may add the privilege for accessing the path. \n
/// For example, if you get the specific path by using storage_get_directory(). you should add privilege %http://tizen.org/privilege/mediastorage or %http://tizen.org/privilege/externalstorage.
///
/// Parameter metadata The handle to metadata
/// Parameter timestamp The timestamp in milliseconds
/// Parameter is_accurate If @c true the user can get an accurate frame for the given timestamp,\n
/// otherwise @c false if the user can only get the nearest i-frame of the video rapidly
/// Output parameter frame The raw frame data in RGB888
/// Output parameter size The frame data size
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #METADATA_EXTRACTOR_ERROR_OPERATION_FAILED Internal operation failed
/// @retval #METADATA_EXTRACTOR_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre Set the path to extract by calling metadata_extractor_set_path().
/// @see metadata_extractor_create()
/// @see metadata_extractor_destroy()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_get_frame_at_time(
  metadata_extractor_h metadata,
  int timestamp,
  bool is_accurate,
  ffi.Pointer<ffi.Pointer<ffi.Void>> frame,
  ffi.Pointer<ffi.Int> size,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_get_frame_at_time(
      metadata,
      timestamp,
      is_accurate,
      frame,
      size,
    );

/// @brief Gets metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a value should be released using free(). \n
/// In case of accessing specific path in internal storage or external storage, you may add the privilege for accessing the path. \n
/// For example, if you get the specific path by using storage_get_directory(). you should add privilege %http://tizen.org/privilege/mediastorage or %http://tizen.org/privilege/externalstorage.
///
/// Parameter metadata The handle to metadata
/// Parameter attribute The key attribute name to get
/// Output parameter value The value of the attribute
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #METADATA_EXTRACTOR_ERROR_OPERATION_FAILED Internal operation failed
/// @retval #METADATA_EXTRACTOR_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre Set the path to extract by calling metadata_extractor_set_path().
/// @see metadata_extractor_create()
/// @see metadata_extractor_destroy()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_get_metadata(
  metadata_extractor_h metadata,
  int attribute,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_get_metadata(
      metadata,
      attribute,
      value,
    );

/// @brief Gets the synclyrics of a media file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a lyrics should be released using free().
/// In case of accessing specific path in internal storage or external storage, you may add the privilege for accessing the path. \n
/// For example, if you get the specific path by using storage_get_directory(). you should add privilege %http://tizen.org/privilege/mediastorage or %http://tizen.org/privilege/externalstorage.
///
/// Parameter metadata The handle to metadata
/// Parameter index The index of time/lyrics to set
/// Output parameter time_stamp The time information of the index
/// Output parameter lyrics The lyrics of the index
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_OPERATION_FAILED Internal operation failed
/// @retval #METADATA_EXTRACTOR_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre Set the path to extract by calling metadata_extractor_set_path().
/// @pre Get the time/lyrics set number by calling metadata_extractor_get_metadata(METADATA_SYNCLYRICS_NUM).
/// @see metadata_extractor_create()
/// @see metadata_extractor_destroy()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_get_synclyrics(
  metadata_extractor_h metadata,
  int index,
  ffi.Pointer<ffi.UnsignedLong> time_stamp,
  ffi.Pointer<ffi.Pointer<ffi.Char>> lyrics,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_get_synclyrics(
      metadata,
      index,
      time_stamp,
      lyrics,
    );

/// @brief Sets the buffer to extract.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter metadata The handle to metadata
/// Parameter buffer The buffer to extract metadata
/// Parameter size The buffer size
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_OPERATION_FAILED Internal operation failed
///
/// @pre Create a metadata handle by calling metadata_extractor_create().
/// @see metadata_extractor_create()
/// @see metadata_extractor_destroy()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_set_buffer(
  metadata_extractor_h metadata,
  ffi.Pointer<ffi.Void> buffer,
  int size,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_set_buffer(
      metadata,
      buffer,
      size,
    );

/// @brief Sets the file path to extract.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter metadata The handle to metadata
/// Parameter path The path to extract metadata
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #METADATA_EXTRACTOR_ERROR_NONE Successful
/// @retval #METADATA_EXTRACTOR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #METADATA_EXTRACTOR_ERROR_FILE_EXISTS File does not exist
/// @retval #METADATA_EXTRACTOR_ERROR_OPERATION_FAILED Internal operation failed
///
/// @pre Create a metadata handle by calling metadata_extractor_create().
/// @see metadata_extractor_create()
/// @see metadata_extractor_destroy()
///
/// Module getter: `tizenCapiMediaMetadataExtractor`.
int metadata_extractor_set_path(
  metadata_extractor_h metadata,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiMediaMetadataExtractor.metadata_extractor_set_path(
      metadata,
      path,
    );

