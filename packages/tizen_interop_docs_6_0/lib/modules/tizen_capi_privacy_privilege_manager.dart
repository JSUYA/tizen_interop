// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiPrivacyPrivilegeManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-privacy-privilege-manager.so.0`.
///
/// Security / Privacy Privilege Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_privacy_privilege_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @platform
/// @brief Checks if an application, with given app_id, has permission to use the
/// given privilege.
///
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/permission.check
///
/// Parameter   app_id      The app_id of the app that is to be checked.
/// Parameter   privilege   The privilege that is to be checked.
/// Output parameter  result      The result of the privilege check.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_NONE               Successful
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_IO_ERROR           I/O error
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_UNKNOWN            Unknown error
///
/// Module getter: `tizenCapiPrivacyPrivilegeManager`.
int ppm_check_app_permission(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Char> privilege,
  ffi.Pointer<ffi.Int32> result,
) =>
    tizenCapiPrivacyPrivilegeManager.ppm_check_app_permission(
      app_id,
      privilege,
      result,
    );

/// @platform
/// @brief Checks if an application, with given app_id, has permission to use the
/// given privileges.
///
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/permission.check
///
/// Parameter   app_id            The app_id of the app that is to be checked.
/// Parameter   privileges        The privileges array that is to be checked.
/// Parameter   privileges_count  The number of elements in the privileges and results arrays.
/// Output parameter  results           The results of the privilege check. Caller is responsible for
/// allocating this array with proper size and freeing it afterwards.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_NONE               Successful
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_IO_ERROR           I/O error
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_INVALID_PARAMETER  Non unique privileges passed
/// in first argument, privileges_count is more than 100 or other invalid parameter
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_UNKNOWN            Unknown error
///
/// Module getter: `tizenCapiPrivacyPrivilegeManager`.
int ppm_check_app_permissions(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> privileges,
  int privileges_count,
  ffi.Pointer<ffi.Int32> results,
) =>
    tizenCapiPrivacyPrivilegeManager.ppm_check_app_permissions(
      app_id,
      privileges,
      privileges_count,
      results,
    );

/// @brief Checks if an application, which calls this function, has permission to use the
/// given privilege.
///
/// @since_tizen 4.0
///
/// Parameter   privilege   The privilege that is to be checked.
/// Output parameter  result      The result of the privilege check.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_NONE               Successful
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_IO_ERROR           I/O error
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_UNKNOWN            Unknown error
///
/// Module getter: `tizenCapiPrivacyPrivilegeManager`.
int ppm_check_permission(
  ffi.Pointer<ffi.Char> privilege,
  ffi.Pointer<ffi.Int32> result,
) =>
    tizenCapiPrivacyPrivilegeManager.ppm_check_permission(
      privilege,
      result,
    );

/// @brief Checks if an application, which calls this function, has permission to use the
/// given privileges.
///
/// @since_tizen 5.0
///
/// Parameter   privileges        The privileges array that is to be checked.
/// Parameter   privileges_count  The number of elements in the privileges and results arrays.
/// Output parameter  results           The results of the privilege check. Caller is responsible for
/// allocating this array with proper size and freeing it afterwards.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_NONE               Successful
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_IO_ERROR           I/O error
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_INVALID_PARAMETER  Non unique privileges passed
/// in first argument, privileges_count is more than 100 or other invalid parameter
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_UNKNOWN            Unknown error
///
/// Module getter: `tizenCapiPrivacyPrivilegeManager`.
int ppm_check_permissions(
  ffi.Pointer<ffi.Pointer<ffi.Char>> privileges,
  int privileges_count,
  ffi.Pointer<ffi.Int32> results,
) =>
    tizenCapiPrivacyPrivilegeManager.ppm_check_permissions(
      privileges,
      privileges_count,
      results,
    );

/// @brief Requests a user's response to obtain permission for using the given privilege.
///
/// @details When this function is called, an underlying service may show an appropriate
/// UI dialogue box (pop-up) with a question about granting the application access
/// to the given privilege. Once a user makes a decision, the service may modify
/// the privacy policy (when it is a definitive decision). After that, the service
/// sends the response back to the application. The possible response values are as follows:
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_ALLOW_FOREVER\n
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_FOREVER\n
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_ONCE\n
/// The application receives #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_ONCE value after
/// pressing 'Deny' button while not having selected the 'Don't ask again?' checkbox. If the device
/// has the home and back buttons, pressing either of them gives the
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_ONCE response.
/// The application is informed about the user's decision by invoking ppm_request_response_cb().
/// When a privacy policy for the given privilege has already been resolved, no pop-up will
/// be shown and the service will reply immediately with an appropriate result:
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_ALLOW_FOREVER\n
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_FOREVER\n
///
/// @since_tizen 4.0
///
/// @remarks Before calling this function, call ppm_check_permission() to check if the application has
/// permission to use the given privilege. If the result of calling ppm_check_permission() is
/// #PRIVACY_PRIVILEGE_MANAGER_CHECK_RESULT_ASK, the application should call
/// this function to determine access to the privilege.
///
/// Parameter   privilege   The given privilege for which a pop-up must be shown.
/// Parameter   callback    The given callback function which will be invoked
/// when the API receives a response.
/// Parameter   user_data   User specific data which will be passed to
/// the given callback.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_NONE                Successful
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_IO_ERROR            I/O error
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_ALREADY_IN_PROGRESS Operation already in progress
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_UNKNOWN             Unknown error
///
/// @post ppm_request_response_cb() will be invoked.
/// @see ppm_request_response_cb()
///
/// Module getter: `tizenCapiPrivacyPrivilegeManager`.
int ppm_request_permission(
  ffi.Pointer<ffi.Char> privilege,
  ppm_request_response_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiPrivacyPrivilegeManager.ppm_request_permission(
      privilege,
      callback,
      user_data,
    );

/// @brief Requests a user's response to obtain permission for using the given privileges.
///
/// @details When this function is called, an underlying service may show an appropriate
/// UI dialogue box (pop-up) with a question about granting the application access
/// to the given privileges. Once a user makes a decision, the service may modify
/// the privacy policy (when it is a definitive decision). After that, the service
/// sends the response back to the application. The possible response values are as follows:\n
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_ALLOW_FOREVER\n
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_FOREVER\n
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_ONCE\n
/// The application receives #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_ONCE value after
/// pressing 'Deny' button while not having selected the 'Don't ask again?' checkbox. If the device
/// has the home and back buttons, pressing either of them gives the
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_ONCE response.
/// The application is informed about the user's decision by invoking ppm_request_multiple_response_cb().
/// When a privacy policy for the given privileges has already been resolved, no pop-up will
/// be shown and the service will reply immediately with an appropriate results:\n
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_ALLOW_FOREVER\n
/// #PRIVACY_PRIVILEGE_MANAGER_REQUEST_RESULT_DENY_FOREVER\n
///
/// @since_tizen 5.0
///
/// @remarks Before calling this function, call ppm_check_permission() or ppm_check_permissions()
/// to check if the application has permission to use the given privileges.
/// This function should be called for each privilege with result
/// #PRIVACY_PRIVILEGE_MANAGER_CHECK_RESULT_ASK returned from ppm_check_permission() or ppm_check_permissions().
///
/// Parameter   privileges        The given privileges array for which a pop-up must be shown.
/// Parameter   privileges_count  The number of elements in the privileges array.
/// Parameter   callback          The given callback function which will be invoked
/// when the API receives a response.
/// Parameter   user_data         User specific data which will be passed to
/// the given callback.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_NONE                Successful
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_IO_ERROR            I/O error
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_INVALID_PARAMETER   Non unique privileges passed
/// in first argument, privileges_count is more than 100 or other invalid parameter
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_ALREADY_IN_PROGRESS Operation already in progress
/// @retval #PRIVACY_PRIVILEGE_MANAGER_ERROR_UNKNOWN             Unknown error
///
/// @post ppm_request_multiple_response_cb() will be invoked.
/// @see ppm_request_multiple_response_cb()
///
/// Module getter: `tizenCapiPrivacyPrivilegeManager`.
int ppm_request_permissions(
  ffi.Pointer<ffi.Pointer<ffi.Char>> privileges,
  int privileges_count,
  ppm_request_multiple_response_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiPrivacyPrivilegeManager.ppm_request_permissions(
      privileges,
      privileges_count,
      callback,
      user_data,
    );

