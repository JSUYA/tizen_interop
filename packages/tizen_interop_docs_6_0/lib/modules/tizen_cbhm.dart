// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCbhm`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcbhm.so.1`.
///
/// UI / Clipboard History Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_cbhm;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Closes clipboard handle.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @see cbhm_open_service()
///
/// Module getter: `tizenCbhm`.
int cbhm_close_service(
  cbhm_h cbhm_handle,
) =>
    tizenCbhm.cbhm_close_service(
      cbhm_handle,
    );

/// @brief Hides clipboard.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @see cbhm_show()
///
/// Module getter: `tizenCbhm`.
int cbhm_hide(
  cbhm_h cbhm_handle,
) =>
    tizenCbhm.cbhm_hide(
      cbhm_handle,
    );

/// @brief Adds event callback function for receiving changed event of clipboard items.
/// @since_tizen 4.0
/// Parameter cbhm_handle The clipboard handle
/// Parameter callback The callback function called when a clipboard item is changed
/// Parameter user_data User data to be passed to the given event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @retval #CBHM_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCbhm`.
int cbhm_item_changed_callback_add(
  cbhm_h cbhm_handle,
  cbhm_item_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCbhm.cbhm_item_changed_callback_add(
      cbhm_handle,
      callback,
      user_data,
    );

/// @brief Removes event callback function for receiving changed event of clipboard items.
/// @since_tizen 4.0
/// Parameter cbhm_handle The clipboard handle
/// Parameter callback The callback function to be removed
/// Parameter user_data User data to be passed to the given event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
///
/// Module getter: `tizenCbhm`.
int cbhm_item_changed_callback_remove(
  cbhm_h cbhm_handle,
  cbhm_item_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCbhm.cbhm_item_changed_callback_remove(
      cbhm_handle,
      callback,
      user_data,
    );

/// @brief Gets the count of clipboard items.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// @return The count of clipboard items
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
///
/// Module getter: `tizenCbhm`.
int cbhm_item_count_get(
  cbhm_h cbhm_handle,
) =>
    tizenCbhm.cbhm_item_count_get(
      cbhm_handle,
    );

/// @brief Adds event callback function of selecting a clipboard item.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// Parameter callback Callback function called when a clipboard item is selected
/// Parameter user_data User data to be passed to the given event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @retval #CBHM_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCbhm`.
int cbhm_item_selected_callback_add(
  cbhm_h cbhm_handle,
  cbhm_selected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCbhm.cbhm_item_selected_callback_add(
      cbhm_handle,
      callback,
      user_data,
    );

/// @brief Removes event callback function for selecting a clipboard item.
/// @since_tizen 4.0
/// Parameter cbhm_handle The clipboard handle
/// Parameter callback The callback function to be deleted
/// Parameter user_data User data to be passed to the given event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
///
/// Module getter: `tizenCbhm`.
int cbhm_item_selected_callback_remove(
  cbhm_h cbhm_handle,
  cbhm_selected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCbhm.cbhm_item_selected_callback_remove(
      cbhm_handle,
      callback,
      user_data,
    );

/// @brief Gets the type of the latest item in clipboard.
/// @since_tizen 4.0
/// Parameter cbhm_handle The clipboard handle
/// Output parameter type The type of the latest item
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @see cbhm_selection_type_set()
///
/// Module getter: `tizenCbhm`.
int cbhm_latest_item_type_get(
  cbhm_h cbhm_handle,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCbhm.cbhm_latest_item_type_get(
      cbhm_handle,
      type,
    );

/// @brief Adds event callback function of receiving monitored event of clipboard.
/// @since_tizen 4.0
/// Parameter cbhm_handle Clipboard handle
/// Parameter callback Callback function called when clipboard becomes active or inactive
/// Parameter user_data User data to be passed to the given event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @retval #CBHM_ERROR_OUT_OF_MEMORY Out of memory
/// @see cbhm_monitor_callback_remove()
///
/// Module getter: `tizenCbhm`.
int cbhm_monitor_callback_add(
  cbhm_h cbhm_handle,
  cbhm_monitor_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCbhm.cbhm_monitor_callback_add(
      cbhm_handle,
      callback,
      user_data,
    );

/// @brief Deletes event callback function of receiving monitored event of clipboard.
/// @since_tizen 4.0
/// Parameter cbhm_handle Clipboard handle
/// Parameter callback Callback function to be deleted
/// Parameter user_data User data to be passed to the given event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @see cbhm_monitor_callback_add()
///
/// Module getter: `tizenCbhm`.
int cbhm_monitor_callback_remove(
  cbhm_h cbhm_handle,
  cbhm_monitor_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCbhm.cbhm_monitor_callback_remove(
      cbhm_handle,
      callback,
      user_data,
    );

/// @brief Creates and initializes clipboard handle.
/// @since_tizen 3.0
/// Output parameter cbhm_handle Clipboard handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @retval #CBHM_ERROR_OUT_OF_MEMORY Out of memory
/// @see cbhm_close_service()
///
/// Module getter: `tizenCbhm`.
int cbhm_open_service(
  ffi.Pointer<cbhm_h> cbhm_handle,
) =>
    tizenCbhm.cbhm_open_service(
      cbhm_handle,
    );

/// @brief Receives data from clipboard.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// Parameter type Selection type
/// Parameter callback Callback function receiving data from clipboard
/// Parameter user_data User data to be passed to the given event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @retval #CBHM_ERROR_NO_DATA No data available
/// @see cbhm_selection_set()
///
/// Module getter: `tizenCbhm`.
int cbhm_selection_get(
  cbhm_h cbhm_handle,
  int type,
  cbhm_selection_data_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCbhm.cbhm_selection_get(
      cbhm_handle,
      type,
      callback,
      user_data,
    );

/// @brief Sends data to clipboard.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// Parameter type Selection type
/// Parameter data Data to be sent
/// Parameter len The length of data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @retval #CBHM_ERROR_OUT_OF_MEMORY Out of memory
/// @see cbhm_selection_get()
///
/// Module getter: `tizenCbhm`.
int cbhm_selection_set(
  cbhm_h cbhm_handle,
  int type,
  ffi.Pointer<ffi.Void> data,
  int len,
) =>
    tizenCbhm.cbhm_selection_set(
      cbhm_handle,
      type,
      data,
      len,
    );

/// @brief Gets clipboard selection type.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// Output parameter type Selection type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @see cbhm_selection_type_set()
///
/// Module getter: `tizenCbhm`.
int cbhm_selection_type_get(
  cbhm_h cbhm_handle,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCbhm.cbhm_selection_type_get(
      cbhm_handle,
      type,
    );

/// @brief Sets clipboard selection type.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// Parameter type Selection type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @see cbhm_selection_type_get()
///
/// Module getter: `tizenCbhm`.
int cbhm_selection_type_set(
  cbhm_h cbhm_handle,
  int type,
) =>
    tizenCbhm.cbhm_selection_type_set(
      cbhm_handle,
      type,
    );

/// @brief Shows clipboard.
/// @since_tizen 3.0
/// Parameter cbhm_handle Clipboard handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
/// @see cbhm_hide()
///
/// Module getter: `tizenCbhm`.
int cbhm_show(
  cbhm_h cbhm_handle,
) =>
    tizenCbhm.cbhm_show(
      cbhm_handle,
    );

/// @brief Gets the clipboard state.
/// @since_tizen 4.0
/// Parameter cbhm_handle Clipboard handle
/// Output parameter type State type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CBHM_ERROR_NONE Successful
/// @retval #CBHM_ERROR_INVALID_PARAMETER Invalid function parameters
///
/// Module getter: `tizenCbhm`.
int cbhm_state_get(
  cbhm_h cbhm_handle,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCbhm.cbhm_state_get(
      cbhm_handle,
      type,
    );

