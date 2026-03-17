// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiNetworkConnection`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-network-connection.so.1`.
///
/// Network / Connection.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_network_connection;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a new profile which is created by connection_profile_create().
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile
/// @remarks You can only add a profile of the cellular type.
/// Parameter connection        The connection handle
/// Parameter profile           The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_add_profile(
  connection_h connection,
  connection_profile_h profile,
) =>
    tizenCapiNetworkConnection.connection_add_profile(
      connection,
      profile,
    );

/// @platform
/// @deprecated Deprecated since 4.0. Use connection_add_route_entry() instead.
/// @brief Adds a IPv4 route to the routing table.
/// @details You can get the @a interface_name from
/// connection_profile_get_network_interface_name() of opened profile.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/network.route
/// @remarks Since 6.0, the required privilege and level of this function has changed.
/// Parameter connection        The connection handle
/// Parameter interface_name    The name of network interface
/// Parameter host_address      The IP address of the host
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_ALREADY_EXISTS        Already exists
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_profile_get_network_interface_name()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_add_route(
  connection_h connection,
  ffi.Pointer<ffi.Char> interface_name,
  ffi.Pointer<ffi.Char> host_address,
) =>
    tizenCapiNetworkConnection.connection_add_route(
      connection,
      interface_name,
      host_address,
    );

/// @platform
/// @brief Adds a route to the routing table.
/// @details You can get the @a interface_name from \n
/// connection_profile_get_network_interface_name() of opened profile.
/// @since_tizen 4.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/network.route
/// @remarks Since 6.0, the required privilege and level of this function has changed.
/// Parameter connection        The connection handle
/// Parameter address_family    The address family
/// Parameter interface_name    The name of network interface
/// Parameter host_address      The IP address of the host (e.g., single IP address such as
/// 163.152.10.2,192.168.1.2), group's IP address (e.g., 163.152.10.0, 192.168.0.0)
/// is not allowed
/// Parameter gateway           The gateway address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_ALREADY_EXISTS        Already exists
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_profile_get_network_interface_name()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_add_route_entry(
  connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Char> interface_name,
  ffi.Pointer<ffi.Char> host_address,
  ffi.Pointer<ffi.Char> gateway,
) =>
    tizenCapiNetworkConnection.connection_add_route_entry(
      connection,
      address_family,
      interface_name,
      host_address,
      gateway,
    );

/// @platform
/// @deprecated Deprecated since 4.0. Use connection_add_route_entry() instead.
/// @brief Adds a IPv6 route to the routing table.
/// @details You can get the @a interface_name from
/// connection_profile_get_network_interface_name() of opened profile.
/// @since_tizen 2.3.1
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/network.route
/// @remarks Since 6.0, the required privilege and level of this function has changed.
/// Parameter connection        The connection handle
/// Parameter interface_name    The name of network interface
/// Parameter host_address      The IP address of the host
/// Parameter gateway           The gateway address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_ALREADY_EXISTS        Already exists
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_profile_get_network_interface_name()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_add_route_ipv6(
  connection_h connection,
  ffi.Pointer<ffi.Char> interface_name,
  ffi.Pointer<ffi.Char> host_address,
  ffi.Pointer<ffi.Char> gateway,
) =>
    tizenCapiNetworkConnection.connection_add_route_ipv6(
      connection,
      interface_name,
      host_address,
      gateway,
    );

/// @brief Closes a connection of profile.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
/// Parameter connection        The connection handle
/// Parameter profile           The profile handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @post connection_closed_cb() will be invoked.
/// @see connection_closed_cb()
/// @see connection_open_profile()
/// @see connection_profile_set_state_changed_cb()
/// @see connection_profile_unset_state_changed_cb()
/// @see connection_profile_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_close_profile(
  connection_h connection,
  connection_profile_h profile,
  connection_closed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_close_profile(
      connection,
      profile,
      callback,
      user_data,
    );

/// @brief Creates a handle for managing data connections.
/// @details If you do not use this function and use other functions,
/// you will get the #CONNECTION_ERROR_NOT_INITIALIZED error.
/// If you put an invalid handle, you will get the #CONNECTION_ERROR_INVALID_PARAMETER error.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a connection using connection_destroy().
/// Output parameter connection       The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_ALREADY_INITIALIZED   Already initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_destroy()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_create(
  ffi.Pointer<connection_h> connection,
) =>
    tizenCapiNetworkConnection.connection_create(
      connection,
    );

/// @brief Destroys the connection handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_create()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_destroy(
  connection_h connection,
) =>
    tizenCapiNetworkConnection.connection_destroy(
      connection,
    );

/// @brief Destroys a profiles iterator.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile_iterator  The iterator of the profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_destroy_profile_iterator(
  connection_profile_iterator_h profile_iterator,
) =>
    tizenCapiNetworkConnection.connection_destroy_profile_iterator(
      profile_iterator,
    );

/// @brief Gets all IPv6 addresses assigned to the network interface.
/// @since_tizen 4.0
/// Parameter connection       The connection handle
/// Parameter connection_type  The connection type
/// Parameter callback         The callback to be called for each IPv6 address
/// Parameter user_data        The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_foreach_ipv6_address(
  connection_h connection,
  int connection_type,
  connection_ipv6_address_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_foreach_ipv6_address(
      connection,
      connection_type,
      callback,
      user_data,
    );

/// @brief Gets the state of the Bluetooth.
/// @details The returned state is for the Bluetooth connection state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter connection        The connection handle
/// Output parameter state            The state of the Bluetooth connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_bt_state(
  connection_h connection,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkConnection.connection_get_bt_state(
      connection,
      state,
    );

/// @brief Gets the state of cellular connection.
/// @details The returned state is for the cellular connection state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// Output parameter state            The state of the cellular connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_cellular_state(
  connection_h connection,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkConnection.connection_get_cellular_state(
      connection,
      state,
    );

/// @brief Gets the name of the default profile.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a profile using connection_profile_destroy().
/// Parameter connection        The connection handle
/// Output parameter profile          The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NO_CONNECTION         There is no connection
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_current_profile(
  connection_h connection,
  ffi.Pointer<connection_profile_h> profile,
) =>
    tizenCapiNetworkConnection.connection_get_current_profile(
      connection,
      profile,
    );

/// @brief Gets the default profile which provides the given cellular service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a profile using connection_profile_destroy().
/// Parameter connection        The connection handle
/// Parameter type              The type of cellular service \n
/// #CONNECTION_CELLULAR_SERVICE_TYPE_APPLICATION is not permitted
/// Output parameter profile          The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_default_cellular_service_profile(
  connection_h connection,
  int type,
  ffi.Pointer<connection_profile_h> profile,
) =>
    tizenCapiNetworkConnection.connection_get_default_cellular_service_profile(
      connection,
      type,
      profile,
    );

/// @brief Checks for ethernet cable is attached or not.
/// @details The returned state is for the ethernet cable state.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter connection        The handle of the connection
/// Parameter state             The state of ethernet cable
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_ethernet_cable_state(
  connection_h connection,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkConnection.connection_get_ethernet_cable_state(
      connection,
      state,
    );

/// @brief Gets the state of the Ethernet.
/// @details The returned state is for the Ethernet connection state.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter connection        The connection handle
/// Output parameter state            The state of Ethernet connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_ethernet_state(
  connection_h connection,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkConnection.connection_get_ethernet_state(
      connection,
      state,
    );

/// @brief Gets the IP address of the current connection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a ip_address using free().
/// Parameter connection        The connection handle
/// Parameter address_family    The address family
/// Output parameter ip_address       The pointer to the IP address string
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_ip_address(
  connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_address,
) =>
    tizenCapiNetworkConnection.connection_get_ip_address(
      connection,
      address_family,
      ip_address,
    );

/// @brief Gets the MAC address of the Wi-Fi or ethernet.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks @a mac_addr must be released with free() by you.
/// Parameter connection        The handle of the connection
/// Parameter type              The type of current network connection
/// Output parameter mac_addr         The MAC address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_INVALID_OPERATION     Invalid operation
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_mac_address(
  connection_h connection,
  int type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mac_addr,
) =>
    tizenCapiNetworkConnection.connection_get_mac_address(
      connection,
      type,
      mac_addr,
    );

/// @brief Gets a profiles iterator.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a profile_iterator using connection_destroy().
/// Parameter connection        The connection handle
/// Parameter type              The type of the connection iterator
/// Output parameter profile_iterator The iterator of profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_profile_iterator(
  connection_h connection,
  int type,
  ffi.Pointer<connection_profile_iterator_h> profile_iterator,
) =>
    tizenCapiNetworkConnection.connection_get_profile_iterator(
      connection,
      type,
      profile_iterator,
    );

/// @brief Gets the proxy address of the current connection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a proxy using free().
/// Parameter connection        The connection handle
/// Parameter address_family    The address family
/// Output parameter proxy            The proxy address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_proxy(
  connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> proxy,
) =>
    tizenCapiNetworkConnection.connection_get_proxy(
      connection,
      address_family,
      proxy,
    );

/// @brief Gets the statistics information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter connection The connection handle
/// Parameter connection_type   The type of connection \n
/// Only #CONNECTION_TYPE_WIFI and #CONNECTION_TYPE_CELLULAR are supported
/// Parameter statistics_type   The type of statistics
/// Output parameter size             The received data size of the last cellular packet data connection (bytes)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_statistics(
  connection_h connection,
  int connection_type,
  int statistics_type,
  ffi.Pointer<ffi.LongLong> size,
) =>
    tizenCapiNetworkConnection.connection_get_statistics(
      connection,
      connection_type,
      statistics_type,
      size,
    );

/// @brief Gets the type of the current profile for data connection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// Output parameter type             The type of the network
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_type(
  connection_h connection,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_get_type(
      connection,
      type,
    );

/// @brief Gets the state of the Wi-Fi.
/// @details The returned state is for the Wi-Fi connection state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter connection        The connection handle
/// Output parameter state            The state of Wi-Fi connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_get_wifi_state(
  connection_h connection,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkConnection.connection_get_wifi_state(
      connection,
      state,
    );

/// @brief Gets if the current connection is metered.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter connection        The connection handle
/// Output parameter is_metered       The value indicating whether it is metered
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_is_metered_network(
  connection_h connection,
  ffi.Pointer<ffi.Bool> is_metered,
) =>
    tizenCapiNetworkConnection.connection_is_metered_network(
      connection,
      is_metered,
    );

/// @brief Opens a connection of profile, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter connection        The connection handle
/// Parameter profile           The profile handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @post connection_opened_cb() will be invoked.
/// @see connection_opened_cb()
/// @see connection_close_profile()
/// @see connection_profile_set_state_changed_cb()
/// @see connection_profile_unset_state_changed_cb()
/// @see connection_profile_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_open_profile(
  connection_h connection,
  connection_profile_h profile,
  connection_opened_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_open_profile(
      connection,
      profile,
      callback,
      user_data,
    );

/// @brief Clones a profile handle.
/// @since_tizen 2.3
/// @remarks You must release @a cloned_profile using connection_profile_destroy().
/// Output parameter cloned_profile    The handle of the cloned profile
/// Parameter origin_profile     The handle of the origin profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @see connection_profile_destroy()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_clone(
  ffi.Pointer<connection_profile_h> cloned_profile,
  connection_profile_h origin_profile,
) =>
    tizenCapiNetworkConnection.connection_profile_clone(
      cloned_profile,
      origin_profile,
    );

/// @brief Creates a profile handle.
/// @details The profile name, which you get from connection_profile_get_name()
/// will include the keyword you set.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a profile using connection_profile_destroy().
/// Parameter type               The type of profile \n
/// #CONNECTION_PROFILE_TYPE_CELLULAR and #CONNECTION_PROFILE_TYPE_WIFI are supported
/// Parameter keyword            The keyword included in profile name
/// Output parameter profile           The handle of the profile
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_profile_destroy()
/// @see connection_profile_get_name()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_create(
  int type,
  ffi.Pointer<ffi.Char> keyword,
  ffi.Pointer<connection_profile_h> profile,
) =>
    tizenCapiNetworkConnection.connection_profile_create(
      type,
      keyword,
      profile,
    );

/// @brief Destroys a profile handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Output parameter profile           The handle to the profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @see connection_profile_create()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_destroy(
  connection_profile_h profile,
) =>
    tizenCapiNetworkConnection.connection_profile_destroy(
      profile,
    );

/// @brief Gets the APN (access point name).
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a apn using free().
/// Parameter profile         The profile handle
/// Output parameter apn            The name of the APN
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_cellular_apn(
  connection_profile_h profile,
  ffi.Pointer<ffi.Pointer<ffi.Char>> apn,
) =>
    tizenCapiNetworkConnection.connection_profile_get_cellular_apn(
      profile,
      apn,
    );

/// @brief Gets the authentication information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a user_name and @a password using free().
/// Parameter profile         The profile handle
/// Output parameter type           The type of the authentication
/// Output parameter user_name      The user name
/// Output parameter password       The password
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_cellular_auth_info(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> user_name,
  ffi.Pointer<ffi.Pointer<ffi.Char>> password,
) =>
    tizenCapiNetworkConnection.connection_profile_get_cellular_auth_info(
      profile,
      type,
      user_name,
      password,
    );

/// @brief Gets the home URL.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a home_url using free().
/// Parameter profile         The profile handle
/// Output parameter home_url       The home URL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_cellular_home_url(
  connection_profile_h profile,
  ffi.Pointer<ffi.Pointer<ffi.Char>> home_url,
) =>
    tizenCapiNetworkConnection.connection_profile_get_cellular_home_url(
      profile,
      home_url,
    );

/// @brief Gets the cellular pdn type.
/// @since_tizen 3.0
/// Parameter profile         The profile handle
/// Output parameter type           The cellular pdn type
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_cellular_pdn_type(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_cellular_pdn_type(
      profile,
      type,
    );

/// @brief Gets the cellular roam pdn type.
/// @since_tizen 3.0
/// Parameter profile         The profile handle
/// Output parameter type           The cellular pdn type
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_cellular_roam_pdn_type(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_cellular_roam_pdn_type(
      profile,
      type,
    );

/// @brief Gets the service type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter type           The type of the cellular service
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_cellular_service_type(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_cellular_service_type(
      profile,
      type,
    );

/// @brief Gets the DHCP lease duration.
/// @since_tizen 4.0
/// Parameter profile                   The profile handle
/// Parameter address_family            The address family
/// Output parameter dhcp_lease_duration      The DHCP lease duration in seconds
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED                  Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_dhcp_lease_duration(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Int> dhcp_lease_duration,
) =>
    tizenCapiNetworkConnection.connection_profile_get_dhcp_lease_duration(
      profile,
      address_family,
      dhcp_lease_duration,
    );

/// @brief Gets the DHCP Server address.
/// @since_tizen 4.0
/// @remarks You must release @a dhcp_server using free().
/// This function is supported only for IPv4 address family.
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Output parameter dhcp_server      The DHCP Server address
/// @return @c 0 on success, otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY                  Out of memory
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_dhcp_server_address(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dhcp_server,
) =>
    tizenCapiNetworkConnection.connection_profile_get_dhcp_server_address(
      profile,
      address_family,
      dhcp_server,
    );

/// @brief Gets the DNS address.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The allowance of the DNS address is @c 2. You must release @a dns_address using free().
/// Parameter profile           The profile handle
/// Parameter order             The order of DNS address \n
/// It starts from 1, which means first DNS address
/// Parameter address_family    The address family
/// Output parameter dns_address      The DNS address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY                  Out of memory
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_dns_address(
  connection_profile_h profile,
  int order,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dns_address,
) =>
    tizenCapiNetworkConnection.connection_profile_get_dns_address(
      profile,
      order,
      address_family,
      dns_address,
    );

/// @brief Gets the DNS config type.
/// @since_tizen 4.0
/// Parameter profile         The profile handle
/// Parameter address_family  The address family
/// Output parameter type           The DNS config type
/// @return 0 on success, otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_dns_config_type(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_dns_config_type(
      profile,
      address_family,
      type,
    );

/// @brief Gets the Gateway address.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a gateway_address using free().
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Output parameter gateway_address  The gateway address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY                  Out of memory
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_gateway_address(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> gateway_address,
) =>
    tizenCapiNetworkConnection.connection_profile_get_gateway_address(
      profile,
      address_family,
      gateway_address,
    );

/// @brief Gets the profile ID.
/// @details The separate profiles can have the same name.
/// So, you must use this function instead of connection_profile_get_name()
/// if you want to get the unique identification.
/// In case you create a profile, this value will be determined when you add the profile.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a profile_id using free().
/// Parameter profile            The profile handle
/// Output parameter profile_id        The ID of the profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @see connection_profile_get_name()
/// @see connection_add_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_id(
  connection_profile_h profile,
  ffi.Pointer<ffi.Pointer<ffi.Char>> profile_id,
) =>
    tizenCapiNetworkConnection.connection_profile_get_id(
      profile,
      profile_id,
    );

/// @brief Gets the Internet connection state.
/// @since_tizen 5.5
/// Parameter profile           The profile handle
/// Output parameter state            The Internet connection state of the profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_internet_state(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkConnection.connection_profile_get_internet_state(
      profile,
      state,
    );

/// @brief Gets the IP address.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a ip_address using free().
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Output parameter ip_address       The IP address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY                  Out of memory
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_ip_address(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_address,
) =>
    tizenCapiNetworkConnection.connection_profile_get_ip_address(
      profile,
      address_family,
      ip_address,
    );

/// @brief Gets the IP config type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Output parameter type             The type of the IP config
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_ip_config_type(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_ip_config_type(
      profile,
      address_family,
      type,
    );

/// @brief Gets the IPv6 network state.
/// @since_tizen 4.0
/// Parameter profile           The profile handle
/// Output parameter state            The profile state
/// @return 0 on success, otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_ipv6_state(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkConnection.connection_profile_get_ipv6_state(
      profile,
      state,
    );

/// @brief Gets the profile name.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a profile_name using free().
/// Parameter profile           The profile handle
/// Output parameter profile_name     The name of the profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @see connection_profile_get_id()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_name(
  connection_profile_h profile,
  ffi.Pointer<ffi.Pointer<ffi.Char>> profile_name,
) =>
    tizenCapiNetworkConnection.connection_profile_get_name(
      profile,
      profile_name,
    );

/// @brief Gets the name of the network interface, e.g. eth0 and pdp0.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a interface_name using free().
/// Parameter profile           The profile handle
/// Output parameter interface_name   The name of the network interface
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_network_interface_name(
  connection_profile_h profile,
  ffi.Pointer<ffi.Pointer<ffi.Char>> interface_name,
) =>
    tizenCapiNetworkConnection.connection_profile_get_network_interface_name(
      profile,
      interface_name,
    );

/// @brief Gets the network prefix length.
/// @since_tizen 4.0
/// Parameter profile         The profile handle
/// Parameter address_family  The address family
/// Output parameter prefix_len     The network prefix length \n
/// In case of IPv4, it means netmask length
/// (also called a prefix, e.g. 8, 16, 24, 32)
/// @return 0 on success, otherwise negative error value.
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_prefix_length(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Int> prefix_len,
) =>
    tizenCapiNetworkConnection.connection_profile_get_prefix_length(
      profile,
      address_family,
      prefix_len,
    );

/// @brief Gets the Proxy address.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a proxy_address using free().
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Output parameter proxy_address    The proxy address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY                  Out of memory
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_proxy_address(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> proxy_address,
) =>
    tizenCapiNetworkConnection.connection_profile_get_proxy_address(
      profile,
      address_family,
      proxy_address,
    );

/// @brief Gets the Proxy type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile           The profile handle
/// Output parameter type             The type of the proxy
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_proxy_type(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_proxy_type(
      profile,
      type,
    );

/// @brief Gets the network state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile           The profile handle
/// Output parameter state            The state of the profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_state(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkConnection.connection_profile_get_state(
      profile,
      state,
    );

/// @brief Gets the Subnet Mask.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a subnet_mask using free().
/// This function is supported only for IPv4 address family.
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Output parameter subnet_mask      The subnet mask
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY                  Out of memory
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_subnet_mask(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> subnet_mask,
) =>
    tizenCapiNetworkConnection.connection_profile_get_subnet_mask(
      profile,
      address_family,
      subnet_mask,
    );

/// @brief Gets the network type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile           The profile handle
/// Output parameter type             The type of the profile
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_type(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_type(
      profile,
      type,
    );

/// @brief Gets the BSSID (Basic Service Set Identifier).
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a bssid using free().
/// Parameter profile         The profile handle
/// Output parameter bssid          The BSSID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_wifi_bssid(
  connection_profile_h profile,
  ffi.Pointer<ffi.Pointer<ffi.Char>> bssid,
) =>
    tizenCapiNetworkConnection.connection_profile_get_wifi_bssid(
      profile,
      bssid,
    );

/// @brief Gets the encryption type of Wi-Fi.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter type           The type of Wi-Fi security
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_wifi_encryption_type(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_wifi_encryption_type(
      profile,
      type,
    );

/// @brief Gets the ESSID (Extended Service Set Identifier).
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a essid using free().
/// Parameter profile         The profile handle
/// Output parameter essid          The ESSID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_wifi_essid(
  connection_profile_h profile,
  ffi.Pointer<ffi.Pointer<ffi.Char>> essid,
) =>
    tizenCapiNetworkConnection.connection_profile_get_wifi_essid(
      profile,
      essid,
    );

/// @brief Gets the frequency (MHz).
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter frequency      The frequency
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_wifi_frequency(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int> frequency,
) =>
    tizenCapiNetworkConnection.connection_profile_get_wifi_frequency(
      profile,
      frequency,
    );

/// @brief Gets the max speed (Mbps).
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter max_speed      The max speed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_wifi_max_speed(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int> max_speed,
) =>
    tizenCapiNetworkConnection.connection_profile_get_wifi_max_speed(
      profile,
      max_speed,
    );

/// @brief Gets the RSSI.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter rssi           The RSSI
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_wifi_rssi(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int> rssi,
) =>
    tizenCapiNetworkConnection.connection_profile_get_wifi_rssi(
      profile,
      rssi,
    );

/// @brief Gets the security type of Wi-Fi.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter type           The type of Wi-Fi security
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_get_wifi_security_type(
  connection_profile_h profile,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkConnection.connection_profile_get_wifi_security_type(
      profile,
      type,
    );

/// @brief Checks whether the profile is default.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter is_default     @c true if the profile is default,
/// otherwise @c false if the profile is not default
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_is_cellular_default(
  connection_profile_h profile,
  ffi.Pointer<ffi.Bool> is_default,
) =>
    tizenCapiNetworkConnection.connection_profile_is_cellular_default(
      profile,
      is_default,
    );

/// @brief Checks whether the profile is editable.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter is_editable    @c true if the profile is editable,
/// otherwise @c false if the profile is not editable
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_is_cellular_editable(
  connection_profile_h profile,
  ffi.Pointer<ffi.Bool> is_editable,
) =>
    tizenCapiNetworkConnection.connection_profile_is_cellular_editable(
      profile,
      is_editable,
    );

/// @brief Checks whether the profile is hidden.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter is_hidden      @c true if the profile is in hidden,
/// otherwise @c false if the profile is not hidden
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_is_cellular_hidden(
  connection_profile_h profile,
  ffi.Pointer<ffi.Bool> is_hidden,
) =>
    tizenCapiNetworkConnection.connection_profile_is_cellular_hidden(
      profile,
      is_hidden,
    );

/// @brief Checks whether the connection is in roaming state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Output parameter is_roaming     @c true if the cellular is roaming,
/// otherwise @c false if it is not roaming
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_is_cellular_roaming(
  connection_profile_h profile,
  ffi.Pointer<ffi.Bool> is_roaming,
) =>
    tizenCapiNetworkConnection.connection_profile_is_cellular_roaming(
      profile,
      is_roaming,
    );

/// @brief Checks whether passphrase is required.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function is not valid if security type is #CONNECTION_WIFI_SECURITY_TYPE_EAP.
/// Parameter profile         The profile handle
/// Output parameter required       @c true if a passphrase is required,
/// otherwise @c false if a passphrase is not required
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_is_wifi_passphrase_required(
  connection_profile_h profile,
  ffi.Pointer<ffi.Bool> required1,
) =>
    tizenCapiNetworkConnection.connection_profile_is_wifi_passphrase_required(
      profile,
      required1,
    );

/// @brief Checks whether the WPS (Wi-Fi Protected Setup) is supported.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If WPS is supported, you can connect the access point with WPS by wifi_connect_with_wps().
/// Parameter profile         The profile handle
/// Output parameter supported      @c true if WPS is supported,
/// otherwise @c false if WPS is not supported
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_is_wifi_wps_supported(
  connection_profile_h profile,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiNetworkConnection.connection_profile_is_wifi_wps_supported(
      profile,
      supported,
    );

/// @brief Checks whether the next element of a profile iterator exists or not.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method.
/// Error codes are described in Exception section.
/// Parameter profile_iterator  The iterator of profile
/// @return @c true if next element exists,
/// otherwise @c false if next element doesn't exist
/// @exception #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED          Not initialized
/// @exception #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see get_last_result()
///
/// Module getter: `tizenCapiNetworkConnection`.
bool connection_profile_iterator_has_next(
  connection_profile_iterator_h profile_iterator,
) =>
    tizenCapiNetworkConnection.connection_profile_iterator_has_next(
      profile_iterator,
    );

/// @brief Moves the profile iterator to the next position and gets a profile handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile_iterator  The iterator of profile
/// Output parameter profile          The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_ITERATOR_END          End of iteration
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_iterator_next(
  connection_profile_iterator_h profile_iterator,
  ffi.Pointer<connection_profile_h> profile,
) =>
    tizenCapiNetworkConnection.connection_profile_iterator_next(
      profile_iterator,
      profile,
    );

/// @brief Refreshes the profile information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You should call this function in order to get the current information
/// because the profile information can be changed.
/// Parameter profile           The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_refresh(
  connection_profile_h profile,
) =>
    tizenCapiNetworkConnection.connection_profile_refresh(
      profile,
    );

/// @brief Sets the APN (Access Point Name).
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a apn using free().
/// Parameter profile         The profile handle
/// Parameter apn             The name of APN
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_cellular_apn(
  connection_profile_h profile,
  ffi.Pointer<ffi.Char> apn,
) =>
    tizenCapiNetworkConnection.connection_profile_set_cellular_apn(
      profile,
      apn,
    );

/// @brief Sets the Authentication information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a user_name using free().
/// Parameter profile         The profile handle
/// Parameter type            The type of the authentication
/// Parameter user_name       The user name
/// Parameter password        The password
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_cellular_auth_info(
  connection_profile_h profile,
  int type,
  ffi.Pointer<ffi.Char> user_name,
  ffi.Pointer<ffi.Char> password,
) =>
    tizenCapiNetworkConnection.connection_profile_set_cellular_auth_info(
      profile,
      type,
      user_name,
      password,
    );

/// @brief Sets the home URL.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a home_url using free().
/// Parameter profile         The profile handle
/// Parameter home_url        The home URL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_cellular_home_url(
  connection_profile_h profile,
  ffi.Pointer<ffi.Char> home_url,
) =>
    tizenCapiNetworkConnection.connection_profile_set_cellular_home_url(
      profile,
      home_url,
    );

/// @brief Sets the cellular pdn type.
/// @since_tizen 3.0
/// Parameter profile         The profile handle
/// Parameter type            The cellular pdn type
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_cellular_pdn_type(
  connection_profile_h profile,
  int type,
) =>
    tizenCapiNetworkConnection.connection_profile_set_cellular_pdn_type(
      profile,
      type,
    );

/// @brief Sets the cellular roam pdn type.
/// @since_tizen 3.0
/// Parameter profile         The profile handle
/// Parameter type            The cellular pdn type
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_cellular_roam_pdn_type(
  connection_profile_h profile,
  int type,
) =>
    tizenCapiNetworkConnection.connection_profile_set_cellular_roam_pdn_type(
      profile,
      type,
    );

/// @brief Sets the service type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile         The profile handle
/// Parameter service_type    The type of cellular service
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_cellular_service_type(
  connection_profile_h profile,
  int service_type,
) =>
    tizenCapiNetworkConnection.connection_profile_set_cellular_service_type(
      profile,
      service_type,
    );

/// @brief Sets the DNS address.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The allowance of the DNS address is @c 2.
/// @remarks You must release @a dns_address using free().
/// Parameter profile           The profile handle
/// Parameter order             The order of the DNS address \n
/// It starts from @c 1, which means first DNS address
/// Parameter address_family    The address family
/// Parameter dns_address       The DNS address \n
/// If you set this value to NULL then the existing value will be deleted
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_dns_address(
  connection_profile_h profile,
  int order,
  int address_family,
  ffi.Pointer<ffi.Char> dns_address,
) =>
    tizenCapiNetworkConnection.connection_profile_set_dns_address(
      profile,
      order,
      address_family,
      dns_address,
    );

/// @brief Sets the DNS config type.
/// @since_tizen 4.0
/// Parameter profile         The profile handle
/// Parameter address_family  The address family
/// Parameter type            The DNS config type
/// @return 0 on success, otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_dns_config_type(
  connection_profile_h profile,
  int address_family,
  int type,
) =>
    tizenCapiNetworkConnection.connection_profile_set_dns_config_type(
      profile,
      address_family,
      type,
    );

/// @brief Sets the Gateway address.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a gateway_address using free().
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Parameter gateway_address   The gateway address \n
/// If you set this value to @c NULL, then the existing value will be deleted
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_gateway_address(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Char> gateway_address,
) =>
    tizenCapiNetworkConnection.connection_profile_set_gateway_address(
      profile,
      address_family,
      gateway_address,
    );

/// @brief Sets the IP address.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a ip_address using free().
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Parameter ip_address        The IP address \n
/// If you set this value to @c NULL, then the existing value will be deleted
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_ip_address(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Char> ip_address,
) =>
    tizenCapiNetworkConnection.connection_profile_set_ip_address(
      profile,
      address_family,
      ip_address,
    );

/// @brief Sets the IP config type.
/// @details If you set IP config type to #CONNECTION_IP_CONFIG_TYPE_STATIC,
/// then IP address, Gateway and Subnet mask will be set to the initial value "0.0.0.0".
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Parameter type              The type of the IP config
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_ip_config_type(
  connection_profile_h profile,
  int address_family,
  int type,
) =>
    tizenCapiNetworkConnection.connection_profile_set_ip_config_type(
      profile,
      address_family,
      type,
    );

/// @brief Sets the network prefix length.
/// @since_tizen 4.0
/// Parameter profile         The profile handle
/// Parameter address_family  The address family
/// Parameter prefix_len      The network prefix length
/// In case of IPv4, it means netmask length
/// (also called a prefix, e.g. 8, 16, 24, 32)
/// @return 0 on success, otherwise negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED   Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_prefix_length(
  connection_profile_h profile,
  int address_family,
  int prefix_len,
) =>
    tizenCapiNetworkConnection.connection_profile_set_prefix_length(
      profile,
      address_family,
      prefix_len,
    );

/// @brief Sets the Proxy address.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a proxy_address using free().
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Parameter proxy_address     The proxy address \n
/// If you set this value to @c NULL, then the existing value will be deleted
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_proxy_address(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Char> proxy_address,
) =>
    tizenCapiNetworkConnection.connection_profile_set_proxy_address(
      profile,
      address_family,
      proxy_address,
    );

/// @brief Sets the Proxy type.
/// @details If you set the Proxy type to #CONNECTION_PROXY_TYPE_AUTO or
/// #CONNECTION_PROXY_TYPE_MANUAL, then Proxy will be restored.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile           The profile handle
/// Parameter type              The type of the proxy
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_proxy_type(
  connection_profile_h profile,
  int type,
) =>
    tizenCapiNetworkConnection.connection_profile_set_proxy_type(
      profile,
      type,
    );

/// @brief Sets the callback that is called when the state of profile is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile           The profile handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @post connection_opened_cb() is invoked when the state of profile is changed.
/// @see connection_profile_state_changed_cb()
/// @see connection_profile_unset_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_state_changed_cb(
  connection_profile_h profile,
  connection_profile_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_profile_set_state_changed_cb(
      profile,
      callback,
      user_data,
    );

/// @brief Sets the Subnet Mask.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a subnet_mask using free().
/// This function is supported only for IPv4 address family.
/// Parameter profile           The profile handle
/// Parameter address_family    The address family
/// Parameter subnet_mask       The subnet mask \n
/// If you set this value to @c NULL, then the existing value will be deleted
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                           Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED                Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER              Invalid parameter
/// @retval #CONNECTION_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED   Not supported address family
/// @retval #CONNECTION_ERROR_OPERATION_FAILED               Operation failed
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_subnet_mask(
  connection_profile_h profile,
  int address_family,
  ffi.Pointer<ffi.Char> subnet_mask,
) =>
    tizenCapiNetworkConnection.connection_profile_set_subnet_mask(
      profile,
      address_family,
      subnet_mask,
    );

/// @brief Sets the passphrase of the Wi-Fi WPA.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a passphrase using free().
/// Parameter profile         The profile handle
/// Parameter passphrase      The passphrase of Wi-Fi security
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE               Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED      Not supported
/// @see connection_update_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_set_wifi_passphrase(
  connection_profile_h profile,
  ffi.Pointer<ffi.Char> passphrase,
) =>
    tizenCapiNetworkConnection.connection_profile_set_wifi_passphrase(
      profile,
      passphrase,
    );

/// @brief Unsets the callback that is called when the state of profile is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter profile           The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @see connection_profile_state_changed_cb()
/// @see connection_profile_set_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_profile_unset_state_changed_cb(
  connection_profile_h profile,
) =>
    tizenCapiNetworkConnection.connection_profile_unset_state_changed_cb(
      profile,
    );

/// @brief Removes an existing profile.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter connection        The connection handle
/// Parameter profile           The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_remove_profile(
  connection_h connection,
  connection_profile_h profile,
) =>
    tizenCapiNetworkConnection.connection_remove_profile(
      connection,
      profile,
    );

/// @platform
/// @deprecated Deprecated since 4.0. Use connection_remove_route_entry() instead.
/// @brief Removes a IPv4 route from the routing table.
/// @details You can get the @a interface_name from
/// connection_profile_get_network_interface_name() of opened profile.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/network.route
/// @remarks Since 6.0, the required privilege and level of this function has changed.
/// Parameter connection        The connection handle
/// Parameter interface_name    The name of network interface
/// Parameter host_address      The IP address of the host
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_profile_get_network_interface_name()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_remove_route(
  connection_h connection,
  ffi.Pointer<ffi.Char> interface_name,
  ffi.Pointer<ffi.Char> host_address,
) =>
    tizenCapiNetworkConnection.connection_remove_route(
      connection,
      interface_name,
      host_address,
    );

/// @platform
/// @brief Removes a route from the routing table.
/// @details You can get the @a interface_name from \n
/// connection_profile_get_network_interface_name() of opened profile.
/// @since_tizen 4.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/network.route
/// @remarks Since 6.0, the required privilege and level of this function has changed.
/// Parameter connection        The connection handle
/// Parameter address_family    The address family
/// Parameter interface_name    The name of network interface
/// Parameter host_address      The IP address of the host (e.g., single IP address such as
/// 163.152.10.2,192.168.1.2), group's IP address (e.g., 163.152.10.0, 192.168.0.0)
/// is not allowed
/// Parameter gateway           The gateway address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_profile_get_network_interface_name()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_remove_route_entry(
  connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Char> interface_name,
  ffi.Pointer<ffi.Char> host_address,
  ffi.Pointer<ffi.Char> gateway,
) =>
    tizenCapiNetworkConnection.connection_remove_route_entry(
      connection,
      address_family,
      interface_name,
      host_address,
      gateway,
    );

/// @platform
/// @deprecated Deprecated since 4.0. Use connection_remove_route_entry() instead.
/// @brief Removes a IPV6 route from the routing table.
/// @details You can get the @a interface_name from
/// connection_profile_get_network_interface_name() of opened profile.
/// @since_tizen 2.3.1
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/network.route
/// @remarks Since 6.0, the required privilege and level of this function has changed.
/// Parameter connection        The connection handle
/// Parameter interface_name    The name of network interface
/// Parameter host_address      The IP address of the host
/// Parameter gateway           The gateway address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_profile_get_network_interface_name()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_remove_route_ipv6(
  connection_h connection,
  ffi.Pointer<ffi.Char> interface_name,
  ffi.Pointer<ffi.Char> host_address,
  ffi.Pointer<ffi.Char> gateway,
) =>
    tizenCapiNetworkConnection.connection_remove_route_ipv6(
      connection,
      interface_name,
      host_address,
      gateway,
    );

/// @brief Resets the cellular profile.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter connection        The connection handle
/// Parameter type              The type of reset
/// Parameter id                The subscriber identity module ID to reset
/// (The sim index starts from 0.)
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @post connection_reset_cb() will be invoked.
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_reset_profile(
  connection_h connection,
  int type,
  int id,
  connection_reset_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_reset_profile(
      connection,
      type,
      id,
      callback,
      user_data,
    );

/// @brief Resets the statistics information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
/// Parameter connection        The connection handle
/// Parameter connection_type   The type of connection \n
/// Only #CONNECTION_TYPE_WIFI and #CONNECTION_TYPE_CELLULAR are supported
/// Parameter statistics_type   The type of statistics
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_reset_statistics(
  connection_h connection,
  int connection_type,
  int statistics_type,
) =>
    tizenCapiNetworkConnection.connection_reset_statistics(
      connection,
      connection_type,
      statistics_type,
    );

/// @brief Sets the default profile which provides the given cellular service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter connection        The connection handle
/// Parameter type              The type of cellular service \n
/// Only #CONNECTION_CELLULAR_SERVICE_TYPE_INTERNET and
/// #CONNECTION_CELLULAR_SERVICE_TYPE_PREPAID_INTERNET are permitted
/// Parameter profile           The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_set_default_cellular_service_profile(
  connection_h connection,
  int type,
  connection_profile_h profile,
) =>
    tizenCapiNetworkConnection.connection_set_default_cellular_service_profile(
      connection,
      type,
      profile,
    );

/// @brief Sets the default profile which provides the given cellular service, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter connection        The connection handle
/// Parameter type              The type of cellular service \n
/// Only #CONNECTION_CELLULAR_SERVICE_TYPE_INTERNET and
/// #CONNECTION_CELLULAR_SERVICE_TYPE_PREPAID_INTERNET are permitted
/// Parameter profile The profile handle
/// Parameter callback The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_set_default_cellular_service_profile_async(
  connection_h connection,
  int type,
  connection_profile_h profile,
  connection_set_default_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_set_default_cellular_service_profile_async(
      connection,
      type,
      profile,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 4.0. Use connection_set_ethernet_cable_state_changed_cb() instead.
/// @brief Sets callback for ethernet cable is plugged [in/out] event.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter connection        The connection handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_set_ethernet_cable_state_chaged_cb(
  connection_h connection,
  connection_ethernet_cable_state_chaged_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_set_ethernet_cable_state_chaged_cb(
      connection,
      callback,
      user_data,
    );

/// @brief Sets callback for ethernet cable is plugged [in/out] event.
/// @since_tizen 4.0
/// Parameter connection        The connection handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_set_ethernet_cable_state_changed_cb(
  connection_h connection,
  connection_ethernet_cable_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_set_ethernet_cable_state_changed_cb(
      connection,
      callback,
      user_data,
    );

/// @brief Sets the callback that is called when the Internet availability over the current connection is changed.
/// @since_tizen 5.5
/// Parameter connection        The connection handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_set_internet_state_changed_cb(
  connection_h connection,
  connection_internet_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_set_internet_state_changed_cb(
      connection,
      callback,
      user_data,
    );

/// @brief Sets the callback that is called when the IP address is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_set_ip_address_changed_cb(
  connection_h connection,
  connection_address_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_set_ip_address_changed_cb(
      connection,
      callback,
      user_data,
    );

/// @brief Sets the callback that is called when the proxy address is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_set_proxy_address_changed_cb(
  connection_h connection,
  connection_address_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_set_proxy_address_changed_cb(
      connection,
      callback,
      user_data,
    );

/// @brief Sets the callback that is called when the type of the current connection is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// Parameter callback          The callback function to be called
/// Parameter user_data         The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_set_type_changed_cb(
  connection_h connection,
  connection_type_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkConnection.connection_set_type_changed_cb(
      connection,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 4.0. Use connection_unset_ethernet_cable_state_changed_cb() instead.
/// @brief Unsets callback for ethernet cable is plugged [in/out] event.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter connection        The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_unset_ethernet_cable_state_chaged_cb(
  connection_h connection,
) =>
    tizenCapiNetworkConnection.connection_unset_ethernet_cable_state_chaged_cb(
      connection,
    );

/// @brief Unsets callback for ethernet cable is plugged [in/out] event.
/// @since_tizen 4.0
/// Parameter connection        The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_unset_ethernet_cable_state_changed_cb(
  connection_h connection,
) =>
    tizenCapiNetworkConnection.connection_unset_ethernet_cable_state_changed_cb(
      connection,
    );

/// @brief Unsets the callback that is called when the Internet state of the current connection is changed.
/// @since_tizen 5.5
/// Parameter connection        The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_unset_internet_state_changed_cb(
  connection_h connection,
) =>
    tizenCapiNetworkConnection.connection_unset_internet_state_changed_cb(
      connection,
    );

/// @brief Unsets the callback that is called when the IP address is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_unset_ip_address_changed_cb(
  connection_h connection,
) =>
    tizenCapiNetworkConnection.connection_unset_ip_address_changed_cb(
      connection,
    );

/// @brief Unsets the callback that is called when the proxy address is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_unset_proxy_address_changed_cb(
  connection_h connection,
) =>
    tizenCapiNetworkConnection.connection_unset_proxy_address_changed_cb(
      connection,
    );

/// @brief Unsets the callback that is called when the type of current connection is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter connection        The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_unset_type_changed_cb(
  connection_h connection,
) =>
    tizenCapiNetworkConnection.connection_unset_type_changed_cb(
      connection,
    );

/// @brief Updates an existing profile.
/// @details When a profile is changed, these changes will be not applied to the
/// Connection Manager immediately.
/// When you call this function, your changes affect the Connection Manager
/// and the existing profile is updated.
/// In addition, the existing profile will be updated if you call connection_open_profile().
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter connection        The connection handle
/// Parameter profile           The profile handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONNECTION_ERROR_NONE                  Successful
/// @retval #CONNECTION_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #CONNECTION_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #CONNECTION_ERROR_OPERATION_FAILED      Operation failed
/// @retval #CONNECTION_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #CONNECTION_ERROR_NOT_SUPPORTED         Not supported
/// @see connection_open_profile()
///
/// Module getter: `tizenCapiNetworkConnection`.
int connection_update_profile(
  connection_h connection,
  connection_profile_h profile,
) =>
    tizenCapiNetworkConnection.connection_update_profile(
      connection,
      profile,
    );

