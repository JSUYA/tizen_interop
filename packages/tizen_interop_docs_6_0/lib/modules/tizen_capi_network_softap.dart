// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiNetworkSoftap`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-network-softap.so.0.1.0`.
///
/// Network / SoftAP.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_network_softap;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Clones the handle of a client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a dest should be released using softap_client_destroy().
/// Output parameter  dest  The cloned client handle
/// Parameter  origin  The origin client handle
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_client_destroy()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_client_clone(
  ffi.Pointer<softap_client_h> dest,
  softap_client_h origin,
) =>
    tizenCapiNetworkSoftap.softap_client_clone(
      dest,
      origin,
    );

/// @brief Destroys the handle of a client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  client  The client handle
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_client_clone()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_client_destroy(
  softap_client_h client,
) =>
    tizenCapiNetworkSoftap.softap_client_destroy(
      client,
    );

/// @brief Gets the IP address of a client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a ip_address should be released using free().
/// Parameter  client  The client handle
/// Parameter  address_family  The address family of IP address. Currently, #SOFTAP_ADDRESS_FAMILY_IPV4 is only supported
/// Output parameter  ip_address  The IP address
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_client_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_client_get_ip_address(
  softap_client_h client,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_address,
) =>
    tizenCapiNetworkSoftap.softap_client_get_ip_address(
      client,
      address_family,
      ip_address,
    );

/// @brief Gets the MAC address of a client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a mac_address should be released using free().
/// Parameter  client  The client handle
/// Output parameter  mac_address  The MAC address
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_client_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_client_get_mac_address(
  softap_client_h client,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mac_address,
) =>
    tizenCapiNetworkSoftap.softap_client_get_mac_address(
      client,
      mac_address,
    );

/// @brief Gets the name of a client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a name should be released using free().
/// Parameter  client  The client handle
/// Output parameter  name  The name of the client
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_client_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_client_get_name(
  softap_client_h client,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiNetworkSoftap.softap_client_get_name(
      client,
      name,
    );

/// @brief Gets the connection time of a client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  client    The client handle
/// Output parameter timestamp The connected time of the client
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_client_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_client_get_time(
  softap_client_h client,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiNetworkSoftap.softap_client_get_time(
      client,
      timestamp,
    );

/// @brief Creates the handle for SoftAP.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a softap should be released using softap_destroy().
/// Output parameter  softap A handle of a new mobile ap handle on success
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_destroy()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_create(
  ffi.Pointer<softap_h> softap,
) =>
    tizenCapiNetworkSoftap.softap_create(
      softap,
    );

/// @brief Destroys the handle for SoftAP.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_create()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_destroy(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_destroy(
      softap,
    );

/// @platform
/// @brief Disables the SoftAP, asynchronously.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/softap.admin
/// Parameter  softap  The SoftAP handle
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @post softap_disabled_cb() will be invoked.
/// @see  softap_is_enabled()
/// @see  softap_enable()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_disable(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_disable(
      softap,
    );

/// @brief Disables the DHCP server.
/// @details Enable/disable the DHCP server.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap   The SoftAP handle
/// @return 0 on success, otherwise negative error value.
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_enable_dhcp()
/// @see  softap_enable_dhcp_with_range()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_disable_dhcp(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_disable_dhcp(
      softap,
    );

/// @platform
/// @brief Enables the SoftAP, asynchronously.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/softap.admin
/// Parameter  softap  The SoftAP handle
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_NOT_PERMITTED  Operation not permitted
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval  #SOFTAP_ERROR_RESOURCE_BUSY Device or resource busy
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @post softap_enabled_cb() will be invoked.
/// @see  softap_is_enabled()
/// @see  softap_disable()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_enable(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_enable(
      softap,
    );

/// @brief Enables the DHCP server.
/// @details Enable/disable the DHCP server.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap   The SoftAP handle
/// @return 0 on success, otherwise negative error value.
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_disable_dhcp()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_enable_dhcp(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_enable_dhcp(
      softap,
    );

/// @brief Enables the DHCP server with the address range.
/// @details Enable the DHCP server with the address range.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The handle of softap
/// Parameter  rangestart Start address range
/// Parameter  rangestop  End address range
/// @return 0 on success, otherwise negative error value.
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_disable_dhcp()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_enable_dhcp_with_range(
  softap_h softap,
  ffi.Pointer<ffi.Char> rangestart,
  ffi.Pointer<ffi.Char> rangestop,
) =>
    tizenCapiNetworkSoftap.softap_enable_dhcp_with_range(
      softap,
      rangestart,
      rangestop,
    );

/// @brief Gets the clients which are connected.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Parameter  callback  The callback function to invoke
/// Parameter  user_data  The user data to be passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @pre  The SoftAP must be enabled.
/// @see  softap_is_enabled()
/// @see  softap_enable()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_foreach_connected_clients(
  softap_h softap,
  softap_connected_client_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkSoftap.softap_foreach_connected_clients(
      softap,
      callback,
      user_data,
    );

/// @brief Gets the channel for SoftAP.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter   softap   The SoftAP handle
/// Output parameter  channel  The channel number
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_channel()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_channel(
  softap_h softap,
  ffi.Pointer<ffi.Int> channel,
) =>
    tizenCapiNetworkSoftap.softap_get_channel(
      softap,
      channel,
    );

/// @brief Gets the Gateway address.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a gateway_address should be released using free().
/// Parameter  softap  The SoftAP handle
/// Parameter  address_family  The address family of IP address (currently only #SOFTAP_ADDRESS_FAMILY_IPV4 is supported)
/// Output parameter  gateway_address  Gateway address
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @pre  The SoftAP must be enabled.
/// @see  softap_is_enabled()
/// @see  softap_enable()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_gateway_address(
  softap_h softap,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> gateway_address,
) =>
    tizenCapiNetworkSoftap.softap_get_gateway_address(
      softap,
      address_family,
      gateway_address,
    );

/// @brief Gets the local IP address.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a ip_address should be released using free().
/// Parameter  softap  The SoftAP handle
/// Parameter  address_family  The address family of IP address (currently only #SOFTAP_ADDRESS_FAMILY_IPV4 is supported)
/// Output parameter  ip_address  The local IP address
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @pre  The SoftAP must be enabled.
/// @see  softap_is_enabled()
/// @see  softap_enable()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_ip_address(
  softap_h softap,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_address,
) =>
    tizenCapiNetworkSoftap.softap_get_ip_address(
      softap,
      address_family,
      ip_address,
    );

/// @brief Gets the MAC address of local device as "FC:A1:3E:D6:B1:B1".
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a mac_address should be released using free().
/// Parameter  softap  The SoftAP handle
/// Output parameter  mac_address  The MAC address
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_INVALID_OPERATION Invalid operation
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @pre  The SoftAP must be enabled.
/// @see  softap_is_enabled()
/// @see  softap_enable()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_mac_address(
  softap_h softap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mac_address,
) =>
    tizenCapiNetworkSoftap.softap_get_mac_address(
      softap,
      mac_address,
    );

/// @brief Gets the wireless mode for SoftAP.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap   The SoftAP handle
/// Output parameter mode     The wireless mode
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_mode()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_mode(
  softap_h softap,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiNetworkSoftap.softap_get_mode(
      softap,
      mode,
    );

/// @brief Gets the name of network interface (e.g. wlan0).
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a interface_name should be released using free().
/// Parameter  softap  The SoftAP handle
/// Output parameter  interface_name  The name of the network interface
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @pre  The SoftAP must be enabled.
/// @see  softap_is_enabled()
/// @see  softap_enable()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_network_interface_name(
  softap_h softap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> interface_name,
) =>
    tizenCapiNetworkSoftap.softap_get_network_interface_name(
      softap,
      interface_name,
    );

/// @brief Gets the passphrase for SoftAP.
/// @details If the passphrase is not set, random string of 8 characters will be used.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a passphrase should be released using free().
/// Parameter  softap  The SoftAP handle
/// Output parameter  passphrase  The passphrase
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_passphrase()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_passphrase(
  softap_h softap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> passphrase,
) =>
    tizenCapiNetworkSoftap.softap_get_passphrase(
      softap,
      passphrase,
    );

/// @brief Gets the security type of SoftAP.
/// @details If security type is not set, WPA2_PSK is used.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Output parameter  type  The security type
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_security_type()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_security_type(
  softap_h softap,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkSoftap.softap_get_security_type(
      softap,
      type,
    );

/// @brief Gets the SSID (service set identifier) for SoftAP.
/// @details If SSID is not set, Device name is used as SSID.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a ssid should be released using free().
/// Parameter  softap  The SoftAP handle
/// Output parameter  ssid  The SSID
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_ssid()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_ssid(
  softap_h softap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ssid,
) =>
    tizenCapiNetworkSoftap.softap_get_ssid(
      softap,
      ssid,
    );

/// @brief Gets the visibility of SSID (service set identifier) for SoftAP.
/// @details If the visibility is set to invisible, then the SSID of this device is hidden and Wi-Fi scan won't find your device.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Output parameter  visible  The visibility of SSID: (@c true = visible, @c false = invisible)
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_ssid_visibility()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_ssid_visibility(
  softap_h softap,
  ffi.Pointer<ffi.Bool> visible,
) =>
    tizenCapiNetworkSoftap.softap_get_ssid_visibility(
      softap,
      visible,
    );

/// @brief Gets the Subnet Mask.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The @a subnet_mask should be released using free().
/// Parameter  softap  The SoftAP handle
/// Parameter  address_family  The address family of IP address (currently only #SOFTAP_ADDRESS_FAMILY_IPV4 is supported)
/// Output parameter  subnet_mask  Subnet mask
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @pre  The SoftAP must be enabled.
/// @see  softap_is_enabled()
/// @see  softap_enable()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_subnet_mask(
  softap_h softap,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> subnet_mask,
) =>
    tizenCapiNetworkSoftap.softap_get_subnet_mask(
      softap,
      address_family,
      subnet_mask,
    );

/// @brief Gets vendor specific elements for Beacon and Probe Response frames.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The format for vendor parameter should be a hex dump of the raw information elements. \n
/// The @a vendor_element should be released using free().
/// Parameter  softap  The SoftAP handle
/// Output parameter vendor_element  The vendor specific elements
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_vendor_element()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_get_vendor_element(
  softap_h softap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vendor_element,
) =>
    tizenCapiNetworkSoftap.softap_get_vendor_element(
      softap,
      vendor_element,
    );

/// @brief Checks whether the DHCP is enabled or not.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Output parameter dhcp_enabled  @c true if DHCP is enabled, \n @c false if DHCP is disabled
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_is_dhcp_enabled(
  softap_h softap,
  ffi.Pointer<ffi.Bool> dhcp_enabled,
) =>
    tizenCapiNetworkSoftap.softap_is_dhcp_enabled(
      softap,
      dhcp_enabled,
    );

/// @brief Checks whether the SoftAP is enabled or not.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Output parameter enable  @c true if SoftAP is enabled, \n @c false if SoftAP is disabled
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_is_enabled(
  softap_h softap,
  ffi.Pointer<ffi.Bool> enable,
) =>
    tizenCapiNetworkSoftap.softap_is_enabled(
      softap,
      enable,
    );

/// @brief Pushes the WPS button to connect with SoftAP client(WPS PBC).
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The WPS button should be pushed when client tries to connect with SoftAP by using WPS PBC.
/// Parameter  softap  The SoftAP handle
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_push_wps_button(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_push_wps_button(
      softap,
    );

/// @platform
/// @brief Reloads the settings (SSID / Passphrase / Security type / SSID visibility) for SoftAP.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/softap.admin
/// @remarks Devices connected via MobileAP will be disconnected when the settings are reloaded.
/// Parameter  softap  The SoftAP handle
/// Parameter  callback  The callback function to invoke
/// Parameter  user_data  The user data to be passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_RESOURCE_BUSY     Device or resource busy
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_reload_settings(
  softap_h softap,
  softap_settings_reloaded_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkSoftap.softap_reload_settings(
      softap,
      callback,
      user_data,
    );

/// @brief Sets the channel for SoftAP.
/// @details If channel is not set, channel 1 is used as default.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks This change is applied next time SoftAP is enabled.\n
/// You can use softap_enable() or softap_reload_settings() to enable SoftAP.\n
/// If @a channel is 0, the channel can be selected automatically at run time.\n
/// (ACS: Automatic Channel Selection)
/// Parameter  softap   The SoftAP handle
/// Parameter  channel  The channel number
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_get_channel()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_channel(
  softap_h softap,
  int channel,
) =>
    tizenCapiNetworkSoftap.softap_set_channel(
      softap,
      channel,
    );

/// @brief Sets the callback function, which is called when the state of connection is changed.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Parameter  callback  The callback function to invoke
/// Parameter  user_data  The user data to be passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_unset_client_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_client_connection_state_changed_cb(
  softap_h softap,
  softap_client_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkSoftap.softap_set_client_connection_state_changed_cb(
      softap,
      callback,
      user_data,
    );

/// @brief Sets the callback function called when SoftAP is disabled.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Parameter  callback  The callback function to invoke
/// Parameter  user_data  The user data to be passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_unset_disabled_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_disabled_cb(
  softap_h softap,
  softap_disabled_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkSoftap.softap_set_disabled_cb(
      softap,
      callback,
      user_data,
    );

/// @brief Sets the callback function, which is called when SoftAP is enabled.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap The SoftAP handle
/// Parameter  callback  The callback function to invoke
/// Parameter  user_data  The user data to be passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_unset_enabled_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_enabled_cb(
  softap_h softap,
  softap_enabled_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkSoftap.softap_set_enabled_cb(
      softap,
      callback,
      user_data,
    );

/// @brief Sets the local IP address.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks This change is applied next time SoftAP is enabled.
/// You can use softap_enable() or softap_reload_settings() to enable SoftAP.
/// Parameter  softap  The SoftAP handle
/// Parameter  address_family  The address family of IP address (currently only #SOFTAP_ADDRESS_FAMILY_IPV4 is supported)
/// Parameter  ip_address  The local IP address
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_ip_address(
  softap_h softap,
  int address_family,
  ffi.Pointer<ffi.Char> ip_address,
) =>
    tizenCapiNetworkSoftap.softap_set_ip_address(
      softap,
      address_family,
      ip_address,
    );

/// @brief Sets the wireless mode for SoftAP.
/// @details If wireless mode is not set, IEEE 802.11g is used as default.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap   The SoftAP handle
/// Parameter  mode     The mode
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_get_mode()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_mode(
  softap_h softap,
  int mode,
) =>
    tizenCapiNetworkSoftap.softap_set_mode(
      softap,
      mode,
    );

/// @brief Sets the passphrase for SoftAP.
/// @details If the passphrase is not set, random string of 8 characters is used.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks This change is applied next time SoftAP is enabled. \n
/// You can use softap_enable() or softap_reload_settings() to enable SoftAP.
/// Parameter  softap  The SoftAP handle
/// Parameter  passphrase  The passphrase
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_get_passphrase()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_passphrase(
  softap_h softap,
  ffi.Pointer<ffi.Char> passphrase,
) =>
    tizenCapiNetworkSoftap.softap_set_passphrase(
      softap,
      passphrase,
    );

/// @brief Sets the callback function, which is called when the passphrase of SoftAP is changed.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Parameter  callback  The callback function to invoke
/// Parameter  user_data  The user data to be passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_unset_passphrase_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_passphrase_changed_cb(
  softap_h softap,
  softap_passphrase_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkSoftap.softap_set_passphrase_changed_cb(
      softap,
      callback,
      user_data,
    );

/// @brief Sets the security type of SoftAP.
/// @details If security type is not set, WPA2_PSK is used.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks This change is applied next time SoftAP is enabled. \
/// You can use softap_enable() or softap_reload_settings() to enable SoftAP.
/// Parameter  softap  The SoftAP handle
/// Parameter  type  The security type
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_get_security_type()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_security_type(
  softap_h softap,
  int type,
) =>
    tizenCapiNetworkSoftap.softap_set_security_type(
      softap,
      type,
    );

/// @brief Sets the callback function, which is called when the security type of SoftAP is changed.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Parameter  callback  The callback function to invoke
/// Parameter  user_data  The user data to be passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_unset_security_type_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_security_type_changed_cb(
  softap_h softap,
  softap_security_type_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkSoftap.softap_set_security_type_changed_cb(
      softap,
      callback,
      user_data,
    );

/// @brief Sets the SSID (service set identifier) for SoftAP.
/// @details The SSID cannot exceed 32 bytes. If SSID is not set, device name is used as SSID.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks This change is applied next time SoftAP is enabled. \n
/// You can use softap_enable() or softap_reload_settings() to enable SoftAP.
/// Parameter  softap  The SoftAP handle
/// Parameter  ssid  The SSID
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_get_ssid()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_ssid(
  softap_h softap,
  ffi.Pointer<ffi.Char> ssid,
) =>
    tizenCapiNetworkSoftap.softap_set_ssid(
      softap,
      ssid,
    );

/// @brief Sets the visibility of SSID (service set identifier) for SoftAP.
/// @details If you set the visibility to invisible, then the SSID of this device is hidden and Wi-Fi scan won't find your device.
/// @details By default visibility is set to @c true.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks This change is applied next time SoftAP is enabled. \n
/// You can use softap_enable() or softap_reload_settings() to enable SoftAP.
/// Parameter  softap  The SoftAP handle
/// Parameter  visible  The visibility of SSID: (@c true = visible, @c false = invisible)
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_get_ssid_visibility()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_ssid_visibility(
  softap_h softap,
  bool visible,
) =>
    tizenCapiNetworkSoftap.softap_set_ssid_visibility(
      softap,
      visible,
    );

/// @brief Sets the callback function , which is called when the visibility of SSID is changed.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// Parameter  callback  The callback function to invoke
/// Parameter  user_data  The user data to be passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_unset_ssid_visibility_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_ssid_visibility_changed_cb(
  softap_h softap,
  softap_ssid_visibility_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkSoftap.softap_set_ssid_visibility_changed_cb(
      softap,
      callback,
      user_data,
    );

/// @brief Sets vendor specific elements for Beacon and Probe Response frames.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The format for vendor parameter should be a hex dump of the raw information elements. \n
/// This change is applied next time SoftAP is enabled. \n
/// You can use softap_enable() or softap_reload_settings() to enable SoftAP.
/// Parameter  softap  The SoftAP handle
/// Parameter  vendor_element  The vendor specific elements
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_get_vendor_element()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_vendor_element(
  softap_h softap,
  ffi.Pointer<ffi.Char> vendor_element,
) =>
    tizenCapiNetworkSoftap.softap_set_vendor_element(
      softap,
      vendor_element,
    );

/// @brief Sets the WPS PIN to connect with SoftAP client(WPS PIN).
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// @remarks The WPS PIN should be inserted when client tries to connect with SoftAP by using WPS PIN.
/// Parameter  softap  The SoftAP handle
/// Parameter  wps_pin  The WPS PIN
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_OPERATION_FAILED  Operation failed
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_set_wps_pin(
  softap_h softap,
  ffi.Pointer<ffi.Char> wps_pin,
) =>
    tizenCapiNetworkSoftap.softap_set_wps_pin(
      softap,
      wps_pin,
    );

/// @brief Unsets the callback function, which is called when the state of connection is changed.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_client_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_unset_client_connection_state_changed_cb(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_unset_client_connection_state_changed_cb(
      softap,
    );

/// @brief Unsets the callback function, which is called when SoftAP is disabled.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_disabled_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_unset_disabled_cb(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_unset_disabled_cb(
      softap,
    );

/// @brief Unsets the callback function, which is called when SoftAP is enabled.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_enabled_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_unset_enabled_cb(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_unset_enabled_cb(
      softap,
    );

/// @brief Unsets the callback function, which is called when the passphrase of SoftAP is changed.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_passphrase_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_unset_passphrase_changed_cb(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_unset_passphrase_changed_cb(
      softap,
    );

/// @brief Unsets the callback function, which is called when the security type of SoftAP is changed.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// @return 0 on success, otherwise negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_security_type_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_unset_security_type_changed_cb(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_unset_security_type_changed_cb(
      softap,
    );

/// @brief Unsets the callback function, which is called when the visibility of SSID is changed.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/softap
/// Parameter  softap  The SoftAP handle
/// @return  0 on success, otherwise a negative error value
/// @retval  #SOFTAP_ERROR_NONE              Successful
/// @retval  #SOFTAP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval  #SOFTAP_ERROR_NOT_SUPPORTED     API is not supported
/// @retval  #SOFTAP_ERROR_PERMISSION_DENIED Permission denied
/// @see  softap_set_ssid_visibility_changed_cb()
///
/// Module getter: `tizenCapiNetworkSoftap`.
int softap_unset_ssid_visibility_changed_cb(
  softap_h softap,
) =>
    tizenCapiNetworkSoftap.softap_unset_ssid_visibility_changed_cb(
      softap,
    );

