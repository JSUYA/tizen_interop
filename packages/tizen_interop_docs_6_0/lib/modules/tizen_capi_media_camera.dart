// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaCamera`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-camera.so.0`.
///
/// Multimedia / Camera.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_camera;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Registers a callback function to be called when the camera device state changes.
/// @since_tizen 3.0
/// Parameter  callback  The callback function to register
/// Parameter  user_data The user data to be passed to the callback function
/// Output parameter cb_id     The id of registered callback
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @post This function will invoke camera_device_state_changed_cb() when the camera device's state changes.
/// @see camera_remove_device_state_changed_cb()
/// @see camera_device_state_changed_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_add_device_state_changed_cb(
  camera_device_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> cb_id,
) =>
    tizenCapiMediaCamera.camera_add_device_state_changed_cb(
      callback,
      user_data,
      cb_id,
    );

/// @brief Clears the auto focus area.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The focusing area is set to the center.
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_af_mode()
/// @see camera_attr_set_af_area()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_clear_af_area(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_attr_clear_af_area(
      camera,
    );

/// @brief Disables shutter sound.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks In some countries, this operation is not permitted.
/// Parameter camera  The handle to the camera
/// Parameter disable If @c true shutter sound is disabled, otherwise @c false
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_OPERATION Disabling shutter sound is not permitted
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_disable_shutter_sound(
  camera_h camera,
  bool disable,
) =>
    tizenCapiMediaCamera.camera_attr_disable_shutter_sound(
      camera,
      disable,
    );

/// @brief Enables/Disables the anti-shake feature.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This feature is used for image capture.
/// Parameter camera The handle to the camera
/// Parameter enable If @c true the anti-shake feature is enabled, otherwise @c false
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_is_enabled_anti_shake()
/// @see camera_attr_is_supported_anti_shake()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_enable_anti_shake(
  camera_h camera,
  bool enable,
) =>
    tizenCapiMediaCamera.camera_attr_enable_anti_shake(
      camera,
      enable,
    );

/// @brief Enables/Disables auto contrast.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter enable If @c true auto contrast is enabled, otherwise @c false
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_is_enabled_auto_contrast()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_enable_auto_contrast(
  camera_h camera,
  bool enable,
) =>
    tizenCapiMediaCamera.camera_attr_enable_auto_contrast(
      camera,
      enable,
    );

/// @brief Enables to write EXIF(Exchangeable image file format) tags in a JPEG file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter enable If @c true writing EXIF tags in a JPEG file is enabled, otherwise @c false
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see         camera_attr_is_enabled_tag()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_enable_tag(
  camera_h camera,
  bool enable,
) =>
    tizenCapiMediaCamera.camera_attr_enable_tag(
      camera,
      enable,
    );

/// @brief Enables/Disables the video stabilization feature.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If video stabilization is enabled, zero shutter lag is disabled.\n
/// This feature is used to record a video.
/// Parameter camera The handle to the camera
/// Parameter enable If @c true video stabilization is enabled, otherwise @c false
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_is_enabled_video_stabilization()
/// @see camera_attr_is_supported_video_stabilization()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_enable_video_stabilization(
  camera_h camera,
  bool enable,
) =>
    tizenCapiMediaCamera.camera_attr_enable_video_stabilization(
      camera,
      enable,
    );

/// @brief Retrieves all supported auto focus modes by invoking the callback function once for each supported auto focus mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_af_mode_cb() to get all the supported auto focus modes.
/// @see camera_attr_set_af_mode()
/// @see camera_attr_get_af_mode()
/// @see camera_attr_supported_af_mode_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_af_mode(
  camera_h camera,
  camera_attr_supported_af_mode_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_af_mode(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported effect modes by invoking the callback function once for each supported effect mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_effect_cb() to get all the supported effect modes.
/// @see camera_attr_set_effect()
/// @see camera_attr_get_effect()
/// @see camera_attr_supported_effect_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_effect(
  camera_h camera,
  camera_attr_supported_effect_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_effect(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported exposure modes by invoking the callback function once for each supported exposure mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_exposure_mode_cb() to get all the supported exposure modes.
/// @see camera_attr_set_exposure_mode()
/// @see camera_attr_get_exposure_mode()
/// @see camera_attr_supported_exposure_mode_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_exposure_mode(
  camera_h camera,
  camera_attr_supported_exposure_mode_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_exposure_mode(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported flash modes by invoking the callback function once for each supported flash mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data passed to the callback registration function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_flash_mode_cb() to get all supported flash modes.
/// @see camera_attr_set_flash_mode()
/// @see camera_attr_get_flash_mode()
/// @see camera_attr_supported_flash_mode_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_flash_mode(
  camera_h camera,
  camera_attr_supported_flash_mode_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_flash_mode(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported FPS modes by invoking the callback function once for each supported FPS mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_fps_cb() repeatedly to get each supported FPS mode.
/// @see camera_attr_set_preview_fps()
/// @see camera_attr_get_preview_fps()
/// @see camera_attr_supported_fps_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_fps(
  camera_h camera,
  camera_attr_supported_fps_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_fps(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported FPS modes by invoking the callback function once for each supported FPS mode.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter camera    The handle to the camera
/// Parameter width     Required preview resolution's width
/// Parameter height    Required preview resolution's height
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_fps_cb() repeatedly to get each supported FPS mode.
/// @see camera_attr_set_preview_fps()
/// @see camera_attr_get_preview_fps()
/// @see camera_attr_supported_fps_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_fps_by_resolution(
  camera_h camera,
  int width,
  int height,
  camera_attr_supported_fps_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_fps_by_resolution(
      camera,
      width,
      height,
      callback,
      user_data,
    );

/// @brief Retrieves all supported ISO levels by invoking the callback function once for each supported ISO level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_iso_cb() to get all the supported ISO levels.
/// @see camera_attr_set_iso()
/// @see camera_attr_get_iso()
/// @see camera_attr_supported_iso_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_iso(
  camera_h camera,
  camera_attr_supported_iso_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_iso(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported PTZ(Pan Tilt Zoom) types by invoking callback function once for each supported ptz type.
/// @since_tizen 3.0
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_ptz_type_cb() to get all supported ptz type.
/// @see camera_attr_set_ptz_type()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_ptz_type(
  camera_h camera,
  camera_attr_supported_ptz_type_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_ptz_type(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported scene modes by invoking the callback function once for each supported scene mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_scene_mode_cb() to get all the supported scene modes.
/// @see camera_attr_set_scene_mode()
/// @see camera_attr_get_scene_mode()
/// @see camera_attr_supported_scene_mode_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_scene_mode(
  camera_h camera,
  camera_attr_supported_scene_mode_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_scene_mode(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported stream flip modes by invoking callback function once for each supported stream flip mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_stream_flip_cb() to get all supported stream flip mode.
/// @see camera_attr_set_stream_flip()
/// @see camera_attr_get_stream_flip()
/// @see camera_attr_supported_stream_flip_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_stream_flip(
  camera_h camera,
  camera_attr_supported_stream_flip_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_stream_flip(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported stream rotation modes by invoking callback function once for each supported stream rotation mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_stream_rotation_cb() to get all supported stream rotation mode.
/// @see camera_attr_set_stream_rotation()
/// @see camera_attr_get_stream_rotation()
/// @see camera_attr_supported_stream_rotation_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_stream_rotation(
  camera_h camera,
  camera_attr_supported_stream_rotation_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_stream_rotation(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported theater modes by invoking callback function once for each supported theater modes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_theater_mode_cb() to get all supported theater modes.
/// @see camera_attr_set_theater_mode()
/// @see camera_attr_get_theater_mode()
/// @see camera_attr_supported_theater_mode_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_theater_mode(
  camera_h camera,
  camera_attr_supported_theater_mode_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_theater_mode(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported white balances by invoking the callback function once for each supported white balance.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_attr_supported_whitebalance_cb() to get all the supported white balances.
/// @see camera_attr_set_whitebalance()
/// @see camera_attr_get_whitebalance()
/// @see camera_attr_supported_whitebalance_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_foreach_supported_whitebalance(
  camera_h camera,
  camera_attr_supported_whitebalance_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_foreach_supported_whitebalance(
      camera,
      callback,
      user_data,
    );

/// @brief Gets the auto focus mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter mode   The auto focus mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_foreach_supported_af_mode()
/// @see camera_attr_set_af_mode()
/// @see #camera_attr_af_mode_e
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_af_mode(
  camera_h camera,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaCamera.camera_attr_get_af_mode(
      camera,
      mode,
    );

/// @brief Gets the brightness level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter level  The brightness level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_brightness()
/// @see camera_attr_get_brightness_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_brightness(
  camera_h camera,
  ffi.Pointer<ffi.Int> level,
) =>
    tizenCapiMediaCamera.camera_attr_get_brightness(
      camera,
      level,
    );

/// @brief Gets the available brightness level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the min value is greater than the max value, it means that this feature is not supported.
/// Parameter  camera The handle to the camera
/// Output parameter min    The minimum brightness level
/// Output parameter max    The maximum brightness level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_brightness()
/// @see camera_attr_get_brightness()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_brightness_range(
  camera_h camera,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaCamera.camera_attr_get_brightness_range(
      camera,
      min,
      max,
    );

/// @brief Gets the contrast level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter level  The contrast level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_contrast()
/// @see camera_attr_get_contrast_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_contrast(
  camera_h camera,
  ffi.Pointer<ffi.Int> level,
) =>
    tizenCapiMediaCamera.camera_attr_get_contrast(
      camera,
      level,
    );

/// @brief Gets the available contrast level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the min value is greater than the max value, it means that this feature is not supported.
/// Parameter  camera The handle to the camera
/// Output parameter min    The minimum contrast level
/// Output parameter max    The maximum contrast level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_contrast()
/// @see camera_attr_get_contrast()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_contrast_range(
  camera_h camera,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaCamera.camera_attr_get_contrast_range(
      camera,
      min,
      max,
    );

/// @brief Gets the ROI(Region Of Interest) area of display.
/// @since_tizen 3.0
/// Parameter  camera The handle to the camera
/// Output parameter x      X coordinate of area
/// Output parameter y      Y coordinate of area
/// Output parameter width  Width of area
/// Output parameter height Height of area
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_display_roi_area()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_display_roi_area(
  camera_h camera,
  ffi.Pointer<ffi.Int> x,
  ffi.Pointer<ffi.Int> y,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaCamera.camera_attr_get_display_roi_area(
      camera,
      x,
      y,
      width,
      height,
    );

/// @brief Gets the camera effect mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter effect The camera effect mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_foreach_supported_effect()
/// @see camera_attr_set_effect()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_effect(
  camera_h camera,
  ffi.Pointer<ffi.Int32> effect,
) =>
    tizenCapiMediaCamera.camera_attr_get_effect(
      camera,
      effect,
    );

/// @brief Gets the bit rate of encoded preview.
/// @since_tizen 3.0
/// Parameter  camera  The handle to the camera
/// Output parameter bitrate The bit rate of encoded preview
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_encoded_preview_bitrate()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_encoded_preview_bitrate(
  camera_h camera,
  ffi.Pointer<ffi.Int> bitrate,
) =>
    tizenCapiMediaCamera.camera_attr_get_encoded_preview_bitrate(
      camera,
      bitrate,
    );

/// @brief Gets the GOP (Group Of Pictures) interval of encoded preview.
/// @since_tizen 3.0
/// Parameter  camera   The handle to the camera
/// Output parameter interval The GOP interval of encoded preview (millisecond)
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_encoded_preview_gop_interval()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_encoded_preview_gop_interval(
  camera_h camera,
  ffi.Pointer<ffi.Int> interval,
) =>
    tizenCapiMediaCamera.camera_attr_get_encoded_preview_gop_interval(
      camera,
      interval,
    );

/// @brief Gets the exposure value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter value  The exposure value
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_exposure()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_exposure(
  camera_h camera,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiMediaCamera.camera_attr_get_exposure(
      camera,
      value,
    );

/// @brief Gets the exposure mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter mode   The exposure mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_exposure_mode()
/// @see camera_attr_foreach_supported_exposure_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_exposure_mode(
  camera_h camera,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaCamera.camera_attr_get_exposure_mode(
      camera,
      mode,
    );

/// @brief Gets the available exposure value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the min value is greater than the max value, it means that this feature is not supported.
/// Parameter  camera The handle to the camera
/// Output parameter min    The minimum exposure value
/// Output parameter max    The maximum exposure value
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_exposure()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_exposure_range(
  camera_h camera,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaCamera.camera_attr_get_exposure_range(
      camera,
      min,
      max,
    );

/// @brief Gets the camera's flash mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter mode   The flash mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_foreach_supported_flash_mode()
/// @see camera_attr_set_flash_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_flash_mode(
  camera_h camera,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaCamera.camera_attr_get_flash_mode(
      camera,
      mode,
    );

/// @brief Gets the geotag(GPS data) in the EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera    The handle to the camera
/// Output parameter latitude  The latitude data
/// Output parameter longitude The longitude data
/// Output parameter altitude  The altitude data
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_geotag()
/// @see camera_attr_remove_geotag()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_geotag(
  camera_h camera,
  ffi.Pointer<ffi.Double> latitude,
  ffi.Pointer<ffi.Double> longitude,
  ffi.Pointer<ffi.Double> altitude,
) =>
    tizenCapiMediaCamera.camera_attr_get_geotag(
      camera,
      latitude,
      longitude,
      altitude,
    );

/// @brief Gets the mode of HDR (High Dynamic Range) capture.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter mode   The mode of HDR capture
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_hdr_mode()
/// @see camera_attr_set_hdr_capture_progress_cb()
/// @see camera_attr_unset_hdr_capture_progress_cb()
/// @see camera_attr_is_supported_hdr_capture()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_hdr_mode(
  camera_h camera,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaCamera.camera_attr_get_hdr_mode(
      camera,
      mode,
    );

/// @brief Gets the hue level.
/// @since_tizen 5.0
/// Parameter  camera The handle to the camera
/// Output parameter level  The hue level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_attr_set_hue()
/// @see camera_attr_get_hue_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_hue(
  camera_h camera,
  ffi.Pointer<ffi.Int> level,
) =>
    tizenCapiMediaCamera.camera_attr_get_hue(
      camera,
      level,
    );

/// @brief Gets the available hue level.
/// @since_tizen 5.0
/// @remarks If the min value is greater than the max value, it means that this feature is not supported.
/// Parameter  camera The handle to the camera
/// Output parameter min    The minimum hue level
/// Output parameter max    The maximum hue level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_attr_set_hue()
/// @see camera_attr_get_hue()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_hue_range(
  camera_h camera,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaCamera.camera_attr_get_hue_range(
      camera,
      min,
      max,
    );

/// @brief Gets the quality of a still image, which is captured.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera  The handle to the camera
/// Output parameter quality The quality of the image(1 ~ 100)
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_image_quality()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_image_quality(
  camera_h camera,
  ffi.Pointer<ffi.Int> quality,
) =>
    tizenCapiMediaCamera.camera_attr_get_image_quality(
      camera,
      quality,
    );

/// @brief Gets the ISO level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter iso    The ISO level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_iso()
/// @see camera_attr_foreach_supported_iso()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_iso(
  camera_h camera,
  ffi.Pointer<ffi.Int32> iso,
) =>
    tizenCapiMediaCamera.camera_attr_get_iso(
      camera,
      iso,
    );

/// @brief Gets the camera len's orientation angle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter angle  The orientation angle
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_display_rotation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_lens_orientation(
  camera_h camera,
  ffi.Pointer<ffi.Int> angle,
) =>
    tizenCapiMediaCamera.camera_attr_get_lens_orientation(
      camera,
      angle,
    );

/// @brief Gets the current position of the camera.
/// @since_tizen 3.0
/// Parameter  camera   The handle to the camera
/// Output parameter pan_step The current horizontal distance from the starting point.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_pan()
/// @see camera_attr_get_pan_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_pan(
  camera_h camera,
  ffi.Pointer<ffi.Int> pan_step,
) =>
    tizenCapiMediaCamera.camera_attr_get_pan(
      camera,
      pan_step,
    );

/// @brief Gets lower limit and upper limit for pan position.
/// @since_tizen 3.0
/// @remarks If the min value is greater than the max value, it means that this feature is not supported.
/// Parameter  camera The handle to the camera
/// Output parameter min    The lower limit for pan
/// Output parameter max    The upper limit for pan
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_pan()
/// @see camera_attr_get_pan()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_pan_range(
  camera_h camera,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaCamera.camera_attr_get_pan_range(
      camera,
      min,
      max,
    );

/// @brief Gets the frames per second of a preview video stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter fps    The frames per second of the preview video stream
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_preview_fps()
/// @see camera_attr_foreach_supported_fps()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_preview_fps(
  camera_h camera,
  ffi.Pointer<ffi.Int32> fps,
) =>
    tizenCapiMediaCamera.camera_attr_get_preview_fps(
      camera,
      fps,
    );

/// @brief Gets the scene mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter mode   The scene mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_foreach_supported_scene_mode()
/// @see camera_attr_set_scene_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_scene_mode(
  camera_h camera,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaCamera.camera_attr_get_scene_mode(
      camera,
      mode,
    );

/// @brief Gets the stream flip.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter flip   The stream flip
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED.
/// @see camera_attr_set_stream_rotation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_stream_flip(
  camera_h camera,
  ffi.Pointer<ffi.Int32> flip,
) =>
    tizenCapiMediaCamera.camera_attr_get_stream_flip(
      camera,
      flip,
    );

/// @brief Gets the stream rotation.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera   The handle to the camera
/// Output parameter rotation The stream rotation
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED.
/// @see camera_attr_set_stream_rotation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_stream_rotation(
  camera_h camera,
  ffi.Pointer<ffi.Int32> rotation,
) =>
    tizenCapiMediaCamera.camera_attr_get_stream_rotation(
      camera,
      rotation,
    );

/// @brief Gets the camera image description in EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a description using free().
/// Parameter  camera      The handle to the camera
/// Output parameter description A pointer to a string
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_tag_image_description()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_tag_image_description(
  camera_h camera,
  ffi.Pointer<ffi.Pointer<ffi.Char>> description,
) =>
    tizenCapiMediaCamera.camera_attr_get_tag_image_description(
      camera,
      description,
    );

/// @brief Gets the camera orientation in the EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera      The handle to the camera
/// Output parameter orientation The camera orientation
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_tag_orientation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_tag_orientation(
  camera_h camera,
  ffi.Pointer<ffi.Int32> orientation,
) =>
    tizenCapiMediaCamera.camera_attr_get_tag_orientation(
      camera,
      orientation,
    );

/// @brief Gets the software information in the EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a software using free().
/// Parameter  camera   The handle to the camera
/// Output parameter software A pointer to a string
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_tag_software()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_tag_software(
  camera_h camera,
  ffi.Pointer<ffi.Pointer<ffi.Char>> software,
) =>
    tizenCapiMediaCamera.camera_attr_get_tag_software(
      camera,
      software,
    );

/// @brief Gets the theater mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter mode   The theater mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_theater_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_theater_mode(
  camera_h camera,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaCamera.camera_attr_get_theater_mode(
      camera,
      mode,
    );

/// @brief Gets the current position of the camera.
/// @since_tizen 3.0
/// Parameter  camera    The handle to the camera
/// Output parameter tilt_step The current vertical distance from the starting point.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_tilt()
/// @see camera_attr_get_tilt_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_tilt(
  camera_h camera,
  ffi.Pointer<ffi.Int> tilt_step,
) =>
    tizenCapiMediaCamera.camera_attr_get_tilt(
      camera,
      tilt_step,
    );

/// @brief Gets lower limit and upper limit for tilt position.
/// @since_tizen 3.0
/// @remarks If the min value is greater than the max value, it means that this feature is not supported.
/// Parameter  camera The handle to the camera
/// Output parameter min    The lower limit for tilt
/// Output parameter max    The upper limit for tilt
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_tilt()
/// @see camera_attr_get_tilt()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_tilt_range(
  camera_h camera,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaCamera.camera_attr_get_tilt_range(
      camera,
      min,
      max,
    );

/// @brief Gets the white balance mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera       The handle to the camera
/// Output parameter whitebalance The white balance mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_foreach_supported_whitebalance()
/// @see camera_attr_set_whitebalance()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_whitebalance(
  camera_h camera,
  ffi.Pointer<ffi.Int32> whitebalance,
) =>
    tizenCapiMediaCamera.camera_attr_get_whitebalance(
      camera,
      whitebalance,
    );

/// @brief Gets the zoom level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter zoom   The zoom level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_zoom()
/// @see camera_attr_get_zoom_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_zoom(
  camera_h camera,
  ffi.Pointer<ffi.Int> zoom,
) =>
    tizenCapiMediaCamera.camera_attr_get_zoom(
      camera,
      zoom,
    );

/// @brief Gets the available zoom level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the min value is greater than the max value, it means that this feature is not supported.
/// Parameter  camera The handle to the camera
/// Output parameter min    The minimum zoom level
/// Output parameter max    The maximum zoom level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_zoom()
/// @see camera_attr_get_zoom()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_get_zoom_range(
  camera_h camera,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaCamera.camera_attr_get_zoom_range(
      camera,
      min,
      max,
    );

/// @brief Gets the state of the anti-shake feature.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera  The handle to the camera
/// Output parameter enabled The state of anti-shake
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_enable_anti_shake()
/// @see camera_attr_is_supported_anti_shake()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_is_enabled_anti_shake(
  camera_h camera,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaCamera.camera_attr_is_enabled_anti_shake(
      camera,
      enabled,
    );

/// @brief Gets the state of auto contrast.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera  The handle to the camera
/// Output parameter enabled The state of auto contrast
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_enable_auto_contrast()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_is_enabled_auto_contrast(
  camera_h camera,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaCamera.camera_attr_is_enabled_auto_contrast(
      camera,
      enabled,
    );

/// @brief Gets the value that indicates whether writing EXIF(Exchangeable image file format) tags in a JPEG file is enabled.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera   The handle to the camera
/// Output parameter enabled  If @c true camera information is enabled, otherwise @c false
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see         camera_attr_enable_tag()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_is_enabled_tag(
  camera_h camera,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaCamera.camera_attr_is_enabled_tag(
      camera,
      enabled,
    );

/// @brief Gets the state of the video stabilization feature.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera  The handle to the camera
/// Output parameter enabled The state of video stabilization
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_enable_video_stabilization()
/// @see camera_attr_is_supported_video_stabilization()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_is_enabled_video_stabilization(
  camera_h camera,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaCamera.camera_attr_is_enabled_video_stabilization(
      camera,
      enabled,
    );

/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @brief Gets the support state of the anti-shake feature.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter camera The handle to the camera
/// @return @c true if supported, otherwise @c false
/// @exception #CAMERA_ERROR_NONE Successful
/// @exception #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_attr_enable_anti_shake()
/// @see camera_attr_is_enabled_anti_shake()
///
/// Module getter: `tizenCapiMediaCamera`.
bool camera_attr_is_supported_anti_shake(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_attr_is_supported_anti_shake(
      camera,
    );

/// @brief Gets state of support of auto contrast feature.
/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter camera The handle to the camera
/// @return true on supported, otherwise false
/// @exception #CAMERA_ERROR_NONE Successful
/// @exception #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_attr_enable_auto_contrast()
/// @see camera_attr_is_enabled_auto_contrast()
///
/// Module getter: `tizenCapiMediaCamera`.
bool camera_attr_is_supported_auto_contrast(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_attr_is_supported_auto_contrast(
      camera,
    );

/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @brief Gets the support state of HDR capture.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter camera The handle to the camera
/// @return @c true if supported, otherwise @c false
/// @exception #CAMERA_ERROR_NONE Successful
/// @exception #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_attr_set_hdr_mode()
/// @see camera_attr_get_hdr_mode()
/// @see camera_attr_set_hdr_capture_progress_cb()
/// @see camera_attr_unset_hdr_capture_progress_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
bool camera_attr_is_supported_hdr_capture(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_attr_is_supported_hdr_capture(
      camera,
    );

/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @brief Gets the support state of the video stabilization feature.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter camera The handle to the camera
/// @return @c true if supported, otherwise @c false
/// @exception #CAMERA_ERROR_NONE Successful
/// @exception #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_attr_enable_video_stabilization()
/// @see camera_attr_is_enabled_video_stabilization()
///
/// Module getter: `tizenCapiMediaCamera`.
bool camera_attr_is_supported_video_stabilization(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_attr_is_supported_video_stabilization(
      camera,
    );

/// @brief Removes the geotag(GPS data) in the EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_set_geotag()
/// @see camera_attr_get_geotag()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_remove_geotag(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_attr_remove_geotag(
      camera,
    );

/// @brief Sets auto focus area.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This API is invalid in the #CAMERA_ATTR_AF_NONE mode.\n
/// The coordinates are mapped to preview area.
/// Parameter camera The handle to the camera
/// Parameter x      The x coordinates of the focus area
/// Parameter y      The y coordinates of the focus area
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_set_af_mode()
/// @see camera_attr_clear_af_area()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_af_area(
  camera_h camera,
  int x,
  int y,
) =>
    tizenCapiMediaCamera.camera_attr_set_af_area(
      camera,
      x,
      y,
    );

/// @brief Sets the auto focus mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter mode   The auto focus mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_af_mode()
/// @see camera_attr_foreach_supported_af_mode()
/// @see #camera_attr_af_mode_e
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_af_mode(
  camera_h camera,
  int mode,
) =>
    tizenCapiMediaCamera.camera_attr_set_af_mode(
      camera,
      mode,
    );

/// @brief Sets the brightness level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the min value is greater than the max value from camera_attr_get_brightness_range(), \n
/// it means that this feature is not supported.
/// Parameter camera The handle to the camera
/// Parameter level The brightness level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_brightness()
/// @see camera_attr_get_brightness_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_brightness(
  camera_h camera,
  int level,
) =>
    tizenCapiMediaCamera.camera_attr_set_brightness(
      camera,
      level,
    );

/// @brief Sets the contrast level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter level  The contrast level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_contrast()
/// @see camera_attr_get_contrast_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_contrast(
  camera_h camera,
  int level,
) =>
    tizenCapiMediaCamera.camera_attr_set_contrast(
      camera,
      level,
    );

/// @brief Sets the ROI(Region Of Interest) area of display.
/// @since_tizen 3.0
/// @remarks If no display is set, no operation is performed and
/// the ROI area is valid only in #CAMERA_DISPLAY_MODE_CUSTOM_ROI display mode.
/// @remarks The minimum value of width and height are 1.
/// @remarks ROI area can be set before setting ROI display mode. (since 4.0)
/// Parameter camera The handle to the camera
/// Parameter x      X coordinate of area
/// Parameter y      Y coordinate of area
/// Parameter width  Width of area
/// Parameter height Height of area
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_get_display_roi_area()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_display_roi_area(
  camera_h camera,
  int x,
  int y,
  int width,
  int height,
) =>
    tizenCapiMediaCamera.camera_attr_set_display_roi_area(
      camera,
      x,
      y,
      width,
      height,
    );

/// @brief Sets the camera effect mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter effect The camera effect mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_foreach_supported_effect()
/// @see camera_attr_get_effect()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_effect(
  camera_h camera,
  int effect,
) =>
    tizenCapiMediaCamera.camera_attr_set_effect(
      camera,
      effect,
    );

/// @brief Sets the bit rate of encoded preview.
/// @since_tizen 3.0
/// @remarks The recommended range is from 1,000 (1 kbps) to 100,000,000 (100 Mbps). \n
/// But, due to codec limitations, it may not apply.
/// Parameter camera  The handle to the camera
/// Parameter bitrate The bit rate of encoded preview
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_get_encoded_preview_bitrate()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_encoded_preview_bitrate(
  camera_h camera,
  int bitrate,
) =>
    tizenCapiMediaCamera.camera_attr_set_encoded_preview_bitrate(
      camera,
      bitrate,
    );

/// @brief Sets the GOP (Group Of Pictures) interval of encoded preview.
/// @since_tizen 3.0
/// @remarks The recommended range is from 1,000 (1 second) to 600,000 (10 minutes). \n
/// But, due to codec limitations, it may not apply.
/// Parameter camera   The handle to the camera
/// Parameter interval The GOP interval of encoded preview (millisecond)
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_get_encoded_preview_gop_interval()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_encoded_preview_gop_interval(
  camera_h camera,
  int interval,
) =>
    tizenCapiMediaCamera.camera_attr_set_encoded_preview_gop_interval(
      camera,
      interval,
    );

/// @brief Sets the exposure value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter value  The exposure value
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_get_exposure()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_exposure(
  camera_h camera,
  int value,
) =>
    tizenCapiMediaCamera.camera_attr_set_exposure(
      camera,
      value,
    );

/// @brief Sets the exposure mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter mode   The exposure mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_exposure_mode()
/// @see camera_attr_foreach_supported_exposure_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_exposure_mode(
  camera_h camera,
  int mode,
) =>
    tizenCapiMediaCamera.camera_attr_set_exposure_mode(
      camera,
      mode,
    );

/// @brief Sets the camera's flash mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, while setting the flash mode, if the flash was preempted by other APIs,\n
/// then this function returns #CAMERA_ERROR_DEVICE_BUSY error.
/// Parameter camera The handle to the camera
/// Parameter mode   The flash mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @retval #CAMERA_ERROR_DEVICE_BUSY The flash was preempted by other API
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_foreach_supported_flash_mode()
/// @see camera_attr_get_flash_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_flash_mode(
  camera_h camera,
  int mode,
) =>
    tizenCapiMediaCamera.camera_attr_set_flash_mode(
      camera,
      mode,
    );

/// @brief Sets the geotag(GPS data) in the EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter latitude  The latitude data
/// Parameter longitude The longitude data
/// Parameter altitude  The altitude data
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_geotag()
/// @see camera_attr_remove_geotag()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_geotag(
  camera_h camera,
  double latitude,
  double longitude,
  double altitude,
) =>
    tizenCapiMediaCamera.camera_attr_set_geotag(
      camera,
      latitude,
      longitude,
      altitude,
    );

/// @brief Registers a callback function to be called when HDR capture is progressing.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This callback notifies progress of the HDR process.
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to invoke
/// Parameter user_data The user data passed to the callback registration function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_hdr_mode()
/// @see camera_attr_get_hdr_mode()
/// @see camera_attr_unset_hdr_capture_progress_cb()
/// @see camera_attr_is_supported_hdr_capture()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_hdr_capture_progress_cb(
  camera_h camera,
  camera_attr_hdr_progress_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_attr_set_hdr_capture_progress_cb(
      camera,
      callback,
      user_data,
    );

/// @brief Sets the mode of HDR (High Dynamic Range) capture.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Taking multiple pictures at different exposure levels and intelligently stitching them together so that we eventually arrive at a picture that is representative in both dark and bright areas.\n
/// If this attribute is set to @c true. camera_attr_hdr_progress_cb() is invoked during capture.\n
/// If you set #CAMERA_ATTR_HDR_MODE_KEEP_ORIGINAL, the capturing callback is invoked twice. The first callback is delivering origin image data. The second callback is delivering improved image data.
/// Parameter camera The handle to the camera
/// Parameter mode   The mode of HDR capture
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_hdr_mode()
/// @see camera_attr_set_hdr_capture_progress_cb()
/// @see camera_attr_unset_hdr_capture_progress_cb()
/// @see camera_attr_is_supported_hdr_capture()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_hdr_mode(
  camera_h camera,
  int mode,
) =>
    tizenCapiMediaCamera.camera_attr_set_hdr_mode(
      camera,
      mode,
    );

/// @brief Sets the hue level.
/// @since_tizen 5.0
/// Parameter camera The handle to the camera
/// Parameter level  The hue level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_attr_get_hue()
/// @see camera_attr_get_hue_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_hue(
  camera_h camera,
  int level,
) =>
    tizenCapiMediaCamera.camera_attr_set_hue(
      camera,
      level,
    );

/// @brief Sets quality of the image.
/// @details The range for image quality is 1 to 100. If @a quality is out of range, #CAMERA_ERROR_INVALID_PARAMETER error occurred.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera  The handle to the camera
/// Parameter quality The quality of image (1 ~ 100)
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_start_preview()
/// @see camera_attr_get_image_quality()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_image_quality(
  camera_h camera,
  int quality,
) =>
    tizenCapiMediaCamera.camera_attr_set_image_quality(
      camera,
      quality,
    );

/// @brief Sets the ISO level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter iso    The ISO level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_iso()
/// @see camera_attr_foreach_supported_iso()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_iso(
  camera_h camera,
  int iso,
) =>
    tizenCapiMediaCamera.camera_attr_set_iso(
      camera,
      iso,
    );

/// @brief Sets the position to move horizontally.
/// @since_tizen 3.0
/// Parameter camera    The handle to the camera
/// Parameter move_type The PTZ(Pan Tilt Zoom) move type
/// Parameter pan_step  The step to move the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_pan()
/// @see camera_attr_get_pan_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_pan(
  camera_h camera,
  int move_type,
  int pan_step,
) =>
    tizenCapiMediaCamera.camera_attr_set_pan(
      camera,
      move_type,
      pan_step,
    );

/// @brief Sets the preview frame rate.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function should be called before previewing (see camera_start_preview()).
/// Parameter camera The handle to the camera
/// Parameter fps    The frame rate
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED.
/// @see camera_start_preview()
/// @see camera_attr_get_preview_fps()
/// @see camera_attr_foreach_supported_fps()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_preview_fps(
  camera_h camera,
  int fps,
) =>
    tizenCapiMediaCamera.camera_attr_set_preview_fps(
      camera,
      fps,
    );

/// @brief Sets the type of PTZ(Pan Tilt Zoom).
/// @since_tizen 3.0
/// Parameter camera   The handle to the camera
/// Parameter ptz_type PTZ type
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_pan()
/// @see camera_attr_set_pan()
/// @see camera_attr_get_pan_range()
/// @see camera_attr_get_tilt()
/// @see camera_attr_set_tilt()
/// @see camera_attr_get_tilt_range()
/// @see camera_attr_foreach_supported_ptz_type()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_ptz_type(
  camera_h camera,
  int ptz_type,
) =>
    tizenCapiMediaCamera.camera_attr_set_ptz_type(
      camera,
      ptz_type,
    );

/// @brief Sets the scene mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter mode   The scene mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_foreach_supported_scene_mode()
/// @see camera_attr_get_scene_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_scene_mode(
  camera_h camera,
  int mode,
) =>
    tizenCapiMediaCamera.camera_attr_set_scene_mode(
      camera,
      mode,
    );

/// @brief Sets the stream flip.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter flip   The stream flip
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED.
/// @see camera_attr_set_stream_rotation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_stream_flip(
  camera_h camera,
  int flip,
) =>
    tizenCapiMediaCamera.camera_attr_set_stream_flip(
      camera,
      flip,
    );

/// @brief Sets the stream rotation.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera   The handle to the camera
/// Parameter rotation The stream rotation
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED.
/// @see camera_attr_get_stream_rotation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_stream_rotation(
  camera_h camera,
  int rotation,
) =>
    tizenCapiMediaCamera.camera_attr_set_stream_rotation(
      camera,
      rotation,
    );

/// @brief Sets the camera image description in the EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera      The handle to the camera
/// Parameter description The string with description
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_get_tag_image_description()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_tag_image_description(
  camera_h camera,
  ffi.Pointer<ffi.Char> description,
) =>
    tizenCapiMediaCamera.camera_attr_set_tag_image_description(
      camera,
      description,
    );

/// @brief Sets the camera orientation in the EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera      The handle to the camera
/// Parameter orientation The camera orientation
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_get_tag_orientation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_tag_orientation(
  camera_h camera,
  int orientation,
) =>
    tizenCapiMediaCamera.camera_attr_set_tag_orientation(
      camera,
      orientation,
    );

/// @brief Sets the software information in the EXIF(Exchangeable image file format) tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera   The handle to the camera
/// Parameter software The software information tag
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_get_tag_software()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_tag_software(
  camera_h camera,
  ffi.Pointer<ffi.Char> software,
) =>
    tizenCapiMediaCamera.camera_attr_set_tag_software(
      camera,
      software,
    );

/// @brief Sets the theater mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If you want to display the preview image on the external display with the full screen mode, use this function.
/// Parameter camera The handle to the camera
/// Parameter mode   The theater mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre This function is valid only when the external display is connected.
/// @see camera_attr_get_theater_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_theater_mode(
  camera_h camera,
  int mode,
) =>
    tizenCapiMediaCamera.camera_attr_set_theater_mode(
      camera,
      mode,
    );

/// @brief Sets the position to move vertically.
/// @since_tizen 3.0
/// Parameter camera    The handle to the camera
/// Parameter move_type The PTZ(Pan Tilt Zoom) move type
/// Parameter tilt_step The step to move the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_tilt()
/// @see camera_attr_get_tilt_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_tilt(
  camera_h camera,
  int move_type,
  int tilt_step,
) =>
    tizenCapiMediaCamera.camera_attr_set_tilt(
      camera,
      move_type,
      tilt_step,
    );

/// @brief Sets the white balance mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera       The handle to the camera
/// Parameter whitebalance The white balance mode
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_foreach_supported_whitebalance()
/// @see camera_attr_get_whitebalance()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_whitebalance(
  camera_h camera,
  int whitebalance,
) =>
    tizenCapiMediaCamera.camera_attr_set_whitebalance(
      camera,
      whitebalance,
    );

/// @brief Sets the zoom level.
/// @details The range for the zoom level is received from camera_attr_get_zoom_range(). If @a zoom is out of range, the #CAMERA_ERROR_INVALID_PARAMETER error occurs.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter zoom   The zoom level
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_attr_get_zoom()
/// @see camera_attr_get_zoom_range()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_set_zoom(
  camera_h camera,
  int zoom,
) =>
    tizenCapiMediaCamera.camera_attr_set_zoom(
      camera,
      zoom,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_attr_set_hdr_mode()
/// @see camera_attr_get_hdr_mode()
/// @see camera_attr_set_hdr_capture_progress_cb()
/// @see camera_attr_is_supported_hdr_capture()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_attr_unset_hdr_capture_progress_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_attr_unset_hdr_capture_progress_cb(
      camera,
    );

/// @brief Stops camera auto focusing.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_PREVIEW.
///
/// @see camera_start_focusing()
/// @see camera_focus_changed_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_cancel_focusing(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_cancel_focusing(
      camera,
    );

/// @brief Changes the camera device.
///
/// @since_tizen 3.0
/// @remarks This function can be used to change camera device simply without camera_destroy() and camera_create().\n
/// If display reuse hint is set by camera_set_display_reuse_hint() before stopping the preview,\n
/// display handle will be reused and last frame on display can be kept even though camera device is changed.
/// Parameter camera The handle to the camera
/// Parameter device The hardware camera to access
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre    The camera state must be set to #CAMERA_STATE_CREATED.
/// @post   If it succeeds, the camera attributes and settings will be reset.
///
/// @see camera_set_display_reuse_hint()
/// @see camera_get_display_reuse_hint()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_change_device(
  camera_h camera,
  int device,
) =>
    tizenCapiMediaCamera.camera_change_device(
      camera,
      device,
    );

/// @brief Creates a new camera handle for controlling a camera.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Multiple handles on a context at the same time are allowed to be created. However,
/// camera cannot guarantee proper operation because of limited resources, such as
/// camera device, audio device, and display device.\n.
/// A @a camera must be released using camera_destroy().
/// @remarks The privilege %http://tizen.org/privilege/camera is not required since 4.0,\n
/// but it is required in all earlier versions.
/// Parameter  device The hardware camera to access
/// Output parameter camera A newly returned handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @post If it succeeds, the camera state will be #CAMERA_STATE_CREATED.
///
/// @see camera_destroy()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_create(
  int device,
  ffi.Pointer<camera_h> camera,
) =>
    tizenCapiMediaCamera.camera_create(
      device,
      camera,
    );

/// @brief Destroys the camera handle and releases all its resources.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_create()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_destroy(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_destroy(
      camera,
    );

/// @brief Retrieves all supported camera capture formats by invoking the callback function once for each supported camera capture format.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_supported_capture_format_cb() repeatedly to retrieve each supported capture format.
/// @see camera_set_capture_format()
/// @see camera_get_capture_format()
/// @see camera_supported_capture_format_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_foreach_supported_capture_format(
  camera_h camera,
  camera_supported_capture_format_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_foreach_supported_capture_format(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported camera captured resolutions by invoking the callback function once for each supported camera capture resolution.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_supported_capture_resolution_cb() repeatedly to retrieve each supported capture resolution.
/// @see camera_set_capture_resolution()
/// @see camera_get_capture_resolution()
/// @see camera_supported_capture_resolution_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_foreach_supported_capture_resolution(
  camera_h camera,
  camera_supported_capture_resolution_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_foreach_supported_capture_resolution(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported camera preview formats by invoking the callback function once for each supported camera preview format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_supported_preview_format_cb() repeatedly to retrieve each supported preview format.
/// @see camera_set_preview_format()
/// @see camera_get_preview_format()
/// @see camera_supported_preview_format_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_foreach_supported_preview_format(
  camera_h camera,
  camera_supported_preview_format_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_foreach_supported_preview_format(
      camera,
      callback,
      user_data,
    );

/// @brief Retrieves all supported camera preview resolutions by invoking the callback function once for each supported camera preview resolution.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function invokes camera_supported_preview_resolution_cb() repeatedly to retrieve each supported preview resolution.
///
/// @see camera_set_preview_resolution()
/// @see camera_get_preview_resolution()
/// @see camera_supported_preview_resolution_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_foreach_supported_preview_resolution(
  camera_h camera,
  camera_supported_preview_resolution_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_foreach_supported_preview_resolution(
      camera,
      callback,
      user_data,
    );

/// @brief Gets the format of the image to be captured.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter format The format of the image to be captured
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_capture_format()
/// @see camera_foreach_supported_capture_format()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_capture_format(
  camera_h camera,
  ffi.Pointer<ffi.Int32> format,
) =>
    tizenCapiMediaCamera.camera_get_capture_format(
      camera,
      format,
    );

/// @brief Gets the resolution of the captured image.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter width  The capture width
/// Output parameter height The capture height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_capture_resolution()
/// @see camera_foreach_supported_capture_resolution()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_capture_resolution(
  camera_h camera,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaCamera.camera_get_capture_resolution(
      camera,
      width,
      height,
    );

/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @brief Gets the camera device count.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the device supports primary and secondary camera, this returns @c 2. If @c 1 is returned, the device only supports primary camera.
/// Parameter  camera       The handle to the camera
/// Output parameter device_count The device count
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_device_count(
  camera_h camera,
  ffi.Pointer<ffi.Int> device_count,
) =>
    tizenCapiMediaCamera.camera_get_device_count(
      camera,
      device_count,
    );

/// @brief Gets the state of camera device.
/// @since_tizen 3.0
/// Parameter  device The hardware camera type
/// Output parameter state  The current state of the device
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_device_state(
  int device,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaCamera.camera_get_device_state(
      device,
      state,
    );

/// @ingroup CAPI_MEDIA_CAMERA_DISPLAY_MODULE
/// @brief Gets the display flip.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter flip   The display flip
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_display_flip()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_display_flip(
  camera_h camera,
  ffi.Pointer<ffi.Int32> flip,
) =>
    tizenCapiMediaCamera.camera_get_display_flip(
      camera,
      flip,
    );

/// @ingroup CAPI_MEDIA_CAMERA_DISPLAY_MODULE
/// @brief Gets the display mode.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter mode   The display mode
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_display_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_display_mode(
  camera_h camera,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaCamera.camera_get_display_mode(
      camera,
      mode,
    );

/// @brief Gets the hint for display reuse.
/// @since_tizen 3.0
/// @remarks If the current display type is #CAMERA_DISPLAY_TYPE_NONE, this function will return #CAMERA_ERROR_INVALID_OPERATION.
/// Parameter  camera The handle to the camera
/// Output parameter hint   The hint for display reuse; true - reuse the display, false - do not reuse
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_display_reuse_hint()
/// @see camera_change_device()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_display_reuse_hint(
  camera_h camera,
  ffi.Pointer<ffi.Bool> hint,
) =>
    tizenCapiMediaCamera.camera_get_display_reuse_hint(
      camera,
      hint,
    );

/// @ingroup CAPI_MEDIA_CAMERA_DISPLAY_MODULE
/// @brief Gets the display rotation.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera   The handle to the camera
/// Output parameter rotation The display rotation
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_display_rotation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_display_rotation(
  camera_h camera,
  ffi.Pointer<ffi.Int32> rotation,
) =>
    tizenCapiMediaCamera.camera_get_display_rotation(
      camera,
      rotation,
    );

/// @brief Gets the facing direction of camera module.
/// @since_tizen 3.0
/// Parameter  camera           The handle to the camera
/// Output parameter facing_direction The facing direction of camera module
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_facing_direction(
  camera_h camera,
  ffi.Pointer<ffi.Int32> facing_direction,
) =>
    tizenCapiMediaCamera.camera_get_facing_direction(
      camera,
      facing_direction,
    );

/// @brief Gets the camera's flash state.
/// @since_tizen 3.0
/// Parameter  device The hardware camera to access
/// Output parameter state  The current flash state
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_attr_set_flash_mode()
/// @see camera_attr_get_flash_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_flash_state(
  int device,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaCamera.camera_get_flash_state(
      device,
      state,
    );

/// @brief Gets the format of the preview stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter format The preview data format
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_preview_format()
/// @see camera_foreach_supported_preview_format()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_preview_format(
  camera_h camera,
  ffi.Pointer<ffi.Int32> format,
) =>
    tizenCapiMediaCamera.camera_get_preview_format(
      camera,
      format,
    );

/// @brief Gets the resolution of the preview.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter width  The preview width
/// Output parameter height The preview height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_preview_resolution()
/// @see camera_foreach_supported_preview_resolution()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_preview_resolution(
  camera_h camera,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaCamera.camera_get_preview_resolution(
      camera,
      width,
      height,
    );

/// @brief Gets the recommended preview resolution.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Depending on the capture resolution aspect ratio and display resolution, the recommended preview resolution is determined.
/// Parameter  camera The handle to the camera
/// Output parameter width  The preview width
/// Output parameter height The preview height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_preview_resolution()
/// @see camera_foreach_supported_preview_resolution()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_recommended_preview_resolution(
  camera_h camera,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiMediaCamera.camera_get_recommended_preview_resolution(
      camera,
      width,
      height,
    );

/// @brief Gets the state of the camera.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera The handle to the camera
/// Output parameter state  The current state of the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_create()
/// @see camera_start_preview()
/// @see camera_stop_preview()
/// @see camera_start_capture()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_get_state(
  camera_h camera,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaCamera.camera_get_state(
      camera,
      state,
    );

/// @ingroup CAPI_MEDIA_CAMERA_DISPLAY_MODULE
/// @brief Gets the visible property of display.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  camera  The handle to the camera
/// Output parameter visible @c true if camera display is visible, otherwise @c false
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_display_visible()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_is_display_visible(
  camera_h camera,
  ffi.Pointer<ffi.Bool> visible,
) =>
    tizenCapiMediaCamera.camera_is_display_visible(
      camera,
      visible,
    );

/// @brief Gets continuous capture feature's supported state.
/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter camera The handle to the camera
/// @return @c true on supported, otherwise false
/// @exception #CAMERA_ERROR_NONE Successful
/// @exception #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
///
/// Module getter: `tizenCapiMediaCamera`.
bool camera_is_supported_continuous_capture(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_is_supported_continuous_capture(
      camera,
    );

/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @brief Gets the face detection feature's supported state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter camera The handle to the camera
/// @return @c true if supported, otherwise @c false
/// @exception #CAMERA_ERROR_NONE Successful
/// @exception #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_start_face_detection()
/// @see camera_stop_face_detection()
///
/// Module getter: `tizenCapiMediaCamera`.
bool camera_is_supported_face_detection(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_is_supported_face_detection(
      camera,
    );

/// @brief Gets the media packet preview callback feature's supported state.
/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter camera The handle to the camera
/// @return @c true if supported, otherwise @c false
/// @exception #CAMERA_ERROR_NONE Successful
/// @exception #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
///
/// Module getter: `tizenCapiMediaCamera`.
bool camera_is_supported_media_packet_preview_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_is_supported_media_packet_preview_cb(
      camera,
    );

/// @brief Gets the zero shutter lag feature's supported state.
/// @ingroup CAPI_MEDIA_CAMERA_CAPABILITY_MODULE
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If supporting zero shutter lag, continuous shot can be done with full capture size. \n
/// The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter camera The handle to the camera
/// @return @c true if supported, otherwise @c false
/// @exception #CAMERA_ERROR_NONE Successful
/// @exception #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @exception #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
///
/// Module getter: `tizenCapiMediaCamera`.
bool camera_is_supported_zero_shutter_lag(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_is_supported_zero_shutter_lag(
      camera,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 3.0
/// Parameter cb_id The id of registered callback
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @see camera_add_device_state_changed_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_remove_device_state_changed_cb(
  int cb_id,
) =>
    tizenCapiMediaCamera.camera_remove_device_state_changed_cb(
      cb_id,
    );

/// @brief Sets the format of an image to be captured.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function should be called before capturing (see camera_start_capture()).
/// Parameter  camera The handle to the camera
/// Output parameter format The format of the image to be captured
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_start_capture()
/// @see camera_get_capture_format()
/// @see camera_foreach_supported_capture_format()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_capture_format(
  camera_h camera,
  int format,
) =>
    tizenCapiMediaCamera.camera_set_capture_format(
      camera,
      format,
    );

/// @brief Sets the resolution of the captured image.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter width  The capture width
/// Parameter height The capture height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_start_capture()
/// @see camera_get_capture_resolution()
/// @see camera_foreach_supported_capture_resolution()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_capture_resolution(
  camera_h camera,
  int width,
  int height,
) =>
    tizenCapiMediaCamera.camera_set_capture_resolution(
      camera,
      width,
      height,
    );

/// @brief Sets the display handle to show preview images.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function must be called before previewing (see camera_start_preview()).
/// In Custom ROI display mode, camera_attr_set_display_roi_area() function must be called before calling this function.
/// @remarks This function must be called in main thread of the application.
/// Otherwise, it will return #CAMERA_ERROR_INVALID_OPERATION by internal restriction.
/// To avoid #CAMERA_ERROR_INVALID_OPERATION in sub thread, ecore_thread_main_loop_begin() and
/// ecore_thread_main_loop_end() can be used, but deadlock can occur if the main thread is busy.
/// So, it's not recommended to use them. (Since 5.0)
/// Parameter camera  The handle to the camera
/// Parameter type    The display type
/// Parameter display The display handle from #GET_DISPLAY
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED.
///
/// @see camera_start_preview()
/// @see #GET_DISPLAY
/// @see ecore_thread_main_loop_begin()
/// @see ecore_thread_main_loop_end()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_display(
  camera_h camera,
  int type,
  camera_display_h display,
) =>
    tizenCapiMediaCamera.camera_set_display(
      camera,
      type,
      display,
    );

/// @ingroup CAPI_MEDIA_CAMERA_DISPLAY_MODULE
/// @brief Sets the display flip.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter flip   The display flip
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Display type is incorrect
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_get_display_flip()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_display_flip(
  camera_h camera,
  int flip,
) =>
    tizenCapiMediaCamera.camera_set_display_flip(
      camera,
      flip,
    );

/// @ingroup CAPI_MEDIA_CAMERA_DISPLAY_MODULE
/// @brief Sets the display mode.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// Parameter mode   The display mode
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_get_display_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_display_mode(
  camera_h camera,
  int mode,
) =>
    tizenCapiMediaCamera.camera_set_display_mode(
      camera,
      mode,
    );

/// @brief Sets the hint for display reuse.
/// @details If the hint is set to true, the display will be reused when the camera device is changed with camera_change_device().
/// @since_tizen 3.0
/// @remarks If the current display type is #CAMERA_DISPLAY_TYPE_NONE, this function will return #CAMERA_ERROR_INVALID_OPERATION.
/// Parameter camera The handle to the camera
/// Parameter hint   The hint for display reuse; true - reuse the display, false - do not reuse
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Internal error
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre    The camera state must be set to #CAMERA_STATE_PREVIEW.
/// @see camera_get_display_reuse_hint()
/// @see camera_change_device()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_display_reuse_hint(
  camera_h camera,
  bool hint,
) =>
    tizenCapiMediaCamera.camera_set_display_reuse_hint(
      camera,
      hint,
    );

/// @ingroup CAPI_MEDIA_CAMERA_DISPLAY_MODULE
/// @brief Sets the display rotation.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function should be called before previewing (see camera_start_preview())
/// Parameter camera   The handle to the camera
/// Parameter rotation The display rotation
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Display type is incorrect
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_start_preview()
/// @see camera_get_display_rotation()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_display_rotation(
  camera_h camera,
  int rotation,
) =>
    tizenCapiMediaCamera.camera_set_display_rotation(
      camera,
      rotation,
    );

/// @ingroup CAPI_MEDIA_CAMERA_DISPLAY_MODULE
/// @brief Sets the visible property for display.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera  The handle to the camera
/// Parameter visible The display visibility property
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_is_display_visible()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_display_visible(
  camera_h camera,
  bool visible,
) =>
    tizenCapiMediaCamera.camera_set_display_visible(
      camera,
      visible,
    );

/// @brief Registers a callback function to be called when an asynchronous operation error occurs.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This callback informs about a critical error situation.\n
/// When this callback is invoked, the user should release the resource and terminate the application.\n
/// In case of errors, one of the following codes will occur:\n
/// #CAMERA_ERROR_DEVICE,\n
/// #CAMERA_ERROR_INVALID_OPERATION,\n
/// #CAMERA_ERROR_OUT_OF_MEMORY.
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function will invoke camera_error_cb() when an asynchronous operation error occurs.
///
/// @see camera_unset_error_cb()
/// @see camera_error_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_error_cb(
  camera_h camera,
  camera_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_set_error_cb(
      camera,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when the auto-focus state changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function will invoke camera_focus_changed_cb() when the auto-focus state changes.
/// @see camera_start_focusing()
/// @see camera_cancel_focusing()
/// @see camera_unset_focus_changed_cb()
/// @see camera_focus_changed_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_focus_changed_cb(
  camera_h camera,
  camera_focus_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_set_focus_changed_cb(
      camera,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when the camera is interrupted by policy.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_unset_interrupted_cb()
/// @see camera_interrupted_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_interrupted_cb(
  camera_h camera,
  camera_interrupted_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_set_interrupted_cb(
      camera,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when the camera interrupt is started by policy.
/// @since_tizen 4.0
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @see camera_unset_interrupt_started_cb()
/// @see camera_interrupt_started_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_interrupt_started_cb(
  camera_h camera,
  camera_interrupt_started_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_set_interrupt_started_cb(
      camera,
      callback,
      user_data,
    );

/// @brief Registers a media packet callback function to be called once per frame when previewing.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This callback does not work in video recorder mode.\n
/// This function should be called before previewing (see camera_start_preview())\n
/// A registered callback is called on the internal thread of the camera.\n
/// A video frame can be retrieved using a registered callback as a media packet.\n
/// The callback function holds the same buffer that will be drawn on the display device.\n
/// So if you change the media packet in a registered callback, it will be displayed on the device\n
/// and the media packet is available until it's destroyed by media_packet_destroy().
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be registered
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera's state should be #CAMERA_STATE_CREATED.
/// @see camera_start_preview()
/// @see camera_unset_media_packet_preview_cb()
/// @see camera_media_packet_preview_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_media_packet_preview_cb(
  camera_h camera,
  camera_media_packet_preview_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_set_media_packet_preview_cb(
      camera,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called once per frame when previewing.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This callback does not work in the video recorder mode.\n
/// Before 4.0, the only allowed state for calling this function was #CAMERA_STATE_CREATED.\n
/// Since 4.0, #CAMERA_STATE_PREVIEW has been added as an allowed state,\n
/// so that this function could be called before previewing or even while previewing.\n
/// A registered callback is called on the internal thread of the camera.\n
/// A video frame can be retrieved using a registered callback,\n
/// and the buffer is only available in a registered callback.\n
/// Since tizen 3.0, if you change the buffer in a registered callback,\n
/// it could not be displayed on the device in case of copied buffer.\n
/// and if camera_is_supported_media_packet_preview_cb() returns false,\n
/// it's copied buffer case.
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to be registered
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre Before 4.0 : The camera state must be set to #CAMERA_STATE_CREATED.\n
/// Since  4.0 : The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
/// @see camera_start_preview()
/// @see camera_unset_preview_cb()
/// @see camera_preview_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_preview_cb(
  camera_h camera,
  camera_preview_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_set_preview_cb(
      camera,
      callback,
      user_data,
    );

/// @brief Sets the preview data format.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function should be called before previewing (see camera_start_preview()).
/// Parameter camera The handle to the camera
/// Parameter format The preview data format
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED.
/// @see camera_start_preview()
/// @see camera_get_preview_format()
/// @see camera_foreach_supported_preview_format()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_preview_format(
  camera_h camera,
  int format,
) =>
    tizenCapiMediaCamera.camera_set_preview_format(
      camera,
      format,
    );

/// @brief Sets the resolution of the preview.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function should be called before previewing (camera_start_preview()).
/// Parameter camera The handle to the camera
/// Parameter width  The preview width
/// Parameter height The preview height
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_PREVIEW.
///
/// @see camera_start_preview()
/// @see camera_get_preview_resolution()
/// @see camera_foreach_supported_preview_resolution()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_preview_resolution(
  camera_h camera,
  int width,
  int height,
) =>
    tizenCapiMediaCamera.camera_set_preview_resolution(
      camera,
      width,
      height,
    );

/// @brief Registers a callback function to be called when the camera state changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post This function will invoke camera_state_changed_cb() when the camera state changes.
/// @see camera_unset_state_changed_cb()
/// @see camera_state_changed_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_set_state_changed_cb(
  camera_h camera,
  camera_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_set_state_changed_cb(
      camera,
      callback,
      user_data,
    );

/// @brief Starts capturing of still images.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// @remarks This function causes the transition of the camera state from #CAMERA_STATE_CAPTURING to #CAMERA_STATE_CAPTURED automatically\n
/// and the corresponding callback function camera_capturing_cb() and camera_capture_completed_cb() will be invoked\n
/// The captured image will be delivered through camera_capturing_cb().\n
/// camera_capture_completed_cb() callback notifies about completion of camera_capturing_cb(). \n
/// The camera's preview should be restarted by calling camera_start_preview().
/// Parameter camera       The handle to the camera
/// Parameter capturing_cb The callback for capturing data
/// Parameter completed_cb The callback for notification of completion
/// Parameter user_data    The user data
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_PREVIEW. \n
/// If needed, modify capture resolution(camera_set_capture_resolution()),
/// capture format(camera_set_capture_format()), or image quality(camera_attr_set_image_quality()).
/// @post If it succeeds the camera state will be #CAMERA_STATE_CAPTURED.
///
/// @see camera_start_preview()
/// @see camera_start_continuous_capture();
/// @see camera_foreach_supported_capture_resolution()
/// @see camera_set_capture_resolution()
/// @see camera_get_capture_resolution()
/// @see camera_foreach_supported_capture_format()
/// @see camera_set_capture_format()
/// @see camera_get_capture_format()
/// @see camera_attr_set_image_quality()
/// @see camera_attr_get_image_quality()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_start_capture(
  camera_h camera,
  camera_capturing_cb capturing_cb,
  camera_capture_completed_cb completed_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_start_capture(
      camera,
      capturing_cb,
      completed_cb,
      user_data,
    );

/// @brief Starts continuously capturing still images.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// @remarks If this is not supported zero shutter lag occurs. The capture resolution could be changed to the preview resolution.\n
/// This function causes the transition of the camera state from #CAMERA_STATE_CAPTURING to #CAMERA_STATE_CAPTURED automatically\n
/// and the corresponding callback function camera_capturing_cb() and camera_capture_completed_cb() will be invoked\n
/// Each Captured image will be delivered through camera_capturing_cb().\n
/// The camera_capture_completed_cb() callback notifies about the completion of an entire capture.\n
/// The camera's preview should be restarted by calling camera_start_preview().\n.
/// Parameter camera       The handle to the camera
/// Parameter count        The number of still images
/// Parameter interval     The interval of the capture (millisecond)
/// Parameter capturing_cb The callback for capturing data
/// Parameter completed_cb The callback for notification of completion
/// Parameter user_data    The user data
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @post   If it succeeds the camera state will be #CAMERA_STATE_CAPTURED.
///
/// @see camera_start_preview()
/// @see camera_start_capture();
/// @see camera_stop_continuous_capture()
/// @see camera_is_supported_zero_shutter_lag()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_start_continuous_capture(
  camera_h camera,
  int count,
  int interval,
  camera_capturing_cb capturing_cb,
  camera_capture_completed_cb completed_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_start_continuous_capture(
      camera,
      count,
      interval,
      capturing_cb,
      completed_cb,
      user_data,
    );

/// @brief Starts face detection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// @remarks This should be called after the preview is started.\n
/// This callback will be invoked when the face is detected in the preview frame.\n
/// Internally it starts continuous focus and focusing on the detected face.\n
/// When face detection is running, the camera_start_focusing(), camera_cancel_focusing(), camera_attr_set_af_mode(), camera_attr_set_af_area(), camera_attr_set_exposure_mode(), and camera_attr_set_whitebalance() settings are ignored.\n
/// If camera_stop_preview() is invoked, face detection is stopped and then preview is resumed using camera_start_preview(), this method should be called again to resume face detection.
/// Parameter camera    The handle to the camera
/// Parameter callback  The callback to notify face detection
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Not preview state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Not supported this feature
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be #CAMERA_STATE_PREVIEW.
///
/// @see camera_stop_face_detection()
/// @see camera_face_detected_cb()
/// @see camera_is_supported_face_detection()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_start_face_detection(
  camera_h camera,
  camera_face_detected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaCamera.camera_start_face_detection(
      camera,
      callback,
      user_data,
    );

/// @brief Starts camera auto-focusing, asynchronously.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// @remarks If continuous status is @c true, the camera continuously tries to focus.
/// Parameter camera     The handle to the camera
/// Parameter continuous The status of continuous focusing
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_PREVIEW.
/// @post The camera focus state will be #CAMERA_FOCUS_STATE_ONGOING.
///
/// @see camera_cancel_focusing()
/// @see camera_set_focus_changed_cb()
/// @see camera_focus_changed_cb()
/// @see camera_attr_set_af_mode()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_start_focusing(
  camera_h camera,
  bool continuous,
) =>
    tizenCapiMediaCamera.camera_start_focusing(
      camera,
      continuous,
    );

/// @brief Starts capturing and drawing preview frames on the screen.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_RESOURCE_CONFLICT Resource conflict error
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_DEVICE_BUSY The device is being used in another application or is performing other operations
/// @retval #CAMERA_ERROR_DEVICE_NOT_FOUND No camera device
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre    The camera state must be set to #CAMERA_STATE_CREATED or #CAMERA_STATE_CAPTURED.\n
/// You must set the display handle. \n
/// If needed, modify preview FPS(camera_attr_set_preview_fps()),
/// preview resolution(camera_set_preview_resolution()), or preview format(camera_set_preview_format()).
/// @post   If it succeeds, the camera state will be #CAMERA_STATE_PREVIEW.\n
/// camera_preview_cb() will be called when preview image data becomes available.
///
/// @see camera_stop_preview()
/// @see camera_set_display()
/// @see camera_set_preview_cb()
/// @see camera_set_media_packet_preview_cb()
/// @see camera_foreach_supported_preview_resolution()
/// @see camera_set_preview_resolution()
/// @see camera_get_preview_resolution()
/// @see camera_foreach_supported_preview_format()
/// @see camera_set_preview_format()
/// @see camera_get_preview_format()
/// @see camera_attr_foreach_supported_fps()
/// @see camera_attr_set_preview_fps()
/// @see camera_attr_get_preview_fps()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_start_preview(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_start_preview(
      camera,
    );

/// @brief Aborts continuous capturing.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// @remarks The camera state will be changed to #CAMERA_STATE_CAPTURED.
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_PREVIEW.
///
/// @see camera_start_continuous_capture()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_stop_continuous_capture(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_stop_continuous_capture(
      camera,
    );

/// @brief Stops face detection.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre This should be called after face detection is started.
///
/// @see camera_start_face_detection()
/// @see camera_is_supported_face_detection()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_stop_face_detection(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_stop_face_detection(
      camera,
    );

/// @brief Stops capturing and drawing preview frames.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/camera
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_INVALID_STATE Invalid state
/// @retval #CAMERA_ERROR_INVALID_OPERATION Invalid operation
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @pre The camera state must be set to #CAMERA_STATE_PREVIEW.
/// @post The camera state will be #CAMERA_STATE_CREATED.
/// @see camera_start_preview()
/// @see camera_unset_preview_cb()
/// @see camera_unset_media_packet_preview_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_stop_preview(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_stop_preview(
      camera,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_error_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_unset_error_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_unset_error_cb(
      camera,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_focus_changed_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_unset_focus_changed_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_unset_focus_changed_cb(
      camera,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_interrupted_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_unset_interrupted_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_unset_interrupted_cb(
      camera,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 4.0
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @see camera_set_interrupt_started_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_unset_interrupt_started_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_unset_interrupt_started_cb(
      camera,
    );

/// @brief Unregisters the media packet callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_media_packet_preview_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_unset_media_packet_preview_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_unset_media_packet_preview_cb(
      camera,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_preview_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_unset_preview_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_unset_preview_cb(
      camera,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter camera The handle to the camera
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CAMERA_ERROR_NONE Successful
/// @retval #CAMERA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CAMERA_ERROR_PERMISSION_DENIED The access to the resources can not be granted
/// @retval #CAMERA_ERROR_NOT_SUPPORTED The feature is not supported
/// @retval #CAMERA_ERROR_SERVICE_DISCONNECTED The socket to multimedia server is disconnected
/// @see camera_set_state_changed_cb()
///
/// Module getter: `tizenCapiMediaCamera`.
int camera_unset_state_changed_cb(
  camera_h camera,
) =>
    tizenCapiMediaCamera.camera_unset_state_changed_cb(
      camera,
    );

