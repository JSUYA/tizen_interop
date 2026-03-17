// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenMessagePort`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libmessage-port.so.1`.
///
/// Application Framework / Message Port.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_message_port;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a callback called when a remote port is registered.
/// @details When remote port is registered, @a registered_cb function is called.
/// Each added callback has its own separate watcher.
/// @since_tizen 4.0
/// @remarks The specified callback is called only in the main thread.
/// Parameter remote_app_id        The ID of the remote application
/// Parameter remote_port          The name of the remote message port
/// Parameter trusted_remote_port  Indicates whether remote port is trusted
/// Parameter registered_cb        The callback function to be called
/// when remote port is registered
/// Parameter user_data            The user data to be passed to the callback function
/// Output parameter watcher_id          The ID of the watcher which is monitoring the remote port
/// registration events
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER  The specified @a remote_app_id or @a remote_port
/// or @a registered_cb is NULL
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR          Internal I/O error
/// @see message_port_registration_event_cb()
/// @see message_port_add_unregistered_cb()
/// @see message_port_remove_registration_event_cb()
///
/// Module getter: `tizenMessagePort`.
int message_port_add_registered_cb(
  ffi.Pointer<ffi.Char> remote_app_id,
  ffi.Pointer<ffi.Char> remote_port,
  bool trusted_remote_port,
  message_port_registration_event_cb registered_cb,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> watcher_id,
) =>
    tizenMessagePort.message_port_add_registered_cb(
      remote_app_id,
      remote_port,
      trusted_remote_port,
      registered_cb,
      user_data,
      watcher_id,
    );

/// @brief Adds a callback called when a remote port is unregistered.
/// @details When the remote port is unregistered, @a unregistered_cb function is called.
/// Each added callback has its own separate watcher.
/// @since_tizen 4.0
/// @remarks The specified callback is called only in the main thread.
/// Parameter remote_app_id        The ID of the remote application
/// Parameter remote_port          The name of the remote message port
/// Parameter trusted_remote_port  Indicates whether remote port is trusted
/// Parameter unregistered_cb      The callback function to be called
/// when remote port is unregistered
/// Parameter user_data            The user data to be passed to the callback function
/// Output parameter watcher_id          The ID of the watcher which is monitoring the remote port
/// unregistration events
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a remote_app_id or @a remote_port
/// or @a unregistered_cb is NULL
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR          Internal I/O error
/// @see message_port_registration_event_cb()
/// @see message_port_add_registered_cb()
/// @see message_port_remove_registration_event_cb()
///
/// Module getter: `tizenMessagePort`.
int message_port_add_unregistered_cb(
  ffi.Pointer<ffi.Char> remote_app_id,
  ffi.Pointer<ffi.Char> remote_port,
  bool trusted_remote_port,
  message_port_registration_event_cb unregistered_cb,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> watcher_id,
) =>
    tizenMessagePort.message_port_add_unregistered_cb(
      remote_app_id,
      remote_port,
      trusted_remote_port,
      unregistered_cb,
      user_data,
      watcher_id,
    );

/// @brief Checks whether the message port of a remote application is registered.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If this function returns a negative error value, the out parameter @a exist will not be changed.
/// Parameter remote_app_id The ID of the remote application
/// Parameter remote_port The name of the remote message port
/// Output parameter exist If @c true, the message port of the remote application exists;
/// otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_NONE Successful
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a remote_app_id or @a remote_port is NULL
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
///
/// Module getter: `tizenMessagePort`.
int message_port_check_remote_port(
  ffi.Pointer<ffi.Char> remote_app_id,
  ffi.Pointer<ffi.Char> remote_port,
  ffi.Pointer<ffi.Bool> exist,
) =>
    tizenMessagePort.message_port_check_remote_port(
      remote_app_id,
      remote_port,
      exist,
    );

/// @brief Checks whether the trusted message port of a remote application is registered.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If this function returns a negative error value, the out parameter @a exist will not be changed.
/// Parameter remote_app_id The ID of the remote application
/// Parameter remote_port The name of the remote message port
/// Output parameter exist If @c true, the message port of the remote application exists;
/// otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_NONE Successful
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a remote_app_id or @a remote_port is @c NULL
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_CERTIFICATE_NOT_MATCH The remote application is not signed with the same certificate
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
///
/// Module getter: `tizenMessagePort`.
int message_port_check_trusted_remote_port(
  ffi.Pointer<ffi.Char> remote_app_id,
  ffi.Pointer<ffi.Char> remote_port,
  ffi.Pointer<ffi.Bool> exist,
) =>
    tizenMessagePort.message_port_check_trusted_remote_port(
      remote_app_id,
      remote_port,
      exist,
    );

/// @brief Registers the local message port.
/// @details If the message port name is already registered, the previous local message port ID returns and the callback function is changed. \n
/// Multiple message ports can be registered.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specified callback is called only in the main thread.
/// Parameter local_port The name of the local message port
/// Parameter callback The callback function to be called when a message is received
/// Parameter user_data The user data to be passed to the callback function
/// @return A local message port ID on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a local_port or @a callback is NULL
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
/// @see message_port_unregister_local_port()
///
/// Module getter: `tizenMessagePort`.
int message_port_register_local_port(
  ffi.Pointer<ffi.Char> local_port,
  message_port_message_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMessagePort.message_port_register_local_port(
      local_port,
      callback,
      user_data,
    );

/// @brief Registers the trusted local message port.
/// @details If the message port name is already registered, the previous local message port ID returns and the callback function is changed. @n
/// It allows communications only if the applications are signed with the same certificate, which is uniquely assigned to the developer. @n
/// Multiple message ports can be registered.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specified callback is called only in the main thread.
/// Parameter trusted_local_port The name of the trusted local message port
/// Parameter callback The callback function to be called when a trusted message is received
/// Parameter user_data The user data to be passed to the callback function
/// @return A trusted local message port ID on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a trusted_local_port or @a callback is NULL
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
/// @see message_port_unregister_trusted_local_port()
///
/// Module getter: `tizenMessagePort`.
int message_port_register_trusted_local_port(
  ffi.Pointer<ffi.Char> trusted_local_port,
  message_port_trusted_message_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMessagePort.message_port_register_trusted_local_port(
      trusted_local_port,
      callback,
      user_data,
    );

/// @brief Removes the registration/unregistration callback associated with the given watcher.
/// @since_tizen 4.0
/// Parameter watcher_id  The ID of watcher which is monitoring remote port
/// registration/unregistration events
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER  The specified @a watcher_id is not correct
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR           Internal I/O error
/// @see message_port_registration_event_cb()
/// @see message_port_add_registered_cb()
/// @see message_port_add_unregistered_cb()
///
/// Module getter: `tizenMessagePort`.
int message_port_remove_registration_event_cb(
  int watcher_id,
) =>
    tizenMessagePort.message_port_remove_registration_event_cb(
      watcher_id,
    );

/// @brief Sends a message to the message port of a remote application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks @a message must be released with bundle_free() after sending the message.
/// Parameter remote_app_id The ID of the remote application
/// Parameter remote_port The name of the remote message port
/// Parameter message The message to be passed to the remote application, the recommended message size is under 4KB
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_NONE Successful
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a remote_app_id, @a remote_port or @a message is NULL
/// @retval #MESSAGE_PORT_ERROR_PORT_NOT_FOUND The message port of the remote application cannot be found
/// @retval #MESSAGE_PORT_ERROR_MAX_EXCEEDED The size of message has exceeded the maximum limit
/// @retval #MESSAGE_PORT_ERROR_RESOURCE_UNAVAILABLE Resource temporarily unavailable
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
/// @post It invokes message_port_message_cb() on the remote application.
/// @see message_port_message_cb()
/// @see message_port_register_local_port()
/// @see message_port_unregister_local_port()
///
/// @code
/// #include <message_port.h>
/// bundle *b = bundle_create();
/// bundle_add(b, "key1", "value1");
/// bundle_add(b, "key2", "value2");
/// int ret = message_port_send_message("0123456789.BasicApp", "BasicAppPort", b);
/// bundle_free(b);
/// @endcode
///
/// Module getter: `tizenMessagePort`.
int message_port_send_message(
  ffi.Pointer<ffi.Char> remote_app_id,
  ffi.Pointer<ffi.Char> remote_port,
  ffi.Pointer<bundle> message,
) =>
    tizenMessagePort.message_port_send_message(
      remote_app_id,
      remote_port,
      message,
    );

/// @brief Sends a message with local port information to the message port of a remote application.
/// @details This method is used for bidirectional communication.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a message using bundle_free() after sending the message.
/// Parameter remote_app_id The ID of the remote application
/// Parameter remote_port The name of the remote message port
/// Parameter message The message to be passed to the remote application, the recommended message size is under 4KB
/// Parameter local_port_id The message port ID returned by message_port_register_local_port() or message_port_register_trusted_local_port()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_NONE Successful
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a remote_app_id, @a remote_port or @a message is @c NULL and
/// The specified @a local_port_id is not positive
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_PORT_NOT_FOUND The port of the local or remote application cannot be found
/// @retval #MESSAGE_PORT_ERROR_MAX_EXCEEDED The size of the message has exceeded the maximum limit
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
/// @post It invokes message_port_message_cb() on the remote application.
/// @see message_port_message_cb()
/// @see message_port_register_local_port()
/// @see message_port_unregister_local_port()
///
/// @code
/// #include <message_port.h>
///
/// static void message_port_receive_cb(int local_port_id, const char *remote_app_id, const char *remote_port, bundle *message) {}
///
/// int
/// main(int argc, char *argv[])
/// {
/// bundle *b = bundle_create();
/// bundle_add(b, "key1", "value1");
/// bundle_add(b, "key2", "value2");
///
/// int local_port_id = message_port_register_local_port("HelloPort", message_port_receive_cb);
///
/// int ret = message_port_send_message_with_local_port("0123456789.BasicApp", "BasicAppPort", b, local_port_id);
///
/// bundle_free(b);
/// }
/// @endcode
///
/// Module getter: `tizenMessagePort`.
int message_port_send_message_with_local_port(
  ffi.Pointer<ffi.Char> remote_app_id,
  ffi.Pointer<ffi.Char> remote_port,
  ffi.Pointer<bundle> message,
  int local_port_id,
) =>
    tizenMessagePort.message_port_send_message_with_local_port(
      remote_app_id,
      remote_port,
      message,
      local_port_id,
    );

/// @brief Sends a trusted message to the message port of a remote application.
/// @details This method allows communication only if the applications are signed with the same certificate, which is uniquely assigned to the developer.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a message using bundle_free() after sending the message.
/// Parameter remote_app_id The ID of the remote application
/// Parameter remote_port The name of the remote message port
/// Parameter message The message to be passed to the remote application, the recommended message size is under 4KB
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_NONE Successful
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a remote_app_id, @a remote_port or @a message is @c NULL
/// @retval #MESSAGE_PORT_ERROR_PORT_NOT_FOUND The message port of the remote application cannot be found
/// @retval #MESSAGE_PORT_ERROR_CERTIFICATE_NOT_MATCH The remote application is not signed with the same certificate
/// @retval #MESSAGE_PORT_ERROR_MAX_EXCEEDED The size of the message has exceeded the maximum limit
/// @retval #MESSAGE_PORT_ERROR_RESOURCE_UNAVAILABLE Resource is temporarily unavailable
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
/// @post It invokes message_port_trusted_message_cb() on the remote application.
/// @see message_port_trusted_message_cb()
/// @see message_port_register_trusted_local_port()
/// @see message_port_unregister_trusted_local_port()
///
/// Module getter: `tizenMessagePort`.
int message_port_send_trusted_message(
  ffi.Pointer<ffi.Char> remote_app_id,
  ffi.Pointer<ffi.Char> remote_port,
  ffi.Pointer<bundle> message,
) =>
    tizenMessagePort.message_port_send_trusted_message(
      remote_app_id,
      remote_port,
      message,
    );

/// @brief Sends a trusted message with local port information to the message port of a remote application.
/// @details This method is used for bidirectional communication. @n
/// It allows communications only if the applications are signed with the same certificate, which is uniquely assigned to the developer.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You muse release @a message using bundle_free() after sending the message.
/// Parameter remote_app_id The ID of the remote application
/// Parameter remote_port The name of the remote message port
/// Parameter message The message to be passed to the remote application, the recommended message size is under 4KB
/// Parameter local_port_id The message port ID returned by message_port_register_local_port() or message_port_register_trusted_local_port()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_NONE Successful
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a remote_app_id, @a remote_port or @a message is @c NULL and
/// specified @a local_port_id is not positive
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_PORT_NOT_FOUND The port of the local or remote application cannot be found
/// @retval #MESSAGE_PORT_ERROR_CERTIFICATE_NOT_MATCH The remote application is not signed with the same certificate
/// @retval #MESSAGE_PORT_ERROR_MAX_EXCEEDED The size of the message has exceeded the maximum limit
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
/// @post It invokes message_port_trusted_message_cb() on the remote application.
/// @see message_port_trusted_message_cb()
/// @see message_port_register_trusted_local_port()
/// @see message_port_unregister_trusted_local_port()
///
/// Module getter: `tizenMessagePort`.
int message_port_send_trusted_message_with_local_port(
  ffi.Pointer<ffi.Char> remote_app_id,
  ffi.Pointer<ffi.Char> remote_port,
  ffi.Pointer<bundle> message,
  int local_port_id,
) =>
    tizenMessagePort.message_port_send_trusted_message_with_local_port(
      remote_app_id,
      remote_port,
      message,
      local_port_id,
    );

/// @brief Unregisters the local message port.
/// @details This method unregisters the callback function with the specified local port ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter local_port_id The local message port ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_NONE Successful
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a local_port_id is not positive
/// @retval #MESSAGE_PORT_ERROR_PORT_NOT_FOUND The specified @a local_port_id cannot be found
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
/// @see message_port_register_local_port()
///
/// Module getter: `tizenMessagePort`.
int message_port_unregister_local_port(
  int local_port_id,
) =>
    tizenMessagePort.message_port_unregister_local_port(
      local_port_id,
    );

/// @brief Unregisters the trusted local message port.
/// @details This method unregisters the callback function with the specified local port ID. @n
/// It allows communications only if the applications are signed with the same certificate, which is uniquely assigned to the developer.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter trusted_local_port_id The trusted local message port ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MESSAGE_PORT_ERROR_NONE	Successful
/// @retval #MESSAGE_PORT_ERROR_INVALID_PARAMETER The specified @a trusted_local_port_id is not positive
/// @retval #MESSAGE_PORT_ERROR_PORT_NOT_FOUND The specified @a trusted_local_port_id cannot be found
/// @retval #MESSAGE_PORT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MESSAGE_PORT_ERROR_IO_ERROR Internal I/O error
/// @see message_port_register_trusted_local_port()
///
/// Module getter: `tizenMessagePort`.
int message_port_unregister_trusted_local_port(
  int trusted_local_port_id,
) =>
    tizenMessagePort.message_port_unregister_trusted_local_port(
      trusted_local_port_id,
    );

