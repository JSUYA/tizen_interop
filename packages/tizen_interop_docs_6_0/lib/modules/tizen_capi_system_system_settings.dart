// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiSystemSystemSettings`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-system-system-settings.so.0`.
///
/// System / System Settings.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_system_system_settings;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a change event callback for the given system settings key.
/// @details The difference between this function and system_settings_set_changed_cb() is that system_settings_set_changed_cb() can set only one callback for a given key, while system_settings_add_changed_cb() can set multiple callbacks for a given key.
/// @since_tizen 5.0
/// @remarks The @a key cannot be #SYSTEM_SETTINGS_KEY_DEFAULT_FONT_TYPE. When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
///
/// Parameter key The key name of the system settings
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
/// @post system_settings_changed_cb() will be invoked.
///
/// @see system_settings_remove_changed_cb()
/// @see system_settings_changed_cb()
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_add_changed_cb(
  int key,
  system_settings_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSystemSettings.system_settings_add_changed_cb(
      key,
      callback,
      user_data,
    );

/// @platform
/// @brief Adds the system settings value associated with the given key as a string type if it supports List iteration.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/systemsettings.admin
/// @remarks When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Parameter value string typed value to be appended
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_add_value_string(
  int key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiSystemSystemSettings.system_settings_add_value_string(
      key,
      value,
    );

/// @platform
/// @brief Delete the system settings value associated with the given key as an string type if it supports List iteration.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/systemsettings.admin
/// @remarks When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Parameter value string typed value to be removed
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_delete_value_string(
  int key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiSystemSystemSettings.system_settings_delete_value_string(
      key,
      value,
    );

/// @platform
/// @brief Iterate the system settings value associated with the given key as a string type.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/systemsettings.admin
/// @remarks When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Parameter callback The callback-function name for iteration
/// Parameter user_data  The user data passed from caller-side
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_foreach_value_string(
  int key,
  system_settings_iter_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSystemSettings.system_settings_foreach_value_string(
      key,
      callback,
      user_data,
    );

/// @brief Gets the system settings value associated with the given key as a boolean.
/// @since_tizen 2.3
/// @remarks When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Output parameter value The current system settings value of the given key
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
/// @warning %http://tizen.org/privilege/systemsettings (public level privilege) <b>MUST NOT</b> be declared to use this function since 2.3.1.
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_get_value_bool(
  int key,
  ffi.Pointer<ffi.Bool> value,
) =>
    tizenCapiSystemSystemSettings.system_settings_get_value_bool(
      key,
      value,
    );

/// @brief Gets the system settings value associated with the given key as an integer.
/// @since_tizen 2.3
/// @remarks When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Output parameter value The current system settings value of the given key
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
/// @warning %http://tizen.org/privilege/systemsettings (public level privilege) <b>MUST NOT</b> be declared to use this function since 2.3.1.
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_get_value_int(
  int key,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiSystemSystemSettings.system_settings_get_value_int(
      key,
      value,
    );

/// @brief Gets the system settings value associated with the given key as a string.
/// @since_tizen 2.3
/// @remarks You must release @a value using free(). When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Output parameter value The current system settings value of the given key
/// @return 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
/// @warning %http://tizen.org/privilege/systemsettings (public level privilege) <b>MUST NOT</b> be declared to use this function since 2.3.1.
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_get_value_string(
  int key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiSystemSystemSettings.system_settings_get_value_string(
      key,
      value,
    );

/// @brief Removes a change event callback function.
/// @details The difference between this function and system_settings_unset_changed_cb() is that system_settings_unset_changed_cb() unsets the callback set with system_settings_set_changed_cb(), while system_settings_remove_changed_cb() removes callbacks added with system_settings_add_changed_cb()
/// @since_tizen 5.0
/// @remarks The @a key cannot be #SYSTEM_SETTINGS_KEY_DEFAULT_FONT_TYPE. When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Parameter callback The callback function to be removed
/// @return 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
///
/// @see system_settings_add_changed_cb()
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_remove_changed_cb(
  int key,
  system_settings_changed_cb callback,
) =>
    tizenCapiSystemSystemSettings.system_settings_remove_changed_cb(
      key,
      callback,
    );

/// @brief Sets a change event callback for the given system settings key.
/// @since_tizen 2.3
/// @remarks #SYSTEM_SETTINGS_KEY_DEFAULT_FONT_TYPE is not available for set_changed_cb. When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
/// @post system_settings_changed_cb() will be invoked.
///
/// @see system_settings_unset_changed_cb()
/// @see system_settings_changed_cb()
/// @warning %http://tizen.org/privilege/systemsettings (public level privilege) <b>MUST NOT</b> be declared to use this function since 2.3.1.
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_set_changed_cb(
  int key,
  system_settings_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSystemSettings.system_settings_set_changed_cb(
      key,
      callback,
      user_data,
    );

/// @platform
/// @brief Sets the system settings value associated with the given key as a boolean.
/// @since_tizen 2.3
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/systemsettings.admin
/// @remarks When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Output parameter value The new system settings value of the given key
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_set_value_bool(
  int key,
  bool value,
) =>
    tizenCapiSystemSystemSettings.system_settings_set_value_bool(
      key,
      value,
    );

/// @platform
/// @brief Sets the system settings value associated with the given key as an integer.
/// @since_tizen 2.3
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/systemsettings.admin
/// @remarks When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Output parameter value The new system settings value of the given key
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_set_value_int(
  int key,
  int value,
) =>
    tizenCapiSystemSystemSettings.system_settings_set_value_int(
      key,
      value,
    );

/// @platform
/// @brief Sets the system settings value associated with the given key as a string.
/// @since_tizen 2.3
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/systemsettings.admin
/// @remarks #SYSTEM_SETTINGS_KEY_DEFAULT_FONT_TYPE is not available for setting. When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// Output parameter value The new system settings value of the given key
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_IO_ERROR Internal I/O error
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_set_value_string(
  int key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiSystemSystemSettings.system_settings_set_value_string(
      key,
      value,
    );

/// @brief Unsets the callback function.
/// @since_tizen 2.3
/// @remarks #SYSTEM_SETTINGS_KEY_DEFAULT_FONT_TYPE is not available for set_changed_cb. When the feature related to the @a key is not supported on the device, #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED will be returned.
/// Parameter key The key name of the system settings
/// @return 0 on success, otherwise a negative error value
/// @retval #SYSTEM_SETTINGS_ERROR_NONE Successful
/// @retval #SYSTEM_SETTINGS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SYSTEM_SETTINGS_ERROR_PERMISSION_DENIED Permission violation error
/// @retval #SYSTEM_SETTINGS_ERROR_NOT_SUPPORTED The related feature is not supported on the device
///
/// @see system_settings_set_changed_cb()
/// @warning %http://tizen.org/privilege/systemsettings (public level privilege) <b>MUST NOT</b> be declared to use this function since 2.3.1.
///
/// Module getter: `tizenCapiSystemSystemSettings`.
int system_settings_unset_changed_cb(
  int key,
) =>
    tizenCapiSystemSystemSettings.system_settings_unset_changed_cb(
      key,
    );

