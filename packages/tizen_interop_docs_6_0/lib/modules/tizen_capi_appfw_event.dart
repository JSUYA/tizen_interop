// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwEvent`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-event.so.0`.
///
/// Application Framework / Application / Event.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_event;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds the event handler for receiving event-data of interested events.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks If you want to add the privileged event, you MUST declare right privilege first. Unless that, this function returns #EVENT_ERROR_PERMISSION_DENIED. The privileged events are commented on remarks of it's definitions.
/// Parameter event_name The interested event name
/// Parameter callback The event callback called when the event occurs
/// Parameter user_data The user data for passing to callback
/// Output parameter event_handler The event handler
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EVENT_ERROR_NONE Successful
/// @retval #EVENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #EVENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EVENT_ERROR_IO_ERROR Adding handler failed
/// @retval #EVENT_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwEvent`.
int event_add_event_handler(
  ffi.Pointer<ffi.Char> event_name,
  event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<event_handler_h> event_handler,
) =>
    tizenCapiAppfwEvent.event_add_event_handler(
      event_name,
      callback,
      user_data,
      event_handler,
    );

/// @brief Keeps last User-Event data for receiver applications.
///
/// @since_tizen 3.0
/// @remarks The receiver applications will receive this last event data after adding their new handlers via event_add_event_handler() since the sender application called this function.
/// @remarks If a sender application sends same event via trusted API and non-trusted API, then a trusted receiver will get latest data regardless of trusted or non-trusted, but non-trusted receiver will get the last data only from non-trusted API.
/// @remarks The effect of this function continues during runtime. That means when the sender application process restarts, the sender application needs to call this function again to make the event to keep the last event.
/// Parameter event_name The event's name to keep last event data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EVENT_ERROR_NONE Successful
/// @retval #EVENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EVENT_ERROR_IO_ERROR Sending operation failed
/// @retval #EVENT_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiAppfwEvent`.
int event_keep_last_event_data(
  ffi.Pointer<ffi.Char> event_name,
) =>
    tizenCapiAppfwEvent.event_keep_last_event_data(
      event_name,
    );

/// @brief Sends the User-Event to receiver applications.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The format of User-Event's name MUST be "event.{sender's appid}.{user-defined name}", refer to 'The name-format of User-Event' section, If the event_name is invalid, the function returns #EVENT_ERROR_IO_ERROR.
/// Parameter event_name The event's name to send
/// Parameter event_data The event's data to send
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EVENT_ERROR_NONE Successful
/// @retval #EVENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EVENT_ERROR_IO_ERROR Sending operation failed
///
/// Module getter: `tizenCapiAppfwEvent`.
int event_publish_app_event(
  ffi.Pointer<ffi.Char> event_name,
  ffi.Pointer<bundle> event_data,
) =>
    tizenCapiAppfwEvent.event_publish_app_event(
      event_name,
      event_data,
    );

/// @brief Sends the User-Event to trusted receiver-applications.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The application which has same certification with sender can receive the event.
/// @remarks The format of User-Event's name MUST be "event.{sender's appid}.{user-defined name}", refer to 'The name-format of User-Event' section,  If the event_name is invalid, the function returns #EVENT_ERROR_IO_ERROR.
/// Parameter event_name The event's name to send
/// Parameter event_data The event's data to send
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EVENT_ERROR_NONE Successful
/// @retval #EVENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EVENT_ERROR_IO_ERROR Sending operation failed
///
/// Module getter: `tizenCapiAppfwEvent`.
int event_publish_trusted_app_event(
  ffi.Pointer<ffi.Char> event_name,
  ffi.Pointer<bundle> event_data,
) =>
    tizenCapiAppfwEvent.event_publish_trusted_app_event(
      event_name,
      event_data,
    );

/// @brief Removes the registered event handler.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter event_handler The event handler
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EVENT_ERROR_NONE Successful
/// @retval #EVENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwEvent`.
int event_remove_event_handler(
  event_handler_h event_handler,
) =>
    tizenCapiAppfwEvent.event_remove_event_handler(
      event_handler,
    );

