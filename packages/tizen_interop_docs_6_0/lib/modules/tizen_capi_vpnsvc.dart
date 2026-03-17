// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiVpnsvc`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-vpnsvc.so.1`.
///
/// Network / VPN Service.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_vpnsvc;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds the DNS server name.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice
/// @remarks The dns address should be set after enabling VPN interface.
/// Parameter handle		The VPN interface handle
/// Parameter dns_server	The DNS server address (IPv4 only)
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_add_dns_server(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Char> dns_server,
) =>
    tizenCapiVpnsvc.vpnsvc_add_dns_server(
      handle,
      dns_server,
    );

/// @brief Adds the route address.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice
/// @remarks The route address should be set after enabling VPN interface.
/// Parameter handle		The VPN interface handle
/// Parameter route_address	Destination address of the routes (IPv4 only)
/// Parameter prefix		The prefix of routes, netmask length (also called a prefix, e.g. 8, 16, 24, 32)
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_add_route(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Char> route_address,
  int prefix,
) =>
    tizenCapiVpnsvc.vpnsvc_add_route(
      handle,
      route_address,
      prefix,
    );

/// @brief Blocks all traffics except specified allowing networks.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice \n
/// %http://tizen.org/privilege/internet
/// Parameter handle                  The VPN interface handle
/// Parameter routes_dest_vpn_addr    Destination address of the routes, the list of allowing networks over VPN interface (e.g., VPN interface such as tun0, etc).
/// Parameter routes_vpn_prefix       The prefix of VPN interface, netmask length (also called a prefix, e.g. 8, 16, 24, 32).
/// Parameter num_allow_routes_vpn    The number of allowing networks over VPN interface. Up to 255 addresses can be allowed.
/// Parameter routes_dest_orig_addr   Destination address of the routes, the list of allowing networks over the original interface (e.g., original interface such as eth0, wlan0, etc).
/// Parameter routes_orig_prefix      The prefix of Original interface, netmask length (also called a prefix, e.g. 8, 16, 24, 32).
/// Parameter num_allow_routes_orig   The number of allowing networks over the original interface. Up to 255addresses can be allowed.
/// @return 0 on success. otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IPC_FAILED            Cannot connect to service daemon
/// @retval #VPNSVC_ERROR_PERMISSION_DENIED     Permission Denied
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @post Please call vpnsvc_unblock_networks() if you want to allow all traffics.
/// @see vpnsvc_unblock_networks()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_block_networks(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> routes_dest_vpn_addr,
  ffi.Pointer<ffi.Int> routes_vpn_prefix,
  int num_allow_routes_vpn,
  ffi.Pointer<ffi.Pointer<ffi.Char>> routes_dest_orig_addr,
  ffi.Pointer<ffi.Int> routes_orig_prefix,
  int num_allow_routes_orig,
) =>
    tizenCapiVpnsvc.vpnsvc_block_networks(
      handle,
      routes_dest_vpn_addr,
      routes_vpn_prefix,
      num_allow_routes_vpn,
      routes_dest_orig_addr,
      routes_orig_prefix,
      num_allow_routes_orig,
    );

/// @brief De-Initializes VPN interface.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice \n
/// %http://tizen.org/privilege/internet
/// Parameter handle The VPN interface handle
/// @return 0 on success. otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IPC_FAILED            Cannot connect to service daemon
/// @retval #VPNSVC_ERROR_PERMISSION_DENIED     Permission Denied
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre Before calling this function, VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_deinit(
  vpnsvc_h handle,
) =>
    tizenCapiVpnsvc.vpnsvc_deinit(
      handle,
    );

/// @brief Gets the fd of the VPN interface.
/// @since_tizen 3.0
/// Parameter handle The VPN interface handle
/// Output parameter iface_fd The vpn interface fd
/// @return The fd value of VPN interface. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_get_iface_fd(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Int> iface_fd,
) =>
    tizenCapiVpnsvc.vpnsvc_get_iface_fd(
      handle,
      iface_fd,
    );

/// @brief Gets the index of VPN interface.
/// @since_tizen 3.0
/// Parameter handle The VPN interface handle
/// Output parameter iface_index The VPN interface index
/// @return The index of the VPN interface. otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre Before calling this function, VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_get_iface_index(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Int> iface_index,
) =>
    tizenCapiVpnsvc.vpnsvc_get_iface_index(
      handle,
      iface_index,
    );

/// @brief Gets the name of VPN interface.
/// @since_tizen 3.0
/// @remarks The @a iface_name should be released using free()
/// Parameter handle    The VPN interface handle
/// Output parameter iface_name The name of VPN interface name
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre Before calling this function, VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_get_iface_name(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> iface_name,
) =>
    tizenCapiVpnsvc.vpnsvc_get_iface_name(
      handle,
      iface_name,
    );

/// @brief Gets the session name for the VPN.
/// @since_tizen 3.0
/// @remarks The @a session should be released using free()
/// Parameter handle   The VPN interface handle
/// Output parameter session The Session Name returned
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre Before calling this function, VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_get_session(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> session,
) =>
    tizenCapiVpnsvc.vpnsvc_get_session(
      handle,
      session,
    );

/// @brief  Initializes VPN interface.
/// @details You should call vpnsvc_get_iface_name() for checking the actual initialized VPN interface name. (In case of duplicated interface name)
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice \n
/// %http://tizen.org/privilege/internet
/// @remarks The @a handle should be released using vpnsvc_deinit().
/// Parameter iface_name The VPN interface name
/// Output parameter handle  The VPN interface handle
/// @return 0 on success. otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_IPC_FAILED            Cannot connect to service daemon
/// @retval #VPNSVC_ERROR_PERMISSION_DENIED     Permission Denied
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @post Please call vpnsvc_deinit() if you want to de-initialize VPN interface.
/// @post Please call vpnsvc_get_iface_fd() if you want to know the fd(file descriptor) of VPN interface.
/// @post Please call vpnsvc_get_iface_index() if you want to know the index of VPN interface.
/// @post Please call vpnsvc_get_iface_name() if you want to know the name of VPN interface.
/// @see vpnsvc_deinit()
/// @see vpnsvc_get_iface_fd()
/// @see vpnsvc_get_iface_index()
/// @see vpnsvc_get_iface_name()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_init(
  ffi.Pointer<ffi.Char> iface_name,
  ffi.Pointer<vpnsvc_h> handle,
) =>
    tizenCapiVpnsvc.vpnsvc_init(
      iface_name,
      handle,
    );

/// @brief Protect a socket from VPN connections.
/// @details After protecting, data sent through this socket will go directly to the underlying network.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice \n
/// %http://tizen.org/privilege/internet
/// Parameter handle    The VPN interface handle
/// Parameter socket_fd The opened socket file descriptor
/// Parameter iface_name  The network interface name (e.g., interface name such as eth0, ppp0, etc) through which the VPN is working
/// @return 0 on success. otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_IPC_FAILED            Cannot connect to service daemon
/// @retval #VPNSVC_ERROR_PERMISSION_DENIED     Permission Denied
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_protect(
  vpnsvc_h handle,
  int socket_fd,
  ffi.Pointer<ffi.Char> iface_name,
) =>
    tizenCapiVpnsvc.vpnsvc_protect(
      handle,
      socket_fd,
      iface_name,
    );

/// @brief Waits for the read event on VPN interface descriptor, but no more than the indicated timeout in milliseconds.
/// @since_tizen 3.0
/// Parameter handle      The VPN interface handle
/// Parameter timeout_ms  The value of timeout (milliseconds)
/// @return 0 on success. otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_TIMEOUT               Timeout (no answer in timeout_ms)
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_read(
  vpnsvc_h handle,
  int timeout_ms,
) =>
    tizenCapiVpnsvc.vpnsvc_read(
      handle,
      timeout_ms,
    );

/// @brief Removes the DNS server name.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice
/// Parameter handle		The VPN interface handle
/// Parameter dns_server	The DNS server address (IPv4 only)
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_remove_dns_server(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Char> dns_server,
) =>
    tizenCapiVpnsvc.vpnsvc_remove_dns_server(
      handle,
      dns_server,
    );

/// @brief Removes the route address.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice
/// Parameter handle			The VPN interface handle
/// Parameter route_address		Destination address of the routes (IPv4 only)
/// Parameter prefix		The prefix of routes, netmask length (also called a prefix, e.g. 8, 16, 24, 32)
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_remove_route(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Char> route_address,
  int prefix,
) =>
    tizenCapiVpnsvc.vpnsvc_remove_route(
      handle,
      route_address,
      prefix,
    );

/// @brief Sets blocking mode of the file descriptor of VPN interface.
/// @since_tizen 3.0
/// Parameter handle    The VPN interface handle
/// Parameter blocking  The blocking mode flag; True = BLOCKING, False = NON_BLOCKING (Default : BLOCKING)
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              Failed to set the blocking flags
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre Before calling this function, VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_set_blocking(
  vpnsvc_h handle,
  bool blocking,
) =>
    tizenCapiVpnsvc.vpnsvc_set_blocking(
      handle,
      blocking,
    );

/// @brief Sets the VPN client IP address.
/// @since_tizen 3.0
/// @remarks The local address should be set before enabling VPN interface. \n
/// vpnsvc_update_settings() should be invoked after setting local IP address.
/// Parameter handle		The VPN interface handle
/// Parameter local_ip		The local (VPN client) IP address (IPv4 only)
///
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_set_local_ip_address(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Char> local_ip,
) =>
    tizenCapiVpnsvc.vpnsvc_set_local_ip_address(
      handle,
      local_ip,
    );

/// @brief Sets the MTU of the VPN interface.
/// @since_tizen 3.0
/// @remarks vpnsvc_update_settings() should be invoked after setting MTU.
/// Parameter handle The VPN interface handle
/// Parameter mtu    The MTU (Maximum Transmission Unit) value to be set for VPN interface. Default MTU size is 1500.
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre Before calling this function, VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_set_mtu(
  vpnsvc_h handle,
  int mtu,
) =>
    tizenCapiVpnsvc.vpnsvc_set_mtu(
      handle,
      mtu,
    );

/// @brief Sets the VPN server IP address.
/// @since_tizen 3.0
/// @remarks The remote address should be set before enabling VPN interface. \n
/// vpnsvc_update_settings() should be invoked after setting remote IP address.
/// Parameter handle		The VPN interface handle
/// Parameter remote_ip		The remote (VPN server) IP address (IPv4 only)
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IO_ERROR              I/O Error (e.g. socket I/O error)
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_set_remote_ip_address(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Char> remote_ip,
) =>
    tizenCapiVpnsvc.vpnsvc_set_remote_ip_address(
      handle,
      remote_ip,
    );

/// @brief Sets the session name for the VPN. (It will be displayed in system-managed dialogs and notifications.)
/// @since_tizen 3.0
/// Parameter handle       The VPN interface handle
/// Parameter session      The Session Name
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre Before calling this function, VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_set_session(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Char> session,
) =>
    tizenCapiVpnsvc.vpnsvc_set_session(
      handle,
      session,
    );

/// @brief Removes any restrictions imposed by vpnsvc_block_networks().
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice \n
/// %http://tizen.org/privilege/internet
/// Parameter handle The VPN interface handle
/// @return 0 on success. otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IPC_FAILED            Cannot connect to service daemon
/// @retval #VPNSVC_ERROR_PERMISSION_DENIED     Permission Denied
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_unblock_networks(
  vpnsvc_h handle,
) =>
    tizenCapiVpnsvc.vpnsvc_unblock_networks(
      handle,
    );

/// @brief Updates settings (Local IP / Remote IP / MTU).
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/vpnservice
/// Parameter handle The VPN interface handle
/// @return 0 on success. Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_IPC_FAILED            Cannot connect to service daemon
/// @retval #VPNSVC_ERROR_PERMISSION_DENIED     Permission Denied
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_update_settings(
  vpnsvc_h handle,
) =>
    tizenCapiVpnsvc.vpnsvc_update_settings(
      handle,
    );

/// @brief Writes the data supplied into the VPN interface.
/// @since_tizen 3.0
/// Parameter handle The VPN interface handle
/// Parameter data   Data writing to VPN interface
/// Parameter size   The size of data
/// @return On success, the number of bytes written is returned (zero indicates nothing was written). Otherwise, a negative error value.
/// @retval #VPNSVC_ERROR_NONE                  Success
/// @retval #VPNSVC_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #VPNSVC_ERROR_NOT_SUPPORTED         Not Supported
/// @retval In case of negative error, please refer to standard posix write API's error code.
/// @pre The VPN interface should be initialized already.
/// @see vpnsvc_init()
///
/// Module getter: `tizenCapiVpnsvc`.
int vpnsvc_write(
  vpnsvc_h handle,
  ffi.Pointer<ffi.Char> data,
  int size,
) =>
    tizenCapiVpnsvc.vpnsvc_write(
      handle,
      data,
      size,
    );

