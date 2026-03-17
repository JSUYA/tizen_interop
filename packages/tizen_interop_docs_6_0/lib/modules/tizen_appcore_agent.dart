// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenAppcoreAgent`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libappcore-agent.so.1`.
///
/// Application Framework / Service Application.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_appcore_agent;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds the system event handler.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The service application can handle low memory event, low battery event, language setting changed event and region format changed event.
/// Output parameter handler The event handler
/// Parameter event_type The system event type
/// Parameter callback The callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_OUT_OF_MEMORY Out of memory
/// @see app_event_type_e
/// @see app_event_cb()
/// @see service_app_remove_event_handler()
///
/// Module getter: `tizenAppcoreAgent`.
int service_app_add_event_handler(
  ffi.Pointer<app_event_handler_h> handler,
  int event_type,
  app_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAppcoreAgent.service_app_add_event_handler(
      handler,
      event_type,
      callback,
      user_data,
    );

/// @brief Exits the main loop of the application.
/// @details The main loop of the application stops and service_app_terminate_cb() is invoked.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @see service_app_main()
/// @see service_app_terminate_cb()
///
/// Module getter: `tizenAppcoreAgent`.
void service_app_exit() =>
    tizenAppcoreAgent.service_app_exit();

/// @brief Runs the main loop of the application until service_app_exit() is called.
/// @details This function is the main entry point of the Tizen service application.
/// This main loop supports event handling for the GMainLoop and the Ecore Main Loop.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter argc The argument count
/// Parameter argv The argument vector
/// Parameter callback The set of callback functions to handle application events
/// Parameter user_data The user data to be passed to the callback functions
/// @return @c 0 on success,
/// otherwise a negative error value.
/// @retval #APP_ERROR_NONE Successful
/// @retval #APP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #APP_ERROR_INVALID_CONTEXT The application is launched illegally, not launched by the launch system.
/// @retval #APP_ERROR_ALREADY_RUNNING The main loop has already started
/// @see service_app_create_cb()
/// @see service_app_terminate_cb()
/// @see service_app_control_cb()
/// @see service_app_exit()
/// @see #service_app_lifecycle_callback_s
///
/// Module getter: `tizenAppcoreAgent`.
int service_app_main(
  int argc,
  ffi.Pointer<ffi.Pointer<ffi.Char>> argv,
  ffi.Pointer<service_app_lifecycle_callback_s> callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAppcoreAgent.service_app_main(
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
/// @see service_app_add_event_handler()
///
/// Module getter: `tizenAppcoreAgent`.
int service_app_remove_event_handler(
  app_event_handler_h event_handler,
) =>
    tizenAppcoreAgent.service_app_remove_event_handler(
      event_handler,
    );

