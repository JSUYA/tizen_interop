// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwPreference`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-preference.so.0`.
///
/// Application Framework / Application / Preference.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_preference;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Retrieves all key-value pairs in the preference by invoking the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter callback The callback function to get key value once for each key-value pair in the preference
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @post This function invokes preference_item_cb() repeatedly to get each key-value pair in the preference.
/// @see preference_item_cb()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_foreach_item(
  preference_item_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPreference.preference_foreach_item(
      callback,
      user_data,
    );

/// @brief Gets a boolean value from the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to retrieve
/// Output parameter value The @c boolean value associated with the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_NO_KEY Required key not available
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_set_boolean()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_get_boolean(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Bool> value,
) =>
    tizenCapiAppfwPreference.preference_get_boolean(
      key,
      value,
    );

/// @brief Gets a double value from the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to retrieve
/// Output parameter value The @c double value associated with the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_NO_KEY Required key not available
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_set_double()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_get_double(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenCapiAppfwPreference.preference_get_double(
      key,
      value,
    );

/// @brief Gets an integer value from the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to retrieve
/// Output parameter value The @c int value for the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_NO_KEY Required key not available
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_set_int()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_get_int(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiAppfwPreference.preference_get_int(
      key,
      value,
    );

/// @brief Gets a string value from the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks @a value must be released using free().
/// Parameter key The name of the key to retrieve
/// Output parameter value The @c string value associated with the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_NO_KEY Required key not available
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_set_string()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_get_string(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiAppfwPreference.preference_get_string(
      key,
      value,
    );

/// @brief Gets the type of a preference.
/// @since_tizen 5.5
/// Parameter key The name of the key
/// Output parameter type The preference type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_NO_KEY Required key not available
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @see #preference_type_e
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_get_type(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiAppfwPreference.preference_get_type(
      key,
      type,
    );

/// @brief Checks whether the given @a key exists in the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to check
/// Output parameter existing If @c true the @a key exists in the preference,
/// otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_is_existing(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Bool> existing,
) =>
    tizenCapiAppfwPreference.preference_is_existing(
      key,
      existing,
    );

/// @brief Removes any value with the given @a key from the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to remove
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_NO_KEY Required key not available
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_remove(
  ffi.Pointer<ffi.Char> key,
) =>
    tizenCapiAppfwPreference.preference_remove(
      key,
    );

/// @brief Removes all key-value pairs from the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_remove()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_remove_all() =>
    tizenCapiAppfwPreference.preference_remove_all();

/// @brief Sets a boolean value in the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to modify
/// Parameter value The new @c boolean value associated with the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_get_boolean()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_set_boolean(
  ffi.Pointer<ffi.Char> key,
  bool value,
) =>
    tizenCapiAppfwPreference.preference_set_boolean(
      key,
      value,
    );

/// @brief Registers a callback function to be invoked when value of the given key in the preference changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to monitor
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_NO_KEY Required key not available
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @post preference_changed_cb() will be invoked.
/// @see preference_unset_changed_cb()
/// @see preference_changed_cb()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_set_changed_cb(
  ffi.Pointer<ffi.Char> key,
  preference_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPreference.preference_set_changed_cb(
      key,
      callback,
      user_data,
    );

/// @brief Sets a double value in the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to modify
/// Parameter value  The new @c double value associated with the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_get_double()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_set_double(
  ffi.Pointer<ffi.Char> key,
  double value,
) =>
    tizenCapiAppfwPreference.preference_set_double(
      key,
      value,
    );

/// @brief Sets an integer value in the preference.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to modify
/// Parameter value  The new @c int value for the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_get_int()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_set_int(
  ffi.Pointer<ffi.Char> key,
  int value,
) =>
    tizenCapiAppfwPreference.preference_set_int(
      key,
      value,
    );

/// @brief Sets a string value in the preference.
/// @details It makes a deep copy of the added string value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to modify
/// Parameter value The new @c string value associated with the given key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_get_string()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_set_string(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiAppfwPreference.preference_set_string(
      key,
      value,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter key The name of the key to monitor
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PREFERENCE_ERROR_NONE Successful
/// @retval #PREFERENCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PREFERENCE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PREFERENCE_ERROR_NO_KEY Required key not available
/// @retval #PREFERENCE_ERROR_IO_ERROR Internal I/O Error
/// @see preference_set_changed_cb()
///
/// Module getter: `tizenCapiAppfwPreference`.
int preference_unset_changed_cb(
  ffi.Pointer<ffi.Char> key,
) =>
    tizenCapiAppfwPreference.preference_unset_changed_cb(
      key,
    );

