// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiUiAutofillManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-ui-autofill-manager.so.0`.
///
/// UIX / Autofill manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_ui_autofill_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @platform
/// @brief Connects to autofill manager daemon.
/// @since_tizen 5.5
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/autofillmanager
/// Parameter amh The autofill manager handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillManager`.
int autofill_manager_connect(
  autofill_manager_h amh,
  autofill_manager_connection_status_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillManager.autofill_manager_connect(
      amh,
      callback,
      user_data,
    );

/// @platform
/// @brief Creates a handle for autofill manager.
/// @since_tizen 5.5
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/autofillmanager
/// @remarks If the function succeeds, @a amh handle must be released with autofill_manager_destroy().
/// Output parameter amh The autofill manager handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OUT_OF_MEMORY Out of memory
/// @see autofill_manager_destroy()
///
/// Module getter: `tizenCapiUiAutofillManager`.
int autofill_manager_create(
  ffi.Pointer<autofill_manager_h> amh,
) =>
    tizenCapiUiAutofillManager.autofill_manager_create(
      amh,
    );

/// @platform
/// @brief Destroys autofill manager handle.
/// @since_tizen 5.5
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/autofillmanager
/// Parameter amh The autofill manager handle
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_manager_create()
///
/// Module getter: `tizenCapiUiAutofillManager`.
int autofill_manager_destroy(
  autofill_manager_h amh,
) =>
    tizenCapiUiAutofillManager.autofill_manager_destroy(
      amh,
    );

/// @platform
/// @brief Retrieves all autofill services.
/// @since_tizen 5.5
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/autofillmanager
/// Parameter amh The autofill manager handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #AUTOFILL_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenCapiUiAutofillManager`.
int autofill_manager_foreach_autofill_service(
  autofill_manager_h amh,
  autofill_manager_autofill_service_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiAutofillManager.autofill_manager_foreach_autofill_service(
      amh,
      callback,
      user_data,
    );

/// @platform
/// @brief Gets autofill service app ID.
/// @since_tizen 5.5
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/autofillmanager
/// @remarks @a service_app_id must be released using free().
/// Parameter amh The autofill manager handle
/// Output parameter service_app_id The autofill service app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_manager_set_autofill_service()
///
/// Module getter: `tizenCapiUiAutofillManager`.
int autofill_manager_get_autofill_service(
  autofill_manager_h amh,
  ffi.Pointer<ffi.Pointer<ffi.Char>> service_app_id,
) =>
    tizenCapiUiAutofillManager.autofill_manager_get_autofill_service(
      amh,
      service_app_id,
    );

/// @platform
/// @brief Sets autofill service.
/// @since_tizen 5.5
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/autofillmanager
/// Parameter amh The autofill manager handle
/// Parameter app_id The autofill service app ID
/// @return 0 on success, otherwise a negative error value
/// @retval #AUTOFILL_ERROR_NONE No error
/// @retval #AUTOFILL_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #AUTOFILL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see autofill_manager_get_autofill_service()
///
/// Module getter: `tizenCapiUiAutofillManager`.
int autofill_manager_set_autofill_service(
  autofill_manager_h amh,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiUiAutofillManager.autofill_manager_set_autofill_service(
      amh,
      app_id,
    );

