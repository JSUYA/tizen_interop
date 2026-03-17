// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwApplication`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-application.so.0`.
///
/// Applicatoin Framework / Application.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_application;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the current device orientation.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @return The current device orientation
///
/// Module getter: `tizenCapiAppfwApplication`.
int app_get_device_orientation() =>
    tizenCapiAppfwApplication.app_get_device_orientation();

/// @brief Gets the localized translation for the specified string.
///
/// @details If a translation is not found in the localization file(.po file), @a message is returned.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Do not free the returned value.
///
/// Parameter message The string to be translated
/// @return The localized translation for the given @a message on success,
/// otherwise the given @a message
///
/// Module getter: `tizenCapiAppfwApplication`.
ffi.Pointer<ffi.Char> i18n_get_text(
  ffi.Pointer<ffi.Char> message,
) =>
    tizenCapiAppfwApplication.i18n_get_text(
      message,
    );

/// @brief Adds the system event handler.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Output parameter event_handler The event handler
/// Parameter event_type The system event type
/// Parameter callback The callback function
/// Parameter user_data The user data to be passed to the callback functions
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_event_type_e
/// @see app_event_cb
/// @see ui_app_remove_event_handler()
///
/// Module getter: `tizenCapiAppfwApplication`.
int ui_app_add_event_handler(
  ffi.Pointer<app_event_handler_h> event_handler,
  int event_type,
  app_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwApplication.ui_app_add_event_handler(
      event_handler,
      event_type,
      callback,
      user_data,
    );

/// @brief Exits the main loop of application.
/// @details The main loop of application stops and app_terminate_cb() is invoked.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @see ui_app_main()
/// @see app_terminate_cb()
///
/// Module getter: `tizenCapiAppfwApplication`.
void ui_app_exit() =>
    tizenCapiAppfwApplication.ui_app_exit();

/// @brief Runs the application's main loop until ui_app_exit() is called.
/// @details This function is the main entry point of the Tizen application.
/// The app_create_cb() callback function is called to initialize the application before the main loop of application starts up.
/// After the app_create_cb() callback function returns true, the main loop starts up and the app_control_cb() callback function is subsequently called.
/// If the app_create_cb() callback function returns false, the main loop doesn't start up and app_terminate_cb() callback function is called.
/// This main loop supports event handling for the Ecore Main Loop.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter argc The argument count
/// Parameter argv The argument vector
/// Parameter callback The set of callback functions to handle application lifecycle events
/// Parameter user_data The user data to be passed to the callback functions
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT The application is launched illegally, not launched by the launch system
/// @retval #APP_ERROR_ALREADY_RUNNING The main loop already started
/// @see app_create_cb()
/// @see app_terminate_cb()
/// @see app_pause_cb()
/// @see app_resume_cb()
/// @see app_control_cb()
/// @see ui_app_exit()
/// @see #ui_app_lifecycle_callback_s
///
/// Module getter: `tizenCapiAppfwApplication`.
int ui_app_main(
  int argc,
  ffi.Pointer<ffi.Pointer<ffi.Char>> argv,
  ffi.Pointer<ui_app_lifecycle_callback_s> callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwApplication.ui_app_main(
      argc,
      argv,
      callback,
      user_data,
    );

/// @brief Removes registered event handler.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter event_handler The event handler
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @see ui_app_add_event_handler()
///
/// Module getter: `tizenCapiAppfwApplication`.
int ui_app_remove_event_handler(
  app_event_handler_h event_handler,
) =>
    tizenCapiAppfwApplication.ui_app_remove_event_handler(
      event_handler,
    );

