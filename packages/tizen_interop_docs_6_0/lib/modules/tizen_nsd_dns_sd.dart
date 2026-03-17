// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenNsdDnsSd`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libnsd-dns-sd.so.0`.
///
/// Network / DNSSD.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_nsd_dns_sd;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates a DNSSD local service handle.
/// @since_tizen 3.0
/// @remarks You must release @a dnssd_service using dnssd_destroy_local_service().
/// Parameter service_type The DNSSD service type. It is expressed as type
/// followed by protocol, separated by a dot(e.g. "_ftp._tcp"). It
/// must begin with an underscore, followed by 1-15 characters which
/// may be letters, digits, or hyphens. The transport protocol must be
/// "_tcp" or "_udp". New service types should be registered at
/// http://www.dns-sd.org/ServiceTypes.html.
/// Output parameter dnssd_service The DNSSD local handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @see dnssd_destroy_local_service()
/// @pre This API needs dnssd_initialize() before use
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_create_local_service(
  ffi.Pointer<ffi.Char> service_type,
  ffi.Pointer<dnssd_service_h> dnssd_service,
) =>
    tizenNsdDnsSd.dnssd_create_local_service(
      service_type,
      dnssd_service,
    );

/// @brief Deinitializes DNSSD.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_INVALID_OPERATION Invalid Operation
/// @pre DNS-SD service must be initialized by dnssd_initialize().
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_deinitialize() =>
    tizenNsdDnsSd.dnssd_deinitialize();

/// @brief Deregisters the DNSSD local service.
/// @since_tizen 3.0
/// @remarks You must pass only local services registered using dnssd_register_local_service().
/// Parameter local_service The DNSSD local service handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @see dnssd_create_local_service()
/// @see dnssd_register_local_service()
/// @pre This API needs dnssd_register_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_deregister_local_service(
  int local_service,
) =>
    tizenNsdDnsSd.dnssd_deregister_local_service(
      local_service,
    );

/// @brief Destroys the DNSSD local service handle.
/// @details Destroying a local service doesn't deregister local service. If
/// local service was registered using dnssd_register_local_service(),
/// then it must be deregistered using dnssd_deregister_local_service()
/// before destroying the local service.
/// @since_tizen 3.0
/// @remarks You must destroy only local services created using dnssd_create_local_service().
/// Parameter dnssd_service The DNSSD local service handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @see dnssd_create_local_service()
/// @pre This API needs dnssd_create_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_destroy_local_service(
  int dnssd_service,
) =>
    tizenNsdDnsSd.dnssd_destroy_local_service(
      dnssd_service,
    );

/// @brief Initializes DNSSD.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_initialize() =>
    tizenNsdDnsSd.dnssd_initialize();

/// @brief Registers the DNSSD local service for publishing.
/// @since_tizen 3.0
/// @remarks You must pass only local services created using dnssd_create_local_service().
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter local_service The DNSSD local service handle
/// Parameter register_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_OPERATION_FAILED Operation failed
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @retval #DNSSD_ERROR_PERMISSION_DENIED Permission Denied
/// @see dnssd_create_local_service()
/// @pre This API needs dnssd_create_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_register_local_service(
  int local_service,
  dnssd_registered_cb register_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenNsdDnsSd.dnssd_register_local_service(
      local_service,
      register_cb,
      user_data,
    );

/// @brief Adds the TXT record.
/// @details TXT record gives additional information about the service.
/// Some services discovered via dnssd_start_browsing_service() may
/// need more than just IP address and port number to completely
/// identify the service instance. For example, A web server typically
/// has multiple pages, each identified by its own URL.
/// So additional data is stored in a TXT record. Check Section 6 of
/// http://files.dns-sd.org/draft-cheshire-dnsext-dns-sd.txt
/// for details. TXT record of known service types can be found at
/// http://www.dns-sd.org/ServiceTypes.html. TXT record is stored in a
/// structured form using key/value pairs.
/// @since_tizen 3.0
/// @remarks You must pass only local services created using dnssd_create_local_service().
/// Parameter local_service The DNSSD local service handle
/// Parameter key The key of the TXT record. A null-terminated string which only
/// contains printable ASCII values (0x20-0x7E), excluding '=' (0x3D).
/// Keys should be 9 characters or fewer excluding NULL. Keys are case
/// insensitive. Keys for known service types can be found at
/// http://www.dns-sd.org/ServiceTypes.html. For details, see section
/// 6.4 of http://files.dns-sd.org/draft-cheshire-dnsext-dns-sd.txt.
/// Parameter length The length of the value of the TXT record in bytes. The
/// total size of a typical DNS-SD TXT record is intended to be small
/// (upto 200 bytes). For details, see section 6.2 of
/// http://files.dns-sd.org/draft-cheshire-dnsext-dns-sd.txt
/// Parameter value The value of the TXT record. It can be any binary value. For
/// value that represents textual data, UTF-8 is STRONGLY recommended.
/// For value that represents textual data, value_length should NOT
/// include the terminating null (if any) at the end of the string. If
/// NULL, then "key" will be added with no value. If non-NULL but
/// value_length is zero, then "key=" will be added with empty value.
/// For details see section 6.5 of
/// http://files.dns-sd.org/draft-cheshire-dnsext-dns-sd.txt
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_ALREADY_REGISTERED Already Registered
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @retval #DNSSD_ERROR_OUT_OF_MEMORY Out of Memory
/// @see dnssd_create_local_service()
/// @pre This API needs dnssd_create_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_add_txt_record(
  int local_service,
  ffi.Pointer<ffi.Char> key,
  int length,
  ffi.Pointer<ffi.Void> value,
) =>
    tizenNsdDnsSd.dnssd_service_add_txt_record(
      local_service,
      key,
      length,
      value,
    );

/// @brief Gets the TXT record.
/// @details TXT record gives additional information about the service. Some
/// services discovered via dnssd_start_browsing_service() may need
/// more than just IP address and port number to completely identify
/// the service instance. For example, a web server typically has
/// multiple pages, each identified by its own URL. So additional data
/// is stored in a TXT record. Check Section 6 of
/// http://files.dns-sd.org/draft-cheshire-dnsext-dns-sd.txt for
/// details. TXT record of known service types can be found at
/// http://www.dns-sd.org/ServiceTypes.html. TXT record is stored in a
/// structured form using key/value pairs.
/// @since_tizen 3.0
/// @remarks You must release @a value using free().
/// Parameter dnssd_service The DNSSD local/remote service handle
/// Output parameter length The length of the value of the TXT record in bytes
/// Output parameter value The value of the TXT record
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_get_all_txt_record(
  int dnssd_service,
  ffi.Pointer<ffi.UnsignedShort> length,
  ffi.Pointer<ffi.Pointer<ffi.Void>> value,
) =>
    tizenNsdDnsSd.dnssd_service_get_all_txt_record(
      dnssd_service,
      length,
      value,
    );

/// @brief Gets the IP of DNSSD remote service.
/// @since_tizen 3.0
/// @remarks You must release @a ip_v4_address, @a ip_v6_address using free().
/// Parameter dnssd_service The DNSSD remote service handle
/// Output parameter ip_v4_address The IP version 4 address of DNSSD service. If there
/// is no IPv4 Address, then it would contain NULL and should not be freed
/// Output parameter ip_v6_address The IP version 6 address of DNSSD service. If there
/// is no IPv6 Address, then it would contain NULL and should not be freed
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_get_ip(
  int dnssd_service,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_v4_address,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ip_v6_address,
) =>
    tizenNsdDnsSd.dnssd_service_get_ip(
      dnssd_service,
      ip_v4_address,
      ip_v6_address,
    );

/// @brief Gets the name of DNSSD local/remote service.
/// @since_tizen 3.0
/// @remarks You must release @a service_name using free().
/// Parameter dnssd_service The DNSSD local/remote service handle
/// Output parameter service_name The name of DNSSD service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_get_name(
  int dnssd_service,
  ffi.Pointer<ffi.Pointer<ffi.Char>> service_name,
) =>
    tizenNsdDnsSd.dnssd_service_get_name(
      dnssd_service,
      service_name,
    );

/// @brief Gets the port number of DNSSD local/remote service.
/// @since_tizen 3.0
/// Parameter dnssd_service The DNSSD service local/remote handle
/// Output parameter port The port number of DNSSD service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_get_port(
  int dnssd_service,
  ffi.Pointer<ffi.Int> port,
) =>
    tizenNsdDnsSd.dnssd_service_get_port(
      dnssd_service,
      port,
    );

/// @brief Gets the type of DNSSD local/remote service.
/// @since_tizen 3.0
/// @remarks You must release @a service_type using free().
/// Parameter dnssd_service The DNSSD local/remote service handle
/// Output parameter service_type The type of DNSSD service. It is expressed as type
/// followed by protocol, separated by a dot(e.g. "_ftp._tcp"). It
/// must begin with an underscore, followed by 1-15 characters which
/// may be letters, digits, or hyphens. The transport protocol must be
/// "_tcp" or "_udp". New service types should be registered at
/// http://www.dns-sd.org/ServiceTypes.html
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_get_type(
  int dnssd_service,
  ffi.Pointer<ffi.Pointer<ffi.Char>> service_type,
) =>
    tizenNsdDnsSd.dnssd_service_get_type(
      dnssd_service,
      service_type,
    );

/// @brief Removes the TXT record.
/// @since_tizen 3.0
/// @remarks You must pass only local services created using dnssd_create_local_service().
/// Parameter local_service The DNSSD local service handle
/// Parameter key The key of the TXT record to be removed
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @see dnssd_create_local_service()
/// @see dnssd_service_add_txt_record()
/// @pre This API needs dnssd_create_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_remove_txt_record(
  int local_service,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenNsdDnsSd.dnssd_service_remove_txt_record(
      local_service,
      key,
    );

/// @brief Sets the name of DNSSD local service.
/// @details Application should set name after creating local service using
/// dnssd_create_local_service() and before registering the local
/// service using dnssd_register_local_service().
/// @since_tizen 3.0
/// @remarks You must pass only local services created using dnssd_create_local_service().
/// Parameter local_service The DNSSD local service handle
/// Parameter service_name The name of DNSSD local service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @see dnssd_create_local_service()
/// @pre This API needs dnssd_create_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_set_name(
  int local_service,
  ffi.Pointer<ffi.Char> service_name,
) =>
    tizenNsdDnsSd.dnssd_service_set_name(
      local_service,
      service_name,
    );

/// @brief Sets the port number of DNSSD local service.
/// @details Application should set port after creating local service using
/// dnssd_create_local_service() and before registering the local
/// service using dnssd_register_local_service().
/// @since_tizen 3.0
/// @remarks You must pass only local services created using dnssd_create_local_service().
/// Parameter local_service The DNSSD local service handle
/// Parameter port The port number of DNSSD local service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @see dnssd_create_local_service()
/// @pre This API needs dnssd_create_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_set_port(
  int local_service,
  int port,
) =>
    tizenNsdDnsSd.dnssd_service_set_port(
      local_service,
      port,
    );

/// @brief Sets/updates the DNS resource record.
/// @details If the resource record for the type has been previously added using
/// dnssd_service_set_record(), then the record will be updated. DNS
/// resource record can be set only after local_service is registered
/// using dnssd_register_local_service(). Data is added using
/// dnssd_service_add_txt_record() and then obtained using
/// dnssd_service_get_all_txt_record() to pass here.
/// @since_tizen 3.0
/// @remarks You must pass only local services created using dnssd_create_local_service().
/// Parameter local_service The DNSSD local service handle
/// Parameter type The resource record type. For details see, RFC 1035 and RFC 2782
/// Parameter length The length of the resource record in bytes
/// Parameter data The data contained in resource record to be added
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_OPERATION_FAILED Operation failed
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_ALREADY_REGISTERED Already Registered
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @retval #DNSSD_ERROR_OUT_OF_MEMORY Out of Memory
/// @see dnssd_create_local_service()
/// @pre This API needs dnssd_create_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_set_record(
  int local_service,
  int type,
  int length,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenNsdDnsSd.dnssd_service_set_record(
      local_service,
      type,
      length,
      data,
    );

/// @brief Unsets the DNS resource record. DNS resource record for the given type
/// must be set using dnssd_service_set_record().
/// @since_tizen 3.0
/// @remarks You must pass only local services created using dnssd_create_local_service().
/// Parameter local_service The DNSSD local service handle
/// Parameter type The resource record type. For details, see RFC 1035 and RFC 2782
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_OPERATION_FAILED Operation failed
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @see dnssd_create_local_service()
/// @pre This API needs dnssd_create_local_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_service_unset_record(
  int local_service,
  int type,
) =>
    tizenNsdDnsSd.dnssd_service_unset_record(
      local_service,
      type,
    );

/// @brief Starts browsing the DNSSD remote service.
/// @details found_cb would be called only if there are any services available of
/// service_type provided in the argument. Application will keep
/// browsing for available/unavailable services until it calls
/// dnssd_stop_browsing_service().
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter service_type The DNSSD service type to browse. It is expressed
/// as type followed by protocol, separated by a dot(e.g. "_ftp._tcp").
/// It must begin with an underscore, followed by 1-15 characters
/// which may be letters, digits, or hyphens. The transport protocol
/// must be "_tcp" or "_udp". New service types should be registered
/// at http://www.dns-sd.org/ServiceTypes.html
/// Output parameter dnssd_service The DNSSD browse service handle
/// Parameter found_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @retval #DNSSD_ERROR_PERMISSION_DENIED Permission Denied
/// @pre This API needs dnssd_initialize() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_start_browsing_service(
  ffi.Pointer<ffi.Char> service_type,
  ffi.Pointer<dnssd_browser_h> dnssd_service,
  dnssd_found_cb found_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenNsdDnsSd.dnssd_start_browsing_service(
      service_type,
      dnssd_service,
      found_cb,
      user_data,
    );

/// @brief Stops browsing the DNSSD remote service.
/// @since_tizen 3.0
/// Parameter dnssd_service The DNSSD browse service handle returned by
/// dnssd_start_browsing_service()
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #DNSSD_ERROR_NONE Successful
/// @retval #DNSSD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DNSSD_ERROR_NOT_SUPPORTED Not Supported
/// @retval #DNSSD_ERROR_SERVICE_NOT_RUNNING Service Not Running
/// @retval #DNSSD_ERROR_NOT_INITIALIZED Not Initialized
/// @pre This API needs dnssd_start_browsing_service() before use.
///
/// Module getter: `tizenNsdDnsSd`.
int dnssd_stop_browsing_service(
  int dnssd_service,
) =>
    tizenNsdDnsSd.dnssd_stop_browsing_service(
      dnssd_service,
    );

