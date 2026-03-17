// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiContentMimeType`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-content-mime-type.so.0`.
///
/// Content / Mime Type.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_content_mime_type;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the file extensions for the given MIME type.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a file_extension must be released with free() by you.
/// Parameter mime_type The MIME type
/// Output parameter file_extension The array of file extension without the leading dot ('.')
/// Output parameter length The length of the array of file extension or zero if there is none
/// @return 0 on success, otherwise a negative error value.
/// @retval #MIME_TYPE_ERROR_NONE Successful
/// @retval #MIME_TYPE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MIME_TYPE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MIME_TYPE_ERROR_IO_ERROR Internal I/O error
/// @see mime_type_get_mime_type()
///
/// Module getter: `tizenCapiContentMimeType`.
int mime_type_get_file_extension(
  ffi.Pointer<ffi.Char> mime_type,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> file_extension,
  ffi.Pointer<ffi.Int> length,
) =>
    tizenCapiContentMimeType.mime_type_get_file_extension(
      mime_type,
      file_extension,
      length,
    );

/// @brief Gets the MIME type for the given file extension.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a mime_type must be released with free() by you.
/// Parameter file_extension The file extension without the leading dot ('.')
/// Output parameter mime_type The MIME type for the given file extension \n
/// The MIME type is 'application/octet-stream' if the given file extension is not associated with specific file formats
/// @return 0 on success, otherwise a negative error value.
/// @retval #MIME_TYPE_ERROR_NONE Successful
/// @retval #MIME_TYPE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MIME_TYPE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MIME_TYPE_ERROR_IO_ERROR Internal I/O error
/// @see mime_type_get_file_extension()
///
/// Module getter: `tizenCapiContentMimeType`.
int mime_type_get_mime_type(
  ffi.Pointer<ffi.Char> file_extension,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mime_type,
) =>
    tizenCapiContentMimeType.mime_type_get_mime_type(
      file_extension,
      mime_type,
    );

/// @brief Gets the MIME type for the given data.
///
/// @since_tizen 4.0
/// @remarks The @a mime_type must be released with free() by you.
/// Parameter data The stream of file data
/// Parameter len The length of data
/// Output parameter mime_type The MIME type for the given file extension \n
/// The MIME type is 'application/octet-stream' if the given file extension is not associated with specific file formats
/// @return 0 on success, otherwise a negative error value.
/// @retval #MIME_TYPE_ERROR_NONE Successful
/// @retval #MIME_TYPE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MIME_TYPE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MIME_TYPE_ERROR_IO_ERROR Internal I/O error
///
/// Module getter: `tizenCapiContentMimeType`.
int mime_type_get_mime_type_for_data(
  ffi.Pointer<ffi.Void> data,
  int len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mime_type,
) =>
    tizenCapiContentMimeType.mime_type_get_mime_type_for_data(
      data,
      len,
      mime_type,
    );

/// @brief Gets the MIME type for the given file path.
///
/// @since_tizen 4.0
/// @remarks The @a mime_type must be released with free() by you.
/// @remarks http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage.
/// @remarks http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
/// Parameter file_path The path of target file
/// Output parameter mime_type The MIME type for the given file extension \n
/// The MIME type is 'application/octet-stream' if the given file extension is not associated with specific file formats
/// @return 0 on success, otherwise a negative error value.
/// @retval #MIME_TYPE_ERROR_NONE Successful
/// @retval #MIME_TYPE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MIME_TYPE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MIME_TYPE_ERROR_IO_ERROR Internal I/O error
/// @retval #MIME_TYPE_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiContentMimeType`.
int mime_type_get_mime_type_for_file(
  ffi.Pointer<ffi.Char> file_path,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mime_type,
) =>
    tizenCapiContentMimeType.mime_type_get_mime_type_for_file(
      file_path,
      mime_type,
    );

