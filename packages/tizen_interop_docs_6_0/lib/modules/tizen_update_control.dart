// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenUpdateControl`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libupdate-control.so.1`.
///
/// System / Update Control.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_update_control;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @platform
/// @brief Cancels the update reservation.
///
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/updatecontrol.admin
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #UPDATE_CONTROL_ERROR_NONE Successful
/// @retval #UPDATE_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #UPDATE_CONTROL_ERROR_SYSTEM_ERROR System error
/// @retval #UPDATE_CONTROL_ERROR_INVALID_OPERATION Function not implemented
/// @retval #UPDATE_CONTROL_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenUpdateControl`.
int update_control_cancel_reservation() =>
    tizenUpdateControl.update_control_cancel_reservation();

/// @brief Requests checking new version of firmware.
///
/// @since_tizen 5.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #UPDATE_CONTROL_ERROR_NONE Successful
/// @retval #UPDATE_CONTROL_ERROR_CONNECTION_REFUSED Connection refused
/// @retval #UPDATE_CONTROL_ERROR_SYSTEM_ERROR System error
/// @retval #UPDATE_CONTROL_ERROR_INVALID_OPERATION Function not implemented
/// @retval #UPDATE_CONTROL_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenUpdateControl`.
int update_control_check_new_version() =>
    tizenUpdateControl.update_control_check_new_version();

/// @brief Deinitializes the update controller.
///
/// @since_tizen 5.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #UPDATE_CONTROL_ERROR_NONE Successful
/// @retval #UPDATE_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #UPDATE_CONTROL_ERROR_SYSTEM_ERROR System error
/// @retval #UPDATE_CONTROL_ERROR_INVALID_OPERATION Function not implemented
/// @retval #UPDATE_CONTROL_ERROR_NOT_SUPPORTED Not supported
/// @see update_control_initialize()
///
/// Module getter: `tizenUpdateControl`.
int update_control_deinitialize() =>
    tizenUpdateControl.update_control_deinitialize();

/// @platform
/// @brief Requests triggering update to new firmware.
///
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/updatecontrol.admin
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #UPDATE_CONTROL_ERROR_NONE Successful
/// @retval #UPDATE_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #UPDATE_CONTROL_ERROR_TIMED_OUT Time out
/// @retval #UPDATE_CONTROL_ERROR_INVALID_PACKAGE Invalid package
/// @retval #UPDATE_CONTROL_ERROR_PACKAGE_NOT_SUPPORTED Package type not supported
/// @retval #UPDATE_CONTROL_ERROR_SYSTEM_ERROR System error
/// @retval #UPDATE_CONTROL_ERROR_INVALID_OPERATION Function not implemented
/// @retval #UPDATE_CONTROL_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenUpdateControl`.
int update_control_do_update() =>
    tizenUpdateControl.update_control_do_update();

/// @brief Requests downloading new version of firmware.
///
/// @since_tizen 5.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #UPDATE_CONTROL_ERROR_NONE Successful
/// @retval #UPDATE_CONTROL_ERROR_FILE_NO_SPACE_ON_DEVICE No space left on device
/// @retval #UPDATE_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #UPDATE_CONTROL_ERROR_CONNECTION_REFUSED Connection refused
/// @retval #UPDATE_CONTROL_ERROR_CONNECTION_ABORTED Software caused connection abort
/// @retval #UPDATE_CONTROL_ERROR_PROTOCOL_NOT_SUPPORTED Protocol not supported
/// @retval #UPDATE_CONTROL_ERROR_INVALID_URI Invalid URI
/// @retval #UPDATE_CONTROL_ERROR_SYSTEM_ERROR System error
/// @retval #UPDATE_CONTROL_ERROR_INVALID_OPERATION Function not implemented
/// @retval #UPDATE_CONTROL_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenUpdateControl`.
int update_control_download_package() =>
    tizenUpdateControl.update_control_download_package();

/// @brief Gets the update property of the given key.
///
/// @since_tizen 5.0
/// @remarks The @a value must be released using free()
/// Parameter property The key of property to get
/// Output parameter value The value of given property
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #UPDATE_CONTROL_ERROR_NONE Successful
/// @retval #UPDATE_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #UPDATE_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #UPDATE_CONTROL_ERROR_KEY_NOT_FOUND Specified property not found
/// @retval #UPDATE_CONTROL_ERROR_KEY_REJECTED Specified property not available
/// @retval #UPDATE_CONTROL_ERROR_SYSTEM_ERROR System error
/// @retval #UPDATE_CONTROL_ERROR_INVALID_OPERATION Function not implemented
/// @retval #UPDATE_CONTROL_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenUpdateControl`.
int update_control_get_property(
  int property,
  ffi.Pointer<ffi.Pointer<ffi.Void>> value,
) =>
    tizenUpdateControl.update_control_get_property(
      property,
      value,
    );

/// @brief Initializes the update controller.
///
/// @since_tizen 5.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #UPDATE_CONTROL_ERROR_NONE Successful
/// @retval #UPDATE_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #UPDATE_CONTROL_ERROR_SYSTEM_ERROR System error
/// @retval #UPDATE_CONTROL_ERROR_INVALID_OPERATION Function not implemented
/// @retval #UPDATE_CONTROL_ERROR_NOT_SUPPORTED Not supported
/// @see update_control_deinitialize()
///
/// Module getter: `tizenUpdateControl`.
int update_control_initialize() =>
    tizenUpdateControl.update_control_initialize();

/// @platform
/// @brief Makes reservation for update.
/// @details Makes update reservation at a specific time. At the given time, it automatically checks, downloads and updates to a new version. To cancel the reservation, call update_control_cancel_reservation().
///
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/updatecontrol.admin
/// @remarks Only one reservation can be used at any given time. If a new reservation is made, the previous one will be removed.
/// Parameter reservation_time The time to start update
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #UPDATE_CONTROL_ERROR_NONE Successful
/// @retval #UPDATE_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #UPDATE_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #UPDATE_CONTROL_ERROR_SYSTEM_ERROR System error
/// @retval #UPDATE_CONTROL_ERROR_INVALID_OPERATION Function not implemented
/// @retval #UPDATE_CONTROL_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenUpdateControl`.
int update_control_make_reservation(
  ffi.Pointer<tm> reservation_time,
) =>
    tizenUpdateControl.update_control_make_reservation(
      reservation_time,
    );

