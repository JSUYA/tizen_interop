// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenWifiDirect`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libwifi-direct.so.1`.
///
/// Network / Wi-Fi Direct.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_wifi_direct;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Activates the Wi-Fi Direct service, asynchronously.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @retval #WIFI_DIRECT_ERROR_WIFI_USED             Wi-Fi is being used
/// @retval #WIFI_DIRECT_ERROR_MOBILE_AP_USED        Mobile AP is being used
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @post wifi_direct_device_state_changed_cb() will be invoked.
/// @see wifi_direct_initialize()
/// @see wifi_direct_deactivate()
/// @see wifi_direct_device_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to activate Wi-Fi Direct\n");
/// return -1;
/// }
///
/// printf("Wi-Fi Direct Activated\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// function();
/// wifi_direct_deactivate(); // deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_activate() =>
    tizenWifiDirect.wifi_direct_activate();

/// @brief Sets the WPS config PBC as preferred method for connection.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_activate_pushbutton(); // Activate WPS PBC Push Button
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to activate push button\n");
/// return -1;
/// }
///
/// printf("Push button Activated successfully\n");
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_activate_pushbutton() =>
    tizenWifiDirect.wifi_direct_activate_pushbutton();

/// @brief Adds the Wi-Fi Vendor Specific Information Element (VSIE) to specific frame type.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a vsie_str for @a frame_id will be in effect until Wi-Fi Direct is deactivated.
/// Parameter frame_id frame ID for setting VSIE
/// Parameter vsie_str VSIE data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_remove_vsie()
/// @see wifi_direct_get_vsie()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char *vsie = NULL;
/// unsigned int frame_id;
///
/// printf("Input the frame id\n");
/// scanf("%2u", &frame_id);
///
/// printf("Input the vsie\n");
/// scanf("%100ms", &vsie);
///
/// ret = wifi_direct_add_vsie(frame_id, vsie); // add vsie
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to add vsie\n");
/// return -1;
/// }
///
/// printf("vsie added success");
/// free(vsie);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_add_vsie(
  int frame_id,
  ffi.Pointer<ffi.Char> vsie_str,
) =>
    tizenWifiDirect.wifi_direct_add_vsie(
      frame_id,
      vsie_str,
    );

/// @brief Cancels the connection now in progress.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  The MAC address of rejected device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// bool peer_selected = false;
/// int connection_timeout = 0;
/// int count = 0; // counter to wait for connection
///
/// int function(char *mac);
///
/// gboolean connection_timeout_cb(gpointer data)
/// {
/// char *mac = (char *)data;
///
/// if (count < 3) {
/// count++;
/// return TRUE;
/// }
///
/// function(mac); // cancel ongoing connection
/// g_free(mac);
/// return FALSE;
/// }
///
/// void peers_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// char *mac;
///
/// if (peer && !peer_selected) {
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
///
/// mac = g_strdup(peer->mac_address);
/// peer_selected = true;
///
/// wifi_direct_connect(mac); // Connect to the selected peer
/// connection_timeout = g_timeout_add(1000,
/// connection_timeout_cb,
/// mac); // Add 3secs timeout
/// }
/// }
///
/// int function(char *mac)
/// {
/// int ret;
///
/// ret = wifi_direct_cancel_connection(mac); // cancel connection
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to cancel the ongoing connection\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// void callback_2(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTON_RSP:
/// printf("Connected\n");
/// g_source_remove(connection_timeout);
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n");
/// break;
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// wifi_direct_foreach_discovered_peers(peers_cb,
/// NULL); // Get discovered peer
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
/// wifi_direct_set_connection_state_changed_cb(callback_2, NULL); // Register callback 2
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback 2
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback 1
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_cancel_connection(
  ffi.Pointer<ffi.Char> mac_address,
) =>
    tizenWifiDirect.wifi_direct_cancel_connection(
      mac_address,
    );

/// @brief Cancels discovery process, asynchronously.
/// @details This function stops all discovery processes started with
/// wifi_direct_start_discovery() functions.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Discovery must be started by wifi_direct_start_discovery().
/// @post wifi_direct_discovery_state_chagned_cb() will be invoked.
/// @see wifi_direct_start_discovery()
/// @see wifi_direct_start_discovery_specific_channel()
/// @see wifi_direct_start_discovery_specific_freq()
/// @see wifi_direct_discovery_state_chagned_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// void callback(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_cancel_discovery(); // Cancel ongoing discovery
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to cancel discovery\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback, NULL); // Register callback
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// function();
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_cancel_discovery() =>
    tizenWifiDirect.wifi_direct_cancel_discovery();

/// @brief Cancels an ongoing wifi direct service discovery.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  The MAC address of servicing device. A broadcast \n
/// will be sent when MAC is SET to ZERO
/// Parameter service_type Describes the type of service
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback(int error_code,
/// wifi_direct_service_discovery_state_e discovery_state,
/// wifi_direct_service_type_e service_type,
/// void *response_data, const char * mac_address,
/// void *user_data)
/// {
/// switch (discovery_state) {
/// case WIFI_DIRECT_SERVICE_DISCOVERY_STARTED:
/// printf("Service discovery started\n");
/// break;
///
/// case WIFI_DIRECT_SERVICE_DISCOVERY_FINISHED:
/// printf("Service discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_SERVICE_DISCOVERY_FOUND:
/// printf("Service discovery found\n");
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_cancel_service_discovery(NULL,
/// WIFI_DIRECT_SERVICE_TYPE_ALL); // cancel the ongoing service discovery
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to cancel service discovery\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_service_state_changed_cb(callback, NULL);
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// wifi_direct_start_service_discovery(NULL,
/// WIFI_DIRECT_SERVICE_TYPE_ALL); // start broadcast service discovery
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_service_state_changed_cb();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_cancel_service_discovery(
  ffi.Pointer<ffi.Char> mac_address,
  int service_type,
) =>
    tizenWifiDirect.wifi_direct_cancel_service_discovery(
      mac_address,
      service_type,
    );

/// @brief Connects to a specified peer, asynchronously.
/// @details This function connects to specified peer by automatically determining
/// whether to perform group formation, join an existing group, invite, re-invoke a group.
/// The decision is based on the current state of the peers (i.e. GO, STA, not connected)
/// and the availability of persistent data.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  The MAC address of remote device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_TOO_MANY_CLIENT       Too many client
/// @retval #WIFI_DIRECT_ERROR_CONNECTION_TIME_OUT   Connection timed out
/// @retval #WIFI_DIRECT_ERROR_CONNECTION_FAILED     Connection failed
/// @retval #WIFI_DIRECT_ERROR_AUTH_FAILED           Authentication failed
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_connection_state_changed_cb() will be invoked.
/// @see wifi_direct_activate()
/// @see wifi_direct_disconnect()
/// @see wifi_direct_disconnect_all()
/// @see wifi_direct_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// bool device_selected = false;
///
/// void peers_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// if (peer && !device_selected) {
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
///
/// device_selected = true;
///
/// function(peer->mac_address); // Connect to the first discovered peer
/// }
/// }
///
/// int function(const char *mac)
/// {
/// int ret;
///
/// ret = wifi_direct_connect(mac); // connect to the peer device
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to connect the peer\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// void callback_2(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTION_RSP:
/// printf("Connected\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n");
/// break;
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// wifi_direct_foreach_discovered_peers(peers_cb,
/// NULL); // Get discovered peer
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
/// wifi_direct_set_connection_state_changed_cb(callback_2, NULL); // Register callback 2
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_connect(
  ffi.Pointer<ffi.Char> mac_address,
) =>
    tizenWifiDirect.wifi_direct_connect(
      mac_address,
    );

/// @brief Creates a Wi-Fi Direct Group, asynchronously.
/// @details This function sets up device as the Group Owner and waits for clients to connect.
/// In addition, a soft AP will be created, the WPS registrar and the DHCP server will be started.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @retval #WIFI_DIRECT_ERROR_AUTH_FAILED           Authentication failed
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_connection_state_changed_cb() will be invoked with #WIFI_DIRECT_GROUP_CREATED.
/// @see wifi_direct_activate()
/// @see wifi_direct_destroy_group()
/// @see wifi_direct_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback_1(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// if (state == WIFI_DIRECT_GROUP_CREATED) {
/// printf("Group created\n");
/// }
/// }
///
/// int function(void)
/// {
/// int res;
///
/// res = wifi_direct_create_group() // create autonomous group
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to create group\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_connection_state_changed_cb(callback_1, NULL); // Register callback_1
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback_1
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_create_group() =>
    tizenWifiDirect.wifi_direct_create_group();

/// @brief Creates a Wi-Fi Direct Group, asynchronously with given SSID name.
/// @details This function sets up device as the Group Owner and waits for clients to connect.
/// In addition, a soft AP will be created, the WPS registrar and the DHCP server will be started.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter ssid  Referred to as a network name, it is a name that identifies a wireless network
/// @return 0 on success, otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameters
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @retval #WIFI_DIRECT_ERROR_AUTH_FAILED           Authentication failed
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_connection_state_changed_cb() will be invoked with #WIFI_DIRECT_GROUP_CREATED.
/// @see wifi_direct_activate()
/// @see wifi_direct_destroy_group()
/// @see wifi_direct_connection_state_changed_cb()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_create_group_with_ssid(
  ffi.Pointer<ffi.Char> ssid,
) =>
    tizenWifiDirect.wifi_direct_create_group_with_ssid(
      ssid,
    );

/// @brief Deactivates the Wi-Fi Direct service, asynchronously.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_device_state_changed_cb() will be invoked.
/// @see wifi_direct_activate()
/// @see wifi_direct_device_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deactivate Wi-Fi Direct\n");
/// return -1;
/// }
///
/// printf("Wi-Fi Direct Deactivated\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activated Wi-Fi Direct
/// function();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_deactivate() =>
    tizenWifiDirect.wifi_direct_deactivate();

/// @brief Disables Wi-Fi Display functionality & disables the support of WFD Information Element (IE).
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate()
/// and Wi-Fi Display must be enabled by wifi_direct_init_display().
/// @see wifi_direct_activate()
/// @see wifi_direct_init_display()
/// @see wifi_direct_set_display()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
///
/// wifi_direct_init_display();
///
/// ret = wifi_direct_deinit_display();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deinit display\n");
/// return -1;
/// }
///
/// printf("deinit display success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_deinit_display() =>
    tizenWifiDirect.wifi_direct_deinit_display();

/// @brief Deinitializes Wi-Fi Direct service.
/// @since_tizen 2.3
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_deinitialize();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deinitialize\n");
/// return;
/// }
///
/// printf("Deinitialized Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // initialize Wi-Fi Direct
/// function(); // deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_deinitialize() =>
    tizenWifiDirect.wifi_direct_deinitialize();

/// @brief Deregisters for a service used for Wi-Fi Direct Service Discovery.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter service_id  A Service ID for which service has to be deregistered
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int input;
///
/// printf("Enter the service id\n");
/// scanf("%5d", &input);
///
/// ret = wifi_direct_deregister_service(input);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deregister service\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_deregister_service(
  int service_id,
) =>
    tizenWifiDirect.wifi_direct_deregister_service(
      service_id,
    );

/// @brief Destroys the Wi-Fi Direct Group, asynchronously.
/// @details This function destroys the Wi-Fi Direct Group owned by a local device.
/// If creating a Group is in progress, this function cancels that creating.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @retval #WIFI_DIRECT_ERROR_AUTH_FAILED           Authentication failed
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_connection_state_changed_cb() will be invoked with #WIFI_DIRECT_GROUP_DESTROYED.
/// @see wifi_direct_activate()
/// @see wifi_direct_create_group()
/// @see wifi_direct_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback_1(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// if (state == WIFI_DIRECT_GROUP_DESTROYED) {
/// printf("Group destroyed\n");
/// }
/// }
///
/// int function(void)
/// {
/// int res;
///
/// res = wifi_direct_destroy_group() // destroy autonomous group
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to destroy group\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_connection_state_changed_cb(callback_1, NULL); // Register callback_1
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback_1
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_destroy_group() =>
    tizenWifiDirect.wifi_direct_destroy_group();

/// @brief Disconnects the specified peer, asynchronously.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  The MAC address of remote device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_connection_state_changed_cb() will be invoked.
/// @see wifi_direct_activate()
/// @see wifi_direct_connect()
/// @see wifi_direct_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// bool callback_2(wifi_direct_connected_peer_info_s* peer,
/// void* user_data)
/// {
/// if (peer) {
/// printf("connected device=%s mac=%s\n",
/// peer->device_name, peer->mac_address);
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTON_RSP:
/// printf("Connected\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected mac=%s\n", mac_address); // disconnect notification
/// break;
/// }
/// }
///
/// int function(char *mac)
/// {
/// int res;
///
/// res = wifi_direct_disconnect(mac); // disconnect the connected peer with input mac
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to disconnect all clients\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// char mac[16] = {0,};
///
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_connection_state_changed_cb(callback_1, NULL); // Register callback_1
/// wifi_direct_activate(); // Activate Wi-Fi Direct *
///
/// wifi_direct_foreach_connected_peers(callback_2, NULL); // Register callback_2
///
/// printf("Enter the connected peer mac address\n");
/// read(stdin, mac, 15);
///
/// function(mac);
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_disconnect(
  ffi.Pointer<ffi.Char> mac_address,
) =>
    tizenWifiDirect.wifi_direct_disconnect(
      mac_address,
    );

/// @brief Disconnects all connected links to peers, asynchronously.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_connection_state_changed_cb() will be invoked.
/// @see wifi_direct_activate()
/// @see wifi_direct_disconnect()
/// @see wifi_direct_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTON_RSP:
/// printf("Connected\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n"); // disconnect notification
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int res;
///
/// res = wifi_direct_disconnect_all(); // disconnect all the connected peers
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to disconnect all clients\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_connection_state_changed_cb(callback, NULL); // Register callback
/// wifi_direct_activate(); // Activate Wi-Fi Direct *
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_disconnect_all() =>
    tizenWifiDirect.wifi_direct_disconnect_all();

/// @brief Gets the information of connected peers.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter callback   The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_discovered_peer_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// bool callback_1(wifi_direct_connected_peer_info_s* peer,
/// void* user_data)
/// {
/// if (peer) {
/// printf("connected device=%s mac=%s\n",
/// peer->device_name, peer->mac_address);
/// }
/// }
///
/// int function(char *mac)
/// {
/// int res;
///
/// res = wifi_direct_foreach_connected_peers(callback_1, NULL) // Get connected peers
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get connected peers\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_foreach_connected_peers(
  wifi_direct_connected_peer_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_foreach_connected_peers(
      callback,
      user_data,
    );

/// @brief Gets the information of discovered peers.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter callback   The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_discovered_peer_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// void function_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// if (peer)
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
/// }
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_foreach_discovered_peers(function_cb, NULL); // get discovered peer devices info
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get discovered peers\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// void callback(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// function();
///
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback, NULL); // Register callback
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_foreach_discovered_peers(
  wifi_direct_discovered_peer_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_foreach_discovered_peers(
      callback,
      user_data,
    );

/// @brief Gets the persistent groups.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter callback   The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @post wifi_direct_persistent_group_cb() will be called.
/// @see wifi_direct_initialize()
/// @see wifi_direct_persistent_group_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// bool callback(const char *mac_address,
/// const char *ssid,
/// void *user_data)
/// {
/// if (mac_address)
/// printf("mac = %s\n", mac_address);
///
/// if (ssid)
/// printf("ssid = %s\n", ssid);
///
/// return true;
/// }
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_foreach_persistent_groups(callback, NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set callback to get persistent groups\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_foreach_persistent_groups(
  wifi_direct_persistent_group_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_foreach_persistent_groups(
      callback,
      user_data,
    );

/// @brief Gets the supported WPS (Wi-Fi Protected Setup) types.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter callback   The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_supported_wps_type_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// bool callback(wifi_direct_wps_types_e type, void *user_data)
/// {
/// switch (type) {
/// case WIFI_DIRECT_WPS_TYPE_PBC:
/// printf("mode is WPS PBC\n");
/// break;
///
/// case WIFI_DIRECT_WPS_TYPE_PIN_DISPLAY:
/// printf("mode is WPS PIN Display\n");
/// break;
///
/// case WIFI_DIRECT_WPS_TYPE_PIN_KEYPAD:
/// printf("mode is WPS PIN Keypad\n");
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_foreach_supported_wps_types(callback, NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get supported wps types\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_foreach_supported_wps_types(
  wifi_direct_supported_wps_type_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_foreach_supported_wps_types(
      callback,
      user_data,
    );

/// @brief Gets the information of peer devices which is in the connecting state.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a peer_info must be released with free().
/// Output parameter peer_info connecting peer device data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be connecting state by wifi_direct_connect()
/// or by receiving connection request from p2p peer device.
/// @see wifi_direct_activate()
/// @see wifi_direct_connect()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// bool device_selected = false;
///
/// void peers_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// if (peer && !device_selected) {
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
///
/// device_selected = true;
///
/// wifi_direct_connect(peer->mac_address); // Connect to the first discovered peer
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
/// wifi_direct_discovered_peer_info_s *peer = NULL;
///
/// ret = wifi_direct_get_connecting_peer_info(&peer);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get connecting peer info\n");
/// return -1;
/// }
///
/// printf("peer device name (%s) mac (%s)\n", peer->device_name,
/// peer->mac_address);
/// return 0;
/// }
///
/// void callback_2(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
///
/// function(); // get the connecting peer info
///
/// break;
///
/// case WIFI_DIRECT_CONNECTION_RSP:
/// printf("Connected\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n");
/// break;
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// wifi_direct_foreach_discovered_peers(peers_cb,
/// NULL); // Get discovered peer
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
/// wifi_direct_set_connection_state_changed_cb(callback_2, NULL); // Register callback 2
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_connecting_peer_info(
  ffi.Pointer<ffi.Pointer<wifi_direct_discovered_peer_info_s>> peer_info,
) =>
    tizenWifiDirect.wifi_direct_get_connecting_peer_info(
      peer_info,
    );

/// @brief Gets the name of a local device.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a device_name must be released with free().
/// Output parameter device_name  The name of a local device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_device_name()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int res;
/// char *name;
///
/// res = wifi_direct_get_device_name(&name); // get device name
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get device name\n");
/// return -1;
/// }
///
/// printf("device name = %s\n", name);
/// g_free(name);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_device_name(
  ffi.Pointer<ffi.Pointer<ffi.Char>> device_name,
) =>
    tizenWifiDirect.wifi_direct_get_device_name(
      device_name,
    );

/// @brief Gets the Wi-Fi Display parameters for the WFD IE of local device.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter type  WFD device type: role of WFD device like source or sink
/// Output parameter port  Session management control port number, it will be of 2 bytes (0~65535)
/// Output parameter hdcp  CP support bit: (@c 1 = hdcp support is enabled, @c 0 = hdcp support is disabled)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate()
/// and enable Wi-Fi Display by wifi_direct_init_display().
/// @see wifi_direct_activate()
/// @see wifi_direct_init_display()
/// @see wifi_direct_deinit_display()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// wifi_direct_display_type_e type;
/// int port;
/// int hdcp;
///
/// ret = wifi_direct_get_display(&type, &port, &hdcp);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get display property\n");
/// return -1;
/// }
///
/// printf("get display param success [type:%d], [port:%d], [hdcp:%d]\n", type, port, hdcp);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_display(
  ffi.Pointer<ffi.Int32> type,
  ffi.Pointer<ffi.Int> port,
  ffi.Pointer<ffi.Int> hdcp,
) =>
    tizenWifiDirect.wifi_direct_get_display(
      type,
      port,
      hdcp,
    );

/// @brief Gets the Wi-Fi Display Session Availability.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter availability  Wi-Fi display session availability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate()
/// and enable Wi-Fi Display by wifi_direct_init_display().
/// @see wifi_direct_activate()
/// @see wifi_direct_init_display()
/// @see wifi_direct_deinit_display()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int availability;
///
/// ret = wifi_direct_get_display_availability(&availability);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get display availability\n");
/// return -1;
/// }
///
/// printf("get display availability success [%d]\n", availability);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_display_availability(
  ffi.Pointer<ffi.Bool> availability,
) =>
    tizenWifiDirect.wifi_direct_get_display_availability(
      availability,
    );

/// @brief Gets the Gateway address.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a gateway_address must be released using free().
/// Output parameter gateway_address  The gateway address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void);
///
/// bool device_selected = false;
///
/// void peers_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// if (peer && !device_selected) {
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
///
/// device_selected = true;
///
/// wifi_direct_connect(peer->mac_address); // Connect to the first discovered peer
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
/// char *gateway;
/// char *ip;
///
/// wifi_direct_get_ip_address(&ip); // get ip address
///
/// ret = wifi_direct_get_gateway_address(&gateway); // get gateway address
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get gateway address\n");
/// return -1;
/// }
///
/// printf("gateway address=%s\n", gateway);
/// g_free(ip);
/// g_free(gateway);
/// return 0;
/// }
///
/// void callback_2(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTON_RSP:
/// printf("Connected\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n");
/// break;
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// wifi_direct_foreach_discovered_peers(peers_cb,
/// NULL);
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
/// wifi_direct_set_connection_state_changed_cb(callback_2, NULL); // Register callback 2
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_gateway_address(
  ffi.Pointer<ffi.Pointer<ffi.Char>> gateway_address,
) =>
    tizenWifiDirect.wifi_direct_get_gateway_address(
      gateway_address,
    );

/// @brief Gets the intent of the group owner for each connection type.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter type  The type of connection for a peer device
/// Output parameter intent  The intent of the group owner
/// @return 0 on success, otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_go_intent_per_type()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_go_intent_per_type(
  int type,
  ffi.Pointer<ffi.Int> intent,
) =>
    tizenWifiDirect.wifi_direct_get_go_intent_per_type(
      type,
      intent,
    );

/// @brief Gets the intent of the group owner.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter intent  The intent of the group owner
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_group_owner_intent()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int go_intent;
///
/// ret = wifi_direct_get_group_owner_intent(&go_intent);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get go intent\n");
/// return -1;
/// }
///
/// printf("Current GO Intent = %d\n", go_intent);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_group_owner_intent(
  ffi.Pointer<ffi.Int> intent,
) =>
    tizenWifiDirect.wifi_direct_get_group_owner_intent(
      intent,
    );

/// @brief Gets IP address of a local device.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a ip_address must be released using free().
/// Output parameter ip_address  The IP address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void);
///
/// bool device_selected = false;
///
/// void peers_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// if (peer && !device_selected) {
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
///
/// device_selected = true;
///
/// wifi_direct_connect(peer->mac_address); // Connect to the first discovered peer
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
/// char *ip;
///
/// ret = wifi_direct_get_ip_address(&ip); // get ip address
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to connect the peer\n");
/// return -1;
/// }
///
/// printf("IP address=%s\n", ip);
/// g_free(ip);
/// return 0;
/// }
///
/// void callback_2(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTON_RSP:
/// printf("Connected\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n");
/// break;
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// wifi_direct_foreach_discovered_peers(peers_cb,
/// NULL);
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
/// wifi_direct_set_connection_state_changed_cb(callback_2, NULL); // Register callback 2
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_ip_address(
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_address,
) =>
    tizenWifiDirect.wifi_direct_get_ip_address(
      ip_address,
    );

/// @brief Gets the WPS (Wi-Fi Protected Setup) type.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter type  The type of WPS
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_foreach_supported_wps_types()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int wps_type;
///
/// ret = wifi_direct_get_local_wps_type(&wps_type);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get supported wps types\n");
/// return -1;
/// }
///
/// switch (wps_type) {
/// case WIFI_DIRECT_WPS_TYPE_PBC:
/// printf("mode is WPS PBC\n");
/// break;
///
/// case WIFI_DIRECT_WPS_TYPE_PIN_DISPLAY:
/// printf("mode is WPS PIN Display\n");
/// break;
///
/// case WIFI_DIRECT_WPS_TYPE_PIN_KEYPAD:
/// printf("mode is WPS PIN Keypad\n");
/// break;
/// }
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_local_wps_type(
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenWifiDirect.wifi_direct_get_local_wps_type(
      type,
    );

/// @brief Gets MAC address of a local device.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a mac_address must be released using free().
/// Output parameter mac_address  The MAC address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void);
///
/// bool device_selected = false;
///
/// void peers_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// if (peer && !device_selected) {
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
///
/// device_selected = true;
///
/// wifi_direct_connect(peer->mac_address); // Connect to the first discovered peer
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
/// char *mac;
/// char *ip;
///
/// wifi_direct_get_ip_address(&ip); // get ip address
///
/// ret = wifi_direct_get_mac_address(&mac); // get MAC address
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get mac address\n");
/// return -1;
/// }
///
/// printf("MAC address=%s\n", mac);
/// g_free(ip);
/// g_free(mac);
/// return 0;
/// }
///
/// void callback_2(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTON_RSP:
/// printf("Connected\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n");
/// break;
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// wifi_direct_foreach_discovered_peers(peers_cb,
/// NULL);
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
/// wifi_direct_set_connection_state_changed_cb(callback_2, NULL); // Register callback 2
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_mac_address(
  ffi.Pointer<ffi.Pointer<ffi.Char>> mac_address,
) =>
    tizenWifiDirect.wifi_direct_get_mac_address(
      mac_address,
    );

/// @brief Gets the max number of clients.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter max  The max number of clients
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_max_clients()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int max_client;
///
/// ret = wifi_direct_get_max_clients(&max_client);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get max clients\n");
/// return -1;
/// }
///
/// printf("max client = %d\n", max_client);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_max_clients(
  ffi.Pointer<ffi.Int> max,
) =>
    tizenWifiDirect.wifi_direct_get_max_clients(
      max,
    );

/// @brief Gets the name of network interface (for example: eth0, pdp0).
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a name must be released using free().
/// Output parameter name  The name of the network interface
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int res;
/// char *iface_name;
///
/// res = wifi_direct_get_network_interface_name(&iface_name); // get interface name
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get interface name\n");
/// return -1;
/// }
///
/// printf("interface = %s\n", iface_name);
/// g_free(iface_name);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_network_interface_name(
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenWifiDirect.wifi_direct_get_network_interface_name(
      name,
    );

/// @brief Gets the operating channel.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter channel  The operating channel
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int channel;
///
/// ret = wifi_direct_get_operating_channel(&channel);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get operating channel\n");
/// return -1;
/// }
///
/// printf("operating channel = %d\n", channel);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_operating_channel(
  ffi.Pointer<ffi.Int> channel,
) =>
    tizenWifiDirect.wifi_direct_get_operating_channel(
      channel,
    );

/// @brief Gets the Wi-Fi Protected Access (WPA) password when creating Wi-Fi Direct Group.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a passphrase must be released with free().
/// Output parameter passphrase  Pointer to store wpa password. Application must free this memory
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_set_passphrase()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char *key;
///
/// ret = wifi_direct_get_passphrase(&key);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get passphrase\n");
/// return -1;
/// }
///
/// printf("passphrase = %s\n", key);
/// g_free(key);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_passphrase(
  ffi.Pointer<ffi.Pointer<ffi.Char>> passphrase,
) =>
    tizenWifiDirect.wifi_direct_get_passphrase(
      passphrase,
    );

/// @brief Gets the information of a peer's Wi-Fi Display session availability.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address MAC Address of the PEER
/// Output parameter availability  The information of a peer's Wi-Fi Display session availability
/// if there's Wi-Fi Direct information, this will be NULL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_foreach_discovered_peers()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// bool availability;
/// char *mac = NULL;
///
/// printf("Input the peer mac\n");
/// scanf("%18ms", &mac);
///
/// ret = wifi_direct_get_peer_display_availability(mac, &availability);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get peer display availability\n");
/// return -1;
/// }
///
/// printf("peer display availability = %s\n", availability?"yes":"no");
/// free(mac);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_peer_display_availability(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Bool> availability,
) =>
    tizenWifiDirect.wifi_direct_get_peer_display_availability(
      mac_address,
      availability,
    );

/// @brief Gets the information of a peer's Wi-Fi Display HDCP support.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address MAC Address of the PEER
/// Output parameter hdcp  The information of a peer's Wi-Fi Display HDCP support
/// if there's Wi-Fi Direct information, this will be NULL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_foreach_discovered_peers()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int hdcp;
/// char *mac = NULL;
///
/// printf("Input the peer mac\n");
/// scanf("%18ms", &mac);
///
/// ret = wifi_direct_get_peer_display_hdcp(mac, &hdcp);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get peer display hdcp\n");
/// return -1;
/// }
///
/// printf("peer display hdcp = %d\n", hdcp);
/// free(mac);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_peer_display_hdcp(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Int> hdcp,
) =>
    tizenWifiDirect.wifi_direct_get_peer_display_hdcp(
      mac_address,
      hdcp,
    );

/// @brief Gets the information of a peer's Wi-Fi Display RTSP control port.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address MAC Address of the PEER
/// Output parameter port  The information of a peer's Wi-Fi Display RTSP control port
/// if there's Wi-Fi Direct information, this will be NULL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_foreach_discovered_peers()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int port;
/// char *mac = NULL;
///
/// printf("Input the peer mac\n");
/// scanf("%18ms", &mac);
///
/// ret = wifi_direct_get_peer_display_port(mac, &port);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get peer display port\n");
/// return -1;
/// }
///
/// printf("peer display port = %d\n", port);
/// free(mac);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_peer_display_port(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Int> port,
) =>
    tizenWifiDirect.wifi_direct_get_peer_display_port(
      mac_address,
      port,
    );

/// @brief Gets the information of a peer's Wi-Fi Display max throughput.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address MAC Address of the PEER
/// Output parameter throughput  The information of a peer's Wi-Fi Display max throughput (Mbps)
/// if there's Wi-Fi Direct information, this will be NULL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_foreach_discovered_peers()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int tput;
/// char *mac = NULL;
///
/// printf("Input the peer mac\n");
/// scanf("%18ms", &mac);
///
/// ret = wifi_direct_get_peer_display_throughput(mac, &tput);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get peer display throughput\n");
/// return -1;
/// }
///
/// printf("peer display throughput = %d\n", tput);
/// free(mac);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_peer_display_throughput(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Int> throughput,
) =>
    tizenWifiDirect.wifi_direct_get_peer_display_throughput(
      mac_address,
      throughput,
    );

/// @brief Gets the information of a peer's Wi-Fi Display device type.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address MAC Address of the PEER
/// Output parameter type  The information of a peer's Wi-Fi Display device type
/// if there's Wi-Fi Direct information, this will be NULL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_foreach_discovered_peers()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char *mac = NULL;
/// wifi_direct_display_type_e type;
///
/// printf("Input the peer mac\n");
/// scanf("%18ms", &mac);
///
/// ret = wifi_direct_get_peer_display_type(mac, &type);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get peer display type\n");
/// return -1;
/// }
///
/// printf("peer display type = %d\n", type);
/// free(mac);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_peer_display_type(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenWifiDirect.wifi_direct_get_peer_display_type(
      mac_address,
      type,
    );

/// @brief Gets the information of a discovered peer.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  The MAC address of peer to get
/// Output parameter peer_info   The peer information to be passed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_foreach_discovered_peers()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char mac[19] = {0, };
/// wifi_direct_discovered_peer_info_s *peer_info;
///
/// printf("Input peer MAC address\n");
/// read(stdin, mac, 18);
///
/// ret = wifi_direct_get_peer_info(mac, &peer_info);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get peer info\n");
/// return -1;
/// }
///
/// printf("get peer info success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_peer_info(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Pointer<wifi_direct_discovered_peer_info_s>> peer_info,
) =>
    tizenWifiDirect.wifi_direct_get_peer_info(
      mac_address,
      peer_info,
    );

/// @brief Gets the information of a peer's RSSI value.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  MAC Address of the peer device
/// Output parameter rssi        RSSI value of the peer device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int rssi;
/// char *mac = NULL;
///
/// printf("Input the peer mac\n");
/// scanf("%18ms", &mac);
///
/// ret = wifi_direct_get_peer_rssi(mac, &rssi); // get peer rssi
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get peer rssi\n");
/// return -1;
/// }
///
/// printf("peer rssi = %d\n", rssi);
/// free(mac);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_peer_rssi(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Int> rssi,
) =>
    tizenWifiDirect.wifi_direct_get_peer_rssi(
      mac_address,
      rssi,
    );

/// @brief Gets the vendor specific information element (VSIE) of a peer.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a vsie must be released with free().
/// Parameter mac_address MAC Address of the PEER
/// Output parameter vsie  The vendor specific information element (VSIE) of peer
/// if Wi-Fi Direct information is available, else it will be NULL.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_foreach_discovered_peers()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_peer_vsie(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vsie,
) =>
    tizenWifiDirect.wifi_direct_get_peer_vsie(
      mac_address,
      vsie,
    );

/// @brief Gets the primary device type of a local device.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter type  The primary device type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// char* print_type(wifi_direct_primary_device_type_e type)
/// {
/// if (type == WIFI_DIRECT_PRIMARY_DEVICE_TYPE_COMPUTER)
/// return "Computer";
/// if (state == WIFI_DIRECT_PRIMARY_DEVICE_TYPE_CAMERA)
/// return "Camera";
/// if (state == WIFI_DIRECT_PRIMARY_DEVICE_TYPE_STORAGE)
/// return "Storage";
/// if (state == WIFI_DIRECT_PRIMARY_DEVICE_TYPE_DISPLAY)
/// return "Display";
/// if (state == WIFI_DIRECT_PRIMARY_DEVICE_TYPE_TELEPHONE)
/// return "Telephone";
///
/// // Refer wifi_direct_primary_device_type_e enum for all devices
/// }
///
/// int function(void)
/// {
/// int ret;
/// int type;
///
/// ret = wifi_direct_get_primary_device_type(&type); // get primary device type
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get primary device type\n");
/// return -1;
/// }
///
/// printf("primary Device = %s\n", print_type(type));
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_primary_device_type(
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenWifiDirect.wifi_direct_get_primary_device_type(
      type,
    );

/// @brief Gets the requested WPS (Wi-Fi Protected Setup) type.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter type  The type of WPS
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_foreach_supported_wps_types()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int wps_type;
///
/// ret = wifi_direct_get_req_wps_type(&wps_type);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get supported wps types\n");
/// return -1;
/// }
///
/// switch (wps_type) {
/// case WIFI_DIRECT_WPS_TYPE_PBC:
/// printf("mode is WPS PBC\n");
/// break;
///
/// case WIFI_DIRECT_WPS_TYPE_PIN_DISPLAY:
/// printf("mode is WPS PIN Display\n");
/// break;
///
/// case WIFI_DIRECT_WPS_TYPE_PIN_KEYPAD:
/// printf("mode is WPS PIN Keypad\n");
/// break;
/// }
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_req_wps_type(
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenWifiDirect.wifi_direct_get_req_wps_type(
      type,
    );

/// @brief Gets the secondary device type of a local device.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter type  The secondary device type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// char* print_type(wifi_direct_primary_device_type_e type)
/// {
/// if (type == WIFI_DIRECT_SECONDARY_DEVICE_TYPE_COMPUTER_PC)
/// return "Computer pc";
/// if (state == WIFI_DIRECT_SECONDARY_DEVICE_TYPE_INPUT_KEYBOARD)
/// return "input Keyboard";
/// if (state == WIFI_DIRECT_SECONDARY_DEVICE_TYPE_CAMERA_VIDEO)
/// return "Camera Video";
/// if (state == WIFI_DIRECT_SECONDARY_DEVICE_TYPE_STORAGE_NAS)
/// return "Storage NAS";
/// if (state == WIFI_DIRECT_SECONDARY_DEVICE_TYPE_DISPLAY_TV)
/// return "Display TV";
///
/// // Refer wifi_direct_secondary_device_type_e enum for all devices
/// }
///
/// int function(void)
/// {
/// int ret;
/// int type;
///
/// ret = wifi_direct_get_secondary_device_type(&type); // get secondary device type
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get secondary device type\n");
/// return -1;
/// }
///
/// printf("secondary Device = %s\n", print_type(type));
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_secondary_device_type(
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenWifiDirect.wifi_direct_get_secondary_device_type(
      type,
    );

/// @brief Gets the timer which is used to expire the connection session.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter seconds  Connection session timer value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int session_timeout;
///
/// ret = wifi_direct_get_session_timer(&session_timeout); // get session timer
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get session timer\n");
/// return -1;
/// }
///
/// printf("session timer = %d\n", session_timeout);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_session_timer(
  ffi.Pointer<ffi.Int> seconds,
) =>
    tizenWifiDirect.wifi_direct_get_session_timer(
      seconds,
    );

/// @brief Gets SSID (Service Set Identifier) of a local device.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a ssid must be released using free().
/// Output parameter ssid  The SSID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int res;
/// char *ssid;
///
/// res = wifi_direct_get_ssid(&ssid); // get SSID
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get ssid name\n");
/// return -1;
/// }
///
/// printf("SSID name = %s\n", ssid);
/// g_free(ssid);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_ssid(
  ffi.Pointer<ffi.Pointer<ffi.Char>> ssid,
) =>
    tizenWifiDirect.wifi_direct_get_ssid(
      ssid,
    );

/// @brief Gets the state of Wi-Fi Direct service.
/// @since_tizen 2.3
/// Output parameter state  The state of Wi-Fi Direct service
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE               Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED   Operation failed
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED      Not supported
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY      Device or resource busy
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// char* print_state(wifi_direct_state_e state)
/// {
/// if (state == WIFI_DIRECT_STATE_DEACTIVATED)
/// return "DEACTIVATED";
/// if (state == WIFI_DIRECT_STATE_ACTIVATING)
/// return "ACTIVATING";
/// if (state == WIFI_DIRECT_STATE_ACTIVATED)
/// return "ACTIVATED";
/// if (state == WIFI_DIRECT_STATE_DISCOVERING)
/// return "DISCOVERING";
/// if (state == WIFI_DIRECT_STATE_CONNECTING)
/// return "CONNECTING";
/// if (state == WIFI_DIRECT_STATE_DISCONNECTING)
/// return "DISCONNECTING";
/// if (state == WIFI_DIRECT_STATE_CONNECTED)
/// return "CONNECTED";
/// if (state == WIFI_DIRECT_STATE_GROUP_OWNER)
/// return "GROUP OWNER";
///
/// return "Unknown state";
/// }
///
/// int function(void)
/// {
/// int ret;
/// int state;
///
/// ret = wifi_direct_get_state(&state); // get Wi-Fi Direct state
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get state\n");
/// return -1;
/// }
///
/// printf(Wi-Fi Direct State = %s\n, print_state(state));
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenWifiDirect.wifi_direct_get_state(
      state,
    );

/// @brief Gets the Subnet Mask.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a subnet_mask must be released using free().
/// Output parameter subnet_mask  The subnet mask
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void);
///
/// bool device_selected = false;
///
/// void peers_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// if (peer && !device_selected) {
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
///
/// device_selected = true;
///
/// wifi_direct_connect(peer->mac_address); // Connect to the first discovered peer
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
/// char *subnet;
/// char *ip;
///
/// wifi_direct_get_ip_address(&ip); // get ip address
///
/// ret = wifi_direct_get_subnet_mask(&subnet); // get subnet mask
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get subnet mask\n");
/// return -1;
/// }
///
/// printf("subnet address=%s\n", subnet);
/// g_free(ip);
/// g_free(subnet);
/// return 0;
/// }
///
/// void callback_2(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTON_RSP:
/// printf("Connected\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n");
/// break;
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// wifi_direct_foreach_discovered_peers(peers_cb,
/// NULL);
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
/// wifi_direct_set_connection_state_changed_cb(callback_2, NULL); // Register callback 2
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_subnet_mask(
  ffi.Pointer<ffi.Pointer<ffi.Char>> subnet_mask,
) =>
    tizenWifiDirect.wifi_direct_get_subnet_mask(
      subnet_mask,
    );

/// @brief Gets all the supported WPS (Wi-Fi Protected Setup) types at local device.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter wps_mode  Supported WPS mode for local device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int ret;
/// int wps_mode;
///
/// ret = wifi_direct_get_supported_wps_mode(&wps_mode); // Get supported WPS mode
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get supported wps mode\n");
/// return -1;
/// }
///
/// switch (wps_mode) {
/// case WIFI_DIRECT_WPS_TYPE_PBC:
/// printf("mode is WPS PBC\n");
/// break;
///
/// case WIFI_DIRECT_WPS_TYPE_PIN_DISPLAY:
/// printf("mode is WPS PIN Display\n");
/// break;
///
/// case WIFI_DIRECT_WPS_TYPE_PIN_KEYPAD:
/// printf("mode is WPS PIN Keypad\n");
/// break;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_supported_wps_mode(
  ffi.Pointer<ffi.Int> wps_mode,
) =>
    tizenWifiDirect.wifi_direct_get_supported_wps_mode(
      wps_mode,
    );

/// @brief Gets the Wi-Fi Vendor Specific Information Elements (VSIE) from specific frame.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a vsie_str must be released with free().
/// Parameter frame_id  frame ID for setting VSIE
/// Output parameter vsie_str VSIE data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate()
/// and set VSIE for specific frame by wifi_direct_add_vsie().
/// @see wifi_direct_activate()
/// @see wifi_direct_add_vsie()
/// @see wifi_direct_remove_vsie()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char *vsie = NULL;
/// unsigned int frame_id;
///
/// printf("Input the frame id\n");
/// scanf("%2u", &frame_id);
///
/// ret = wifi_direct_get_vsie(frame_id, &vsie); // get vsie
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get vsie\n");
/// return -1;
/// }
///
/// printf("vsie = %s\n", vsie);
/// free(vsie);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_vsie(
  int frame_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vsie_str,
) =>
    tizenWifiDirect.wifi_direct_get_vsie(
      frame_id,
      vsie_str,
    );

/// @brief Gets the advertizing WPS (Wi-Fi Protected Setup) type.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter type  The type of WPS. composition of #wifi_direct_config_method_type_e
/// @return 0 on success, otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_initialize()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_wps_config_method(
  ffi.Pointer<ffi.Int> type,
) =>
    tizenWifiDirect.wifi_direct_get_wps_config_method(
      type,
    );

/// @brief Gets the WPS PIN number.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a pin must be released with free().
/// Output parameter pin  Pointer to store pin number. Application must free this memory
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_set_wps_pin()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char *pin;
///
/// ret = wifi_direct_get_wps_pin(&pin); // Get the WPS PIN
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get the WPS PIN\n");
/// return -1;
/// }
///
/// printf("WPS PIN : %s\n", pin);
/// g_free(pin);
/// return 0;
/// }
///
/// void callback(int error_code,
/// wifi_direct_connection_state_e connection_state,
/// const char *mac_address,
/// void *user_data)
/// {
/// char *ip;
/// bool owner;
/// int wps_mode;
///
/// switch (connection_state) {
///
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTION_RSP:
/// if (error_code == WIFI_DIRECT_ERROR_NONE) {
/// printf("Peer Device Connected\n"); // device is connected
///
/// printf("MAC=%s\n", mac_address); // device's MAC address
///
/// wifi_direct_get_ip_address(&ip);
/// printf("IP=%s\n", ip); //device's IP address
///
/// wifi_direct_is_group_owner(&owner);
/// printf("Ownership=%s\n", (owner)? "GO":"STA"); // (GO or client role)
///
/// } else if (error_code == WIFI_DIRECT_ERROR_CONNECTION_TIME_OUT) {
/// printf("Connection timeout occurred\n");
/// } else if (error_code == WIFI_DIRECT_ERROR_AUTH_FAILED) {
/// printf("Connection authorization Failed\n");
/// } else
/// printf("Connection failed\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTION_WPS_REQ:
///
/// wifi_direct_get_local_wps_type(&wps_mode);
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PBC) {
/// printf("Connection type WPS PBC\n");
/// // Handle WPS PBC case here
/// }
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PIN_DISPLAY) {
/// printf("Connection type WPS PIN DISPLAY\n");
/// // Handle WPS PIN Display case here
///
///
/// // Display WPS PIN here
/// // Since the device received WPS PIN Display connection request
/// // user need to display the WPS PIN which is shared by peer device
/// function();
///
/// }
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PIN_KEYPAD) {
/// printf("Connection type WPS PIN KEYPAD\n");
/// // Handle WPS PIN Keypad case here
/// }
/// break;
///
/// case WIFI_DIRECT_CONNECTION_REQ:
/// printf("Connection request from MAC %s\n", mac_address);
///
/// // Handle the connection request from peer device here
/// // 1. WPS PBC
/// // 2. WPS PIN Display
/// // 3. WPS PIN Keypad
///
/// wifi_direct_accept_connection(mac_address);
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disconnected MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disconnection response MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_DISASSOCIATION_IND:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disassociation MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_GROUP_CREATED:
/// printf("Group Created\n");
/// break;
///
/// case WIFI_DIRECT_GROUP_DESTROYED:
/// printf("Group Destroyed\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_connection_state_changed_cb(callback, NULL); // Register callback
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
///
/// wifi_direct_set_connection_state_changed_cb(callback, NULL); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_get_wps_pin(
  ffi.Pointer<ffi.Pointer<ffi.Char>> pin,
) =>
    tizenWifiDirect.wifi_direct_get_wps_pin(
      pin,
    );

/// @brief Enables Wi-Fi Display (WFD) functionality and initialize the various variables required for WFD.
/// @details Starts listening in only assigned channel. Device will be discoverable
/// only in assigned listen channel.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate()
/// @see wifi_direct_activate()
/// @see wifi_direct_deinit_display()
/// @see wifi_direct_set_display()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_init_display();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to init display\n");
/// return -1;
/// }
///
/// printf("init display success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_init_display() =>
    tizenWifiDirect.wifi_direct_init_display();

/// @brief Initializes Wi-Fi Direct service.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @see wifi_direct_deinitialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_initialize();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to initialize\n");
/// return;
/// }
///
/// printf("Initialized Successfully\n");
/// }
///
/// int main()
/// {
/// function(); // initialize Wi-Fi Direct
/// wifi_direct_deinitialize(); // deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_initialize() =>
    tizenWifiDirect.wifi_direct_initialize();

/// @brief Initializes OR Deintializes the WiFi Direct Display (MIRACAST) service.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter enable  Enables/Disables Service based on the value TRUE/FALSE
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_init_miracast(true);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to init miracast\n");
/// return -1;
/// }
///
/// printf("init miracast success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_init_miracast(
  bool enable,
) =>
    tizenWifiDirect.wifi_direct_init_miracast(
      enable,
    );

/// @brief Gets the Autoconnection mode status.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter mode  Describes the auto connection mode of framework has set.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_foreach_supported_wps_types()
/// @see wifi_direct_initialize()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// bool status;
///
/// ret = wifi_direct_is_autoconnection_mode(&status);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get autoconnection mode\n");
/// return -1;
/// }
///
/// printf("auto connect mode = %s\n", (status)?"Yes":"No");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_is_autoconnection_mode(
  ffi.Pointer<ffi.Bool> mode,
) =>
    tizenWifiDirect.wifi_direct_is_autoconnection_mode(
      mode,
    );

/// @brief Checks whether the current group is the autonomous group or not.
/// @details If you create a group by wifi_direct_create_group(),
/// then the current group is the autonomous group.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter is_autonomous_group  Indicates whether the current group is the autonomous group or not
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_create_group()
/// @see wifi_direct_destroy_group()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int res;
/// bool owner;
///
/// res = wifi_direct_is_autonomous_group(&owner); // autonomous group
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get ownership role\n");
/// return -1;
/// }
///
/// printf("Group = %s\n", (owner)?"Auto":"Non-Auto");
/// return 0;
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// if (state == WIFI_DIRECT_GROUP_DESTROYED) {
/// printf("Group destroyed\n");
/// }
///
/// if (state == WIFI_DIRECT_GROUP_CREATED) {
/// printf("Group created\n");
///
/// function();
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_connection_state_changed_cb(callback_1, NULL); // Register callback_1
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// wifi_direct_create_group();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback_1
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_is_autonomous_group(
  ffi.Pointer<ffi.Bool> is_autonomous_group,
) =>
    tizenWifiDirect.wifi_direct_is_autonomous_group(
      is_autonomous_group,
    );

/// @brief Checks whether this device is discoverable or not by P2P discovery.
/// @details If you call wifi_direct_start_discovery(), then your device can be discoverable.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter discoverable  The status of discoverable:
/// (@c true = discoverable, @c false = non-discoverable)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_start_discovery()
/// @see wifi_direct_cancel_discovery()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int ret;
/// bool discoverable;
///
/// ret = wifi_direct_is_discoverable(&discoverable); // check if device is discoverable
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get discoverable property\n");
/// return -1;
/// }
///
/// printf("discoverable=%s\n", discoverable?"Yes":"No");
///
/// return 0;
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
///
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_is_discoverable(
  ffi.Pointer<ffi.Bool> discoverable,
) =>
    tizenWifiDirect.wifi_direct_is_discoverable(
      discoverable,
    );

/// @brief Checks whether this device is the group owner or not.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter is_group_owner Indicates whether this device is the group owner or not
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int res;
/// bool owner;
///
/// res = wifi_direct_is_group_owner(&owner); // destroy autonomous group
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get ownership role\n");
/// return -1;
/// }
///
/// printf("role = %s\n", (owner)?"GO":"STA");
/// return 0;
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// if (state == WIFI_DIRECT_GROUP_DESTROYED) {
/// printf("Group destroyed\n");
///
/// function();
/// }
///
/// if (state == WIFI_DIRECT_GROUP_CREATED) {
/// printf("Group created\n");
///
/// function();
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_connection_state_changed_cb(callback_1, NULL); // Register callback_1
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// wifi_direct_create_group();
///
/// wifi_direct_destroy_group();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback_1
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_is_group_owner(
  ffi.Pointer<ffi.Bool> is_group_owner,
) =>
    tizenWifiDirect.wifi_direct_is_group_owner(
      is_group_owner,
    );

/// @brief Checks whether the local device is listening only.
/// @details If you call wifi_direct_start_discovery() with @a listen_only as @c true,
/// it does not support specific channel but the initial 802.11.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter listen_only  The status of listen only:(@c true = listen only, @c false =
/// cycling between Scan and Listen or not in discovery state)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_start_discovery()
/// @see wifi_direct_cancel_discovery()
/// @see wifi_direct_is_discoverable()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(void)
/// {
/// int ret;
/// bool listen_only;
///
/// ret = wifi_direct_is_listening_only(&listen_only); // check if device is listening
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get discoverable property\n");
/// return -1;
/// }
///
/// printf("listening=%s\n", listen_only?"Yes":"No");
///
/// return 0;
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// function();
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
///
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_is_listening_only(
  ffi.Pointer<ffi.Bool> listen_only,
) =>
    tizenWifiDirect.wifi_direct_is_listening_only(
      listen_only,
    );

/// @brief Checks whether the persistent group is enabled or disabled.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Output parameter enabled  The status of the persistent group: (@c true = enabled, @c false = disabled)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_persistent_group_enabled()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// bool status;
///
/// ret = wifi_direct_is_persistent_group_enabled(&status);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to get status of persistence group enabled\n");
/// return -1;
/// }
///
/// printf("persistence group status = %s\n", status?"Yes":"No");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_is_persistent_group_enabled(
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenWifiDirect.wifi_direct_is_persistent_group_enabled(
      enabled,
    );

/// @brief Registers for a service using Wi-Fi Direct Service Discovery.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter service_type  Describes the type of service.
/// Parameter info1         Describes the information of service. It is service-specific
/// Parameter info2         Describes the information of service. It is service-specific
/// Output parameter service_id   A Service ID will be assigned to service getting registered
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback(int error_code,
/// wifi_direct_service_discovery_state_e discovery_state,
/// wifi_direct_service_type_e service_type,
/// void *response_data, const char * mac_address,
/// void *user_data)
/// {
/// switch (discovery_state) {
/// case WIFI_DIRECT_SERVICE_DISCOVERY_STARTED:
/// printf("Service discovery started\n");
/// break;
///
/// case WIFI_DIRECT_SERVICE_DISCOVERY_FINISHED:
/// printf("Service discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_SERVICE_DISCOVERY_FOUND:
/// printf("Service discovery found\n");
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
/// int option;
/// char *info1;
/// char *info2;
/// wifi_direct_service_type_e type = WIFI_DIRECT_SERVICE_TYPE_ALL;
///
/// printf("Input service type\n");
/// scanf("%1d", &option);
///
/// printf("1.  WIFI_DIRECT_SERVICE_TYPE_ALL\n");
/// printf("2.  WIFI_DIRECT_SERVICE_TYPE_BONJOUR\n");
/// printf("3.  WIFI_DIRECT_SERVICE_TYPE_UPNP\n");
/// printf("4.  WIFI_DIRECT_SERVICE_TYPE_BT_ADDR\n");
/// printf("5.  WIFI_DIRECT_SERVICE_TYPE_CONTACT_INFO\n");
///
/// switch (option) {
/// case 1:
/// type = WIFI_DIRECT_SERVICE_TYPE_ALL;
/// break;
///
/// case 2:
/// type = WIFI_DIRECT_SERVICE_TYPE_BONJOUR;
///
/// printf("Enter the info 1\n");
/// scanf("%50ms", &info1);
///
/// printf("Enter the info 2\n");
/// scanf("%50ms", &info2);
/// break;
///
/// case 3:
/// type = WIFI_DIRECT_SERVICE_TYPE_UPNP;
///
/// printf("Enter the info 1\n");
/// scanf("%50ms", &info1);
///
/// printf("Enter the info 2\n");
/// scanf("%50ms", &info2);
/// break;
///
/// case 4:
/// type = WIFI_DIRECT_SERVICE_TYPE_BT_ADDR;
/// break;
///
/// case 5:
/// type = WIFI_DIRECT_SERVICE_TYPE_CONTACT_INFO;
///
/// printf("Enter the info 1\n");
/// scanf("%50ms", &info1);
/// break;
/// }
///
/// ret = wifi_direct_register_service(type, info1, info2, &option);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to start service discovery\n");
/// return -1;
/// }
///
/// wifi_direct_start_service_discovery(NULL, type);
///
/// free(info1);
/// free(info2);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_service_state_changed_cb(callback, NULL);
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_service_state_changed_cb();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_register_service(
  int service_type,
  ffi.Pointer<ffi.Char> info1,
  ffi.Pointer<ffi.Char> info2,
  ffi.Pointer<ffi.UnsignedInt> service_id,
) =>
    tizenWifiDirect.wifi_direct_register_service(
      service_type,
      info1,
      info2,
      service_id,
    );

/// @brief Removes all persistent devices.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return 0 on success, otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_remove_all_persistent_devices() =>
    tizenWifiDirect.wifi_direct_remove_all_persistent_devices();

/// @brief Removes a persistent device.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  The MAC address of the persistent group owner
/// @return 0 on success, otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_remove_persistent_device(
  ffi.Pointer<ffi.Char> mac_address,
) =>
    tizenWifiDirect.wifi_direct_remove_persistent_device(
      mac_address,
    );

/// @brief Removes a persistent group.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  The MAC address of the persistent group owner
/// Parameter ssid         The SSID (Service Set Identifier) of the persistent group owner
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_foreach_persistent_groups()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char *mac = NULL;
/// char *ssid = NULL;
///
/// printf("Input MAC\n");
/// scanf("%18ms", &mac);
///
/// printf("Input SSID\n");
/// scanf("%33ms", &ssid);
///
/// ret = wifi_direct_remove_persistent_group(mac, ssid);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to remove persistent group\n");
/// return -1;
/// }
///
/// printf("persistent group with MAC (%s) is removed\n", mac);
/// free(mac);
/// free(ssid);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_remove_persistent_group(
  ffi.Pointer<ffi.Char> mac_address,
  ffi.Pointer<ffi.Char> ssid,
) =>
    tizenWifiDirect.wifi_direct_remove_persistent_group(
      mac_address,
      ssid,
    );

/// @brief Removes the Wi-Fi Vendor Specific Information Element (VSIE) from specific frame.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks @a vsie_str for @a frame_id will be in effect until Wi-Fi Direct is deactivated.
/// Parameter frame_id frame ID for removing VSIE
/// Parameter vsie_str VSIE data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate()
/// and set VSIE for specific frame by wifi_direct_add_vsie().
/// @see wifi_direct_activate()
/// @see wifi_direct_add_vsie()
/// @see wifi_direct_get_vsie()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char *vsie = NULL;
/// unsigned int frame_id;
///
/// printf("Input the frame id\n");
/// scanf("%2u", &frame_id);
///
/// printf("Input the vsie\n");
/// scanf("%100ms", &vsie);
///
/// ret = wifi_direct_remove_vsie(frame_id, vsie); // remove vsie
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to remove vsie\n");
/// return -1;
/// }
///
/// printf("vsie removed success\n");
/// free(vsie);
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_remove_vsie(
  int frame_id,
  ffi.Pointer<ffi.Char> vsie_str,
) =>
    tizenWifiDirect.wifi_direct_remove_vsie(
      frame_id,
      vsie_str,
    );

/// @brief Sets the Autoconnection mode.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mode  Describes the mode of connection. In case of TRUE \n
/// auto-connection will be taken care by framework
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_foreach_supported_wps_types()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int auto_connect;
///
/// printf("enable auto connect mode (yes[1] or no[2])\n");
/// scanf("%1d", &auto_connect);
///
/// if (auto_connect)
/// ret = wifi_direct_set_autoconnection_mode(true);
/// else
/// ret = wifi_direct_set_autoconnection_mode(false);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set autoconnection mode\n");
/// return -1;
/// }
///
/// printf("Auto connect mode enabled\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_autoconnection_mode(
  bool mode,
) =>
    tizenWifiDirect.wifi_direct_set_autoconnection_mode(
      mode,
    );

/// @brief Allows a device to connect automatically.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address  Device MAC address to allow autoconnection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// bool peer_selected = false;
/// int connection_timeout = 0;
/// int count = 0; // counter to wait for connection
///
/// int function(char *mac);
///
/// void peers_cb(wifi_direct_discovered_peer_info_s* peer,
/// void *user_data)
/// {
/// char *mac;
///
/// if (peer && !peer_selected) {
/// printf("peer device=%s MAC=%s\n", peer->device_name, peer->mac_address);
///
/// peer_selected = true;
///
/// function(peer->mac_address);
///
/// wifi_direct_connect(peer->mac_address); // Connect to the selected peer
/// }
/// }
///
/// int function(char *mac)
/// {
/// int ret;
///
/// ret = wifi_direct_set_autoconnection_peer(mac); // set autoconnection
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set autoconnection for peer\n");
/// return -1;
/// }
///
/// printf("set auto-connection success\n");
/// return 0;
/// }
///
/// void callback_2(int error_code,
/// wifi_direct_connection_state_e state,
/// const char *mac, void *user_data)
/// {
/// switch (state) {
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTON_RSP:
/// printf("Connected\n");
/// g_source_remove(connection_timeout);
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// printf("Disconnection IND\n");
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP;
/// printf("Disconnected\n");
/// break;
/// }
/// }
///
/// void callback_1(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
///
/// wifi_direct_foreach_discovered_peers(peers_cb,
/// NULL); // Get discovered peer
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback_1, NULL); // Register callback 1
/// wifi_direct_set_connection_state_changed_cb(callback_2, NULL); // Register callback 2
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// wifi_direct_start_discovery(TRUE, 15); // Start discovery
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_connection_state_changed_cb(); // Deregister callback 2
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback 1
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_autoconnection_peer(
  ffi.Pointer<ffi.Char> mac_address,
) =>
    tizenWifiDirect.wifi_direct_set_autoconnection_peer(
      mac_address,
    );

/// @brief Enables / Disables automatic group removal feature when all peers are disconnected.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter enable  Enables/Disables Group Removal feature based on the value TRUE/FALSE
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_connection_state_changed_cb() will be invoked with
/// #WIFI_DIRECT_GROUP_DESTROYED when there's no connected Group Client
/// if device is Group Owner and this feature is enabled.
/// @see wifi_direct_activate()
/// @see wifi_direct_create_group()
/// @see wifi_direct_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_auto_group_removal(true); // Enable auto group removal
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set auto group removal\n");
/// return -1;
/// }
///
/// printf("set auto group removal success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_auto_group_removal(
  bool enable,
) =>
    tizenWifiDirect.wifi_direct_set_auto_group_removal(
      enable,
    );

/// @brief Sets the callback called when the IP address of the client is assigned
/// if your device is the group owner.
/// @since_tizen 2.3
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE               Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED      Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_unset_client_ip_address_assigned_cb()
/// @see wifi_direct_client_ip_address_assigned_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// void callback(const char *mac_address,
/// const char *ip_address,
/// const char *interface_address,
/// void *user_data);
/// {
/// printf("IP Assigned to the client device\n");
///
/// printf("mac=%s\n", mac_address);
/// printf("ip=%s\n", ip_address);
/// printf("iface=%s\n", interface_address);
/// }
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_client_ip_address_assigned_cb(callback,
/// NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to register callback\n");
/// return;
/// }
///
/// printf("callback registered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// function();
/// wifi_direct_deactivate(); // deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_client_ip_address_assigned_cb(
  wifi_direct_client_ip_address_assigned_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_set_client_ip_address_assigned_cb(
      cb,
      user_data,
    );

/// @brief Sets the callback called when the state of connection is changed.
/// @since_tizen 2.3
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE               Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED      Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_unset_connection_state_changed_cb()
/// @see wifi_direct_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback(int error_code,
/// wifi_direct_connection_state_e connection_state,
/// const char *mac_address,
/// void *user_data)
/// {
/// char *ip;
/// bool owner;
/// int wps_mode;
///
/// switch (connection_state) {
///
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTION_RSP:
/// if (error_code == WIFI_DIRECT_ERROR_NONE) {
/// printf("Peer Device Connected\n"); // device is connected
///
/// printf("MAC=%s\n", mac_address); // device's MAC address
///
/// wifi_direct_get_ip_address(&ip);
/// printf("IP=%s\n", ip); //device's IP address
///
/// wifi_direct_is_group_owner(&owner);
/// printf("Ownership=%s\n", (owner)? "GO":"STA"); // (GO or client role)
///
/// } else if (error_code == WIFI_DIRECT_ERROR_CONNECTION_TIME_OUT) {
/// printf("Connection timeout occurred\n");
/// } else if (error_code == WIFI_DIRECT_ERROR_AUTH_FAILED) {
/// printf("Connection authorization Failed\n");
/// } else
/// printf("Connection failed\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTION_WPS_REQ:
///
/// wifi_direct_get_local_wps_type(&wps_mode);
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PBC) {
/// printf("Connection type WPS PBC\n");
/// // Handle WPS PBC case here
/// }
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PIN_DISPLAY) {
/// printf("Connection type WPS PIN DISPLAY\n");
/// // Handle WPS PIN Display case here
/// }
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PIN_KEYPAD) {
/// printf("Connection type WPS PIN KEYPAD\n");
/// // Handle WPS PIN Keypad case here
/// }
/// break;
///
/// case WIFI_DIRECT_CONNECTION_REQ:
/// printf("Connection request from MAC %s\n", mac_address);
///
/// // Handle the connection request from peer device here
/// // 1. WPS PBC
/// // 2. WPS PIN Display
/// // 3. WPS PIN Keypad
///
/// wifi_direct_accept_connection(mac_address);
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disconnected MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disconnection response MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_DISASSOCIATION_IND:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disassociation MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_GROUP_CREATED:
/// printf("Group Created\n");
/// break;
///
/// case WIFI_DIRECT_GROUP_DESTROYED:
/// printf("Group Destroyed\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_connection_state_changed_cb(callback,
/// NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to register callback\n");
/// return;
/// }
///
/// printf("callback registered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// function();
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_connection_state_changed_cb(
  wifi_direct_connection_state_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_set_connection_state_changed_cb(
      cb,
      user_data,
    );

/// @brief Sets the friendly name of a local device.
/// @details This device name is shown to other devices during device discovery.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks The name set is only valid during activated state.
/// After Wi-Fi Direct is deactivated, this name will be same as the phone name.
/// Parameter device_name  The name of a local device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_get_device_name()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// int function(char *name)
/// {
/// int res;
///
/// res = wifi_direct_set_device_name(&name); // set device name
///
/// if (res != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set device name\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// char name[256] = {0, };
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// printf("Enter the device name\n");
/// read(stdin, name, 255);
///
/// function(name);
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_device_name(
  ffi.Pointer<ffi.Char> device_name,
) =>
    tizenWifiDirect.wifi_direct_set_device_name(
      device_name,
    );

/// @brief Sets the callback called when the state of device is changed.
/// @since_tizen 2.3
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE               Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED      Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_unset_device_state_changed_cb()
/// @see wifi_direct_device_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback(int error_code,
/// Wifi_direct_device_state_e device_state,
/// void *user_data)
/// {
/// switch (device_state) {
/// case WIFI_DIRECT_DEVICE_STATE_ACTIVATED:
/// printf("device activated\n");
///
/// //Do stuff here when Wi-Fi Direct is activated
///
/// break;
///
/// case WIFI_DIRECT_DEVICE_STATE_DEACTIVATED:
/// printf("device deactivated\n");
///
/// //Do stuff here when Wi-Fi Direct is deactivated
///
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_device_state_changed_cb(callback, NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to register callback\n");
/// return;
/// }
///
/// printf("callback registered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// function();
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_device_state_changed_cb(
  wifi_direct_device_state_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_set_device_state_changed_cb(
      cb,
      user_data,
    );

/// @brief Sets the callback called when the state of discovery is changed.
/// @since_tizen 2.3
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE               Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED      Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_unset_discovery_state_changed_cb()
/// @see wifi_direct_discovery_state_chagned_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
///
/// }
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_discovery_state_changed_cb(callback, NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to register callback\n");
/// return;
/// }
///
/// printf("callback registered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// function();
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_discovery_state_changed_cb(
  wifi_direct_discovery_state_chagned_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_set_discovery_state_changed_cb(
      cb,
      user_data,
    );

/// @brief Sets the Wi-Fi Display parameters for the WFD IE of local device.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter type  WFD Device Type: define the Role of WFD device like source or sink
/// Parameter port  Specifies Session Management Control Port number. It should be 2 bytes (0~65535)
/// Parameter hdcp  CP support bit: (@c 1 = enable the hdcp support, @c 0 = disable the hdcp support)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate()
/// and Wi-Fi Display must be enabled by wifi_direct_init_display().
/// @see wifi_direct_activate()
/// @see wifi_direct_init_display()
/// @see wifi_direct_deinit_display()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_display(WIFI_DIRECT_DISPLAY_SOURCE, 7236, 1);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set display property\n");
/// return -1;
/// }
///
/// printf("set display param success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_display(
  int type,
  int port,
  int hdcp,
) =>
    tizenWifiDirect.wifi_direct_set_display(
      type,
      port,
      hdcp,
    );

/// @brief Sets the Wi-Fi Display Session Availability.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter availability  Wi-Fi Display Session Availability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate()
/// and enable Wi-Fi Display by wifi_direct_init_display().
/// @see wifi_direct_activate()
/// @see wifi_direct_init_display()
/// @see wifi_direct_deinit_display()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int availability;
///
/// printf("Input the Wi-FI Display availability\n");
/// scanf("%1d", &availability);
///
/// ret = wifi_direct_set_display_availability(availability);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set display availability\n");
/// return -1;
/// }
///
/// printf("set display availability success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_display_availability(
  bool availability,
) =>
    tizenWifiDirect.wifi_direct_set_display_availability(
      availability,
    );

/// @brief Sets the intent of the group owner for each connection type.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks The range of intent is 0 - 15. The higher the @a intent is, the higher the probability to be the group owner is.
/// Parameter type  The type of connection for a peer device
/// Parameter intent  The intent of the group owner
/// @return 0 on success, otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_get_go_intent_per_type()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_go_intent_per_type(
  int type,
  int intent,
) =>
    tizenWifiDirect.wifi_direct_set_go_intent_per_type(
      type,
      intent,
    );

/// @brief Sets the intent of the group owner.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks The range of intent is 0 - 15. The higher the @a intent is,
/// the higher the probability to be the group owner is.
/// Parameter intent The intent of the group owner
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_get_group_owner_intent()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int go_intent;
///
/// printf("Input the GO Intent range(0~15)\n");
/// scanf("%2d", &go_intent);
///
/// ret = wifi_direct_set_group_owner_intent(go_intent);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set go intent\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_group_owner_intent(
  int intent,
) =>
    tizenWifiDirect.wifi_direct_set_group_owner_intent(
      intent,
    );

/// @brief Sets the max number of clients.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter max  The max number of clients
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_get_max_clients()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int max_client;
///
/// printf("Input the maximum clients to be connected\n");
/// scanf("%4d", &max_client);
///
/// ret = wifi_direct_set_max_clients(max_client);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set max clients\n");
/// return -1;
/// }
///
/// printf("max client set success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_max_clients(
  int max,
) =>
    tizenWifiDirect.wifi_direct_set_max_clients(
      max,
    );

/// @brief Sets or updates Wi-Fi Protected Access (WPA) password.
/// When creating Wi-Fi Direct Group, this password will be used.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks A peer can connect to this group as Wi-Fi Infrastructured mode with a passphrase.
/// Parameter passphrase new wpa password to set. Application must set the new password before.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_get_passphrase()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char key[65] = {0, };
///
/// printf("Input the passphrase\n");
/// read(stdin, key, 64);
///
/// ret = wifi_direct_set_passphrase(key);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set passphrase\n");
/// return -1;
/// }
///
/// printf("passphrase set success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_passphrase(
  ffi.Pointer<ffi.Char> passphrase,
) =>
    tizenWifiDirect.wifi_direct_set_passphrase(
      passphrase,
    );

/// @brief Sets the callback called when the peer is found.
/// @since_tizen 2.3
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE               Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED      Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_unset_peer_found_cb()
/// @see wifi_direct_peer_found_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// const char *mac_address,
/// void *user_data)
/// {
/// switch (discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("Peer found\n");
/// printf("MAC Address=%s\n", mac_address);
///
/// // Do stuff here for discovered devices
///
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_peer_found_cb(callback, NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to register callback\n");
/// return;
/// }
///
/// printf("callback registered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// function();
/// wifi_direct_deactivate(); // Deactivate Wi-FI Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_peer_found_cb(
  wifi_direct_peer_found_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_set_peer_found_cb(
      cb,
      user_data,
    );

/// @brief Sets the callback called when the state of connection is changed.
/// @since_tizen 5.0
/// Parameter cb  The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED    Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_unset_peer_info_connection_state_changed_cb()
/// @see wifi_direct_peer_info_connection_state_changed_cb()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_peer_info_connection_state_changed_cb(
  wifi_direct_peer_info_connection_state_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_set_peer_info_connection_state_changed_cb(
      cb,
      user_data,
    );

/// @brief Enables the persistent group.
/// @details If @a enabled is true, then P2P persistent group will be used
/// while creating a group and establishing a connection.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter enabled  The status of persistent group: (@c true = enabled, @c false = disabled)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_is_persistent_group_enabled()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_persistent_group_enabled(true);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set persistence group enabled\n");
/// return -1;
/// }
///
/// printf("persistence group enabled success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_persistent_group_enabled(
  bool enabled,
) =>
    tizenWifiDirect.wifi_direct_set_persistent_group_enabled(
      enabled,
    );

/// @brief Sets the requested WPS (Wi-Fi Protected Setup) type.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter type  The type of WPS
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_foreach_supported_wps_types()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int wps_type;
/// int option;
///
/// printf("Input new WPS mode\n");
/// printf("1. WPS Type PBC\n");
/// printf("2. WPS Type PIN Display\n");
/// printf("3. WPS Type PIN Keypad\n");
/// scanf("%1d", &option);
///
/// switch (input) {
/// case 1:
/// wps_type = WIFI_DIRECT_WPS_TYPE_PBC;
/// break;
///
/// case 2:
/// wps_type = WIFI_DIRECT_WPS_TYPE_PIN_DISPLAY;
/// break;
///
/// case 3:
/// wps_type = WIFI_DIRECT_WPS_TYPE_PIN_KEYPAD;
/// break;
/// }
///
/// ret = wifi_direct_set_req_wps_type(wps_type);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set requested wps types\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_req_wps_type(
  int type,
) =>
    tizenWifiDirect.wifi_direct_set_req_wps_type(
      type,
    );

/// @brief Sets the callback called when the state of the service discovery is changed.
/// @since_tizen 2.3
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE               Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED      Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_unset_service_state_changed_cb()
/// @see wifi_direct_service_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// void callback(int error_code,
/// wifi_direct_service_discovery_state_e discovery_state,
/// wifi_direct_service_type_e service_type,
/// void *response_data,
/// const char *mac_address,
/// void *user_data);
/// {
/// switch (discovery_state) {
/// case WIFI_DIRECT_SERVICE_DISCOVERY_STARTED:
/// printf("Discovery Started\n");
/// break;
///
/// case WIFI_DIRECT_SERVICE_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_SERVICE_DISCOVERY_FOUND:
/// printf("Discovery found\n");
/// if (mac_address != NULL)
/// printf("Peer MAC=%s\n", mac_address);
///
/// if (response_data != NULL)
/// printf("Peer response=%s\n", (char *)response_data);
///
/// if (service_type == WIFI_DIRECT_SERVICE_TYPE_ALL)
/// printf("service type all\n");
/// if (service_type == WIFI_DIRECT_SERVICE_TYPE_BONJOUR)
/// printf("service type bonjour\n");
/// if (service_type == WIFI_DIRECT_SERVICE_TYPE_UPNP)
/// printf("service type UPNP\n");
/// if (service_type == WIFI_DIRECT_SERVICE_TYPE_BT_ADDR)
/// printf("service type BT_ADDR\n");
/// if (service_type == WIFI_DIRECT_SERVICE_TYPE_CONTACT_INFO)\
/// printf("service type contact info\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_service_state_changed_cb(callback,
/// NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to register callback\n");
/// return;
/// }
///
/// printf("callback registered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// function();
/// wifi_direct_deactivate(); // deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_service_state_changed_cb(
  wifi_direct_service_state_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_set_service_state_changed_cb(
      cb,
      user_data,
    );

/// @brief Sets the timer which is used to expire the connection session.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter seconds  Set the connection session timer value in seconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// int session_timeout;
///
/// printf("Input the time for session timer\n");
/// scanf("%2d", &session_timeout);
///
/// ret = wifi_direct_set_session_timer(session_timeout); // set session timer
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set session timer\n");
/// return -1;
/// }
///
/// printf("set session timer success\n");
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_session_timer(
  int seconds,
) =>
    tizenWifiDirect.wifi_direct_set_session_timer(
      seconds,
    );

/// @brief Sets the callback called when the state of Wi-Fi Direct is changed.
/// @since_tizen 3.0
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE               Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED   Operation Failed
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED      Not supported
/// @see wifi_direct_unset_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// char* print_link_state(wifi_direct_state_e state)
/// {
/// if (state == WIFI_DIRECT_STATE_DEACTIVATED)
/// return "DEACTIVATED";
/// if (state == WIFI_DIRECT_STATE_ACTIVATING)
/// return "ACTIVATING";
/// if (state == WIFI_DIRECT_STATE_ACTIVATED)
/// return "ACTIVATED";
/// if (state == WIFI_DIRECT_STATE_DISCOVERING)
/// return "DISCOVERING";
/// if (state == WIFI_DIRECT_STATE_CONNECTING)
/// return "CONNECTING";
/// if (state == WIFI_DIRECT_STATE_DISCONNECTING)
/// return "DISCONNECTING";
/// if (state == WIFI_DIRECT_STATE_CONNECTED)
/// return "CONNECTED";
/// if (state == WIFI_DIRECT_STATE_GROUP_OWNER)
/// return "GROUP OWNER";
/// return "Unknown state";
/// }
///
/// void callback(wifi_direct_state_e state,
/// void *user_data);
/// {
/// printf("State changed [%s]\n", print_link_state(state));
/// }
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_set_state_changed_cb(callback,
/// NULL);
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to register callback\n");
/// return;
/// }
///
/// printf("callback registered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-Fi Direct
/// function();
/// wifi_direct_deactivate(); // deactivate Wi-Fi Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_state_changed_cb(
  wifi_direct_state_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenWifiDirect.wifi_direct_set_state_changed_cb(
      cb,
      user_data,
    );

/// @brief Sets the advertizing WPS (Wi-Fi Protected Setup) type.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter type  The type of WPS. composition of #wifi_direct_config_method_type_e
/// for example #WIFI_DIRECT_CONFIG_METHOD_PBC|#WIFI_DIRECT_CONFIG_METHOD_PIN_DISPLAY
/// Use #WIFI_DIRECT_CONFIG_METHOD_DEFAULT to reset to default value
/// @return 0 on success, otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_activate().
/// @see wifi_direct_initialize()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_wps_config_method(
  int type,
) =>
    tizenWifiDirect.wifi_direct_set_wps_config_method(
      type,
    );

/// @brief Sets or updates the WPS PIN number user expects.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter pin  New pin to set. Application must set the new pin number before
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @see wifi_direct_activate()
/// @see wifi_direct_get_wps_pin()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// int function(void)
/// {
/// int ret;
/// char pin[9] = {0, };
///
/// printf("Input 8 digit PIN to set the WPS PIN mode\n");
/// read(stdin, pin, 8);
///
/// ret = wifi_direct_set_wps_pin(pin); // Set the WPS PIN for connection
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to set the WPS PIN\n");
/// return -1;
/// }
///
/// printf("WPS PIN set success\n");
/// return 0;
/// }
///
/// void callback(int error_code,
/// wifi_direct_connection_state_e connection_state,
/// const char *mac_address,
/// void *user_data)
/// {
/// char *ip;
/// bool owner;
/// int wps_mode;
///
/// switch (connection_state) {
///
/// case WIFI_DIRECT_CONNECTION_IN_PROGRESS:
/// printf("Connection in progress\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTION_RSP:
/// if (error_code == WIFI_DIRECT_ERROR_NONE) {
/// printf("Peer Device Connected\n"); // device is connected
///
/// printf("MAC=%s\n", mac_address); // device's MAC address
///
/// wifi_direct_get_ip_address(&ip);
/// printf("IP=%s\n", ip); //device's IP address
///
/// wifi_direct_is_group_owner(&owner);
/// printf("Ownership=%s\n", (owner)? "GO":"STA"); // (GO or client role)
///
/// } else if (error_code == WIFI_DIRECT_ERROR_CONNECTION_TIME_OUT) {
/// printf("Connection timeout occurred\n");
/// } else if (error_code == WIFI_DIRECT_ERROR_AUTH_FAILED) {
/// printf("Connection authorization Failed\n");
/// } else
/// printf("Connection failed\n");
/// break;
///
/// case WIFI_DIRECT_CONNECTION_WPS_REQ:
///
/// wifi_direct_get_local_wps_type(&wps_mode);
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PBC) {
/// printf("Connection type WPS PBC\n");
/// // Handle WPS PBC case here
/// }
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PIN_DISPLAY) {
/// printf("Connection type WPS PIN DISPLAY\n");
/// // Handle WPS PIN Display case here
/// }
///
/// if (wps_mode == WIFI_DIRECT_WPS_TYPE_PIN_KEYPAD) {
/// printf("Connection type WPS PIN KEYPAD\n");
///
/// // Set 8 digit WPS PIN here
/// // Since the device has received the wps mode as PIN Keypad
/// // User need to set the WPS PIN for peer
/// // device connection using PIN method.
///
/// if (function() == 0)
/// wifi_direct_accept_connection(mac_address); // Accept the requested connection
///
/// }
/// break;
///
/// case WIFI_DIRECT_CONNECTION_REQ:
/// printf("Connection request from MAC %s\n", mac_address);
///
/// // Handle the connection request from peer device here
/// // 1. WPS PBC
/// // 2. WPS PIN Display
/// // 3. WPS PIN Keypad
///
/// wifi_direct_accept_connection(mac_address);
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_IND:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disconnected MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_DISCONNECTION_RSP:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disconnection response MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_DISASSOCIATION_IND:
/// if (error_code == WIFI_DIRECT_ERROR_NONE)
/// printf("peer device disassociation MAC %s\n", mac_address);
/// break;
///
/// case WIFI_DIRECT_GROUP_CREATED:
/// printf("Group Created\n");
/// break;
///
/// case WIFI_DIRECT_GROUP_DESTROYED:
/// printf("Group Destroyed\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_connection_state_changed_cb(callback, NULL); // Register callback
///
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
///
/// wifi_direct_set_connection_state_changed_cb(callback, NULL); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_set_wps_pin(
  ffi.Pointer<ffi.Char> pin,
) =>
    tizenWifiDirect.wifi_direct_set_wps_pin(
      pin,
    );

/// @brief Starts discovery to find all P2P capable devices, asynchronously.
/// @details If application developers call wifi_direct_start_discovery() with @a listen_only as @c true,
/// then skip the initial 802.11 Scan and then enter Listen state instead of
/// cycling between Scan and Listen.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks The function can be called if the Wi-Fi Direct state is one of:\n
/// #WIFI_DIRECT_STATE_ACTIVATED\n
/// #WIFI_DIRECT_STATE_DISCOVERING\n
/// #WIFI_DIRECT_STATE_GROUP_OWNER\n
/// The function can be called even if there is another discovery in progress.
/// All started processes will run simultaneously. Each process will receive
/// #WIFI_DIRECT_DISCOVERY_FINISHED
/// event in wifi_direct_discovery_state_chagned_cb().
/// Parameter listen_only  The status of listen only: (@c true = listen only,
/// @c false = cycling between Scan and Listen)
/// Parameter timeout      Specifies the duration of discovery period, in seconds.
/// If @c 0, then there is no limit on how long the discovery takes.
/// The actual limit (and time after which discovery stops) depends on
/// the vendor's hardware and firmware
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_discovery_state_chagned_cb() will be invoked.
/// @see wifi_direct_activate()
/// @see wifi_direct_cancel_discovery()
/// @see wifi_direct_discovery_state_chagned_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// void callback(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_start_discovery(TRUE, 15); // Start discovery with listen only
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to start scan\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback,
/// NULL); // Register callback
/// wifi_direct_activate(); // Activated Wi-Fi Direct
///
/// function();
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_start_discovery(
  bool listen_only,
  int timeout,
) =>
    tizenWifiDirect.wifi_direct_start_discovery(
      listen_only,
      timeout,
    );

/// @brief Starts discovery to find all P2P capable devices with specified channel, asynchronously.
/// @details If you call this function with @a channel as @c #WIFI_DIRECT_DISCOVERY_FULL_SCAN
/// it works same as wifi_direct_start_discovery() API.
/// If application developers call this function with @a channel as @c #WIFI_DIRECT_DISCOVERY_SOCIAL_CHANNEL,
/// then will search only the devices on the social channels(channel 1 or 6 or 11).
/// If application developers call this function with @a channel as @c #WIFI_DIRECT_DISCOVERY_CHANNEL1,
/// then will search only the devices on the channel 1.
/// If application developers call this function with @a channel as @c #WIFI_DIRECT_DISCOVERY_CHANNEL6,
/// then will search only the devices on the channel 6.
/// If application developers call this function with @a channel as @c #WIFI_DIRECT_DISCOVERY_CHANNEL11,
/// then will search only the devices on the channel 11.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks The function can be called if the Wi-Fi Direct state is one of:\n
/// #WIFI_DIRECT_STATE_ACTIVATED\n
/// #WIFI_DIRECT_STATE_DISCOVERING\n
/// #WIFI_DIRECT_STATE_GROUP_OWNER\n
/// The function can be called even if there is another discovery in progress.
/// All started processes will run simultaneously. Each process will receive
/// #WIFI_DIRECT_DISCOVERY_FINISHED
/// event in wifi_direct_discovery_state_chagned_cb().
/// Parameter listen_only  The status of listen only: (@c true = listen only,
/// @c false = cycling between Scan and Listen)
/// Parameter timeout      Specifies the duration of discovery period, in seconds.
/// If @c 0, then there is no limit on how long the discovery takes.
/// The actual limit (and time after which discovery stops) depends on
/// the vendor's hardware and firmware
/// Parameter channel      Specifies the discovery channel. (Full scan, social channels, channel 1, 6, 11)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_discovery_state_chagned_cb() will be invoked.
/// @see wifi_direct_activate()
/// @see wifi_direct_cancel_discovery()
/// @see wifi_direct_discovery_state_chagned_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// void callback(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_start_discovery_specific_channel(TRUE, 15, // start discovery with 15sec timeout
/// WIFI_DIRECT_DISCOVERY_FULL_SCAN); // scan all channels
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to start scan\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback,
/// NULL); // Register callback
/// wifi_direct_activate(); // Activated Wi-Fi Direct
///
/// function();
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_start_discovery_specific_channel(
  bool listen_only,
  int timeout,
  int channel,
) =>
    tizenWifiDirect.wifi_direct_start_discovery_specific_channel(
      listen_only,
      timeout,
      channel,
    );

/// @brief Starts discovery to find all P2P capable devices with specified frequency, asynchronously.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @remarks The function can be called if the Wi-Fi Direct state is one of:\n
/// #WIFI_DIRECT_STATE_ACTIVATED\n
/// #WIFI_DIRECT_STATE_DISCOVERING\n
/// #WIFI_DIRECT_STATE_GROUP_OWNER\n
/// The function can be called even if there is another discovery in progress.
/// All started processes will run simultaneously. Each process will receive
/// #WIFI_DIRECT_DISCOVERY_FINISHED
/// event in wifi_direct_discovery_state_chagned_cb().
/// Parameter listen_only  Indicates mode in which the discovery service will work.
/// If @c true, the service will only listen, otherwise
/// it will cycle between scanning and listening
/// Parameter timeout      Specifies the duration of discovery period, in seconds.
/// If @c 0, then there is no limit on how long the discovery takes.
/// The actual limit (and time after which discovery stops) depends on
/// the vendor's hardware and firmware
/// Parameter frequency    Specifies the discovery frequency in MHz
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_discovery_state_chagned_cb() will be invoked.
/// @see wifi_direct_activate()
/// @see wifi_direct_cancel_discovery()
/// @see wifi_direct_discovery_state_chagned_cb()
/// @see wifi_direct_discovered_peer_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
///
/// void callback(int error_code,
/// wifi_direct_discovery_state_e discovery_state,
/// void *user_data)
/// {
/// switch(discovery_state) {
/// case WIFI_DIRECT_DISCOVERY_STARTED:
/// printf("Discovery started\n");
/// break;
///
/// case WIFI_DIRECT_ONLY_LISTEN_STARTED:
/// printf("listen started\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FINISHED:
/// printf("Discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_FOUND:
/// printf("peer devices found\n");
/// break;
///
/// case WIFI_DIRECT_DISCOVERY_LOST:
/// printf("Discovery lost\n");
/// break;
///
/// default:
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_start_discovery_specific_freq(TRUE, 15, // start discovery with 15sec timeout
/// 2437); // scan for 2437 MHz frequency (Channel 6)
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to start scan\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_discovery_state_changed_cb(callback,
/// NULL); // Register callback
/// wifi_direct_activate(); // Activated Wi-Fi Direct
///
/// function();
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_discovery_state_changed_cb(); // Deregister callback
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_start_discovery_specific_freq(
  bool listen_only,
  int timeout,
  int frequency,
) =>
    tizenWifiDirect.wifi_direct_start_discovery_specific_freq(
      listen_only,
      timeout,
      frequency,
    );

/// @brief Starts wifi direct service discovery.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter mac_address   The MAC address of servicing device. A broadcast \n
/// will be sent when MAC is SET to ZERO
/// Parameter service_type  Describes the type of service
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE                  Successful
/// @retval #WIFI_DIRECT_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED      Operation failed
/// @retval #WIFI_DIRECT_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #WIFI_DIRECT_ERROR_PERMISSION_DENIED     Permission denied
/// @retval #WIFI_DIRECT_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED         Not supported
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #WIFI_DIRECT_ERROR_RESOURCE_BUSY         Device or resource busy
/// @pre Wi-Fi Direct service must be activated by wifi_direct_activate().
/// @post wifi_direct_set_service_state_changed_cb() will be invoked.
/// @see wifi_direct_activate()
/// @see wifi_direct_set_service_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void callback(int error_code,
/// wifi_direct_service_discovery_state_e discovery_state,
/// wifi_direct_service_type_e service_type,
/// void *response_data, const char * mac_address,
/// void *user_data)
/// {
/// switch (discovery_state) {
/// case WIFI_DIRECT_SERVICE_DISCOVERY_STARTED:
/// printf("Service discovery started\n");
/// break;
///
/// case WIFI_DIRECT_SERVICE_DISCOVERY_FINISHED:
/// printf("Service discovery finished\n");
/// break;
///
/// case WIFI_DIRECT_SERVICE_DISCOVERY_FOUND:
/// printf("Service discovery found\n");
/// break;
/// }
/// }
///
/// int function(void)
/// {
/// int ret;
/// int option;
/// wifi_direct_service_type_e type = WIFI_DIRECT_SERVICE_TYPE_ALL;
///
/// printf("Input service type\n");
/// scanf("%1d", &option);
///
/// printf("1.  WIFI_DIRECT_SERVICE_TYPE_ALL\n");
/// printf("2.  WIFI_DIRECT_SERVICE_TYPE_BONJOUR\n");
/// printf("3.  WIFI_DIRECT_SERVICE_TYPE_UPNP\n");
/// printf("4.  WIFI_DIRECT_SERVICE_TYPE_BT_ADDR\n");
/// printf("5.  WIFI_DIRECT_SERVICE_TYPE_CONTACT_INFO\n");
///
/// switch (option) {
/// case 1:
/// type = WIFI_DIRECT_SERVICE_TYPE_ALL;
/// break;
///
/// case 2:
/// type = WIFI_DIRECT_SERVICE_TYPE_BONJOUR;
/// break;
///
/// case 3:
/// type = WIFI_DIRECT_SERVICE_TYPE_UPNP;
/// break;
///
/// case 4:
/// type = WIFI_DIRECT_SERVICE_TYPE_BT_ADDR;
/// break;
///
/// case 5:
/// type = WIFI_DIRECT_SERVICE_TYPE_CONTACT_INFO;
/// break;
/// }
///
/// ret = wifi_direct_start_service_discovery(NULL, type); // start broadcast service discovery
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to start service discovery\n");
/// return -1;
/// }
///
/// return 0;
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// wifi_direct_set_service_state_changed_cb(callback, NULL);
/// wifi_direct_activate(); // Activate Wi-Fi Direct
///
/// function();
///
/// //       APP CODE HERE
///
/// // App must clean up Wi-Fi Direct before exiting
///
/// wifi_direct_deactivate(); // Deactivate Wi-Fi Direct
/// wifi_direct_unset_service_state_changed_cb();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_start_service_discovery(
  ffi.Pointer<ffi.Char> mac_address,
  int service_type,
) =>
    tizenWifiDirect.wifi_direct_start_service_discovery(
      mac_address,
      service_type,
    );

/// @brief Unsets the callback called when the IP address of the client is assigned
/// if your device is the group owner.
/// @since_tizen 2.3
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE             Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED    Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_unset_client_ip_address_assigned_cb();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deregister callback\n");
/// return;
/// }
///
/// printf("callback deregistered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// function();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_unset_client_ip_address_assigned_cb() =>
    tizenWifiDirect.wifi_direct_unset_client_ip_address_assigned_cb();

/// @brief Unsets the callback called when the state of connection is changed.
/// @since_tizen 2.3
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE             Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED    Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_connection_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_unset_connection_state_changed_cb();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deregister callback\n");
/// return;
/// }
///
/// printf("callback deregistered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// function();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_unset_connection_state_changed_cb() =>
    tizenWifiDirect.wifi_direct_unset_connection_state_changed_cb();

/// @brief Unsets the callback called when the state of device is changed.
/// @since_tizen 2.3
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE             Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED    Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_device_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_unset_device_state_changed_cb();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deregister callback\n");
/// return;
/// }
///
/// printf("callback deregistered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // initialize Wi-Fi Direct
/// function();
/// wifi_direct_deinitialize(); // deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_unset_device_state_changed_cb() =>
    tizenWifiDirect.wifi_direct_unset_device_state_changed_cb();

/// @brief Unsets the callback called when the state of discovery is changed.
/// @since_tizen 2.3
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE             Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED    Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_discovery_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_unset_discovery_state_changed_cb();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deregister callback\n");
/// return;
/// }
///
/// printf("callback deregistered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // initialize Wi-Fi Direct
/// wifi_direct_activate(); // Activate Wi-FI Direct
/// function();
/// wifi_direct_deactivate(); // Deactivate Wi-FI Direct
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_unset_discovery_state_changed_cb() =>
    tizenWifiDirect.wifi_direct_unset_discovery_state_changed_cb();

/// @brief Unsets the callback called when the peer is found.
/// @since_tizen 2.3
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE             Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED    Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_peer_found_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_unset_peer_found_cb();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deregister callback\n");
/// return;
/// }
///
/// printf("callback deregistered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// function();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_unset_peer_found_cb() =>
    tizenWifiDirect.wifi_direct_unset_peer_found_cb();

/// @brief Unsets the callback called when the state of connection is changed.
/// @since_tizen 5.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE  Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED    Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_peer_info_connection_state_changed_cb()
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_unset_peer_info_connection_state_changed_cb() =>
    tizenWifiDirect.wifi_direct_unset_peer_info_connection_state_changed_cb();

/// @brief Unsets the callback called when the state of the service discovery is changed.
/// @since_tizen 2.3
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE             Successful
/// @retval #WIFI_DIRECT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED    Not supported
/// @pre Wi-Fi Direct service must be initialized by wifi_direct_initialize().
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_service_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_unset_service_state_changed_cb();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deregister callback\n");
/// return;
/// }
///
/// printf("callback deregistered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// function();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_unset_service_state_changed_cb() =>
    tizenWifiDirect.wifi_direct_unset_service_state_changed_cb();

/// @brief Unsets the callback called when the state of Wi-Fi Direct is changed.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #WIFI_DIRECT_ERROR_NONE              Successful
/// @retval #WIFI_DIRECT_ERROR_OPERATION_FAILED  Operation Failed
/// @retval #WIFI_DIRECT_ERROR_NOT_SUPPORTED     Not supported
/// @see wifi_direct_initialize()
/// @see wifi_direct_set_state_changed_cb()
///
///
/// Here is an example of the usage:
/// @code
/// #include <stdio.h>
/// #include <wifi_direct.h>
///
/// void function(void)
/// {
/// int ret;
///
/// ret = wifi_direct_unset_state_changed_cb();
///
/// if (ret != WIFI_DIRECT_ERROR_NONE) {
/// printf("Failed to deregister callback\n");
/// return;
/// }
///
/// printf("callback deregistered Successfully\n");
/// }
///
/// int main()
/// {
/// wifi_direct_initialize(); // Initialize Wi-Fi Direct
/// function();
/// wifi_direct_deinitialize(); // Deinitialize Wi-Fi Direct
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenWifiDirect`.
int wifi_direct_unset_state_changed_cb() =>
    tizenWifiDirect.wifi_direct_unset_state_changed_cb();

