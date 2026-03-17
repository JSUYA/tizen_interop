// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenMvBarcodeDetector`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libmv_barcode_detector.so`.
///
/// Multimedia / Media Vision BarCode.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_mv_barcode_detector;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Detects barcode(s) on source and reads message from it.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in source            The media source handle
/// @param in engine_cfg        The handle to the configuration of the engine
/// @param in roi               Region of interest - rectangular area on the
/// @a source which will be used for barcode detection
/// Note that @a roi should be inside area on the
/// @a source.
/// @param in detect_cb         The callback for result handling
/// @param in user_data    The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Not supported format
/// @retval #MEDIA_VISION_ERROR_INTERNAL Internal error
///
/// @pre Create a source handle by calling mv_create_source()
/// @pre Create an engine configuration handle by calling
/// mv_create_engine_config(), otherwise use NULL
///
/// @see mv_barcode_detected_cb()
///
/// Module getter: `tizenMvBarcodeDetector`.
int mv_barcode_detect(
  mv_source_h source,
  mv_engine_config_h engine_cfg,
  mv_rectangle_s roi,
  mv_barcode_detected_cb detect_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvBarcodeDetector.mv_barcode_detect(
      source,
      engine_cfg,
      roi,
      detect_cb,
      user_data,
    );

