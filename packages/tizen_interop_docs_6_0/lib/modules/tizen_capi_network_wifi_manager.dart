// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiNetworkWifiManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-network-wifi-manager.so.1`.
///
/// Network / WI-Fi Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_network_wifi_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Activates Wi-Fi asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi          The Wi-Fi handle
/// Parameter callback      The callback function to be called \n
/// This can be @c NULL if you don't want to get the notification.
/// Parameter user_data     The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOW_IN_PROGRESS      Now in progress
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_SECURITY_RESTRICTED  Restricted by security system policy
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post wifi_manager_activated_cb() will be invoked.
/// @see wifi_manager_activated_cb()
/// @see wifi_manager_deactivate()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_activate(
  wifi_manager_h wifi,
  wifi_manager_activated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_activate(
      wifi,
      callback,
      user_data,
    );

/// @brief Activates Wi-Fi asynchronously and displays Wi-Fi picker (popup) when Wi-Fi is not automatically connected.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi          The Wi-Fi handle
/// Parameter callback      The callback function to be called \n
/// This can be @c NULL if you don't want to get the notification.
/// Parameter user_data     The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOW_IN_PROGRESS      Now in progress
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_SECURITY_RESTRICTED  Restricted by security system policy
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post wifi_manager_activated_cb() will be invoked.
/// @see wifi_manager_activated_cb()
/// @see wifi_manager_deactivate()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_activate_with_wifi_picker_tested(
  wifi_manager_h wifi,
  wifi_manager_activated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_activate_with_wifi_picker_tested(
      wifi,
      callback,
      user_data,
    );

/// @brief Adds the Wi-Fi Vendor Specific Information Element (VSIE) to a specific frame type.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
/// @remarks @a vsie_str for @a frame_id will be in effect until Wi-Fi is deactivated.
///
/// Parameter wifi           The Wi-Fi handle
/// Parameter frame_id       The frame ID for setting VSIE
/// Parameter vsie_str       The VSIE data
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @pre Wi-Fi service must be activated by wifi_manager_activate().
/// @see wifi_manager_activate()
/// @see wifi_manager_remove_vsie()
/// @see wifi_manager_get_vsie()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_add_vsie(
  wifi_manager_h wifi,
  int frame_id,
  ffi.Pointer<ffi.Char> vsie_str,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_add_vsie(
      wifi,
      frame_id,
      vsie_str,
    );

/// @brief Clones the access point handle.
/// @since_tizen 3.0
/// @remarks You must release @a cloned_ap using wifi_manager_ap_destroy().
/// Output parameter cloned_ap      The cloned access point handle
/// Parameter origin          The origin access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_ap_destroy()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_clone(
  ffi.Pointer<wifi_manager_ap_h> cloned_ap,
  wifi_manager_ap_h origin,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_clone(
      cloned_ap,
      origin,
    );

/// @brief Creates the access point handle.
/// @since_tizen 3.0
/// @remarks You must release @a ap using wifi_manager_ap_destroy().
/// Parameter wifi            The Wi-Fi handle
/// Parameter essid           The ESSID (Extended Service Set Identifier) should be null-terminated and can be UTF-8 encoded
/// Output parameter ap             The access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_ap_destroy()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_create(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> essid,
  ffi.Pointer<wifi_manager_ap_h> ap,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_create(
      wifi,
      essid,
      ap,
    );

/// @brief Destroys the access point handle.
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_ap_create()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_destroy(
  wifi_manager_ap_h ap,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_destroy(
      ap,
    );

/// @brief Gets all IPv6 addresses assigned to the Wi-Fi interface.
/// @since_tizen 4.0
/// Parameter ap        The access point handle
/// Parameter callback  The callback to be called for each IPv6 address
/// Parameter user_data The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE               Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED   Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_foreach_ipv6_address(
  wifi_manager_ap_h ap,
  wifi_manager_ap_ipv6_address_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_foreach_ipv6_address(
      ap,
      callback,
      user_data,
    );

/// @brief Gets all VSIE of AP.
/// @since_tizen 5.0
/// Parameter ap               The access point handle
/// Parameter callback         The callback to be called for each VSIE of AP
/// Parameter user_data        The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_foreach_vsie(
  wifi_manager_ap_h ap,
  wifi_manager_ap_vsie_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_foreach_vsie(
      ap,
      callback,
      user_data,
    );

/// @brief Gets the Wi-Fi Association Status Code from the supplicant.
/// @since_tizen 5.0
/// Parameter ap              The access point handle
/// Output parameter status_code    The supplicant Wi-Fi association status code
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_assoc_status_code(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> status_code,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_assoc_status_code(
      ap,
      status_code,
    );

/// @brief Gets BSSID (Basic Service Set Identifier).
/// @since_tizen 3.0
/// @remarks You must release @a bssid using free().
/// Parameter ap              The access point handle
/// Output parameter bssid          The BSSID
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_bssid(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> bssid,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_bssid(
      ap,
      bssid,
    );

/// @brief Gets the connection state.
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Output parameter state          The connection state
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_connection_state(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_connection_state(
      ap,
      state,
    );

/// @brief Gets the raw country code.
/// @since_tizen 5.0
/// @remarks You must release @a country_code using free().
/// Parameter ap  The access point handle
/// Output parameter country_code  The country code, NULL if M/W does not have the country code
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_countrycode(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> country_code,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_countrycode(
      ap,
      country_code,
    );

/// @brief Gets the DHCP lease duration.
/// @since_tizen 4.0
/// Parameter ap                        The access point handle
/// Parameter address_family            The address family
/// Output parameter dhcp_lease_duration      The DHCP lease duration in seconds
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_dhcp_lease_duration(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Int> dhcp_lease_duration,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_dhcp_lease_duration(
      ap,
      address_family,
      dhcp_lease_duration,
    );

/// @brief Gets the DHCP Server address.
/// @since_tizen 4.0
/// @remarks You must release @a dhcp_server using g_free().
/// This function is supported only for IPv4 address family.
/// Parameter ap                The access point handle
/// Parameter address_family    The address family
/// Output parameter dhcp_server      The DHCP server address
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_dhcp_server_address(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dhcp_server,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_dhcp_server_address(
      ap,
      address_family,
      dhcp_server,
    );

/// @brief Gets the Wi-Fi disconnect reason from the supplicant.
/// @since_tizen 3.0
/// Parameter ap                    The access point handle
/// Output parameter disconnect_reason    The supplicant disconnect reason
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_disconnect_reason(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> disconnect_reason,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_disconnect_reason(
      ap,
      disconnect_reason,
    );

/// @brief Gets the DNS address.
/// @since_tizen 3.0
/// @remarks The allowance of DNS address is @c 2.You must release @a dns_address using free().
/// Parameter ap                The access point handle
/// Parameter order             The order of DNS address; it starts from 1, which means first DNS address
/// Parameter address_family    The address family
/// Output parameter dns_address      The DNS address
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_dns_address(
  wifi_manager_ap_h ap,
  int order,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dns_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_dns_address(
      ap,
      order,
      address_family,
      dns_address,
    );

/// @brief Gets the DNS config type.
/// @since_tizen 4.0
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Output parameter type           The DNS config type
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_dns_config_type(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_dns_config_type(
      ap,
      address_family,
      type,
    );

/// @brief Gets access point anonymous identity.
/// @since_tizen 5.5
/// @remarks You must release @a anonymous_identity using free().
/// Parameter ap                    The access point handle
/// Output parameter anonymous_identity   The anonymous identity of access point
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY                Out of memory
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION            Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED                Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_eap_anonymous_identity(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> anonymous_identity,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_eap_anonymous_identity(
      ap,
      anonymous_identity,
    );

/// @brief Gets the type of EAP phase2 authentication of Wi-Fi.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Output parameter type             The type of EAP phase2 authentication
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_eap_auth_type(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_eap_auth_type(
      ap,
      type,
    );

/// @brief Gets the CA Certificate of EAP.
/// @since_tizen 3.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_TLS.
/// You must release @a file using free().
/// Parameter ap                The access point handle
/// Output parameter file             The file path of CA Certificate
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_eap_ca_cert_file(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> file,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_eap_ca_cert_file(
      ap,
      file,
    );

/// @brief Gets the Client Certificate of EAP.
/// @since_tizen 3.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_TLS.
/// You must release @a file using free().
/// Parameter ap                The access point handle
/// Output parameter file             The file path of Client Certificate
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_eap_client_cert_file(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> file,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_eap_client_cert_file(
      ap,
      file,
    );

/// @brief Gets the passphrase of EAP.
/// @since_tizen 3.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_PEAP or #WIFI_MANAGER_EAP_TYPE_TTLS.
/// You must release @a user_name using free().
/// Parameter ap                The access point handle
/// Output parameter user_name        The user name
/// Output parameter is_password_set  @c true if password is set,
/// otherwise @c false if password is not set.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_eap_passphrase(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> user_name,
  ffi.Pointer<ffi.Bool> is_password_set,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_eap_passphrase(
      ap,
      user_name,
      is_password_set,
    );

/// @brief Gets the private key file of EAP.
/// @since_tizen 3.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_TLS.
/// You must release @a file using free().
/// Parameter ap                The access point handle
/// Output parameter file             The file path of private key
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_eap_private_key_file(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> file,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_eap_private_key_file(
      ap,
      file,
    );

/// @brief Gets the EAP type of Wi-Fi.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Output parameter type             The type of EAP
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_eap_type(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_eap_type(
      ap,
      type,
    );

/// @brief Gets the Wi-Fi encryption type.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Output parameter type             The type of Wi-Fi encryption
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_encryption_type(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_encryption_type(
      ap,
      type,
    );

/// @brief Gets the error state.
/// @since_tizen 4.0
/// Parameter ap              The access point handle
/// Output parameter error_state    The Wi-Fi connection error state
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_error_state(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> error_state,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_error_state(
      ap,
      error_state,
    );

/// @brief Gets ESSID (Extended Service Set Identifier).
/// @since_tizen 3.0
/// @remarks You must release @a essid using free().
/// Parameter ap              The access point handle
/// Output parameter essid          The ESSID
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_essid(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> essid,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_essid(
      ap,
      essid,
    );

/// @brief Gets the frequency band (MHz).
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Output parameter frequency      The frequency
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_frequency(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int> frequency,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_frequency(
      ap,
      frequency,
    );

/// @brief Gets the gateway address.
/// @since_tizen 3.0
/// @remarks You must release @a gateway_address using free().
/// Parameter ap                The access point handle
/// Parameter address_family    The address family
/// Output parameter gateway_address  The gateway address
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_gateway_address(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> gateway_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_gateway_address(
      ap,
      address_family,
      gateway_address,
    );

/// @brief Gets the IP address.
/// @since_tizen 3.0
/// @remarks You must release @a ip_address using free().
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Output parameter ip_address     The IP address; this value is for default address \n
/// e.g, IPv6 can have multiple addresses. but you can only obtain a representative address \n
/// if you want to get all IPv6 address, you can use the wifi_manager_ap_foreach_ipv6_address().
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see  wifi_manager_ap_foreach_ipv6_address()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_ip_address(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_ip_address(
      ap,
      address_family,
      ip_address,
    );

/// @brief Gets the config type of IP.
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Output parameter type           The type of IP config
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED           Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_ip_config_type(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_ip_config_type(
      ap,
      address_family,
      type,
    );

/// @brief Gets the max speed (Mbps).
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Output parameter max_speed      The max speed
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_max_speed(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int> max_speed,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_max_speed(
      ap,
      max_speed,
    );

/// @brief Gets the network prefix length.
/// @since_tizen 4.0
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Output parameter prefix_len     The network prefix length. \n
/// In case of IPv4, it means netmask length \n
/// (also called a prefix, e.g. 8, 16, 24, 32)
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_prefix_length(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Int> prefix_len,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_prefix_length(
      ap,
      address_family,
      prefix_len,
    );

/// @brief Gets the proxy address.
/// @since_tizen 3.0
/// @remarks You must release @a proxy_address using free().
/// Parameter ap                The access point handle
/// Parameter address_family    The address family
/// Output parameter proxy_address    The proxy address
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_proxy_address(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> proxy_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_proxy_address(
      ap,
      address_family,
      proxy_address,
    );

/// @brief Gets the Proxy type.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Output parameter proxy_type       The type of proxy
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_proxy_type(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> proxy_type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_proxy_type(
      ap,
      proxy_type,
    );

/// @brief Gets raw SSID (Service Set Identifier).
/// @since_tizen 4.0
/// @remarks You must release @a ssid using free().
/// Parameter ap              The access point handle
/// Output parameter ssid           The raw SSID bytes
/// Output parameter ssid_len       The raw SSID length
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_raw_ssid(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ssid,
  ffi.Pointer<ffi.Int> ssid_len,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_raw_ssid(
      ap,
      ssid,
      ssid_len,
    );

/// @brief Gets the RSSI.
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Output parameter rssi           The RSSI value (in dBm)
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_rssi(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int> rssi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_rssi(
      ap,
      rssi,
    );

/// @brief Gets the RSSI level.
/// @since_tizen 4.0
/// Parameter ap              The access point handle
/// Output parameter rssi_level     The RSSI level
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_rssi_level(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> rssi_level,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_rssi_level(
      ap,
      rssi_level,
    );

/// @brief Gets the Wi-Fi security mode.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Output parameter type             The type of Wi-Fi security
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_security_type(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_security_type(
      ap,
      type,
    );

/// @brief Gets the subnet mask.
/// @since_tizen 3.0
/// @remarks You must release @a subnet_mask using free().
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Output parameter subnet_mask    The subnet mask
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_get_subnet_mask(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> subnet_mask,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_get_subnet_mask(
      ap,
      address_family,
      subnet_mask,
    );

/// @brief Creates the hidden access point handle.
/// @since_tizen 3.0
/// @remarks You must release @a ap using wifi_manager_ap_destroy().
/// Parameter wifi            The Wi-Fi handle
/// Parameter essid           The ESSID (Extended Service Set Identifier) should be null-terminated and can be UTF-8 encoded
/// Output parameter ap             The access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_ap_destroy()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_hidden_create(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> essid,
  ffi.Pointer<wifi_manager_ap_h> ap,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_hidden_create(
      wifi,
      essid,
      ap,
    );

/// @brief Checks whether the access point is favorite or not.
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Output parameter favorite  @c true if access point is favorite,
/// otherwise @c false if access point is not favorite
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_is_favorite(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Bool> favorite,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_is_favorite(
      ap,
      favorite,
    );

/// @brief Checks whether the access point is hidden or not.
/// @since_tizen 5.5
/// Parameter ap              The access point handle
/// Output parameter is_hidden  @c true if the access point is hidden,
/// @c false if the access point is not hidden.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_is_hidden(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Bool> is_hidden,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_is_hidden(
      ap,
      is_hidden,
    );

/// @brief Checks whether the passphrase is required or not.
/// @since_tizen 3.0
/// @remarks This function is not valid if security type is #WIFI_MANAGER_SECURITY_TYPE_EAP.
/// Parameter ap                The access point handle
/// Output parameter required  @c true if passphrase is required,
/// @c false if passphrase is not required.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_is_passphrase_required(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Bool> required1,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_is_passphrase_required(
      ap,
      required1,
    );

/// @brief Checks whether the access point is passpoint or not.
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Output parameter passpoint  @c true if access point is passpoint,
/// otherwise @c false if access point is not passpoint.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_is_passpoint(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Bool> passpoint,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_is_passpoint(
      ap,
      passpoint,
    );

/// @brief Checks whether the WPS(Wi-Fi Protected Setup) is supported or not.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Output parameter supported  @c true if WPS is supported,
/// otherwise @c false is WPS is not supported.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_connect_by_wps_pbc()
/// @see wifi_manager_connect_by_wps_pin()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_is_wps_supported(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_is_wps_supported(
      ap,
      supported,
    );

/// @brief Refreshes the access point information.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You should call this function in order to get the current access point information, because the information can be changed.
/// Parameter ap              The access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_refresh(
  wifi_manager_ap_h ap,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_refresh(
      ap,
    );

/// @brief Sets the DNS address.
/// @since_tizen 3.0
/// @remarks The allowance of DNS address is @c 2 \n
/// Parameter ap                The access point handle
/// Parameter order             The order of DNS address \n
/// It starts from @c 1, which means first DNS address.
/// Parameter address_family    The address family
/// Parameter dns_address       The DNS address \n
/// If you set this value to @c NULL, then the existing value will be deleted.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_dns_address(
  wifi_manager_ap_h ap,
  int order,
  int address_family,
  ffi.Pointer<ffi.Char> dns_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_dns_address(
      ap,
      order,
      address_family,
      dns_address,
    );

/// @brief Sets the DNS config type.
/// @since_tizen 4.0
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Parameter type            The DNS config type
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_dns_config_type(
  wifi_manager_ap_h ap,
  int address_family,
  int type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_dns_config_type(
      ap,
      address_family,
      type,
    );

/// @brief Sets access point anonymous identity.
/// @since_tizen 5.5
/// Parameter ap                    The access point handle
/// Parameter anonymous_identity    The anonymous identity
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION            Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED                Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_eap_anonymous_identity(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Char> anonymous_identity,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_eap_anonymous_identity(
      ap,
      anonymous_identity,
    );

/// @brief Sets the type of EAP phase2 authentication of Wi-Fi.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Parameter type              The type of EAP phase2 authentication
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_eap_auth_type(
  wifi_manager_ap_h ap,
  int type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_eap_auth_type(
      ap,
      type,
    );

/// @brief Sets the CA Certificate of EAP.
/// @since_tizen 3.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_TLS.
/// Parameter ap                The access point handle
/// Parameter file              The file path of CA Certificate
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_eap_ca_cert_file(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Char> file,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_eap_ca_cert_file(
      ap,
      file,
    );

/// @brief Sets the Client Certificate of EAP.
/// @since_tizen 3.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_TLS.
/// Parameter ap                The access point handle
/// Parameter file              The file path of Client Certificate
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_eap_client_cert_file(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Char> file,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_eap_client_cert_file(
      ap,
      file,
    );

/// @brief Sets the passphrase of EAP.
/// @details You can set one of @a user_name and @a password as @c NULL.
/// In this case, the value of a parameter which is set as @c NULL will be the previous value.
/// But it is not allowed that both @a user_name and @a password are set as @c NULL.
/// @since_tizen 3.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_PEAP or #WIFI_MANAGER_EAP_TYPE_TTLS.
/// Parameter ap                The access point handle
/// Parameter user_name         The user name \n
/// This value can be @c NULL.
/// Parameter password          The password \n
/// This value can be @c NULL.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_eap_passphrase(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Char> user_name,
  ffi.Pointer<ffi.Char> password,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_eap_passphrase(
      ap,
      user_name,
      password,
    );

/// @brief Sets the private key information of EAP.
/// @since_tizen 3.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_TLS.
/// Parameter ap                The access point handle
/// Parameter file              The file path of private key
/// Parameter password          The password
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_eap_private_key_info(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Char> file,
  ffi.Pointer<ffi.Char> password,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_eap_private_key_info(
      ap,
      file,
      password,
    );

/// @brief Sets the EAP type of Wi-Fi.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Parameter type              The type of EAP
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_eap_type(
  wifi_manager_ap_h ap,
  int type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_eap_type(
      ap,
      type,
    );

/// @brief Sets the Wi-Fi encryption type.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Parameter type              The type of Wi-Fi encryption
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_encryption_type(
  wifi_manager_ap_h ap,
  int type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_encryption_type(
      ap,
      type,
    );

/// @brief Sets the gateway address.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Parameter address_family    The address family
/// Parameter gateway_address   The gateway address \n
/// If you set this value to @c NULL, then the existing value will be deleted.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_gateway_address(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Char> gateway_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_gateway_address(
      ap,
      address_family,
      gateway_address,
    );

/// @brief Sets the IP address.
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Parameter ip_address      The IP address; if you set this value to NULL, then the existing value will be deleted
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_ip_address(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Char> ip_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_ip_address(
      ap,
      address_family,
      ip_address,
    );

/// @brief Sets the config type of IP.
/// @details If you set IP config type to #WIFI_MANAGER_IP_CONFIG_TYPE_STATIC,
/// then IP address, Gateway and Subnet mask will be set to the initial value "0.0.0.0".
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Parameter type            The type of IP config
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_ip_config_type(
  wifi_manager_ap_h ap,
  int address_family,
  int type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_ip_config_type(
      ap,
      address_family,
      type,
    );

/// @brief Sets the passphrase.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Parameter passphrase        The passphrase of access point
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_passphrase(
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Char> passphrase,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_passphrase(
      ap,
      passphrase,
    );

/// @brief Sets the network prefix length.
/// @since_tizen 4.0
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Parameter prefix_len      The network prefix length. \n
/// In case of IPv4, it means netmask length \n
/// (also called a prefix, e.g. 8, 16, 24, 32)
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_prefix_length(
  wifi_manager_ap_h ap,
  int address_family,
  int prefix_len,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_prefix_length(
      ap,
      address_family,
      prefix_len,
    );

/// @brief Sets the proxy address.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Parameter address_family    The address family
/// Parameter proxy_address        The proxy address \n
/// If you set this value to @c NULL, then the existing value will be deleted.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_proxy_address(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Char> proxy_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_proxy_address(
      ap,
      address_family,
      proxy_address,
    );

/// @brief Sets the Proxy address.
/// @details If you set Proxy type to #WIFI_MANAGER_PROXY_TYPE_AUTO or #WIFI_MANAGER_PROXY_TYPE_MANUAL, then Proxy will be restored.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Parameter proxy_type        The type of proxy
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_proxy_type(
  wifi_manager_ap_h ap,
  int proxy_type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_proxy_type(
      ap,
      proxy_type,
    );

/// @brief Sets the Wi-Fi security mode.
/// @since_tizen 3.0
/// Parameter ap                The access point handle
/// Parameter type              The type of Wi-Fi security
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_security_type(
  wifi_manager_ap_h ap,
  int type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_security_type(
      ap,
      type,
    );

/// @brief Sets the subnet mask.
/// @since_tizen 3.0
/// Parameter ap              The access point handle
/// Parameter address_family  The address family
/// Parameter subnet_mask     The subnet mask; if you set this value to NULL, then the existing value will be deleted
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_update_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ap_set_subnet_mask(
  wifi_manager_ap_h ap,
  int address_family,
  ffi.Pointer<ffi.Char> subnet_mask,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ap_set_subnet_mask(
      ap,
      address_family,
      subnet_mask,
    );

/// @brief Starts BSSID scan asynchronously.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_bssid_scan_finished_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_bssid_scan(
  wifi_manager_h wifi,
  wifi_manager_bssid_scan_finished_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_bssid_scan(
      wifi,
      callback,
      user_data,
    );

/// @brief Stops ongoing WPS provisioning / disconnects from the connected access point.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi      The Wi-Fi handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_cancel_wps(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_cancel_wps(
      wifi,
    );

/// @brief Clones the access point configuration handle.
/// @since_tizen 3.0
/// @remarks You must release @a cloned_config using wifi_manager_config_destroy().
///
/// Parameter origin            The origin access point configuration handle
/// Output parameter cloned_config    The cloned access point configuration handle
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_destroy()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_clone(
  wifi_manager_config_h origin,
  ffi.Pointer<wifi_manager_config_h> cloned_config,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_clone(
      origin,
      cloned_config,
    );

/// @brief Gets access point configuration handle.
/// @since_tizen 3.0
/// @remarks You must release @a config using wifi_manager_config_destroy().
///
/// Parameter wifi              The Wi-Fi handle
/// Parameter name              The access point name
/// Parameter passphrase        The access point passphrase
/// Parameter security_type     The access point security type
/// Output parameter config           The access point configuration handle
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @pre This function needs a wifi_manager_initialize() call before use
/// @see wifi_manager_config_destroy()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_create(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Char> passphrase,
  int security_type,
  ffi.Pointer<wifi_manager_config_h> config,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_create(
      wifi,
      name,
      passphrase,
      security_type,
      config,
    );

/// @brief Destroys the access point configuration handle.
/// @since_tizen 3.0
///
/// Parameter config            The access point configuration handle
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_create()
/// @see wifi_manager_config_clone()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_destroy(
  wifi_manager_config_h config,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_destroy(
      config,
    );

/// @brief Gets configurations of an access point.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile
///
/// Parameter wifi              The Wi-Fi handle
/// Parameter callback          The callback to be called
/// Parameter user_data         The user data passed to the callback function
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @pre This function needs wifi_manager_initialize() before use.
/// @post This function invokes wifi_manager_config_list_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_foreach_configuration(
  wifi_manager_h wifi,
  wifi_manager_config_list_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_foreach_configuration(
      wifi,
      callback,
      user_data,
    );

/// @brief Gets access point dns address from configuration.
/// @since_tizen 5.0
/// @remarks The allowance of DNS address is @c 2.You must release @a dns_address using free().
///
/// Parameter config            The access point configuration handle
/// Parameter order             The order of DNS address; it starts from 1, which means first DNS address
/// Parameter address_family    The address family
/// Output parameter dns_address      The DNS address
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_dns_address(
  wifi_manager_config_h config,
  int order,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dns_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_dns_address(
      config,
      order,
      address_family,
      dns_address,
    );

/// @brief Gets access point dns config type from configuration.
/// @since_tizen 5.0
///
/// Parameter config		The access point configuration handle
/// Parameter address_family	The address family
/// Output parameter type		The type of dns configuration
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE			Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED		Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED	Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED		Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_dns_config_type(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_dns_config_type(
      config,
      address_family,
      type,
    );

/// @brief Gets access point anonymous identity from configuration.
/// @since_tizen 3.0
/// @remarks You must release @a anonymous_identity using free().
///
/// Parameter config                The access point configuration handle
/// Output parameter anonymous_identity   The anonymous identity of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_eap_anonymous_identity(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Pointer<ffi.Char>> anonymous_identity,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_eap_anonymous_identity(
      config,
      anonymous_identity,
    );

/// @brief Gets access point EAP auth type from configuration.
/// @since_tizen 3.0
///
/// Parameter config           The access point configuration handle
/// Output parameter eap_auth_type   The EAP auth type of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_eap_auth_type(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Int32> eap_auth_type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_eap_auth_type(
      config,
      eap_auth_type,
    );

/// @brief Gets access point cacert file from configuration.
/// @since_tizen 3.0
/// @remarks You must release @a ca_cert using free().
/// @remarks The mediastorage privilege %http://tizen.org/privilege/mediastorage is needed \n
/// if @a ca_cert is relevant to media storage.\n
/// The externalstorage privilege %http://tizen.org/privilege/externalstorage is needed \n
/// if @a ca_cert is relevant to external storage.
///
/// Parameter config           The access point configuration handle
/// Output parameter ca_cert         The certification authority(CA) certificates file of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_eap_ca_cert_file(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ca_cert,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_eap_ca_cert_file(
      config,
      ca_cert,
    );

/// @brief Gets access point client cert file from configuration.
/// @since_tizen 3.0
/// @remarks You must release @a client_cert using free().
///
/// Parameter config           The access point configuration handle
/// Output parameter client_cert     The certification authority(CA) certificates file of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_eap_client_cert_file(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Pointer<ffi.Char>> client_cert,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_eap_client_cert_file(
      config,
      client_cert,
    );

/// @brief Gets access point identity from configuration.
/// @since_tizen 3.0
/// @remarks You must release @a identity using free().
///
/// Parameter config           The access point configuration handle
/// Output parameter identity        The identity of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_eap_identity(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Pointer<ffi.Char>> identity,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_eap_identity(
      config,
      identity,
    );

/// @brief Gets the private key file of EAP.
/// @since_tizen 5.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_TLS.
/// You must release @a file using free().
///
/// Parameter config           The access point configuration handle
/// Output parameter file            The file path of private key
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_eap_private_key_file(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Pointer<ffi.Char>> file,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_eap_private_key_file(
      config,
      file,
    );

/// @brief Gets access point subject match from configuration.
/// @since_tizen 3.0
/// @remarks You must release @a subject_match using free().
///
/// Parameter config           The access point configuration handle
/// Output parameter subject_match   The subject match of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_eap_subject_match(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Pointer<ffi.Char>> subject_match,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_eap_subject_match(
      config,
      subject_match,
    );

/// @brief Gets access point EAP type from configuration.
/// @since_tizen 3.0
///
/// Parameter config           The access point configuration handle
/// Output parameter eap_type        The EAP type of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_eap_type(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Int32> eap_type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_eap_type(
      config,
      eap_type,
    );

/// @brief Gets access point gateway address from configuration.
/// @since_tizen 5.0
/// @remarks You must release @a gateway_address using free().
///
/// Parameter config            The access point configuration handle
/// Parameter address_family	The address family
/// Output parameter gateway_address	The gateway address; this value is for default address
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_gateway_address(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> gateway_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_gateway_address(
      config,
      address_family,
      gateway_address,
    );

/// @brief Gets the hidden property of access point from the configuration.
/// @since_tizen 3.0
///
/// Parameter config            The access point configuration handle
/// Output parameter is_hidden        The hidden property of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_hidden_ap_property(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Bool> is_hidden,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_hidden_ap_property(
      config,
      is_hidden,
    );

/// @brief Gets access point IP address from configuration.
/// @since_tizen 5.0
/// @remarks You must release @a ip_address using free().
///
/// Parameter config		The access point configuration handle
/// Parameter address_family	The address family
/// Output parameter ip_address	The IP address; this value is for default address
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_ip_address(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_ip_address(
      config,
      address_family,
      ip_address,
    );

/// @brief Gets access point IP config type from configuration.
/// @since_tizen 5.0
///
/// Parameter config		The access point configuration handle
/// Parameter address_family	The address family
/// Output parameter type		The type of IP configuration
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE			Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED		Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED	Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED		Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_ip_config_type(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_ip_config_type(
      config,
      address_family,
      type,
    );

/// @brief Gets the name of access point from configuration.
/// @since_tizen 3.0
/// @remarks You must release @a name using free().
///
/// Parameter config            The access point configuration handle
/// Output parameter name             The name of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_name(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_name(
      config,
      name,
    );

/// @brief Gets the network prefix length from configuration.
/// @since_tizen 5.0
///
/// Parameter config          The access point configuration handle
/// Parameter address_family  The address family
/// Output parameter prefix_len     The network prefix length. \n
/// In case of IPv4, it means netmask length \n
/// (also called a prefix, e.g. 8, 16, 24, 32)
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_prefix_length(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Int> prefix_len,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_prefix_length(
      config,
      address_family,
      prefix_len,
    );

/// @brief Gets the proxy address of access point from configuration.
/// @since_tizen 3.0
/// @remarks You must release @a proxy_address using free().
///
/// Parameter config            The access point configuration handle
/// Output parameter address_family   The address family
/// Output parameter proxy_address    The proxy address
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_proxy_address(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Int32> address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> proxy_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_proxy_address(
      config,
      address_family,
      proxy_address,
    );

/// @brief Gets the security type of access point from configuration.
/// @since_tizen 3.0
///
/// Parameter config            The access point configuration handle
/// Output parameter security_type    The security type of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_security_type(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Int32> security_type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_security_type(
      config,
      security_type,
    );

/// @brief Gets access point subnet mask from configuration.
/// @since_tizen 5.0
/// @remarks You must release @a subnet_mask using free().
///
/// Parameter config            The access point configuration handle
/// Parameter address_family	The address family
/// Output parameter subnet_mask	The subnet mask
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED  Address family not supported
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_get_subnet_mask(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Pointer<ffi.Char>> subnet_mask,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_get_subnet_mask(
      config,
      address_family,
      subnet_mask,
    );

/// @brief Removes Wi-Fi configuration of access point.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile
///
/// Parameter wifi              The Wi-Fi handle
/// Parameter config            The access point configuration handle
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_create()
/// @see wifi_manager_config_foreach_configuration()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_remove(
  wifi_manager_h wifi,
  wifi_manager_config_h config,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_remove(
      wifi,
      config,
    );

/// @brief Saves Wi-Fi configuration of access point.
/// @details When a configuration is changed, these changes will be not applied to the Connection Manager immediately.\n
/// When you call this function, your changes affect the Connection Manager and the existing configuration is updated.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile
///
/// Parameter wifi              The Wi-Fi handle
/// Parameter config            The access point configuration handle
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_create()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_save(
  wifi_manager_h wifi,
  wifi_manager_config_h config,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_save(
      wifi,
      config,
    );

/// @brief Sets access point dns address to configuration.
/// @since_tizen 5.0
///
/// Parameter config            The access point configuration handle
/// Parameter order             The order of DNS address \n
/// It starts from 1, which means first DNS address.
/// Parameter address_family    The address family
/// Parameter dns_address	The dns address; if you set this value to NULL, then
/// the existing value will be deleted.
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED Not supported address family
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_dns_address(
  wifi_manager_config_h config,
  int order,
  int address_family,
  ffi.Pointer<ffi.Char> dns_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_dns_address(
      config,
      order,
      address_family,
      dns_address,
    );

/// @brief Sets access point dns config type to configuration.
/// @since_tizen 5.0
///
/// Parameter config            The access point configuration handle
/// Parameter address_family    The address family
/// Parameter type		The type of DNS configuration
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED Not supported address family
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_dns_config_type(
  wifi_manager_config_h config,
  int address_family,
  int type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_dns_config_type(
      config,
      address_family,
      type,
    );

/// @brief Sets access point anonymous identity to configuration.
/// @since_tizen 3.0
///
/// Parameter config                The access point configuration handle
/// Parameter anonymous_identity    The anonymous identity
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_eap_anonymous_identity(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Char> anonymous_identity,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_eap_anonymous_identity(
      config,
      anonymous_identity,
    );

/// @brief Sets access point EAP auth type to configuration.
/// @since_tizen 3.0
///
/// Parameter config           The access point configuration handle
/// Parameter eap_auth_type    The EAP auth type
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_eap_auth_type(
  wifi_manager_config_h config,
  int eap_auth_type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_eap_auth_type(
      config,
      eap_auth_type,
    );

/// @brief Sets access point cacert file to configuration.
/// @since_tizen 3.0
/// @remarks The mediastorage privilege %http://tizen.org/privilege/mediastorage is needed \n
/// if @a ca_cert is relevant to media storage.\n
/// The externalstorage privilege %http://tizen.org/privilege/externalstorage is needed \n
/// if @a ca_cert is relevant to external storage.
///
/// Parameter config           The access point configuration handle
/// Parameter ca_cert          The certification authority(CA) certificates file of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_eap_ca_cert_file(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Char> ca_cert,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_eap_ca_cert_file(
      config,
      ca_cert,
    );

/// @brief Sets access point client cert file to configuration.
/// @since_tizen 3.0
///
/// Parameter config           The access point configuration handle
/// Parameter private_key      The private key file
/// Parameter client_cert      The certification authority(CA) certificates file of access point
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_eap_client_cert_file(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Char> private_key,
  ffi.Pointer<ffi.Char> client_cert,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_eap_client_cert_file(
      config,
      private_key,
      client_cert,
    );

/// @brief Sets access point identity to configuration.
/// @since_tizen 3.0
///
/// Parameter config           The access point configuration handle
/// Parameter identity         The identity
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_eap_identity(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Char> identity,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_eap_identity(
      config,
      identity,
    );

/// @brief Sets the private key information of EAP.
/// @since_tizen 5.0
/// @remarks This function is valid only if the EAP type is #WIFI_MANAGER_EAP_TYPE_TLS.
///
/// Parameter config           The access point configuration handle
/// Parameter file             The file path of private key
/// Parameter password         The password
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_eap_private_key_info(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Char> file,
  ffi.Pointer<ffi.Char> password,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_eap_private_key_info(
      config,
      file,
      password,
    );

/// @brief Sets access point subject match to configuration.
/// @since_tizen 3.0
///
/// Parameter config           The access point configuration handle
/// Parameter subject_match    The subject match
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_eap_subject_match(
  wifi_manager_config_h config,
  ffi.Pointer<ffi.Char> subject_match,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_eap_subject_match(
      config,
      subject_match,
    );

/// @brief Sets access point EAP type to configuration.
/// @since_tizen 3.0
///
/// Parameter config           The access point configuration handle
/// Parameter eap_type         The EAP type
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_eap_type(
  wifi_manager_config_h config,
  int eap_type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_eap_type(
      config,
      eap_type,
    );

/// @brief Sets access point gateway address to configuration.
/// @since_tizen 5.0
///
/// Parameter config            The access point configuration handle
/// Parameter address_family    The address family
/// Parameter gateway_address	The gateway address; if you set this value to NULL, then
/// the existing value will be deleted.
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED Not supported address family
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_gateway_address(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Char> gateway_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_gateway_address(
      config,
      address_family,
      gateway_address,
    );

/// @brief Sets the hidden property of access point from the configuration.
/// @since_tizen 3.0
///
/// Parameter config            The access point configuration handle
/// Parameter is_hidden         The new value of the hidden property
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_hidden_ap_property(
  wifi_manager_config_h config,
  bool is_hidden,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_hidden_ap_property(
      config,
      is_hidden,
    );

/// @brief Sets access point IP address to configuration.
/// @since_tizen 5.0
///
/// Parameter config			The access point configuration handle
/// Parameter address_family	The address family
/// Parameter ip_address		The IP address; if you set this value to NULL, then
/// the existing value will be deleted.
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED Not supported address family
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_ip_address(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Char> ip_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_ip_address(
      config,
      address_family,
      ip_address,
    );

/// @brief Sets access point IP config type to configuration.
/// @since_tizen 5.0
///
/// Parameter config            The access point configuration handle
/// Parameter address_family    The address family
/// Parameter type		The type of IP configuration
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED Not supported address family
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_ip_config_type(
  wifi_manager_config_h config,
  int address_family,
  int type,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_ip_config_type(
      config,
      address_family,
      type,
    );

/// @brief Sets the network prefix length to configuration.
/// @since_tizen 5.0
///
/// Parameter config          The access point configuration handle
/// Parameter address_family  The address family
/// Parameter prefix_len      The network prefix length. \n
/// In case of IPv4, it means netmask length \n
/// (also called a prefix, e.g. 8, 16, 24, 32)
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED Not supported address family
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_prefix_length(
  wifi_manager_config_h config,
  int address_family,
  int prefix_len,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_prefix_length(
      config,
      address_family,
      prefix_len,
    );

/// @brief Sets access point proxy address configuration.
/// @since_tizen 3.0
///
/// Parameter config            The access point configuration handle
/// Parameter address_family    The address family
/// Parameter proxy_address     The proxy address
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED Not supported address family
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_proxy_address(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Char> proxy_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_proxy_address(
      config,
      address_family,
      proxy_address,
    );

/// @brief Sets access point subnet mask to configuration.
/// @since_tizen 5.0
///
/// Parameter config            The access point configuration handle
/// Parameter address_family    The address family
/// Parameter subnet_mask	The subnet mask; if you set this value to NULL, then
/// the existing value will be deleted.
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_ADDRESS_FAMILY_NOT_SUPPORTED Not supported address family
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_config_save()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_config_set_subnet_mask(
  wifi_manager_config_h config,
  int address_family,
  ffi.Pointer<ffi.Char> subnet_mask,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_config_set_subnet_mask(
      config,
      address_family,
      subnet_mask,
    );

/// @brief Connects to the access point asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter ap              The access point handle
/// Parameter callback        The callback function to be called \n
/// This can be @c NULL if you don't want to get the notification.
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOW_IN_PROGRESS      Now in progress
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_connected_cb().
/// @see wifi_manager_connected_cb()
/// @see wifi_manager_connect_by_wps_pbc()
/// @see wifi_manager_connect_by_wps_pin()
/// @see wifi_manager_disconnect()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_connect(
  wifi_manager_h wifi,
  wifi_manager_ap_h ap,
  wifi_manager_connected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_connect(
      wifi,
      ap,
      callback,
      user_data,
    );

/// @brief Connects to the access point with WPS PBC asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter ap              The access point handle
/// Parameter callback        The callback function to be called \n
/// This can be NULL if you don't want to get the notification.
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOW_IN_PROGRESS      Now in progress
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_connected_cb().
/// @see wifi_manager_connected_cb()
/// @see wifi_manager_connect()
/// @see wifi_manager_disconnect()
/// @see wifi_manager_ap_is_wps_supported()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_connect_by_wps_pbc(
  wifi_manager_h wifi,
  wifi_manager_ap_h ap,
  wifi_manager_connected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_connect_by_wps_pbc(
      wifi,
      ap,
      callback,
      user_data,
    );

/// @brief Connects to the access point with WPS PBC without entering SSID.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get \n
/// %http://tizen.org/privilege/network.profile
/// @remarks This function needs all listed privileges.
/// Parameter wifi      The Wi-Fi handle
/// Parameter callback  The callback function to be called \n
/// This can be NULL if you don't want to get the notification.
/// Parameter user_data The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOW_IN_PROGRESS      Now in progress
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_connected_cb().
/// @see wifi_manager_connected_cb()
/// @see wifi_manager_connect()
/// @see wifi_manager_disconnect()
/// @see wifi_manager_ap_is_wps_supported()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_connect_by_wps_pbc_without_ssid(
  wifi_manager_h wifi,
  wifi_manager_connected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_connect_by_wps_pbc_without_ssid(
      wifi,
      callback,
      user_data,
    );

/// @brief Connects to the access point with WPS PIN asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter ap              The access point handle
/// Parameter pin             The WPS PIN is a non-NULL string with length greater than 0 and less than or equal to 8
/// Parameter callback        The callback function to be called (this can be NULL if you don't want to get the notification)
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOW_IN_PROGRESS      Now in progress
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_connected_cb().
/// @see wifi_manager_connected_cb()
/// @see wifi_manager_connect()
/// @see wifi_manager_disconnect()
/// @see wifi_manager_ap_is_wps_supported()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_connect_by_wps_pin(
  wifi_manager_h wifi,
  wifi_manager_ap_h ap,
  ffi.Pointer<ffi.Char> pin,
  wifi_manager_connected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_connect_by_wps_pin(
      wifi,
      ap,
      pin,
      callback,
      user_data,
    );

/// @brief Connects to the access point with WPS PIN without entering SSID.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get \n
/// %http://tizen.org/privilege/network.profile
/// @remarks This function needs all listed privileges.
/// Parameter wifi      The Wi-Fi handle
/// Parameter pin       The WPS PIN, a non-NULL string with length greater \n
/// than 0 and less than or equal to 8
/// Parameter callback  The callback function to be called \n
/// This can be NULL if you don't want to get the notification.
/// Parameter user_data The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOW_IN_PROGRESS      Now in progress
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_connected_cb().
/// @see wifi_manager_connected_cb()
/// @see wifi_manager_connect()
/// @see wifi_manager_disconnect()
/// @see wifi_manager_ap_is_wps_supported()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_connect_by_wps_pin_without_ssid(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> pin,
  wifi_manager_connected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_connect_by_wps_pin_without_ssid(
      wifi,
      pin,
      callback,
      user_data,
    );

/// @brief Connects to the hidden AP, asynchronously.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get \n
/// %http://tizen.org/privilege/network.profile
/// @remarks This function needs all listed privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter essid           The ESSID of the hidden AP
/// Parameter sec_type        The security type of the hidden AP
/// Parameter passphrase      The passphrase of the hidden AP
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @pre This function needs wifi_manager_scan() before use.
/// @post This function invokes wifi_manager_connected_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_connect_hidden_ap(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> essid,
  int sec_type,
  ffi.Pointer<ffi.Char> passphrase,
  wifi_manager_connected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_connect_hidden_ap(
      wifi,
      essid,
      sec_type,
      passphrase,
      callback,
      user_data,
    );

/// @brief Deactivates Wi-Fi asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi          The Wi-Fi handle
/// Parameter callback      The callback function to be called \n
/// This can be @c NULL if you don't want to get the notification.
/// Parameter user_data     The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post wifi_manager_deactivated_cb() will be invoked.
/// @see wifi_manager_deactivated_cb()
/// @see wifi_manager_activate()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_deactivate(
  wifi_manager_h wifi,
  wifi_manager_deactivated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_deactivate(
      wifi,
      callback,
      user_data,
    );

/// @brief Deinitializes Wi-Fi.
/// @since_tizen 3.0
/// Parameter wifi        The Wi-Fi handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE               Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION  Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED   Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_deinitialize(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_deinitialize(
      wifi,
    );

/// @brief Disconnects to the access point asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter ap              The access point handle
/// Parameter callback        The callback function to be called \n
/// This can be @c NULL if you don't want to get the notification.
/// Parameter user_data        The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_disconnected_cb().
/// @see wifi_manager_disconnected_cb()
/// @see wifi_manager_connect_by_wps_pbc()
/// @see wifi_manager_connect_by_wps_pin()
/// @see wifi_manager_connect()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_disconnect(
  wifi_manager_h wifi,
  wifi_manager_ap_h ap,
  wifi_manager_disconnected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_disconnect(
      wifi,
      ap,
      callback,
      user_data,
    );

/// @brief Gets the result of the scan.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_found_ap_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_foreach_found_ap(
  wifi_manager_h wifi,
  wifi_manager_found_ap_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_foreach_found_ap(
      wifi,
      callback,
      user_data,
    );

/// @brief Gets the BSSID list.
/// @since_tizen 5.0
/// Parameter ap  The access point handle
/// Parameter callback  The callback to be called
/// Parameter user_data The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_found_bssid_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_foreach_found_bssid(
  wifi_manager_ap_h ap,
  wifi_manager_found_bssid_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_foreach_found_bssid(
      ap,
      callback,
      user_data,
    );

/// @brief Gets the result of the BSSID scan (i.e. BSSID, ESSID & RSSI).
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_found_ap_cb().
/// @see wifi_manager_scan()
/// @see wifi_manager_scan_specific_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_foreach_found_bssid_ap(
  wifi_manager_h wifi,
  wifi_manager_found_ap_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_foreach_found_bssid_ap(
      wifi,
      callback,
      user_data,
    );

/// @brief Gets the result of specific AP scan.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_found_ap_cb().
/// @see wifi_manager_scan_specific_ap()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_foreach_found_specific_ap(
  wifi_manager_h wifi,
  wifi_manager_found_ap_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_foreach_found_specific_ap(
      wifi,
      callback,
      user_data,
    );

/// @brief Deletes the information of a stored access point and disconnects from it if it was connected to.
/// @details If an AP is connected to, then connection information will be stored.
/// This information is used when a connection to that AP is established automatically.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter ap              The access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_forget_ap(
  wifi_manager_h wifi,
  wifi_manager_ap_h ap,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_forget_ap(
      wifi,
      ap,
    );

/// @brief Deletes stored access point's information and disconnects from it if connected, asynchronously.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter ap              The access point handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_forget_ap_finished_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_forget_ap_async(
  wifi_manager_h wifi,
  wifi_manager_ap_h ap,
  wifi_manager_forget_ap_finished_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_forget_ap_async(
      wifi,
      ap,
      callback,
      user_data,
    );

/// @brief Gets the handle of the connected access point.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a ap using wifi_manager_ap_destroy().
/// Parameter wifi            The Wi-Fi handle
/// Output parameter ap             The access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NO_CONNECTION        There is no connected AP
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_connected_ap(
  wifi_manager_h wifi,
  ffi.Pointer<wifi_manager_ap_h> ap,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_connected_ap(
      wifi,
      ap,
    );

/// @brief Gets the connection state.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi                The Wi-Fi handle
/// Output parameter connection_state   The connection state
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_connection_state(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Int32> connection_state,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_connection_state(
      wifi,
      connection_state,
    );

/// @brief Gets the state of the IP conflict.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi          The Wi-Fi handle
/// Output parameter state        The current state of IP conflict
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_ip_conflict_state(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_ip_conflict_state(
      wifi,
      state,
    );

/// @brief Gets the local MAC address.
/// @since_tizen 3.0
/// @remarks You must release @a mac_address using free().
/// Parameter wifi          The Wi-Fi handle
/// Output parameter mac_address  The MAC address
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_mac_address(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mac_address,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_mac_address(
      wifi,
      mac_address,
    );

/// @brief Gets the Wi-Fi Module state.
/// @since_tizen 4.0
/// Parameter wifi            The Wi-Fi handle
/// Output parameter state          The Wi-Fi Module state
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_module_state(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_module_state(
      wifi,
      state,
    );

/// @brief Gets the name of the network interface.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a name using free().
/// Parameter wifi        The Wi-Fi handle
/// Output parameter name       The name of network interface
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_network_interface_name(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_network_interface_name(
      wifi,
      name,
    );

/// @brief Gets the Wi-Fi scan state.
/// @since_tizen 4.0
/// Parameter wifi            The Wi-Fi handle
/// Parameter scan_state      The Wi-Fi scan state
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_scan_state(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Int32> scan_state,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_scan_state(
      wifi,
      scan_state,
    );

/// @brief Gets the Wi-Fi Vendor Specific Information Elements (VSIE) from a specific frame.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks @a vsie_str must be released with free().
///
/// Parameter wifi           The Wi-Fi handle
/// Parameter frame_id       The frame ID for getting VSIE
/// Output parameter vsie_str      The VSIE data
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @pre Wi-Fi service must be activated by wifi_manager_activate()
/// and VSIE for a specific frame must be set with wifi_manager_add_vsie().
/// @see wifi_manager_activate()
/// @see wifi_manager_remove_vsie()
/// @see wifi_manager_add_vsie()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_vsie(
  wifi_manager_h wifi,
  int frame_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vsie_str,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_vsie(
      wifi,
      frame_id,
      vsie_str,
    );

/// @brief Gets the WPS generated PIN code.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a wps_pin using free().
/// Parameter wifi            The Wi-Fi handle
/// Output parameter wps_pin        The WPS PIN
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_get_wps_generated_pin(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> wps_pin,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_get_wps_generated_pin(
      wifi,
      wps_pin,
    );

/// @brief Initializes Wi-Fi.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a wifi using wifi_manager_deinitialize().
/// Output parameter wifi        The Wi-Fi handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_ALREADY_INITIALIZED  Already initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_initialize(
  ffi.Pointer<wifi_manager_h> wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_initialize(
      wifi,
    );

/// @brief Checks whether IP conflict detection is enabled.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi        The Wi-Fi handle
/// Output parameter state     @c true if IP conflict detection is enabled,
/// otherwise @c false if IP conflict detection is disabled.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_ip_conflict_detect_is_enabled(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Bool> state,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_ip_conflict_detect_is_enabled(
      wifi,
      state,
    );

/// @brief Gets whether 5Ghz Wi-Fi band is supported.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi          The Wi-Fi handle
/// Output parameter supported   @c true if 5Ghz Wi-Fi band is supported,
/// otherwise   @c false if 5Ghz Wi-Fi band is not supported.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_is_5ghz_band_supported(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_is_5ghz_band_supported(
      wifi,
      supported,
    );

/// @brief Checks whether Wi-Fi is activated.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi        The Wi-Fi handle
/// Output parameter activated  @c true if Wi-Fi is activated,
/// otherwise @c false if Wi-Fi is not activated.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_is_activated(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Bool> activated,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_is_activated(
      wifi,
      activated,
    );

/// @brief Removes the Wi-Fi Vendor Specific Information Element (VSIE) from specific frame.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
/// @remarks @a vsie_str for @a frame_id will be in effect until Wi-Fi is deactivated.
///
/// Parameter wifi           The wifi handle
/// Parameter frame_id       The frame ID for removing VSIE
/// Parameter vsie_str       The VSIE data
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @pre Wi-Fi service must be activated by wifi_manager_activate()
/// and VSIE for a specific frame must be set with wifi_manager_add_vsie().
/// @see wifi_manager_activate()
/// @see wifi_manager_get_vsie()
/// @see wifi_manager_add_vsie()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_remove_vsie(
  wifi_manager_h wifi,
  int frame_id,
  ffi.Pointer<ffi.Char> vsie_str,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_remove_vsie(
      wifi,
      frame_id,
      vsie_str,
    );

/// @brief Starts scan asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_scan_finished_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_scan(
  wifi_manager_h wifi,
  wifi_manager_scan_finished_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_scan(
      wifi,
      callback,
      user_data,
    );

/// @brief Starts specific AP scan, asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter essid           The essid of specific AP
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_scan_finished_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_scan_specific_ap(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> essid,
  wifi_manager_scan_finished_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_scan_specific_ap(
      wifi,
      essid,
      callback,
      user_data,
    );

/// @brief Registers the callback called when the background scan is finished.
/// @since_tizen 3.0
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_set_background_scan_cb(
  wifi_manager_h wifi,
  wifi_manager_scan_finished_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_set_background_scan_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Registers the callback called when the connection state is changed.
/// @since_tizen 3.0
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_set_connection_state_changed_cb(
  wifi_manager_h wifi,
  wifi_manager_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_set_connection_state_changed_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Registers the callback called when the device state is changed.
/// @since_tizen 3.0
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_set_device_state_changed_cb(
  wifi_manager_h wifi,
  wifi_manager_device_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_set_device_state_changed_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Registers the callback called when IP conflict state is changed.
/// @since_tizen 5.0
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_set_ip_conflict_cb(
  wifi_manager_h wifi,
  wifi_manager_ip_conflict_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_set_ip_conflict_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Enables or disables IP conflict detection.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
///
/// Parameter wifi            The Wi-Fi handle
/// Parameter detect          True or false boolean to enable or disable
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_set_ip_conflict_detect_enable(
  wifi_manager_h wifi,
  bool detect,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_set_ip_conflict_detect_enable(
      wifi,
      detect,
    );

/// @brief Registers a callback called when the Wi-Fi Module state is changed.
/// @since_tizen 4.0
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_module_state_changed_cb()
/// @see wifi_manager_unset_module_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_set_module_state_changed_cb(
  wifi_manager_h wifi,
  wifi_manager_module_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_set_module_state_changed_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Registers callback called when the RSSI of connected Wi-Fi is changed.
/// @since_tizen 3.0
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_set_rssi_level_changed_cb(
  wifi_manager_h wifi,
  wifi_manager_rssi_level_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_set_rssi_level_changed_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Registers the callback called when the scanning state is changed.
/// @since_tizen 4.0
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_set_scan_state_changed_cb(
  wifi_manager_h wifi,
  wifi_manager_scan_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_set_scan_state_changed_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Starts multi SSID and multi channel specific scan, asynchronously.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter specific_scan   The Wi-Fi specific AP scan handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
/// @return 0 on success, otherwise negative error value.
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @post This function invokes wifi_manager_scan_finished_cb().
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_specific_ap_start_multi_scan(
  wifi_manager_h wifi,
  wifi_manager_specific_scan_h specific_scan,
  wifi_manager_scan_finished_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_specific_ap_start_multi_scan(
      wifi,
      specific_scan,
      callback,
      user_data,
    );

/// @brief Creates a Wi-Fi specific AP scan handle.
/// @since_tizen 4.0
/// @remarks You must release @a specific_scan using wifi_manager_specific_scan_destroy().
/// Parameter wifi              The Wi-Fi handle
/// Output parameter specific_scan    The Wi-Fi specific AP scan handle
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @pre This function needs a wifi_manager_initialize() call before use.
/// @see wifi_manager_specific_scan_destroy()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_specific_scan_create(
  wifi_manager_h wifi,
  ffi.Pointer<wifi_manager_specific_scan_h> specific_scan,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_specific_scan_create(
      wifi,
      specific_scan,
    );

/// @brief Destroys a Wi-Fi specific AP scan handle.
/// @since_tizen 4.0
/// Parameter wifi              The Wi-Fi handle
/// Parameter specific_scan     The Wi-Fi specific AP scan handle
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @pre This function needs a wifi_manager_initialize() call before use.
/// @see wifi_manager_specific_scan_create()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_specific_scan_destroy(
  wifi_manager_h wifi,
  wifi_manager_specific_scan_h specific_scan,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_specific_scan_destroy(
      wifi,
      specific_scan,
    );

/// @brief Gets the maximum number of SSIDs supported by the Wi-Fi chipset for the scan operation.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// Parameter wifi		The Wi-Fi handle
/// Output parameter max_scan_ssids	The maximum number of SSIDs supported by the Wi-Fi \n
/// chipset for the scan operation.
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_specific_scan_set_ssid()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_specific_scan_get_max_ssids(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Int> max_scan_ssids,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_specific_scan_get_max_ssids(
      wifi,
      max_scan_ssids,
    );

/// @brief Sets the channel frequency of a specific AP scan.
/// @since_tizen 4.0
/// Parameter specific_scan     The Wi-Fi specific AP scan handle
/// Parameter freq              The channel frequency of specific AP scan
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_specific_scan_set_freq(
  wifi_manager_specific_scan_h specific_scan,
  int freq,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_specific_scan_set_freq(
      specific_scan,
      freq,
    );

/// @brief Sets the SSID of a specific AP scan.
/// @since_tizen 4.0
/// Parameter specific_scan     The Wi-Fi specific AP scan handle
/// Parameter essid             The SSID of specific AP scan
///
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_specific_scan_get_max_ssids()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_specific_scan_set_ssid(
  wifi_manager_specific_scan_h specific_scan,
  ffi.Pointer<ffi.Char> essid,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_specific_scan_set_ssid(
      specific_scan,
      essid,
    );

/// @brief Connects to a peer device.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
///
/// Parameter wifi             The Wi-Fi handle
/// Parameter peer_mac_addr    The MAC address of the peer device to be connected
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_connect(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> peer_mac_addr,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_connect(
      wifi,
      peer_mac_addr,
    );

/// @brief Disables a TDLS channel switching request.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
///
/// Parameter wifi            The Wi-Fi handle
/// Parameter peer_mac_addr   The MAC address of the connected TDLS peer
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_disable_channel_switching(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> peer_mac_addr,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_disable_channel_switching(
      wifi,
      peer_mac_addr,
    );

/// @brief Disconnects the connected peer.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
///
/// Parameter wifi                The Wi-Fi handle
/// Parameter peer_mac_addr       The MAC address of the connected peer
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_disconnect(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> peer_mac_addr,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_disconnect(
      wifi,
      peer_mac_addr,
    );

/// @brief Enables a TDLS channel switching request.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
///
/// Parameter wifi            The Wi-Fi handle
/// Parameter peer_mac_addr   The MAC address of the connected TDLS peer
/// Parameter freq            The new frequency [MHz]
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_enable_channel_switching(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> peer_mac_addr,
  int freq,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_enable_channel_switching(
      wifi,
      peer_mac_addr,
      freq,
    );

/// @brief Gets Peer Mac address of Connected peer.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
///
/// @remarks The @a peer_mac_addr should be freed using free().
/// Parameter wifi                The Wi-Fi handle
/// Output parameter peer_mac_addr      The MAC address of the connected peer
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NO_CONNECTION        No active TDLS Connection
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_get_connected_peer(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Pointer<ffi.Char>> peer_mac_addr,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_get_connected_peer(
      wifi,
      peer_mac_addr,
    );

/// @brief Registers the callback called when a TDLS device is found.
/// @since_tizen 4.0
///
/// Parameter wifi             The Wi-Fi handle
/// Parameter callback         The callback function to be called
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_set_discovered_cb(
  wifi_manager_h wifi,
  wifi_manager_tdls_discovered_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_set_discovered_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Registers the callback called when TDLS state is changed.
/// @since_tizen 3.0
///
/// Parameter wifi            The Wi-Fi handle
/// Parameter callback        The callback function to be called
/// Parameter user_data       The user data passed to the callback function
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_set_state_changed_cb(
  wifi_manager_h wifi,
  wifi_manager_tdls_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_set_state_changed_cb(
      wifi,
      callback,
      user_data,
    );

/// @brief Discovers devices that support TDLS.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.set
///
/// Parameter wifi             The Wi-Fi handle
/// Parameter peer_mac_addr    The MAC address (e.g., ff:ff:ff:ff:ff:ff,
/// AA:BB:CC:DD:EE:FF) of the peer to be discovered
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_start_discovery(
  wifi_manager_h wifi,
  ffi.Pointer<ffi.Char> peer_mac_addr,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_start_discovery(
      wifi,
      peer_mac_addr,
    );

/// @brief Unregisters the callback called when TDLS device is found.
/// @since_tizen 4.0
///
/// Parameter wifi             The Wi-Fi handle
///
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_unset_discovered_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_unset_discovered_cb(
      wifi,
    );

/// @brief Unregisters the callback called when TDLS state is changed.
/// @since_tizen 3.0
///
/// Parameter wifi            The Wi-Fi handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_tdls_unset_state_changed_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_tdls_unset_state_changed_cb(
      wifi,
    );

/// @brief Unregisters the callback called when the scan is finished.
/// @since_tizen 3.0
/// Parameter wifi            The Wi-Fi handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_unset_background_scan_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_unset_background_scan_cb(
      wifi,
    );

/// @brief Unregisters the callback called when the connection state is changed.
/// @since_tizen 3.0
/// Parameter wifi            The Wi-Fi handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_unset_connection_state_changed_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_unset_connection_state_changed_cb(
      wifi,
    );

/// @brief Unregisters the callback called when the device state is changed.
/// @since_tizen 3.0
/// Parameter wifi            The Wi-Fi handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_unset_device_state_changed_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_unset_device_state_changed_cb(
      wifi,
    );

/// @brief Unregisters the callback called when IP conflict state is changed.
/// @since_tizen 5.0
/// Parameter wifi            The Wi-Fi handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_unset_ip_conflict_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_unset_ip_conflict_cb(
      wifi,
    );

/// @brief Unregisters the callback called when the Wi-Fi Module state is changed.
/// @since_tizen 4.0
/// Parameter wifi            The Wi-Fi handle
/// @return @c 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_OPERATION_FAILED     Operation failed
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
/// @see wifi_manager_module_state_changed_cb()
/// @see wifi_manager_set_module_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_unset_module_state_changed_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_unset_module_state_changed_cb(
      wifi,
    );

/// @brief Unregisters callback called when the RSSI of connected Wi-Fi is changed.
/// @since_tizen 3.0
/// Parameter wifi            The Wi-Fi handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_unset_rssi_level_changed_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_unset_rssi_level_changed_cb(
      wifi,
    );

/// @brief Unregisters the callback called when the scanning state is changed.
/// @since_tizen 4.0
/// Parameter wifi            The Wi-Fi handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_unset_scan_state_changed_cb(
  wifi_manager_h wifi,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_unset_scan_state_changed_cb(
      wifi,
    );

/// @brief Updates an existing AP.
/// @details When a AP is changed, these changes will be not applied to the Connection Manager immediately.
/// When you call this function, your changes affect the Connection Manager and the existing AP is updated.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.profile \n
/// %http://tizen.org/privilege/network.get
/// @remarks This function needs both privileges.
/// Parameter wifi            The Wi-Fi handle
/// Parameter ap              The access point handle
/// @return 0 on success, otherwise negative error value
/// @retval #WIFI_MANAGER_ERROR_NONE                 Successful
/// @retval #WIFI_MANAGER_ERROR_NOT_INITIALIZED      Not initialized
/// @retval #WIFI_MANAGER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #WIFI_MANAGER_ERROR_INVALID_OPERATION    Invalid operation
/// @retval #WIFI_MANAGER_ERROR_PERMISSION_DENIED    Permission Denied
/// @retval #WIFI_MANAGER_ERROR_NOT_SUPPORTED        Not supported
///
/// Module getter: `tizenCapiNetworkWifiManager`.
int wifi_manager_update_ap(
  wifi_manager_h wifi,
  wifi_manager_ap_h ap,
) =>
    tizenCapiNetworkWifiManager.wifi_manager_update_ap(
      wifi,
      ap,
    );

