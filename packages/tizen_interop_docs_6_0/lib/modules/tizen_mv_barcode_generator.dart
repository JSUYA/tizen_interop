// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenMvBarcodeGenerator`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libmv_barcode_generator.so`.
///
/// Multimedia / Media Vision BarCode.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_mv_barcode_generator;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Generates image file with barcode.
/// @details Pay attention that for EAN-8 and EAN-13 barcode types the barcode
/// type may be selected automatically and this selection depends on the input
/// message length. Also for QR codes the version may be selected as minimum
/// required to generate QR code with the input message length.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @remarks If the text attribute of engine configuration is set to
/// #MV_BARCODE_GENERATE_ATTR_TEXT_VISIBLE,
/// #MEDIA_VISION_ERROR_INVALID_OPERATION will be returned
/// when @a type is MV_BARCODE_QR
///
/// @remarks The mediastorage privilege http://tizen.org/privilege/mediastorage is needed \n
/// if @a image_path is relevant to media storage.\n
/// The externalstorage privilege http://tizen.org/privilege/externalstorage is needed \n
/// if @a image_path is relevant to external storage.
/// @param in engine_cfg      The handle to the configuration of the engine
/// @param in message         The message to be encoded in the barcode
/// @param in image_width     The width of the generated image
/// @param in image_height    The height of the generated image
/// @param in type            Type of the barcode to be generated
/// @param in qr_enc_mode     Encoding mode for the message (only for QR codes;
/// for 1D barcodes set this parameter to
/// #MV_BARCODE_QR_MODE_UNAVAILABLE)
/// @param in qr_ecc          Error correction level (only for QR codes; for
/// 1D barcodes set this parameter to
/// #MV_BARCODE_QR_ECC_UNAVAILABLE)
/// @param in qr_version      QR code version (for 1D barcodes set this
/// parameter to 0)
/// @param in image_path      The path to the file that has to be generated
/// @param in image_format    The format of the output image
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_MSG_TOO_LONG Too long or short message
/// @retval #MEDIA_VISION_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_DATA Invalid data
/// @retval #MEDIA_VISION_ERROR_INVALID_PATH Invalid path
/// @retval #MEDIA_VISION_ERROR_INTERNAL Internal error
/// @retval #MEDIA_VISION_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create an engine configuration handle by calling
/// mv_create_engine_config(), otherwise use NULL
///
/// @see mv_barcode_generate_source()
///
/// Module getter: `tizenMvBarcodeGenerator`.
int mv_barcode_generate_image(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> message,
  int image_width,
  int image_height,
  int type,
  int qr_enc_mode,
  int qr_ecc,
  int qr_version,
  ffi.Pointer<ffi.Char> image_path,
  int image_format,
) =>
    tizenMvBarcodeGenerator.mv_barcode_generate_image(
      engine_cfg,
      message,
      image_width,
      image_height,
      type,
      qr_enc_mode,
      qr_ecc,
      qr_version,
      image_path,
      image_format,
    );

/// @brief Generates #mv_source_h with barcode image.
/// @details Pay attention that for EAN-8 and EAN-13 barcode types the barcode
/// type may be selected automatically and this selection depends on the input
/// message length. Also for QR codes the version may be selected as minimum
/// required to generate QR code with the input message length.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @remarks If the text attribute of engine configuration is set to
/// #MV_BARCODE_GENERATE_ATTR_TEXT_VISIBLE,
/// #MEDIA_VISION_ERROR_INVALID_OPERATION will be returned
/// when @a type is MV_BARCODE_QR
///
/// @param in  engine_cfg      The handle to the configuration of the engine
/// @param in  message         The message to be encoded in the barcode
/// @param in  type            Type of the barcode to be generated
/// @param in  qr_enc_mode     Encoding mode for the message (only for QR codes;
/// for 1D barcodes set this parameter to
/// #MV_BARCODE_QR_MODE_UNAVAILABLE)
/// @param in  qr_ecc          Error correction level (only for QR codes; for
/// 1D barcodes set this parameter to
/// #MV_BARCODE_QR_ECC_UNAVAILABLE)
/// @param in  qr_version      QR code version (for 1D barcodes set this
/// parameter to 0)
/// @param in,out image        The media source handle which will be used to
/// fill by the buffer with generated image
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_MSG_TOO_LONG Too long or short message
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_DATA Invalid data
/// @retval #MEDIA_VISION_ERROR_INTERNAL Internal error
/// @retval #MEDIA_VISION_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create an engine configuration handle by calling
/// mv_create_engine_config(), otherwise use NULL
///
/// @see mv_barcode_generate_image()
///
/// Module getter: `tizenMvBarcodeGenerator`.
int mv_barcode_generate_source(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> message,
  int type,
  int qr_enc_mode,
  int qr_ecc,
  int qr_version,
  mv_source_h image,
) =>
    tizenMvBarcodeGenerator.mv_barcode_generate_source(
      engine_cfg,
      message,
      type,
      qr_enc_mode,
      qr_ecc,
      qr_version,
      image,
    );

