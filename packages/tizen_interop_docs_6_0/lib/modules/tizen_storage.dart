// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenStorage`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libstorage.so.0.1`.
///
/// System / Storage.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_storage;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Retrieves all the storage in a device.
/// @details This function invokes the callback function once for each storage in a device. \n
/// If storage_device_supported_cb() returns @c false, then the iteration will be finished.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter callback The iteration callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @post This function invokes storage_device_supported_cb() repeatedly for each supported device.
/// @see storage_device_supported_cb()
///
/// Module getter: `tizenStorage`.
int storage_foreach_device_supported(
  storage_device_supported_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStorage.storage_foreach_device_supported(
      callback,
      user_data,
    );

/// @brief Gets the available space size of the given storage in bytes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter storage_id The storage device
/// Output parameter bytes The available space size of the storage (bytes)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @see storage_get_state()
/// @see storage_get_total_space()
///
/// Module getter: `tizenStorage`.
int storage_get_available_space(
  int storage_id,
  ffi.Pointer<ffi.UnsignedLongLong> bytes,
) =>
    tizenStorage.storage_get_available_space(
      storage_id,
      bytes,
    );

/// @brief Gets the absolute path to the each directory of the given storage.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Files saved on the internal/external storage are readable or writable by all applications.\n
/// When an application is uninstalled, the files written by that application are not removed from the internal/external storage.\n
/// The directory path may not exist, so you must make sure that it exists before using it.\n
/// If you want to access files or directories in internal storage, you must declare http://tizen.org/privilege/mediastorage.\n
/// If you want to access files or directories in external storage, you must declare http://tizen.org/privilege/externalstorage.\n
/// Refer to <a href="https://docs.tizen.org/application/native/guides/security/privacy-related-permissions"><b>Privacy-related Permissions</b></a>.\n
/// You must release @a path using free().
/// Parameter storage_id The storage device
/// Parameter type The directory type
/// Output parameter path The absolute path to the directory type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @see storage_get_state()
///
/// Module getter: `tizenStorage`.
int storage_get_directory(
  int storage_id,
  int type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenStorage.storage_get_directory(
      storage_id,
      type,
      path,
    );

int storage_get_external_memory_size(
  ffi.Pointer<statvfs> buf,
) =>
    tizenStorage.storage_get_external_memory_size(
      buf,
    );

int storage_get_internal_memory_size(
  ffi.Pointer<statvfs> buf,
) =>
    tizenStorage.storage_get_internal_memory_size(
      buf,
    );

/// @brief Gets the absolute path to the root directory of the given storage.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Files saved on the internal/external storage are readable or writable by all applications.\n
/// When an application is uninstalled, the files written by that application are not removed from the internal/external storage.\n
/// If you want to access files or directories in internal storage, you must declare http://tizen.org/privilege/mediastorage.\n
/// If you want to access files or directories in external storage, you must declare http://tizen.org/privilege/externalstorage.\n
/// Refer to <a href="https://docs.tizen.org/application/native/guides/security/privacy-related-permissions"><b>Privacy-related Permissions</b></a>.\n
/// You must release @a path using free().
/// Parameter storage_id The storage device
/// Output parameter path The absolute path to the storage directory
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @see storage_get_state()
///
/// Module getter: `tizenStorage`.
int storage_get_root_directory(
  int storage_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenStorage.storage_get_root_directory(
      storage_id,
      path,
    );

/// @brief Gets the current state of the given storage.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter storage_id The storage device
/// Output parameter state The current state of the storage
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @see storage_get_root_directory()
/// @see storage_get_total_space()
/// @see storage_get_available_space()
///
/// Module getter: `tizenStorage`.
int storage_get_state(
  int storage_id,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenStorage.storage_get_state(
      storage_id,
      state,
    );

/// @brief Gets the total space of the given storage in bytes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter storage_id The storage device
/// Output parameter bytes The total space size of the storage (bytes)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @see storage_get_state()
/// @see storage_get_available_space()
///
/// Module getter: `tizenStorage`.
int storage_get_total_space(
  int storage_id,
  ffi.Pointer<ffi.UnsignedLongLong> bytes,
) =>
    tizenStorage.storage_get_total_space(
      storage_id,
      bytes,
    );

/// @brief Gets the type of the given storage.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter storage_id The storage device
/// Output parameter type The type of the storage
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
///
/// Module getter: `tizenStorage`.
int storage_get_type(
  int storage_id,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenStorage.storage_get_type(
      storage_id,
      type,
    );

/// @brief Gets the type and the kind of external device for the given storage id.
///
/// @since_tizen 5.0
///
/// @remarks This function works only for external storages.
/// If @a type is #STORAGE_TYPE_INTERNAL, this function returns #STORAGE_ERROR_INVALID_PARAMETER and @a dev is unchanged.
///
/// Parameter storage_id The storage id
/// Output parameter type The storage @a type (internal or external). If @a type is #STORAGE_TYPE_INTERNAL, this function returns #STORAGE_ERROR_INVALID_PARAMETER and @a dev is unchanged.
/// Output parameter dev The storage device for external storage.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #STORAGE_ERROR_NONE               Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #STORAGE_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #STORAGE_ERROR_NOT_SUPPORTED      Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenStorage`.
int storage_get_type_dev(
  int storage_id,
  ffi.Pointer<ffi.Int32> type,
  ffi.Pointer<ffi.Int32> dev,
) =>
    tizenStorage.storage_get_type_dev(
      storage_id,
      type,
      dev,
    );

/// @brief Registers a callback function to be invoked when the state of the specified storage device type changes.
/// @since_tizen 3.0
/// Parameter type The type of the storage device
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @post storage_changed_cb() will be invoked if the state of the registered storage type changes.
/// @see storage_changed_cb()
/// @see storage_unset_changed_cb()
///
/// Module getter: `tizenStorage`.
int storage_set_changed_cb(
  int type,
  storage_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStorage.storage_set_changed_cb(
      type,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked when the state of the storage changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter storage_id The storage device
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @post storage_state_changed_cb() will be invoked if the state of the registered storage changes.
/// @see storage_state_changed_cb()
/// @see storage_unset_state_changed_cb()
///
/// Module getter: `tizenStorage`.
int storage_set_state_changed_cb(
  int storage_id,
  storage_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStorage.storage_set_state_changed_cb(
      storage_id,
      callback,
      user_data,
    );

/// @brief Unregisters the callback function for storage type state changes.
/// @since_tizen 3.0
/// Parameter type The type of the the storage device
/// Parameter callback The callback function to unregister
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @see storage_changed_cb()
/// @see storage_set_changed_cb()
///
/// Module getter: `tizenStorage`.
int storage_unset_changed_cb(
  int type,
  storage_changed_cb callback,
) =>
    tizenStorage.storage_unset_changed_cb(
      type,
      callback,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter storage_id The storage device to monitor
/// Parameter callback The callback function to register
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STORAGE_ERROR_NONE Successful
/// @retval #STORAGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STORAGE_ERROR_NOT_SUPPORTED Storage not supported
/// @retval #STORAGE_ERROR_OPERATION_FAILED Operation failed
/// @see storage_state_changed_cb()
/// @see storage_set_state_changed_cb()
///
/// Module getter: `tizenStorage`.
int storage_unset_state_changed_cb(
  int storage_id,
  storage_state_changed_cb callback,
) =>
    tizenStorage.storage_unset_state_changed_cb(
      storage_id,
      callback,
    );

