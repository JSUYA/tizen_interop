// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiUiInputmethodManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-ui-inputmethod-manager.so.0`.
///
/// UIX / Input Method Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_ui_inputmethod_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Checks which IME is the current activated (selected) IME.
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/imemanager
/// @remarks @a app_id must be released using free().
/// Output parameter app_id The application ID of the active IME
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IME_MANAGER_ERROR_NONE No error
/// @retval #IME_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #IME_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_MANAGER_ERROR_OPERATION_FAILED Operation failed
/// @see ime_manager_show_ime_selector()
///
/// Module getter: `tizenCapiUiInputmethodManager`.
int ime_manager_get_active_ime(
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiUiInputmethodManager.ime_manager_get_active_ime(
      app_id,
    );

/// @brief Gets the number of IMEs which are enabled (usable).
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/imemanager
/// @remarks The specific error code can be obtained using the get_last_result() method.
/// Error codes are described in Exception section.
/// @return The number of enabled IMEs on success,
/// otherwise @c 0
/// @exception #IME_MANAGER_ERROR_NONE Successful
/// @exception #IME_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @exception #IME_MANAGER_ERROR_OPERATION_FAILED Operation failed
/// @see ime_manager_is_ime_enabled()
/// @see ime_manager_show_ime_selector()
///
/// Module getter: `tizenCapiUiInputmethodManager`.
int ime_manager_get_enabled_ime_count() =>
    tizenCapiUiInputmethodManager.ime_manager_get_enabled_ime_count();

/// @brief Checks if the specific IME is enabled or disabled in the system keyboard setting.
/// @details The IME developers can use this function to check their IME is enabled or not.
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/imemanager
/// Parameter app_id The application ID of the IME
/// Output parameter enabled The On (enabled) and Off (disabled) state of the IME
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IME_MANAGER_ERROR_NONE No error
/// @retval #IME_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #IME_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_MANAGER_ERROR_OPERATION_FAILED Operation failed
/// @see ime_manager_show_ime_list()
///
/// Module getter: `tizenCapiUiInputmethodManager`.
int ime_manager_is_ime_enabled(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiUiInputmethodManager.ime_manager_is_ime_enabled(
      app_id,
      enabled,
    );

/// @brief Requests to pre-launch the IME.
/// @details The developers can use this function to launch IME in On-demand mode.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/imemanager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IME_MANAGER_ERROR_NONE No error
/// @retval #IME_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #IME_MANAGER_ERROR_OPERATION_FAILED Operation failed
///
/// Module getter: `tizenCapiUiInputmethodManager`.
int ime_manager_prelaunch_ime() =>
    tizenCapiUiInputmethodManager.ime_manager_prelaunch_ime();

/// @brief Requests to open the installed IME list menu.
/// @details This function provides the installed IME list menu for the IME developers who might want to open it to enable their IME.
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/imemanager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IME_MANAGER_ERROR_NONE No error
/// @retval #IME_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #IME_MANAGER_ERROR_OPERATION_FAILED Operation failed
/// @see ime_manager_show_ime_selector()
///
/// Module getter: `tizenCapiUiInputmethodManager`.
int ime_manager_show_ime_list() =>
    tizenCapiUiInputmethodManager.ime_manager_show_ime_list();

/// @brief Requests to open the IME selector menu.
/// @details This function provides the IME selector menu for the IME or other application developers who might want to change the default IME.
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/imemanager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IME_MANAGER_ERROR_NONE No error
/// @retval #IME_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #IME_MANAGER_ERROR_OPERATION_FAILED Operation failed
/// @see ime_manager_show_ime_list()
///
/// Module getter: `tizenCapiUiInputmethodManager`.
int ime_manager_show_ime_selector() =>
    tizenCapiUiInputmethodManager.ime_manager_show_ime_selector();

