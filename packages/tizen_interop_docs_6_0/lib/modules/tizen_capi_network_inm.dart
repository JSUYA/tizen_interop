// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiNetworkInm`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-network-inm.so.0`.
///
/// Network / Intelligent Network Monitoring.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_network_inm;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the ARP packet interval which is used to find targets IP on local network.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm  The monitoring handle
/// Output parameter seconds  The ARP packet interval value in seconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_arp_request_start()
/// @see inm_arp_request_stop()
/// @see inm_default_gateway_start_checking()
/// @see inm_default_gateway_stop_checking()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_arp_request_get_packet_interval(
  inm_h inm,
  ffi.Pointer<ffi.Int> seconds,
) =>
    tizenCapiNetworkInm.inm_arp_request_get_packet_interval(
      inm,
      seconds,
    );

/// @brief Sets the ARP packet interval which is used to find targets IP on local network.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm  The monitoring handle
/// Parameter seconds  The ARP packet interval value in seconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_NOW_IN_PROGRESS    Now in progress
/// @see inm_arp_request_start()
/// @see inm_arp_request_stop()
/// @see inm_default_gateway_start_checking()
/// @see inm_default_gateway_stop_checking()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_arp_request_set_packet_interval(
  inm_h inm,
  int seconds,
) =>
    tizenCapiNetworkInm.inm_arp_request_set_packet_interval(
      inm,
      seconds,
    );

/// @brief Starts to send ARP packets to find a @a target_ip.
/// @details User should set callback to get results by inm_arp_request_ip_found_cb()
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The monitoring handle
/// Parameter target_ip  IP address to find
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_NOW_IN_PROGRESS    Now in progress
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_arp_request_start(
  inm_h inm,
  ffi.Pointer<ffi.Char> target_ip,
  inm_arp_request_ip_found_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_arp_request_start(
      inm,
      target_ip,
      callback,
      user_data,
    );

/// @brief Stops sending ARP packets.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The monitoring handle
/// Parameter target_ip  IP address to stop finding
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_NOW_IN_PROGRESS    Now in progress
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_arp_request_stop(
  inm_h inm,
  ffi.Pointer<ffi.Char> target_ip,
) =>
    tizenCapiNetworkInm.inm_arp_request_stop(
      inm,
      target_ip,
    );

/// @brief Clones a connection handle.
/// @since_tizen 5.0
/// @remarks You must release @a cloned connection using inm_connection_destroy().
/// Output parameter cloned  The handle of the cloned connection
/// Parameter origin   The handle of the origin connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_connection_destroy()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_clone(
  ffi.Pointer<inm_connection_h> cloned,
  inm_connection_h origin,
) =>
    tizenCapiNetworkInm.inm_connection_clone(
      cloned,
      origin,
    );

/// @brief Destroys a connection handle.
/// @since_tizen 5.0
/// Output parameter connection  The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_get_current_connection()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_destroy(
  ffi.Pointer<inm_connection_h> connection,
) =>
    tizenCapiNetworkInm.inm_connection_destroy(
      connection,
    );

/// @brief Gets the DHCP lease duration.
/// @since_tizen 5.0
/// @remarks This function is supported only for IPv4 address family.
/// Parameter connection            The connection handle
/// Parameter address_family        The address family
/// Output parameter dhcp_lease_duration  The DHCP lease duration in seconds
/// @return @c 0 on success, otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_dhcp_lease_duration(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Int> dhcp_lease_duration,
) =>
    tizenCapiNetworkInm.inm_connection_get_dhcp_lease_duration(
      connection,
      address_family,
      dhcp_lease_duration,
    );

/// @brief Gets the DHCP Server address.
/// @since_tizen 5.0
/// @remarks You must release @a dhcp_server using free().
/// This function is supported only for IPv4 address family.
/// Parameter connection      The connection handle
/// Parameter address_family  The address family
/// Output parameter dhcp_server    The DHCP Server address
/// @return @c 0 on success, otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_dhcp_server_address(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dhcp_server,
) =>
    tizenCapiNetworkInm.inm_connection_get_dhcp_server_address(
      connection,
      address_family,
      dhcp_server,
    );

/// @brief Gets the DNS address.
/// @since_tizen 5.0
/// @remarks The allowance of the DNS address is @c 2. You must release @a dns_address using free().
/// Parameter connection      The connection handle
/// Parameter order           The order of DNS address \n
/// It starts from 1, which means first DNS address
/// Parameter address_family  The address family
/// Output parameter dns_address    The DNS address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_dns_address(
  inm_connection_h connection,
  int order,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dns_address,
) =>
    tizenCapiNetworkInm.inm_connection_get_dns_address(
      connection,
      order,
      address_family,
      dns_address,
    );

/// @brief Gets the DNS config type.
/// @since_tizen 5.0
/// Parameter connection      The connection handle
/// Parameter address_family  The address family
/// Output parameter type           The DNS config type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_dns_config_type(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkInm.inm_connection_get_dns_config_type(
      connection,
      address_family,
      type,
    );

/// @brief Gets the Gateway address.
/// @since_tizen 5.0
/// @remarks You must release @a gateway_address using free().
/// Parameter connection           The connection handle
/// Parameter address_family    The address family
/// Output parameter gateway_address  The gateway address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_gateway_address(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> gateway_address,
) =>
    tizenCapiNetworkInm.inm_connection_get_gateway_address(
      connection,
      address_family,
      gateway_address,
    );

/// @brief Gets the connection ID.
/// @details Two different connections can have the same name.
/// So, you must use this function instead of inm_connection_get_name()
/// if you want to get the unique identification.
/// @since_tizen 5.0
/// @remarks You must release @a id using free().
/// Parameter connection  The connection handle
/// Output parameter id         The ID of the connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_connection_get_name()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_id(
  inm_connection_h connection,
  ffi.Pointer<ffi.Pointer<ffi.Char>> id,
) =>
    tizenCapiNetworkInm.inm_connection_get_id(
      connection,
      id,
    );

/// @brief Gets the IP address.
/// @since_tizen 5.0
/// @remarks You must release @a ip_address using free().
/// Parameter connection      The connection handle
/// Parameter address_family  The address family
/// Output parameter ip_address     The IP address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_ip_address(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_address,
) =>
    tizenCapiNetworkInm.inm_connection_get_ip_address(
      connection,
      address_family,
      ip_address,
    );

/// @brief Gets the IP config type.
/// @since_tizen 5.0
/// Parameter connection      The connection handle
/// Parameter address_family  The address family
/// Output parameter type           The type of the IP config
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_ip_config_type(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkInm.inm_connection_get_ip_config_type(
      connection,
      address_family,
      type,
    );

/// @brief Gets the IPv6 network state.
/// @since_tizen 5.0
/// Parameter connection  The connection handle
/// Output parameter state      The connection state
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_ipv6_state(
  inm_connection_h connection,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_connection_get_ipv6_state(
      connection,
      state,
    );

/// @brief Gets the link handle for this connection.
/// @since_tizen 5.5
/// @remarks You must release @a link using inm_link_destroy().
/// Parameter connection       The connection handle
/// Output parameter link            The link of the connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_clone()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_link(
  inm_connection_h connection,
  ffi.Pointer<inm_link_h> link,
) =>
    tizenCapiNetworkInm.inm_connection_get_link(
      connection,
      link,
    );

/// @brief Gets the connection name.
/// @since_tizen 5.0
/// @remarks You must release @a name using free().
/// Parameter connection  The connection handle
/// Output parameter name       The name of the connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_connection_get_id()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_name(
  inm_connection_h connection,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiNetworkInm.inm_connection_get_name(
      connection,
      name,
    );

/// @brief Gets the name of the network interface, e.g. eth0 and pdp0.
/// @since_tizen 5.0
/// @remarks You must release @a interface_name using free().
/// Parameter connection       The connection handle
/// Output parameter interface_name  The name of the network interface
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_network_interface_name(
  inm_connection_h connection,
  ffi.Pointer<ffi.Pointer<ffi.Char>> interface_name,
) =>
    tizenCapiNetworkInm.inm_connection_get_network_interface_name(
      connection,
      interface_name,
    );

/// @brief Gets the network prefix length.
/// @since_tizen 5.0
/// Parameter connection      The connection handle
/// Parameter address_family  The address family
/// Output parameter prefix_len     The network prefix length \n
/// In case of IPv4, it means netmask length
/// (also called a prefix, e.g. 8, 16, 24, 32)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_prefix_length(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Int> prefix_len,
) =>
    tizenCapiNetworkInm.inm_connection_get_prefix_length(
      connection,
      address_family,
      prefix_len,
    );

/// @brief Gets the Proxy address.
/// @since_tizen 5.0
/// @remarks You must release @a proxy_address using free().
/// Parameter connection      The connection handle
/// Parameter address_family  The address family
/// Output parameter proxy_address  The proxy address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_proxy_address(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> proxy_address,
) =>
    tizenCapiNetworkInm.inm_connection_get_proxy_address(
      connection,
      address_family,
      proxy_address,
    );

/// @brief Gets the Proxy type.
/// @since_tizen 5.0
/// Parameter connection  The connection handle
/// Output parameter type       The type of the proxy
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_proxy_type(
  inm_connection_h connection,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkInm.inm_connection_get_proxy_type(
      connection,
      type,
    );

/// @brief Gets the network state.
/// @since_tizen 5.0
/// Parameter connection  The connection handle
/// Output parameter state      The state of the connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_state(
  inm_connection_h connection,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_connection_get_state(
      connection,
      state,
    );

/// @brief Gets the Subnet Mask.
/// @since_tizen 5.0
/// @remarks You must release @a subnet_mask using free().
/// This function is supported only for IPv4 address family.
/// Parameter connection           The connection handle
/// Parameter address_family  The address family
/// Output parameter subnet_mask    The subnet mask
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_subnet_mask(
  inm_connection_h connection,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> subnet_mask,
) =>
    tizenCapiNetworkInm.inm_connection_get_subnet_mask(
      connection,
      address_family,
      subnet_mask,
    );

/// @brief Gets the network type.
/// @since_tizen 5.0
/// Parameter connection  The connection handle
/// Output parameter type       The type of the connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_get_type(
  inm_connection_h connection,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkInm.inm_connection_get_type(
      connection,
      type,
    );

/// @brief Moves the connection iterator to the next position and gets a connection handle.
/// @since_tizen 5.0
/// @remarks After the iterator is created, its inner cursor is placed before the first element.
/// The first call to inm_connection_iterator_next() gets the first element.
/// You must release @a connection using inm_connection_destroy().
/// Parameter connection_iterator  The connection iterator
/// Output parameter connection          The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_iterator_next(
  inm_connection_iterator_h connection_iterator,
  ffi.Pointer<inm_connection_h> connection,
) =>
    tizenCapiNetworkInm.inm_connection_iterator_next(
      connection_iterator,
      connection,
    );

/// @brief Refreshes the connection information.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You should call this function in order to get the current information
/// because the connection information can be changed.
/// Parameter connection  The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_refresh(
  inm_connection_h connection,
) =>
    tizenCapiNetworkInm.inm_connection_refresh(
      connection,
    );

/// @brief Sets the callback that is called when the state of connection is changed.
/// @since_tizen 5.0
/// Parameter connection  The connection handle
/// Parameter callback    The callback function to be called
/// Parameter user_data   The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @post connection_opened_cb() is invoked when the state of connection is changed.
/// @see connection_state_changed_cb()
/// @see inm_connection_unset_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_set_state_changed_cb(
  inm_connection_h connection,
  connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_connection_set_state_changed_cb(
      connection,
      callback,
      user_data,
    );

/// @brief Unsets the callback that is called when the state of connection is changed.
/// @since_tizen 5.0
/// Parameter connection  The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see connection_state_changed_cb()
/// @see inm_connection_set_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_connection_unset_state_changed_cb(
  inm_connection_h connection,
) =>
    tizenCapiNetworkInm.inm_connection_unset_state_changed_cb(
      connection,
    );

/// @brief Checks DNS lookup of the target to check whether DNS server is valid or not.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The monitoring handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_NOW_IN_PROGRESS    Now in progress
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_default_dns_lookup_check(
  inm_h inm,
  inm_default_dns_lookup_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_default_dns_lookup_check(
      inm,
      callback,
      user_data,
    );

/// @brief Starts to send ARP packets to find gateway during @a timeout, in seconds.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The monitoring handle
/// Parameter timeout    Specifies the duration of discovery period,
/// in seconds. If @c 0, then there is no limit
/// on how long the discovery takes.
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_NOW_IN_PROGRESS    Now in progress
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_default_gateway_start_checking(
  inm_h inm,
  int timeout,
  inm_default_gateway_found_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_default_gateway_start_checking(
      inm,
      timeout,
      callback,
      user_data,
    );

/// @brief Stops sending ARP packets to check default gateway.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The monitoring handle
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_NOW_IN_PROGRESS    Now in progress
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_default_gateway_stop_checking(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_default_gateway_stop_checking(
      inm,
    );

/// @brief Deinitializes INM.
/// @since_tizen 5.0
/// Output parameter inm  The INM handle
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_deinitialize(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_deinitialize(
      inm,
    );

/// @brief Destroys a connections iterator.
/// @since_tizen 5.0
/// Parameter connection_iterator  The connection iterator
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_destroy_connection_iterator(
  inm_connection_iterator_h connection_iterator,
) =>
    tizenCapiNetworkInm.inm_destroy_connection_iterator(
      connection_iterator,
    );

/// @brief Gets handles of the link.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The inm handle
/// Parameter callback   The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_clone()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_foreach_link(
  inm_h inm,
  inm_link_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_foreach_link(
      inm,
      callback,
      user_data,
    );

/// @brief Gets the state of the cellular connection.
/// @details The returned state is for the cellular connection state.
/// @since_tizen 5.0
/// Parameter inm     The inm handle
/// Output parameter state  The state of the cellular connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_cellular_state(
  inm_h inm,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_get_cellular_state(
      inm,
      state,
    );

/// @brief Gets the channel interference of the wireless network.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The monitoring handle
/// Output parameter ch_intf   The current channel interference
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_channel_interference(
  inm_h inm,
  ffi.Pointer<ffi.Double> ch_intf,
) =>
    tizenCapiNetworkInm.inm_get_channel_interference(
      inm,
      ch_intf,
    );

/// @brief Gets the TCP congestion level.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm     The monitoring handle
/// Output parameter level  The current TCP congestion level
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_congestion_level(
  inm_h inm,
  ffi.Pointer<ffi.Int32> level,
) =>
    tizenCapiNetworkInm.inm_get_congestion_level(
      inm,
      level,
    );

/// @brief Gets a connections iterator.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a connection_iterator using inm_destroy_connection_iterator().
/// Parameter inm                   The inm handle
/// Output parameter connection_iterator  The iterator of connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_connection_iterator(
  inm_h inm,
  ffi.Pointer<inm_connection_iterator_h> connection_iterator,
) =>
    tizenCapiNetworkInm.inm_get_connection_iterator(
      inm,
      connection_iterator,
    );

/// @brief Gets the handle of the default connection.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a connection using inm_connection_destroy().
/// Parameter inm          The inm handle
/// Output parameter connection  The connection handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_current_connection(
  inm_h inm,
  ffi.Pointer<inm_connection_h> connection,
) =>
    tizenCapiNetworkInm.inm_get_current_connection(
      inm,
      connection,
    );

/// @brief Gets the Ethernet cable state.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm     The monitor handle
/// Output parameter state  The Ethernet cable state
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_ethernet_cable_state(
  inm_h inm,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_get_ethernet_cable_state(
      inm,
      state,
    );

/// @brief Gets the state of the ethernet.
/// @details The returned state is for the ethernet connection state.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm     The inm handle
/// Output parameter state  The state of ethernet connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_ethernet_state(
  inm_h inm,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_get_ethernet_state(
      inm,
      state,
    );

/// @brief Gets the state of the IP conflict.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm     The monitoring handle
/// Output parameter state  The current state of IP conflict
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_ip_conflict_state(
  inm_h inm,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_get_ip_conflict_state(
      inm,
      state,
    );

/// @brief Gets the TCP TX retry rate.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm     The monitoring handle
/// Output parameter rate   The current TCP TX retry rate
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_retry_tx_rate(
  inm_h inm,
  ffi.Pointer<ffi.Int> rate,
) =>
    tizenCapiNetworkInm.inm_get_retry_tx_rate(
      inm,
      rate,
    );

/// @brief Gets the statistics information.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm              The monitor handle
/// Parameter connection_type  The type of connection \n
/// Only #INM_CONNECTION_TYPE_WIFI and #INM_CONNECTION_TYPE_CELLULAR are supported
/// Parameter statistics_type  The type of statistics
/// Output parameter size            The received data size of the last cellular packet data connection (bytes)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_statistics(
  inm_h inm,
  int connection_type,
  int statistics_type,
  ffi.Pointer<ffi.UnsignedLongLong> size,
) =>
    tizenCapiNetworkInm.inm_get_statistics(
      inm,
      connection_type,
      statistics_type,
      size,
    );

/// @brief Gets the Wi-Fi Module state.
/// @since_tizen 5.0
/// Parameter inm     The monitor handle
/// Output parameter state  The Wi-Fi Module state
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_wifi_module_state(
  inm_h inm,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_get_wifi_module_state(
      inm,
      state,
    );

/// @brief Gets the state of the Wi-Fi.
/// @details The returned state is for the Wi-Fi connection state.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm     The inm handle
/// Output parameter state  The state of Wi-Fi connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_get_wifi_state(
  inm_h inm,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_get_wifi_state(
      inm,
      state,
    );

/// @brief Initializes INM.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a inm using inm_deinitialize().
/// Output parameter inm  The INM handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE                 Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #INM_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED        Not supported
/// @retval #INM_ERROR_ALREADY_INITIALIZED  Already initialized
/// @retval #INM_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_initialize(
  ffi.Pointer<inm_h> inm,
) =>
    tizenCapiNetworkInm.inm_initialize(
      inm,
    );

/// @brief Checks whether IP conflict detection is enabled.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm     The monitoring handle
/// Output parameter state  @c true if IP conflict detection is enabled,
/// otherwise @c false if IP conflict detection is disabled.
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_ip_conflict_detect_is_enabled(
  inm_h inm,
  ffi.Pointer<ffi.Bool> state,
) =>
    tizenCapiNetworkInm.inm_ip_conflict_detect_is_enabled(
      inm,
      state,
    );

/// @brief Clones a link address handle.
/// @since_tizen 5.5
/// @remarks You must release @a cloned link address using inm_link_address_destroy().
/// Output parameter cloned  The handle of the cloned link address
/// Parameter origin   The handle of the origin link address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_address_destroy()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_address_clone(
  ffi.Pointer<inm_link_address_h> cloned,
  inm_link_address_h origin,
) =>
    tizenCapiNetworkInm.inm_link_address_clone(
      cloned,
      origin,
    );

/// @brief Destroys a link address handle.
/// @since_tizen 5.5
/// Parameter address  The link address handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_address_clone()
/// @see inm_link_foreach_address()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_address_destroy(
  inm_link_address_h address,
) =>
    tizenCapiNetworkInm.inm_link_address_destroy(
      address,
    );

/// @brief Gets the address family.
/// @since_tizen 5.5
/// Parameter address  The address handle
/// Output parameter family  The address family
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_foreach_address()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_address_get_family(
  inm_link_address_h address,
  ffi.Pointer<ffi.Int32> family,
) =>
    tizenCapiNetworkInm.inm_link_address_get_family(
      address,
      family,
    );

/// @brief Gets the address prefix length.
/// @since_tizen 5.5
/// Parameter address         The address handle
/// Output parameter prefix_length  The prefix length of address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_foreach_address()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_address_get_prefix_length(
  inm_link_address_h address,
  ffi.Pointer<ffi.Int> prefix_length,
) =>
    tizenCapiNetworkInm.inm_link_address_get_prefix_length(
      address,
      prefix_length,
    );

/// @brief Gets the address scope.
/// @since_tizen 5.5
/// Parameter address  The address handle
/// Output parameter scope   The address scope
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_foreach_address()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_address_get_scope(
  inm_link_address_h address,
  ffi.Pointer<ffi.Int32> scope,
) =>
    tizenCapiNetworkInm.inm_link_address_get_scope(
      address,
      scope,
    );

/// @brief Gets the address string.
/// @since_tizen 5.5
/// @remarks You must release @a address_string using free().
/// Parameter address          The address handle
/// Output parameter address_string  The address string
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_DATA_NOT_FOUND     Data not found
/// @see inm_link_foreach_address()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_address_get_string(
  inm_link_address_h address,
  ffi.Pointer<ffi.Pointer<ffi.Char>> address_string,
) =>
    tizenCapiNetworkInm.inm_link_address_get_string(
      address,
      address_string,
    );

/// @brief Clones a link handle.
/// @since_tizen 5.5
/// @remarks You must release @a cloned link using inm_link_destroy().
/// Output parameter cloned  The handle of the cloned link
/// Parameter origin   The handle of the origin link
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_destroy()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_clone(
  ffi.Pointer<inm_link_h> cloned,
  inm_link_h origin,
) =>
    tizenCapiNetworkInm.inm_link_clone(
      cloned,
      origin,
    );

/// @brief Destroys a link handle.
/// @since_tizen 5.5
/// Output parameter link  The link handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_clone()
/// @see inm_foreach_link()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_destroy(
  inm_link_h link,
) =>
    tizenCapiNetworkInm.inm_link_destroy(
      link,
    );

/// @brief Gets all addresses of the link.
/// @since_tizen 5.5
/// Parameter link       The link handle
/// Parameter callback   The callback to be called for each address of link
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_foreach_address(
  inm_link_h link,
  inm_link_address_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_link_foreach_address(
      link,
      callback,
      user_data,
    );

/// @brief Gets all route tables of the link.
/// @since_tizen 5.0
/// Parameter link       The link handle
/// Parameter callback   The callback to be called for each route table of link
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_foreach_route(
  inm_link_h link,
  inm_link_route_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_link_foreach_route(
      link,
      callback,
      user_data,
    );

/// @brief Gets the link flags.
/// @since_tizen 5.5
/// Parameter link    The link handle
/// Output parameter flags The flags, values of #inm_link_flag_e combined with bitwise 'or'
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_foreach_link()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_get_flags(
  inm_link_h link,
  ffi.Pointer<ffi.Int> flags,
) =>
    tizenCapiNetworkInm.inm_link_get_flags(
      link,
      flags,
    );

/// @brief Gets the link interface name.
/// @since_tizen 5.5
/// @remarks You must release @a interface_name using free().
/// Parameter link             The link handle
/// Output parameter interface_name  The interface name of the link
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_foreach_link()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_get_interface_name(
  inm_link_h link,
  ffi.Pointer<ffi.Pointer<ffi.Char>> interface_name,
) =>
    tizenCapiNetworkInm.inm_link_get_interface_name(
      link,
      interface_name,
    );

/// @brief Gets the link operation status.
/// @since_tizen 5.5
/// Parameter link              The link handle
/// Output parameter operation_state  The operation status of the link
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_foreach_link()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_get_operation_state(
  inm_link_h link,
  ffi.Pointer<ffi.Int32> operation_state,
) =>
    tizenCapiNetworkInm.inm_link_get_operation_state(
      link,
      operation_state,
    );

/// @brief Gets the bytes received by the link.
/// @since_tizen 5.5
/// Parameter link    The link handle
/// Output parameter bytes  The bytes received by the link
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_foreach_link()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_get_received_bytes(
  inm_link_h link,
  ffi.Pointer<ffi.UnsignedLongLong> bytes,
) =>
    tizenCapiNetworkInm.inm_link_get_received_bytes(
      link,
      bytes,
    );

/// @brief Gets the bytes sent by the link.
/// @since_tizen 5.5
/// Parameter link    The link handle
/// Output parameter bytes  The bytes sent by the link
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_foreach_link()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_get_sent_bytes(
  inm_link_h link,
  ffi.Pointer<ffi.UnsignedLongLong> bytes,
) =>
    tizenCapiNetworkInm.inm_link_get_sent_bytes(
      link,
      bytes,
    );

/// @brief Clones a link route handle.
/// @since_tizen 5.5
/// @remarks You must release @a cloned link route using inm_link_route_destroy().
/// Output parameter cloned  The handle of the cloned link route
/// Parameter origin   The handle of the origin link route
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_route_destroy()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_route_clone(
  ffi.Pointer<inm_link_route_h> cloned,
  inm_link_route_h origin,
) =>
    tizenCapiNetworkInm.inm_link_route_clone(
      cloned,
      origin,
    );

/// @brief Destroys a link route handle.
/// @since_tizen 5.5
/// Parameter route  The link route handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_route_clone()
/// @see inm_link_foreach_route()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_route_destroy(
  inm_link_route_h route,
) =>
    tizenCapiNetworkInm.inm_link_route_destroy(
      route,
    );

/// @brief Gets the route destination.
/// @since_tizen 5.5
/// @remarks You must release @a destination using free().
/// Parameter route         The route handle
/// Output parameter destination  The route destination
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_DATA_NOT_FOUND     Data not found
/// @see inm_link_foreach_route()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_route_get_destination(
  inm_link_route_h route,
  ffi.Pointer<ffi.Pointer<ffi.Char>> destination,
) =>
    tizenCapiNetworkInm.inm_link_route_get_destination(
      route,
      destination,
    );

/// @brief Gets the route gateway.
/// @since_tizen 5.5
/// @remarks You must release @a gateway using free().
/// Parameter route     The route handle
/// Output parameter gateway  The route gateway
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_DATA_NOT_FOUND     Data not found
/// @see inm_link_foreach_route()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_route_get_gateway(
  inm_link_route_h route,
  ffi.Pointer<ffi.Pointer<ffi.Char>> gateway,
) =>
    tizenCapiNetworkInm.inm_link_route_get_gateway(
      route,
      gateway,
    );

/// @brief Gets the route interface.
/// @since_tizen 5.5
/// @remarks You must release @a interface using free().
/// Parameter route       The route handle
/// Output parameter interface  The route interface
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_DATA_NOT_FOUND     Data not found
/// @see inm_link_foreach_route()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_route_get_interface(
  inm_link_route_h route,
  ffi.Pointer<ffi.Pointer<ffi.Char>> interface1,
) =>
    tizenCapiNetworkInm.inm_link_route_get_interface(
      route,
      interface1,
    );

/// @brief Gets the route type.
/// @since_tizen 5.5
/// Parameter route  The route handle
/// Output parameter type  The route type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_foreach_route()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_route_get_type(
  inm_link_route_h route,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkInm.inm_link_route_get_type(
      route,
      type,
    );

/// @brief Checks whether the route is default or not.
/// @since_tizen 5.5
/// Parameter route        The route handle
/// Output parameter is_default  @c true if route is default,
/// otherwise @c false if route is not default
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_link_foreach_route()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_link_route_is_default(
  inm_link_route_h route,
  ffi.Pointer<ffi.Bool> is_default,
) =>
    tizenCapiNetworkInm.inm_link_route_is_default(
      route,
      is_default,
    );

/// @brief Adds URL to check reachability by inm_start_checking_reachable_urls()
/// with type #INM_URL_LIST_TYPE_USER.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm  The monitoring handle
/// Parameter url  The URL to check reachability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_reachable_urls_start_checking()
/// @see inm_reachable_urls_stop_checking()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_reachable_urls_add_url_to_check(
  inm_h inm,
  ffi.Pointer<ffi.Char> url,
) =>
    tizenCapiNetworkInm.inm_reachable_urls_add_url_to_check(
      inm,
      url,
    );

/// @brief Gets whether the reachable URLs check is running or not.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm         The monitoring handle
/// Parameter type        URL type to check
/// Output parameter is_running  checking URL is running or not
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_reachable_urls_is_check_running(
  inm_h inm,
  int type,
  ffi.Pointer<ffi.Bool> is_running,
) =>
    tizenCapiNetworkInm.inm_reachable_urls_is_check_running(
      inm,
      type,
      is_running,
    );

/// @brief Removes URL to check reachability by inm_start_checking_reachable_urls()
/// with type #INM_URL_LIST_TYPE_USER.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm  The monitoring handle
/// Parameter url  The URL to check reachability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_reachable_urls_start_checking()
/// @see inm_reachable_urls_stop_checking()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_reachable_urls_remove_url_to_check(
  inm_h inm,
  ffi.Pointer<ffi.Char> url,
) =>
    tizenCapiNetworkInm.inm_reachable_urls_remove_url_to_check(
      inm,
      url,
    );

/// @brief Starts to send HTTP GET requests with curl to check reachability of URLs of the given type.
/// @details This function just checks if URLs in the list can be reachable once.
/// If you want to check again, you need to call this function again
/// with the target URL list.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The monitoring handle
/// Parameter type       URL type to check. For #INM_URL_LIST_TYPE_DEFAULT,
/// the platform checks the reachability of "tizen.org".
/// For #INM_URL_LIST_TYPE_USER, the platform checks
/// the reachability of URLs added by inm_add_url_to_check()
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @retval #INM_ERROR_NOW_IN_PROGRESS    Now in progress
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_reachable_urls_start_checking(
  inm_h inm,
  int type,
  inm_reachable_urls_check_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_reachable_urls_start_checking(
      inm,
      type,
      callback,
      user_data,
    );

/// @brief Stops sending HTTP GET requests with curl to check reachability of URLs of the given type.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The monitoring handle
/// Parameter type       The URL type to check
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_reachable_urls_stop_checking(
  inm_h inm,
  int type,
) =>
    tizenCapiNetworkInm.inm_reachable_urls_stop_checking(
      inm,
      type,
    );

/// @brief Refreshes link information held by a handle.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm  The inm handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_foreach_link()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_refresh_links(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_refresh_links(
      inm,
    );

/// @brief Resets the statistics information.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
/// Parameter inm              The monitor handle
/// Parameter connection_type  The type of connection \n
/// Only #INM_CONNECTION_TYPE_WIFI and #INM_CONNECTION_TYPE_CELLULAR are supported
/// Parameter statistics_type  The type of statistics
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_reset_statistics(
  inm_h inm,
  int connection_type,
  int statistics_type,
) =>
    tizenCapiNetworkInm.inm_reset_statistics(
      inm,
      connection_type,
      statistics_type,
    );

/// @brief Sets a callback called when the cellular state is changed.
/// @since_tizen 5.0
/// Parameter inm        The monitor handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_cellular_state_changed_cb()
/// @see inm_unset_cellular_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_cellular_state_changed_cb(
  inm_h inm,
  inm_cellular_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_cellular_state_changed_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Sets the callback to be called when the channel interference is updated.
/// @since_tizen 5.0
/// Parameter inm        The monitoring handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_channel_interference_cb(
  inm_h inm,
  inm_channel_interference_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_channel_interference_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Sets the callback called when the TCP congestion level is updated.
/// @since_tizen 5.0
/// Parameter inm        The monitoring handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_congestion_level_cb(
  inm_h inm,
  inm_congestion_level_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_congestion_level_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Sets a callback called when the Ethernet cable state is changed.
/// @since_tizen 5.0
/// Parameter inm        The monitor handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_ethernet_cable_state_changed_cb()
/// @see inm_unset_ethernet_cable_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_ethernet_cable_state_changed_cb(
  inm_h inm,
  inm_ethernet_cable_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_ethernet_cable_state_changed_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Sets a callback called when the ethernet state is changed.
/// @since_tizen 5.0
/// Parameter inm        The monitor handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_ethernet_state_changed_cb()
/// @see inm_unset_ethernet_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_ethernet_state_changed_cb(
  inm_h inm,
  inm_ethernet_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_ethernet_state_changed_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Sets the callback called when IP conflict state is changed.
/// @since_tizen 5.0
/// Parameter inm        The monitoring handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_ip_conflict_cb(
  inm_h inm,
  inm_ip_conflict_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_ip_conflict_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Sets the callback called the TCP TX retry rate is updated.
/// @since_tizen 5.0
/// Parameter inm        The monitoring handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_retry_tx_rate_cb(
  inm_h inm,
  inm_retry_tx_rate_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_retry_tx_rate_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Sets a callback called when the Wi-Fi Module state is changed.
/// @since_tizen 5.0
/// Parameter inm        The monitor handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_wifi_module_state_changed_cb()
/// @see inm_unset_wifi_module_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_wifi_module_state_changed_cb(
  inm_h inm,
  inm_wifi_module_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_wifi_module_state_changed_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Sets a callback called when the Wi-Fi state is changed.
/// @since_tizen 5.0
/// Parameter inm        The monitor handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_wifi_state_changed_cb()
/// @see inm_unset_wifi_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_set_wifi_state_changed_cb(
  inm_h inm,
  inm_wifi_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_set_wifi_state_changed_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Unsets the callback called when the cellular state is changed.
/// @since_tizen 5.0
/// Parameter inm  The monitor handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_cellular_state_changed_cb()
/// @see inm_set_cellular_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_cellular_state_changed_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_cellular_state_changed_cb(
      inm,
    );

/// @brief Unsets the callback called when the channel interference is updated.
/// @since_tizen 5.0
/// Parameter inm  The monitoring handle
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_channel_interference_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_channel_interference_cb(
      inm,
    );

/// @brief Unsets the callback called when the TCP congestion level is updated.
/// @since_tizen 5.0
/// Parameter inm  The monitoring handle
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_congestion_level_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_congestion_level_cb(
      inm,
    );

/// @brief Unsets the callback called when the Ethernet cable state is changed.
/// @since_tizen 5.0
/// Parameter inm  The monitor handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_ethernet_cable_state_changed_cb()
/// @see inm_set_ethernet_cable_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_ethernet_cable_state_changed_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_ethernet_cable_state_changed_cb(
      inm,
    );

/// @brief Unsets the callback called when the ethernet state is changed.
/// @since_tizen 5.0
/// Parameter inm  The monitor handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_ethernet_state_changed_cb()
/// @see inm_set_ethernet_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_ethernet_state_changed_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_ethernet_state_changed_cb(
      inm,
    );

/// @brief Unsets the callback called when IP conflict state is changed.
/// @since_tizen 5.0
/// Parameter inm  The monitoring handle
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_ip_conflict_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_ip_conflict_cb(
      inm,
    );

/// @brief Unsets the callback called when the TCP TX retry rate is updated.
/// @since_tizen 5.0
/// Parameter inm  The monitoring handle
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_retry_tx_rate_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_retry_tx_rate_cb(
      inm,
    );

/// @brief Unsets the callback called when the Wi-Fi Module state is changed.
/// @since_tizen 5.0
/// Parameter inm  The monitor handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_wifi_module_state_changed_cb()
/// @see inm_set_wifi_module_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_wifi_module_state_changed_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_wifi_module_state_changed_cb(
      inm,
    );

/// @brief Unsets the callback called when the Wi-Fi state is changed.
/// @since_tizen 5.0
/// Parameter inm  The monitor handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @see inm_wifi_state_changed_cb()
/// @see inm_set_wifi_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_unset_wifi_state_changed_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_unset_wifi_state_changed_cb(
      inm,
    );

/// @brief Gets all VSIE of AP.
/// @since_tizen 5.0
/// Parameter ap         The access point handle
/// Parameter callback   The callback to be called for each VSIE of AP
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_foreach_vsie(
  inm_connection_h ap,
  inm_wifi_ap_vsie_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_foreach_vsie(
      ap,
      callback,
      user_data,
    );

/// @brief Gets the Wi-Fi Association Status Code from the supplicant.
/// @since_tizen 5.0
/// Parameter ap            The access point handle
/// Output parameter status_code  The supplicant Wi-Fi association status code
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_assoc_status_code(
  inm_connection_h ap,
  ffi.Pointer<ffi.Int32> status_code,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_assoc_status_code(
      ap,
      status_code,
    );

/// @brief Gets BSSID (Basic Service Set Identifier).
/// @since_tizen 5.0
/// @remarks You must release @a bssid using free().
/// Parameter ap      The access point handle
/// Output parameter bssid  The BSSID
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_bssid(
  inm_connection_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> bssid,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_bssid(
      ap,
      bssid,
    );

/// @brief Gets the Wi-Fi disconnect reason from the supplicant.
/// @since_tizen 5.0
/// Parameter ap                  The access point handle
/// Output parameter disconnect_reason  The supplicant disconnect reason
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_disconnect_reason(
  inm_connection_h ap,
  ffi.Pointer<ffi.Int32> disconnect_reason,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_disconnect_reason(
      ap,
      disconnect_reason,
    );

/// @brief Gets the Wi-Fi encryption type.
/// @since_tizen 5.0
/// Parameter ap     The access point handle
/// Output parameter type  The type of Wi-Fi encryption
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_encryption_type(
  inm_connection_h ap,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_encryption_type(
      ap,
      type,
    );

/// @brief Gets ESSID (Extended Service Set Identifier).
/// @since_tizen 5.0
/// @remarks You must release @a essid using free().
/// Parameter ap      The access point handle
/// Output parameter essid  The ESSID
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_essid(
  inm_connection_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> essid,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_essid(
      ap,
      essid,
    );

/// @brief Gets the frequency band (MHz).
/// @since_tizen 5.0
/// Parameter ap          The access point handle
/// Output parameter frequency  The frequency
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_frequency(
  inm_connection_h ap,
  ffi.Pointer<ffi.Int> frequency,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_frequency(
      ap,
      frequency,
    );

/// @brief Gets the max speed (Mbps).
/// @since_tizen 5.0
/// Parameter ap          The access point handle
/// Output parameter max_speed  The max speed
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_max_speed(
  inm_connection_h ap,
  ffi.Pointer<ffi.Int> max_speed,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_max_speed(
      ap,
      max_speed,
    );

/// @brief Gets raw SSID (Service Set Identifier).
/// @since_tizen 5.0
/// @remarks You must release @a ssid using free().
/// Parameter ap         The access point handle
/// Output parameter ssid      The raw SSID bytes
/// Output parameter ssid_len  The raw SSID length
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_raw_ssid(
  inm_connection_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ssid,
  ffi.Pointer<ffi.Int> ssid_len,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_raw_ssid(
      ap,
      ssid,
      ssid_len,
    );

/// @brief Gets the RSSI.
/// @since_tizen 5.0
/// Parameter ap     The access point handle
/// Output parameter rssi  The RSSI value (in dBm)
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_rssi(
  inm_connection_h ap,
  ffi.Pointer<ffi.Int> rssi,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_rssi(
      ap,
      rssi,
    );

/// @brief Gets the RSSI level.
/// @since_tizen 5.0
/// Parameter ap           The access point handle
/// Output parameter rssi_level  The RSSI level
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_rssi_level(
  inm_connection_h ap,
  ffi.Pointer<ffi.Int32> rssi_level,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_rssi_level(
      ap,
      rssi_level,
    );

/// @brief Gets the Wi-Fi security mode.
/// @since_tizen 5.0
/// Parameter ap     The access point handle
/// Output parameter type  The type of Wi-Fi security
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_get_security_type(
  inm_connection_h ap,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_get_security_type(
      ap,
      type,
    );

/// @brief Checks whether the access point is favorite or not.
/// @since_tizen 5.0
/// Parameter ap         The access point handle
/// Output parameter favorite  @c true if access point is favorite,
/// otherwise @c false if access point is not favorite
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_is_favorite(
  inm_connection_h ap,
  ffi.Pointer<ffi.Bool> favorite,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_is_favorite(
      ap,
      favorite,
    );

/// @brief Checks whether the passphrase is required or not.
/// @since_tizen 5.0
/// @remarks This function is not valid if security type is #INM_WIFI_SECURITY_TYPE_EAP.
/// Parameter ap         The access point handle
/// Output parameter required  @c true if passphrase is required,
/// @c false if passphrase is not required.
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_is_passphrase_required(
  inm_connection_h ap,
  ffi.Pointer<ffi.Bool> required1,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_is_passphrase_required(
      ap,
      required1,
    );

/// @brief Checks whether the access point is a Passpoint or not.
/// @since_tizen 5.0
/// Parameter ap          The access point handle
/// Output parameter passpoint  @c true if access point is a Passpoint,
/// @c false if access point is not a Passpoint.
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_is_passpoint(
  inm_connection_h ap,
  ffi.Pointer<ffi.Bool> passpoint,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_is_passpoint(
      ap,
      passpoint,
    );

/// @brief Checks whether the WPS (Wi-Fi Protected Setup) is supported or not.
/// @since_tizen 5.0
/// Parameter ap          The access point handle
/// Output parameter supported  @c true if WPS is supported,
/// otherwise @c false is WPS is not supported.
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_ap_is_wps_supported(
  inm_connection_h ap,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiNetworkInm.inm_wifi_ap_is_wps_supported(
      ap,
      supported,
    );

/// @brief Gets the result of the scan.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter inm        The inm handle
/// Parameter callback   The callback to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
/// @post This function invokes inm_wifi_found_ap_cb().
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_foreach_found_ap(
  inm_h inm,
  inm_wifi_found_ap_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_wifi_foreach_found_ap(
      inm,
      callback,
      user_data,
    );

/// @brief Gets the handle of the connected access point.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a ap using inm_connection_destroy().
/// Parameter inm             The inm handle
/// Output parameter ap             The access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #INM_ERROR_PERMISSION_DENIED  Permission Denied
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_get_connected_ap(
  inm_h inm,
  ffi.Pointer<inm_connection_h> ap,
) =>
    tizenCapiNetworkInm.inm_wifi_get_connected_ap(
      inm,
      ap,
    );

/// @brief Gets the Wi-Fi scan state.
/// @since_tizen 5.0
/// Parameter inm    The inm handle
/// Parameter state  The Wi-Fi scan state
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_get_scan_state(
  inm_h inm,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkInm.inm_wifi_get_scan_state(
      inm,
      state,
    );

/// @brief Sets the callback called when the scanning state is changed.
/// @since_tizen 5.0
/// Parameter inm        The inm handle
/// Parameter callback   The callback function to be called
/// Parameter user_data  The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_set_scan_state_changed_cb(
  inm_h inm,
  inm_wifi_scan_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkInm.inm_wifi_set_scan_state_changed_cb(
      inm,
      callback,
      user_data,
    );

/// @brief Unsets the callback called when the scanning state is changed.
/// @since_tizen 5.0
/// Parameter inm  The inm handle
/// @return 0 on success, otherwise negative error value
/// @retval #INM_ERROR_NONE               Successful
/// @retval #INM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #INM_ERROR_NOT_SUPPORTED      Not supported
/// @retval #INM_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #INM_ERROR_OPERATION_FAILED   Operation failed
///
/// Module getter: `tizenCapiNetworkInm`.
int inm_wifi_unset_scan_state_changed_cb(
  inm_h inm,
) =>
    tizenCapiNetworkInm.inm_wifi_unset_scan_state_changed_cb(
      inm,
    );

