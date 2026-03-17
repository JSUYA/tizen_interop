// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenTbm`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libtbm.so.1`.
///
/// UI / TBM Surface.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_tbm;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates the tbm_surface.
/// @details This function creates the tbm_surface with the given width, height, and format.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remark The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
///
/// Parameter width   The width of surface
/// Parameter height  The height of surface
/// Parameter format  The format of surface
///
/// @return   #tbm_surface_h on success,
/// otherwise @c NULL
///
/// @retval #tbm_surface_h  The TBM surface handle
///
/// @exception #TBM_SURFACE_ERROR_NONE               Success
/// @exception #TBM_SURFACE_ERROR_INVALID_PARAMETER  Invalid parameter
/// @exception #TBM_SURFACE_ERROR_INVALID_OPERATION  Invalid operation
///
/// @see tbm_surface_destroy()
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// tbm_surface_h surface;
///
/// surface = tbm_surface_create (128, 128, TBM_FORMAT_RGB332);
///
/// ...
///
/// tbm_surface_destroy (surface);
/// @endcode
///
/// Module getter: `tizenTbm`.
tbm_surface_h tbm_surface_create(
  int width,
  int height,
  int format,
) =>
    tizenTbm.tbm_surface_create(
      width,
      height,
      format,
    );

/// @brief Destroys the tbm_surface.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter surface  The #tbm_surface_h
///
/// @return  #TBM_SURFACE_ERROR_NONE on success,
/// otherwise an error status value
///
/// @retval #TBM_SURFACE_ERROR_NONE               Success
/// @retval #TBM_SURFACE_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @see tbm_surface_create()
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// tbm_surface_h surface;
///
/// surface = tbm_surface_create (128, 128, TBM_FORMAT_RGB332);
///
/// ...
///
/// tbm_surface_destroy (surface);
/// @endcode
///
/// Module getter: `tizenTbm`.
int tbm_surface_destroy(
  tbm_surface_h surface,
) =>
    tizenTbm.tbm_surface_destroy(
      surface,
    );

/// @brief Gets the format of the tbm_surface.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remark The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
///
/// Parameter surface  The #tbm_surface_h
///
/// @return  The format of the tbm_surface on success,
/// otherwise @c 0 on failure
///
/// @retval #tbm_format  The format of surface
///
/// @exception #TBM_SURFACE_ERROR_NONE               Success
/// @exception #TBM_SURFACE_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// tbm_surface_s surface;
/// tbm_format format;
///
/// surface = tbm_surface_create (128, 128, TBM_FORMAT_RGB332);
///
/// ...
///
/// format = tbm_surface_get_format (surface);
///
/// ...
///
/// tbm_surface_destroy (surface);
/// @endcode
///
/// Module getter: `tizenTbm`.
int tbm_surface_get_format(
  tbm_surface_h surface,
) =>
    tizenTbm.tbm_surface_get_format(
      surface,
    );

/// @brief Gets the height of the tbm_surface.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter surface  The #tbm_surface_h
///
/// @return  The height of the tbm_surface if this function succeeds,
/// otherwise an error status value
///
/// @retval #TBM_SURFACE_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// tbm_surface_h surface;
/// int height;
///
/// surface = tbm_surface_create (128, 128, TBM_FORMAT_RGB332);
///
/// ...
///
/// height = tbm_surface_get_height (surface);
///
/// ...
///
/// tbm_surface_destroy (surface);
/// @endcode
///
/// Module getter: `tizenTbm`.
int tbm_surface_get_height(
  tbm_surface_h surface,
) =>
    tizenTbm.tbm_surface_get_height(
      surface,
    );

/// @brief Gets the information of the tbm_surface.
/// @details The information of tbm_surface is assigned in #tbm_surface_info_s struct. \n
/// The information of tbm_surface has width, height, format, bpp, size, number of planes and information of planes. \n
/// The information of planes has stride, offset, size and pointer of plane.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   surface  The #tbm_surface_h
/// Output parameter  info     The information of the tbm_surface
///
/// @return  #TBM_SURFACE_ERROR_NONE on success,
/// otherwise an error status value
///
/// @retval #TBM_SURFACE_ERROR_NONE               Success
/// @retval #TBM_SURFACE_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #TBM_SURFACE_ERROR_INVALID_OPERATION  Invalid operation
///
/// @see tbm_surface_map()
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// tbm_surface_h surface;
/// tbm_surface_info_s info;
/// int ret;
///
/// surface = tbm_surface_create (128, 128, TBM_FORMAT_RGB332);
/// ret = tbm_surface_get_info (surface, &info);
///
/// ...
///
/// tbm_surface_destroy (surface);
/// @endcode
///
/// Module getter: `tizenTbm`.
int tbm_surface_get_info(
  tbm_surface_h surface,
  ffi.Pointer<tbm_surface_info_s> info,
) =>
    tizenTbm.tbm_surface_get_info(
      surface,
      info,
    );

/// @brief Gets the width of the tbm_surface.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter surface  The #tbm_surface_h
///
/// @return  The width of the tbm_surface on success,
/// otherwise an error status value
///
/// @retval #TBM_SURFACE_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// tbm_surface_h surface;
/// int width;
///
/// surface = tbm_surface_create (128, 128, TBM_FORMAT_RGB332);
///
/// ...
///
/// width = tbm_surface_get_width (surface);
///
/// ...
///
/// tbm_surface_destroy (surface);
/// @endcode
///
/// Module getter: `tizenTbm`.
int tbm_surface_get_width(
  tbm_surface_h surface,
) =>
    tizenTbm.tbm_surface_get_width(
      surface,
    );

/// @brief Maps the tbm_surface according to the access option.
/// @details After mapping tbm_surface, the information of tbm_surface is assigned in #tbm_surface_info_s struct. \n
/// The information of tbm_surface has width, height, format, bpp, size, number of planes and information of planes. \n
/// The information of planes has stride, offset, size and pointer of plane. \n
/// #TBM_SURF_OPTION_READ indicates access option to read. \n
/// #TBM_SURF_OPTION_WRITE indicates access option to write.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  surface  The #tbm_surface_h
/// Parameter  opt      The option to access the tbm_surface
/// Output parameter info     The information of the tbm_surface
///
/// @return  #TBM_SURFACE_ERROR_NONE on success,
/// otherwise an error status value
///
/// @retval #TBM_SURFACE_ERROR_NONE               Success
/// @retval #TBM_SURFACE_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #TBM_SURFACE_ERROR_INVALID_OPERATION  Invalid operation
///
/// @see tbm_surface_unmap();
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// tbm_surface_h surface;
/// tbm_surface_info_s info;
/// int ret;
///
/// surface = tbm_surface_create (128, 128, TBM_FORMAT_RGB332);
/// ret = tbm_surface_map (surface, TBM_SURF_OPTION_WRITE|TBM_SURF_OPTION_READ, &info);
///
/// ...
///
/// tbm_surface_unmap (surface);
/// tbm_surface_destroy (surface);
/// @endcode
///
/// Module getter: `tizenTbm`.
int tbm_surface_map(
  tbm_surface_h surface,
  int opt,
  ffi.Pointer<tbm_surface_info_s> info,
) =>
    tizenTbm.tbm_surface_map(
      surface,
      opt,
      info,
    );

/// @brief Queries surface format list and number of format supported by the system.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks You must release the formats using free().
///
/// Output parameter formats  The format array which the system can support \n
/// This pointer has to be freed by user.
/// Output parameter num      The number of formats
///
/// @return  #TBM_SURFACE_ERROR_NONE if this function succeeds,
/// otherwise an error status value
///
/// @retval #TBM_SURFACE_ERROR_NONE               Success
/// @retval #TBM_SURFACE_ERROR_INVALID_OPERATION  Invalid operation
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// uint32_t *formats;
/// uint32_t format_num;
/// int ret, i;
/// tbm_surface_error_e tse;
///
/// tse = tbm_surface_query_formats (&formats, &format_num))
///
/// for( i = 0 ; i < format_num ; i++)
/// {
/// if (formats[i] == TBM_FORMAT_RGB332)
/// {
/// ....
///
/// free (formats);
/// @endcode
///
/// Module getter: `tizenTbm`.
int tbm_surface_query_formats(
  ffi.Pointer<ffi.Pointer<ffi.Uint32>> formats,
  ffi.Pointer<ffi.Uint32> num,
) =>
    tizenTbm.tbm_surface_query_formats(
      formats,
      num,
    );

/// @brief Unmaps the tbm_surface.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter surface  The #tbm_surface_h
///
/// @return  #TBM_SURFACE_ERROR_NONE on success,
/// otherwise an error status value
///
/// @retval #TBM_SURFACE_ERROR_NONE               Success
/// @retval #TBM_SURFACE_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @see tbm_surface_map()
///
/// @par Example
/// @code
/// #include <tbm_surface.h>
///
/// tbm_surface_h surface;
/// tbm_surface_info_s info;
/// int ret;
///
/// surface = tbm_surface_create (128, 128, TBM_FORMAT_RGB332);
/// ret = tbm_surface_map (surface, TBM_SURF_OPTION_WRITE|TBM_SURF_OPTION_READ, &info);
///
/// ...
///
/// tbm_surface_unmap (surface);
/// tbm_surface_destroy (surface);
/// @endcode
///
/// Module getter: `tizenTbm`.
int tbm_surface_unmap(
  tbm_surface_h surface,
) =>
    tizenTbm.tbm_surface_unmap(
      surface,
    );

