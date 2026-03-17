// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiSystemInfo`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-system-info.so.0`.
///
/// System / System Information.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_system_info;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the boolean value of the @a custom feature.
/// @since_tizen 2.3
/// Parameter key The name of the custom feature to get. NOTE: This custom function uses a custom key which is provided by OEM's
/// Output parameter value The value of the given custom feature
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYSTEM_INFO_ERROR_NONE Successful
/// @retval #SYSTEM_INFO_ERROR_INVALID_PARAMETER Cannot find the @a key in the model config file
/// @retval #SYSTEM_INFO_ERROR_IO_ERROR An input/output error occurred while reading the @a value from the model config file
/// @retval #SYSTEM_INFO_ERROR_PERMISSION_DENIED No permission to use the API
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_custom_bool(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Bool> value,
) =>
    tizenCapiSystemInfo.system_info_get_custom_bool(
      key,
      value,
    );

/// @brief Gets the double value of the @a custom feature.
/// @since_tizen 2.3
/// Parameter key The name of the custom feature to get. NOTE: This custom function uses a custom key which is provided by OEM's
/// Output parameter value The value of the given custom feature
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYSTEM_INFO_ERROR_NONE Successful
/// @retval #SYSTEM_INFO_ERROR_INVALID_PARAMETER Cannot find the @a key in the model config file
/// @retval #SYSTEM_INFO_ERROR_IO_ERROR An input/output error occurred while reading the @a value from the model config file
/// @retval #SYSTEM_INFO_ERROR_PERMISSION_DENIED No permission to use the API
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_custom_double(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenCapiSystemInfo.system_info_get_custom_double(
      key,
      value,
    );

/// @brief Gets the integer value of the @a custom feature.
/// @since_tizen 2.3
/// Parameter key The name of the custom feature to get. NOTE: This custom function uses a custom key which is provided by OEM's
/// Output parameter value The value of the given custom feature
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYSTEM_INFO_ERROR_NONE Successful
/// @retval #SYSTEM_INFO_ERROR_INVALID_PARAMETER Cannot the find @a key in the model config file
/// @retval #SYSTEM_INFO_ERROR_IO_ERROR An input/output error occurred while reading the @a value from the model config file
/// @retval #SYSTEM_INFO_ERROR_PERMISSION_DENIED No permission to use the API
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_custom_int(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiSystemInfo.system_info_get_custom_int(
      key,
      value,
    );

/// @brief Gets the string value of the @a custom feature.
/// @since_tizen 2.3
/// @remarks You must release the @a value using free().
/// Parameter key The name of the custom feature to get. NOTE: This custom function uses a custom key which is provided by OEM's
/// Output parameter value The value of the given custom feature
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYSTEM_INFO_ERROR_NONE Successful
/// @retval #SYSTEM_INFO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SYSTEM_INFO_ERROR_INVALID_PARAMETER Cannot find the @a key in the model config file
/// @retval #SYSTEM_INFO_ERROR_IO_ERROR An input/output error occurred while reading the @a value from the model config file
/// @retval #SYSTEM_INFO_ERROR_PERMISSION_DENIED No permission to use the API
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_custom_string(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiSystemInfo.system_info_get_custom_string(
      key,
      value,
    );

/// @internal
/// @brief It is not decided if it should be opened to public.
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_custom_type(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiSystemInfo.system_info_get_custom_type(
      key,
      type,
    );

/// @brief Gets the boolean value of the @a platform feature.
/// @since_tizen 2.3
/// Parameter key The name of the platform feature to get
/// Output parameter value The value of the given platform feature
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYSTEM_INFO_ERROR_NONE Successful
/// @retval #SYSTEM_INFO_ERROR_INVALID_PARAMETER Cannot find the @a key in the model config file
/// @retval #SYSTEM_INFO_ERROR_IO_ERROR An input/output error occurred while reading the @a value from the model config file
/// @retval #SYSTEM_INFO_ERROR_PERMISSION_DENIED No permission to use the API
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_platform_bool(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Bool> value,
) =>
    tizenCapiSystemInfo.system_info_get_platform_bool(
      key,
      value,
    );

/// @brief Gets the double value of the @a platform feature.
/// @since_tizen 2.3
/// Parameter key The name of the platform feature to get
/// Output parameter value The value of the given platform feature
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYSTEM_INFO_ERROR_NONE Successful
/// @retval #SYSTEM_INFO_ERROR_INVALID_PARAMETER Cannot find the @a key in the model config file
/// @retval #SYSTEM_INFO_ERROR_IO_ERROR An input/output error occurred while reading the @a value from the model config file
/// @retval #SYSTEM_INFO_ERROR_PERMISSION_DENIED No permission to use the API
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_platform_double(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenCapiSystemInfo.system_info_get_platform_double(
      key,
      value,
    );

/// @brief Gets the integer value of the @a platform feature.
/// @since_tizen 2.3
/// Parameter key The name of the platform feature to get
/// Output parameter value The value of the given platform feature
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYSTEM_INFO_ERROR_NONE Successful
/// @retval #SYSTEM_INFO_ERROR_INVALID_PARAMETER Cannot find the @a key in the model config file
/// @retval #SYSTEM_INFO_ERROR_IO_ERROR An input/output error occurred while reading the @a value from the model config file
/// @retval #SYSTEM_INFO_ERROR_PERMISSION_DENIED No permission to use the API
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_platform_int(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiSystemInfo.system_info_get_platform_int(
      key,
      value,
    );

/// @brief Gets the string value of the @a platform feature.
/// @since_tizen 2.3
/// @remarks You must release the @a value using free().
/// Parameter key The name of the platform feature to get
/// Output parameter value The value of the given platform feature
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYSTEM_INFO_ERROR_NONE Successful
/// @retval #SYSTEM_INFO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SYSTEM_INFO_ERROR_INVALID_PARAMETER Cannot find the @a key in the model config file
/// @retval #SYSTEM_INFO_ERROR_IO_ERROR An input/output error occurred while reading the @a value from the model config file
/// @retval #SYSTEM_INFO_ERROR_PERMISSION_DENIED No permission to use the API
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_platform_string(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiSystemInfo.system_info_get_platform_string(
      key,
      value,
    );

/// @internal
/// @brief It is not decided if it should be opened to public.
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_platform_type(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiSystemInfo.system_info_get_platform_type(
      key,
      type,
    );

/// @internal
/// @brief Do not use it. It will be removed.
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_value_bool(
  int key,
  ffi.Pointer<ffi.Bool> value,
) =>
    tizenCapiSystemInfo.system_info_get_value_bool(
      key,
      value,
    );

/// @internal
/// @brief Do not use it. It will be removed.
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_value_double(
  int key,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenCapiSystemInfo.system_info_get_value_double(
      key,
      value,
    );

/// @internal
/// @brief Do not use it. It will be removed.
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_value_int(
  int key,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiSystemInfo.system_info_get_value_int(
      key,
      value,
    );

/// @internal
/// @brief Do not use it. It will be removed.
///
/// Module getter: `tizenCapiSystemInfo`.
int system_info_get_value_string(
  int key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiSystemInfo.system_info_get_value_string(
      key,
      value,
    );

