// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenEom`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libeom.so.0`.
///
/// UI / External Output Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_eom;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Finalizes External Output Manager (EOM).
/// @details User should call this function after using EOM to release all
/// resources of EOM.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @see eom_init()
///
/// Module getter: `tizenEom`.
void eom_deinit() =>
    tizenEom.eom_deinit();

/// @brief Gets the IDs and count of external output.
/// @details This function returns the IDs of external output which are
/// available to connect to target device, and the count of them
/// also. User can get the id of external output.
/// which user want to watch.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks User should free return value by using free().
/// The specific error code can be obtained using the get_last_result() method.
/// Error codes are described in Exception section.
/// Output parameter count  The count of the eom_output_id supported by system
/// @return The array of the eom_output_id if this function succeeds, otherwise
/// NULL
/// @retval The pointer of #eom_output_id
/// @exception #EOM_ERROR_NONE Successful
/// @exception #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #EOM_ERROR_OUT_OF_MEMORY Memory allocation failure
/// @pre eom_init()
/// @see #eom_output_id
/// @see #eom_error_e
///
/// Module getter: `tizenEom`.
ffi.Pointer<eom_output_id> eom_get_eom_output_ids(
  ffi.Pointer<ffi.Int> count,
) =>
    tizenEom.eom_get_eom_output_ids(
      count,
    );

/// @brief Gets attribute of external output.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The specific error code can be obtained using the get_last_result()
/// method. Error codes are described in Exception section.
/// Parameter output_id  The id of external output device
/// Output parameter attribute  The attribute of external output instance
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EOM_ERROR_NO_SUCH_DEVICE Invalid external output instance
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see #eom_output_id
/// @see #eom_error_e
/// @see #eom_output_attribute_e
///
/// Module getter: `tizenEom`.
int eom_get_output_attribute(
  int output_id,
  ffi.Pointer<ffi.Int32> attribute,
) =>
    tizenEom.eom_get_output_attribute(
      output_id,
      attribute,
    );

/// @brief Gets attribute state of external output.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The specific error code can be obtained using the get_last_result()
/// method. Error codes are described in Exception section.
/// Parameter output_id  The id of external output device
/// Output parameter state  The attribute state of external output instance
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EOM_ERROR_NO_SUCH_DEVICE Invalid external output instance
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see #eom_output_id
/// @see #eom_error_e
/// @see #eom_output_attribute_state_e
///
/// Module getter: `tizenEom`.
int eom_get_output_attribute_state(
  int output_id,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenEom.eom_get_output_attribute_state(
      output_id,
      state,
    );

/// @brief Gets mode of external output.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The specific error code can be obtained using the get_last_result()
/// method. Error codes are described in Exception section.
/// Parameter output_id  The id of external output device
/// Output parameter mode  The mode of external output instance
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EOM_ERROR_NO_SUCH_DEVICE Invalid external output instance
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see #eom_output_id
/// @see #eom_error_e
/// @see #eom_output_mode_e
///
/// Module getter: `tizenEom`.
int eom_get_output_mode(
  int output_id,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenEom.eom_get_output_mode(
      output_id,
      mode,
    );

/// @brief Gets physical width/height (millimeters) of external output.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter output_id  The id of external output device
/// Output parameter phy_width  The physical mm width of external output instance
/// Output parameter phy_height  The physical mm height of external output instance
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EOM_ERROR_NO_SUCH_DEVICE Invalid external output instance
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see #eom_output_id
/// @see #eom_error_e
///
/// Module getter: `tizenEom`.
int eom_get_output_physical_size(
  int output_id,
  ffi.Pointer<ffi.Int> phy_width,
  ffi.Pointer<ffi.Int> phy_height,
) =>
    tizenEom.eom_get_output_physical_size(
      output_id,
      phy_width,
      phy_height,
    );

/// @brief Gets resolution of external output.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter output_id  The id of external output device
/// Output parameter width  The width of external output instance
/// Output parameter height  The height of external output instance
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EOM_ERROR_NO_SUCH_DEVICE Invalid external output instance
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see #eom_output_id
/// @see #eom_error_e
///
/// Module getter: `tizenEom`.
int eom_get_output_resolution(
  int output_id,
  ffi.Pointer<ffi.Int> width,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenEom.eom_get_output_resolution(
      output_id,
      width,
      height,
    );

/// @brief Gets type of external output.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The specific error code can be obtained using the get_last_result()
/// method. Error codes are described in Exception section.
/// Parameter output_id  The id of external output device
/// Output parameter type  The type of external output instance
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see #eom_output_id
/// @see #eom_error_e
/// @see #eom_output_type_e
///
/// Module getter: `tizenEom`.
int eom_get_output_type(
  int output_id,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenEom.eom_get_output_type(
      output_id,
      type,
    );

/// @brief Initializes External Output Manager (EOM).
/// @details User should call this function previously for using EOM.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks After all using, call eom_deinit() function for resource returning.
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_CONNECTION_FAILURE The EOM connection failure
/// @see eom_deinit()
/// @see #eom_error_e
///
/// Module getter: `tizenEom`.
int eom_init() =>
    tizenEom.eom_init();

/// @brief Registers a callback function to get output attribute changing
/// notification from External Output Manager (EOM) module.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter callback  The function pointer of eom_attribute_changed_cb()
/// callback function
/// Parameter user_data  The pointer of user data which is passed to
/// eom_attribute_changed_cb() function
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_OUT_OF_MEMORY Memory allocation failure
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see eom_unset_attribute_changed_cb()
/// @see #eom_attribute_changed_cb
///
/// Module getter: `tizenEom`.
int eom_set_attribute_changed_cb(
  eom_attribute_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenEom.eom_set_attribute_changed_cb(
      callback,
      user_data,
    );

/// @brief Registers a callback function to get output mode changing
/// notification from External Output Manager (EOM) module.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter callback  The function pointer of eom_mode_changed_cb() callback
/// function
/// Parameter user_data  The pointer of user data which is passed to
/// eom_mode_changed_cb() function
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_OUT_OF_MEMORY Memory allocation failure
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see eom_unset_mode_changed_cb()
/// @see #eom_mode_changed_cb
///
/// Module getter: `tizenEom`.
int eom_set_mode_changed_cb(
  eom_mode_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenEom.eom_set_mode_changed_cb(
      callback,
      user_data,
    );

/// @brief Registers a callback function to get output connection notification
/// from External Output Manager (EOM) module.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter callback  The function pointer of eom_output_added_cb() callback
/// function
/// Parameter user_data  The pointer of user data which is passed to
/// eom_output_added_cb() function
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_OUT_OF_MEMORY Memory allocation failure
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see eom_unset_output_added_cb()
/// @see #eom_output_added_cb
///
/// Module getter: `tizenEom`.
int eom_set_output_added_cb(
  eom_output_added_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenEom.eom_set_output_added_cb(
      callback,
      user_data,
    );

/// @brief Sets the attribute of the external output ID.
/// @details The application can set the External Output Manager (EOM) attribute
/// to the external output ID.
/// The EOM module manages the windows to display on external output and
/// control the policy of external output. The application can recognize
/// the attribute state and manage the resources when the application receives
/// several notification callback from EOM module.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter output_id  The id of external output device
/// Parameter attr  The attribute of the external output
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EOM_ERROR_NO_SUCH_DEVICE Invalid external output instance
/// @retval #EOM_ERROR_MESSAGE_SENDING_FAILURE Communication failure with EOM
/// module
/// @retval #EOM_ERROR_MESSAGE_OPERATION_FAILURE Operation failure
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see #eom_output_id
/// @see #eom_error_e
///
/// Module getter: `tizenEom`.
int eom_set_output_attribute(
  int output_id,
  int attr,
) =>
    tizenEom.eom_set_output_attribute(
      output_id,
      attr,
    );

/// @brief Registers a callback function to get output disconnection
/// notification from External Output Manager (EOM) module.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter callback  The function pointer of eom_output_removed_cb() callback
/// function
/// Parameter user_data  The pointer of user data which is passed to
/// eom_output_removed_cb() function
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_OUT_OF_MEMORY Memory allocation failure
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see eom_unset_output_removed_cb()
/// @see #eom_output_removed_cb
///
/// Module getter: `tizenEom`.
int eom_set_output_removed_cb(
  eom_output_removed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenEom.eom_set_output_removed_cb(
      callback,
      user_data,
    );

/// @brief Sets window to the external output best resolution of external output
/// device.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter output_id  The id of external output device
/// Parameter win  The pointer of evas object
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EOM_ERROR_NO_SUCH_DEVICE Invalid external output instance
/// @retval #EOM_ERROR_MESSAGE_SENDING_FAILURE Communication failure with EOM
/// module
/// @retval #EOM_ERROR_MESSAGE_OPERATION_FAILURE Operation failure
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see #eom_output_id
/// @see #eom_error_e
///
/// Module getter: `tizenEom`.
int eom_set_output_window(
  int output_id,
  ffi.Pointer<Evas_Object> win,
) =>
    tizenEom.eom_set_output_window(
      output_id,
      win,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter callback  The function pointer of eom_attribute_changed_cb()
/// callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see eom_set_attribute_changed_cb()
/// @see #eom_attribute_changed_cb
///
/// Module getter: `tizenEom`.
int eom_unset_attribute_changed_cb(
  eom_attribute_changed_cb callback,
) =>
    tizenEom.eom_unset_attribute_changed_cb(
      callback,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter callback  The function pointer of eom_mode_changed_cb() callback
/// function
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see eom_set_mode_changed_cb()
/// @see #eom_mode_changed_cb
///
/// Module getter: `tizenEom`.
int eom_unset_mode_changed_cb(
  eom_mode_changed_cb callback,
) =>
    tizenEom.eom_unset_mode_changed_cb(
      callback,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter callback  The function pointer of eom_output_added_cb() callback
/// function
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see eom_set_output_added_cb()
/// @see #eom_output_added_cb
///
/// Module getter: `tizenEom`.
int eom_unset_output_added_cb(
  eom_output_added_cb callback,
) =>
    tizenEom.eom_unset_output_added_cb(
      callback,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter callback  The function pointer of eom_output_removed_cb() callback
/// function
/// @return 0 on success, otherwise a negative error value
/// @retval #EOM_ERROR_NONE Successful
/// @retval #EOM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre eom_init()
/// @pre eom_get_eom_output_ids()
/// @see eom_set_output_removed_cb()
/// @see #eom_output_removed_cb
///
/// Module getter: `tizenEom`.
int eom_unset_output_removed_cb(
  eom_output_removed_cb callback,
) =>
    tizenEom.eom_unset_output_removed_cb(
      callback,
    );

