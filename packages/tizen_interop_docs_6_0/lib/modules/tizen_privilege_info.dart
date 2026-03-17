// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenPrivilegeInfo`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libprivilege-info.so.1`.
///
/// Security / Privilege Info.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_privilege_info;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Destroys the privilege information list.
/// @since_tizen 5.5
///
/// @remarks If @a privilege_info_list is NULL, no operation is performed and #PRVINFO_ERROR_INVALID_PARAMETER will be returned.
///
/// Parameter privilege_info_list The privilege information list to destroy
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #PRVINFO_ERROR_NONE Successful
/// @retval #PRVINFO_ERROR_INVALID_PARAMETER Invalid function parameter
///
/// Module getter: `tizenPrivilegeInfo`.
int privilege_info_free_privilege_info_list(
  ffi.Pointer<GList> privilege_info_list,
) =>
    tizenPrivilegeInfo.privilege_info_free_privilege_info_list(
      privilege_info_list,
    );

/// @brief Gets the description of the given privilege.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks @a description must be released using free().
/// @remarks Since 6.0, this function returns #PRVINFO_ERROR_NO_MATCHING_PRIVILEGE if the given @a privilege doesn't exist.
/// Parameter api_version The API version of the application to get privilege information
/// Parameter privilege The privilege
/// Output parameter description The description of the privilege
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PRVINFO_ERROR_NONE Successful
/// @retval #PRVINFO_ERROR_NO_MATCHING_PRIVILEGE No matched privilege
/// @retval #PRVINFO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PRVINFO_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #PRVINFO_ERROR_INTERNAL_ERROR Unknown error
///
/// Module getter: `tizenPrivilegeInfo`.
int privilege_info_get_description(
  ffi.Pointer<ffi.Char> api_version,
  ffi.Pointer<ffi.Char> privilege,
  ffi.Pointer<ffi.Pointer<ffi.Char>> description,
) =>
    tizenPrivilegeInfo.privilege_info_get_description(
      api_version,
      privilege,
      description,
    );

/// @brief Gets the description of the given privilege.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks @a description must be released using free().
/// @remarks @a package_type must be one of followings: "PRVINFO_PACKAGE_TYPE_NATIVE", "PRVINFO_PACKAGE_TYPE_WEB"
/// @remarks Since 6.0, this function returns #PRVINFO_ERROR_NO_MATCHING_PRIVILEGE if the given @a privilege doesn't exist.
/// Parameter package_type The type of application package
/// Parameter api_version The API version of the application to get privilege information
/// Parameter  privilege The privilege
/// Output parameter description The description of the privilege
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PRVINFO_ERROR_NONE Successful
/// @retval #PRVINFO_ERROR_NO_MATCHING_PRIVILEGE No matched privilege
/// @retval #PRVINFO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PRVINFO_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #PRVINFO_ERROR_INTERNAL_ERROR Unknown error
///
/// Module getter: `tizenPrivilegeInfo`.
int privilege_info_get_description_by_pkgtype(
  ffi.Pointer<ffi.Char> package_type,
  ffi.Pointer<ffi.Char> api_version,
  ffi.Pointer<ffi.Char> privilege,
  ffi.Pointer<ffi.Pointer<ffi.Char>> description,
) =>
    tizenPrivilegeInfo.privilege_info_get_description_by_pkgtype(
      package_type,
      api_version,
      privilege,
      description,
    );

/// @brief Gets the display name of the given privilege.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks @a display_name must be released using free().
/// @remarks Since 6.0, this function returns #PRVINFO_ERROR_NO_MATCHING_PRIVILEGE if the given @a privilege doesn't exist.
/// Parameter api_version The API version of the application to get privilege information
/// Parameter privilege The privilege
/// Output parameter display_name The display name of the privilege
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PRVINFO_ERROR_NONE Successful
/// @retval #PRVINFO_ERROR_NO_MATCHING_PRIVILEGE No matched privilege
/// @retval #PRVINFO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PRVINFO_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #PRVINFO_ERROR_INTERNAL_ERROR Unknown error
///
/// Module getter: `tizenPrivilegeInfo`.
int privilege_info_get_display_name(
  ffi.Pointer<ffi.Char> api_version,
  ffi.Pointer<ffi.Char> privilege,
  ffi.Pointer<ffi.Pointer<ffi.Char>> display_name,
) =>
    tizenPrivilegeInfo.privilege_info_get_display_name(
      api_version,
      privilege,
      display_name,
    );

/// @brief Gets the display name of the given privilege.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks @a display_name must be released using free().
/// @remarks @a package_type must be one of followings: "PRVINFO_PACKAGE_TYPE_NATIVE", "PRVINFO_PACKAGE_TYPE_WEB"
/// @remarks Since 6.0, this function returns #PRVINFO_ERROR_NO_MATCHING_PRIVILEGE if the given @a privilege doesn't exist.
/// Parameter package_type The type of application package
/// Parameter api_version The API version of the application to get privilege information
/// Parameter privilege The privilege
/// Output parameter display_name The display name of the privilege
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PRVINFO_ERROR_NONE Successful
/// @retval #PRVINFO_ERROR_NO_MATCHING_PRIVILEGE No matched privilege
/// @retval #PRVINFO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PRVINFO_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #PRVINFO_ERROR_INTERNAL_ERROR Unknown error
///
/// Module getter: `tizenPrivilegeInfo`.
int privilege_info_get_display_name_by_pkgtype(
  ffi.Pointer<ffi.Char> package_type,
  ffi.Pointer<ffi.Char> api_version,
  ffi.Pointer<ffi.Char> privilege,
  ffi.Pointer<ffi.Pointer<ffi.Char>> display_name,
) =>
    tizenPrivilegeInfo.privilege_info_get_display_name_by_pkgtype(
      package_type,
      api_version,
      privilege,
      display_name,
    );

/// @brief Gets the display name of the privacy group in which the given privilege is included.
/// @since_tizen 3.0
/// @remarks @a privacy_name must be released using free().
/// @remarks @a privilege must be privacy related, otherwise #PRVINFO_ERROR_INVALID_PARAMETER is returned.
/// Parameter privilege The privilege
/// Output parameter privacy_name The privacy group's display name that the given privilege is included in
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PRVINFO_ERROR_NONE Successful
/// @retval #PRVINFO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PRVINFO_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #PRVINFO_ERROR_INTERNAL_ERROR Unknown error
/// @retval #PRVINFO_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenPrivilegeInfo`.
int privilege_info_get_privacy_display_name(
  ffi.Pointer<ffi.Char> privilege,
  ffi.Pointer<ffi.Pointer<ffi.Char>> privacy_name,
) =>
    tizenPrivilegeInfo.privilege_info_get_privacy_display_name(
      privilege,
      privacy_name,
    );

/// @brief Gets the privilege information list of the given locale and privileges.
/// @details If the given @a locale is not recognized, @a return_result is set to #PRIVILEGE_CONSUMER_RETURN_CODE_UNKNOWN_LOCALE_CODE and the result in the @a privilege_info_list is provided according to the current locale. If all of the privileges in @a privilege_name_list are invalid then @a return_result is set to #PRIVILEGE_CONSUMER_RETURN_CODE_INVALID_PARAMETER. Otherwise, @a return_result is set to #PRIVILEGE_CONSUMER_RETURN_CODE_SUCCESS. If some of the privileges in @a privilege_name_list are invalid then corresponding elements in the @a privilege_info_list will have the display_name and the description set to an empty string.
/// @since_tizen 5.5
///
/// @remarks You must destroy the newly created privilege_info_list by calling privilege_info_free_privilege_info_list() if it is no longer needed.
///
/// Parameter locale The locale information
/// Parameter privilege_name_list The privilege name list
/// Output parameter privilege_info_list The privilege information list of the given locale and privileges
/// Output parameter return_result The return code to be sent to consumer.
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #PRVINFO_ERROR_NONE Successful
/// @retval #PRVINFO_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PRVINFO_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #PRVINFO_ERROR_INTERNAL_ERROR Unknown error
/// @see privilege_info_free_privilege_info_list()
/// @see privilege_consumer_return_code_e
///
/// Module getter: `tizenPrivilegeInfo`.
int privilege_info_get_privilege_info_list(
  ffi.Pointer<ffi.Char> locale,
  ffi.Pointer<GList> privilege_name_list,
  ffi.Pointer<ffi.Pointer<GList>> privilege_info_list,
  ffi.Pointer<ffi.Int32> return_result,
) =>
    tizenPrivilegeInfo.privilege_info_get_privilege_info_list(
      locale,
      privilege_name_list,
      privilege_info_list,
      return_result,
    );

