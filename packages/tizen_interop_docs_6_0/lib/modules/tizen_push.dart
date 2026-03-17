// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenPush`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libpush.so.0`.
///
/// Messaging / Push.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_push;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Retrieves the payload data of a notification that forcibly launched the app.
/// @details When a notification arrives at the device with the "LAUNCH"\n
/// option or a user clicks a notification in the quick panel,\n
/// the push daemon forcibly launches the app and delivers the\n
/// notification to the app as a bundle. This function returns\n
/// the payload data in the notification.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/push
/// @remarks This function must be called in the app control callback function.\n
/// You must release the payload data using free().\n
/// push_service_app_control_to_notification() is preferred to this API.\n
/// The specific error code can be obtained using the get_last_result()\n
/// Error codes are described in the exception section.
/// Parameter app_control The app control handle that is handed over in the\n
/// app control callback function
/// Parameter operation The operation in the app control handle retrieved by\n
/// app_control_get_operation()
/// @return The payload data (appData) in the notification\n
/// NULL if the app is not launched by a push notification.
/// @exception #PUSH_SERVICE_ERROR_NONE Successful
/// @exception #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #PUSH_SERVICE_ERROR_NO_DATA	Not launched by a notification
/// @exception #PUSH_SERVICE_ERROR_OPERATION_FAILED Operation fail
/// @exception #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @exception #PUSH_SERVICE_ERROR_NOT_CONNECTED Connection to the daemon failed
/// @exception #PUSH_SERVICE_ERROR_PERMISSION_DENIED No push privilege
/// @exception #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see app_control_get_operation()
///
/// Module getter: `tizenPush`.
ffi.Pointer<ffi.Char> push_service_app_control_to_noti_data(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> operation,
) =>
    tizenPush.push_service_app_control_to_noti_data(
      app_control,
      operation,
    );

/// @brief Retrieves the notification that forcibly launched the app.
/// @details When a notification arrives at the device with the "LAUNCH"\n
/// option or a user clicks a notification in the quick panel,\n
/// the push daemon forcibly launches the app and delivers the\n
/// notification to the app as a bundle. This function returns\n
/// the notification from the bundle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/push
/// @remarks This function must be called in the app control callback function.\n
/// You must release the notification using push_service_free_notification().
/// Parameter app_control The app control handle that is handed over in the\n
/// app control callback function
/// Parameter operation The operation in the app control handle retrieved by\n
/// app_control_get_operation()
/// Output parameter noti	The handle of the notification that forcibly launched the app
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_NO_DATA	Not launched by a notification
/// @retval #PUSH_SERVICE_ERROR_OPERATION_FAILED Operation fail
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NOT_CONNECTED Connection to the daemon failed
/// @retval #PUSH_SERVICE_ERROR_PERMISSION_DENIED No push privilege
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_free_notification()
/// @see app_control_get_operation()
///
/// Module getter: `tizenPush`.
int push_service_app_control_to_notification(
  app_control_h app_control,
  ffi.Pointer<ffi.Char> operation,
  ffi.Pointer<push_service_notification_h> noti,
) =>
    tizenPush.push_service_app_control_to_notification(
      app_control,
      operation,
      noti,
    );

/// @brief Connects to the push service and sets callback functions.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/push
/// @remarks If there is a connection between an application and the push service,\n
/// the notify callback passes the notification upon its arrival.\n
/// Otherwise, the push service posts a UI notification to alert users.\n
/// The connection should be freed with push_service_disconnect() by you.
/// Parameter push_app_id App id received from Tizen Push Server team
/// Parameter state_callback State callback function
/// Parameter notify_callback Notify callback function
/// Parameter user_data User data to pass to <I>state_cb</I> and <I>notify_cb</I>
/// Output parameter connection The connection handle to the push service
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NOT_CONNECTED Connection to the daemon failed
/// @retval #PUSH_SERVICE_ERROR_PERMISSION_DENIED No push privilege
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @pre There is no connection to the push service for the <I>app_id</I>.
/// @post The state callback will be called to let you know the current
/// registration state immediately.
/// @see push_service_disconnect()
///
/// Module getter: `tizenPush`.
int push_service_connect(
  ffi.Pointer<ffi.Char> push_app_id,
  push_service_state_cb state_callback,
  push_service_notify_cb notify_callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<push_service_connection_h> connection,
) =>
    tizenPush.push_service_connect(
      push_app_id,
      state_callback,
      notify_callback,
      user_data,
      connection,
    );

/// @brief Deregisters an application from the Push server.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection The connection handle to the push service
/// Parameter result_callback Result callback function
/// Parameter user_data User data to pass to <I>result_cb</I>
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NOT_CONNECTED No connection to the push service
/// @retval #PUSH_SERVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @pre The application should be connected to the push service.
/// @post As a result, the state callback will be invoked.
/// @see push_service_register()
///
/// Module getter: `tizenPush`.
int push_service_deregister(
  push_service_connection_h connection,
  push_service_result_cb result_callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenPush.push_service_deregister(
      connection,
      result_callback,
      user_data,
    );

/// @brief. Closes the connection and releases all its resources
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If you call this function in the push callback functions,\n
/// it may cause your application to crash.\n
/// The specific error code can be obtained using the get_last_result()\n
/// Error codes are described in the exception section.
/// Parameter connection The connection handle to the push service
/// @exception #PUSH_SERVICE_ERROR_NONE Successful
/// @exception #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_connect()
///
/// Module getter: `tizenPush`.
void push_service_disconnect(
  push_service_connection_h connection,
) =>
    tizenPush.push_service_disconnect(
      connection,
    );

/// @brief Frees the notification handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result()\n
/// Error codes are described in the exception section.
/// Parameter noti The notification handle
/// @exception #PUSH_SERVICE_ERROR_NONE Successful
/// @exception #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
///
/// Module getter: `tizenPush`.
void push_service_free_notification(
  push_service_notification_h noti,
) =>
    tizenPush.push_service_free_notification(
      noti,
    );

/// @brief Gets notification data sent by the server.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a data using free().
/// Parameter notification The notification handle
/// Output parameter data The notification data\n
/// Set NULL if error but <I>#PUSH_SERVICE_ERROR_INVALID_PARAMETER</I>
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No data available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_notify_cb()
/// @see push_service_request_unread_notification()
///
/// Module getter: `tizenPush`.
int push_service_get_notification_data(
  push_service_notification_h notification,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data,
) =>
    tizenPush.push_service_get_notification_data(
      notification,
      data,
    );

/// @brief Gets the notification message sent by the server.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The <I>msg</I> must be released with free().\n
/// push_service_request_unread_notification() is\n
/// preferred to this API.
/// Parameter notification The notification handle
/// Output parameter msg The notification message\n
/// Set NULL if error but <I>#PUSH_SERVICE_ERROR_INVALID_PARAMETER</I>
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No data available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_notify_cb()
/// @see push_service_get_unread_notification()
///
/// Module getter: `tizenPush`.
int push_service_get_notification_message(
  push_service_notification_h notification,
  ffi.Pointer<ffi.Pointer<ffi.Char>> msg,
) =>
    tizenPush.push_service_get_notification_message(
      notification,
      msg,
    );

/// @brief Gets the request ID assigned by the sender.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a request_id using free().
/// Parameter notification The notification handle
/// Output parameter request_id The request ID\n
/// Set @c NULL if error but #PUSH_SERVICE_ERROR_INVALID_PARAMETER
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No data available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_notify_cb()
/// @see push_service_request_unread_notification()
///
/// Module getter: `tizenPush`.
int push_service_get_notification_request_id(
  push_service_notification_h notification,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenPush.push_service_get_notification_request_id(
      notification,
      request_id,
    );

/// @brief Gets the sender of the notification.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a sender using free().
/// Parameter notification The notification handle
/// Output parameter sender The sender\n
/// Set @c NULL if error but #PUSH_SERVICE_ERROR_INVALID_PARAMETER
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No data available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_notify_cb()
/// @see push_service_get_unread_notification()
///
/// Module getter: `tizenPush`.
int push_service_get_notification_sender(
  push_service_notification_h notification,
  ffi.Pointer<ffi.Pointer<ffi.Char>> sender,
) =>
    tizenPush.push_service_get_notification_sender(
      notification,
      sender,
    );

/// @brief Gets the session ID of the notification.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a session_info using free().
/// Parameter notification The notification handle
/// Output parameter session_info The session ID\n
/// Set @c NULL if error but #PUSH_SERVICE_ERROR_INVALID_PARAMETER
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No data available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_notify_cb()
/// @see push_service_request_unread_notification()
///
/// Module getter: `tizenPush`.
int push_service_get_notification_session_info(
  push_service_notification_h notification,
  ffi.Pointer<ffi.Pointer<ffi.Char>> session_info,
) =>
    tizenPush.push_service_get_notification_session_info(
      notification,
      session_info,
    );

/// @brief Gets the received time of the notification message.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter notification The notification handle
/// Output parameter received_time The received time of the notification message \n
/// The @a received_time is based on UTC.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No data available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_notify_cb()
/// @see push_service_request_unread_notification()
///
/// Module getter: `tizenPush`.
int push_service_get_notification_time(
  push_service_notification_h notification,
  ffi.Pointer<ffi.LongLong> received_time,
) =>
    tizenPush.push_service_get_notification_time(
      notification,
      received_time,
    );

/// @brief. Gets the value in the type field of the notification
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter notification The notification handle
/// Output parameter type The type value assigned by the sender
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No data available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @see push_service_notify_cb()
/// @see push_service_request_unread_notification()
///
/// Module getter: `tizenPush`.
int push_service_get_notification_type(
  push_service_notification_h notification,
  ffi.Pointer<ffi.Int> type,
) =>
    tizenPush.push_service_get_notification_type(
      notification,
      type,
    );

/// @brief Gets the registration ID in the <I>#PUSH_SERVICE_STATE_REGISTERED</I> state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a reg_id using free().
/// Parameter connection The connection handle to the push service
/// Output parameter reg_id The registration ID\n
/// Set NULL if error but <I>#PUSH_SERVICE_ERROR_INVALID_PARAMETER</I>
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No registration ID available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
///
/// Module getter: `tizenPush`.
int push_service_get_registration_id(
  push_service_connection_h connection,
  ffi.Pointer<ffi.Pointer<ffi.Char>> reg_id,
) =>
    tizenPush.push_service_get_registration_id(
      connection,
      reg_id,
    );

/// @brief Gets an unread notification message from the push server.
/// @details If an application receives an unread message with this method, the message is removed from the system. \n
/// This method can be called repeatedly until it returns <I>#PUSH_SERVICE_ERROR_NO_DATA</I> \n
/// But, this method does NOT guarantee order and reliability of notification messages. \n
/// Some notification messages can be dropped when the system message queue is full.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks It is recommended to use push_service_request_unread_notification().
/// @remarks You must release @a noti using push_service_free_notification().
/// Parameter connection The connection handle to the push service
/// Output parameter noti The notification handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NO_DATA No data available
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
///
/// @see push_service_get_notification_message()
/// @see push_service_get_notification_time()
/// @see push_service_get_notification_data()
///
/// Module getter: `tizenPush`.
int push_service_get_unread_notification(
  push_service_connection_h connection,
  ffi.Pointer<push_service_notification_h> noti,
) =>
    tizenPush.push_service_get_unread_notification(
      connection,
      noti,
    );

/// @brief Registers an application to the push server.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection The connection handle to the push service
/// Parameter result_callback  Result callback function
/// Parameter user_data  User data to pass to <I>result_cb</I>
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PUSH_SERVICE_ERROR_NOT_CONNECTED No connection to the push service
/// @retval #PUSH_SERVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
/// @pre The application should be connected to the push service.
/// @post As a result, the state callback will be invoked.
/// @see push_service_deregister()
///
/// Module getter: `tizenPush`.
int push_service_register(
  push_service_connection_h connection,
  push_service_result_cb result_callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenPush.push_service_register(
      connection,
      result_callback,
      user_data,
    );

/// @brief Requests unread notification messages to the push server.
/// @details When the app wants to receive messages that arrived before it launched, this  \n
/// method should be called. Upon receiving this request, the daemon sends messages\n
/// stored in its DB to the app. The notify_callback() method assigned in push_service_connect()\n
/// will be called when these messages arrive. No need to call this method multiple\n
/// times to receive multiple messages. This method does NOT guarantee order and\n
/// reliability of notification messages.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This method is preferred to push_service_get_unread_notification().
/// Parameter connection The connection handle to the push service
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PUSH_SERVICE_ERROR_NONE Successful
/// @retval #PUSH_SERVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PUSH_SERVICE_ERROR_NOT_CONNECTED Not connected to the daemon
/// @retval #PUSH_SERVICE_ERROR_OPERATION_FAILED Error when sending the request
/// @retval #PUSH_SERVICE_ERROR_NOT_SUPPORTED Not supported feature
///
/// @see push_service_get_unread_notification()
/// @see push_service_connect()
///
/// Module getter: `tizenPush`.
int push_service_request_unread_notification(
  push_service_connection_h connection,
) =>
    tizenPush.push_service_request_unread_notification(
      connection,
    );

