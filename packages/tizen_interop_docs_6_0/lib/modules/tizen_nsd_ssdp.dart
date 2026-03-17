// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenNsdSsdp`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libnsd-ssdp.so.0`.
///
/// Network / SSDP.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_nsd_ssdp;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates a SSDP local service handle.
/// @since_tizen 3.0
/// @remarks You must release @a local_service using ssdp_destroy_local_service().
/// Parameter target The SSDP local service's target. It may be a device type or a service type specified in UPnP forum (http://upnp.org)
/// Output parameter local_service The SSDP local service handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
/// @see ssdp_destroy_local_service()
/// @pre This API needs ssdp_initialize() before use.
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_create_local_service(
  ffi.Pointer<ffi.Char> target,
  ffi.Pointer<ssdp_service_h> local_service,
) =>
    tizenNsdSsdp.ssdp_create_local_service(
      target,
      local_service,
    );

/// @brief Deinitializes SSDP.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_deinitialize() =>
    tizenNsdSsdp.ssdp_deinitialize();

/// @brief Deregisters the SSDP local service.
/// @since_tizen 3.0
/// @remarks You must pass only local_service created using ssdp_create_local_service().
/// Parameter local_service The SSDP local service handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_deregister_local_service(
  int local_service,
) =>
    tizenNsdSsdp.ssdp_deregister_local_service(
      local_service,
    );

/// @brief Destroys the SSDP local service handle.
/// @details You must call ssdp_deregister_local_service() before destroying the local service.
/// @since_tizen 3.0
/// Parameter local_service The SSDP local service handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
/// @see ssdp_create_local_service()
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_destroy_local_service(
  int local_service,
) =>
    tizenNsdSsdp.ssdp_destroy_local_service(
      local_service,
    );

/// @brief Initializes SSDP.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_OPERATION_FAILED Operation failed
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_initialize() =>
    tizenNsdSsdp.ssdp_initialize();

/// @brief Registers the SSDP local service for publishing.
/// @details You must set a USN and a URL of the local service before ssdp_register_local_service() is called.
/// @since_tizen 3.0
/// @remarks You must pass only local_service created using ssdp_create_local_service().
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter local_service The SSDP local service handle
/// Parameter registered_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_OPERATION_FAILED Operation failed
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
/// @retval #SSDP_ERROR_SERVICE_ALREADY_REGISTERED Service already registered
/// @retval #SSDP_ERROR_PERMISSION_DENIED Permission Denied
/// @pre This API needs ssdp_service_set_usn() and ssdp_service_set_url() before use.
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_register_local_service(
  int local_service,
  ssdp_registered_cb registered_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenNsdSsdp.ssdp_register_local_service(
      local_service,
      registered_cb,
      user_data,
    );

/// @brief Gets the target of SSDP service.
/// @since_tizen 3.0
/// @remarks You must release @a target using free().
/// Parameter service The SSDP service handle
/// Output parameter target The target of SSDP service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_service_get_target(
  int service,
  ffi.Pointer<ffi.Pointer<ffi.Char>> target,
) =>
    tizenNsdSsdp.ssdp_service_get_target(
      service,
      target,
    );

/// @brief Gets the URL of SSDP service.
/// @since_tizen 3.0
/// @remarks You must release @a url using free().
/// Parameter service The SSDP service handle
/// Output parameter url The URL of SSDP service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_service_get_url(
  int service,
  ffi.Pointer<ffi.Pointer<ffi.Char>> url,
) =>
    tizenNsdSsdp.ssdp_service_get_url(
      service,
      url,
    );

/// @brief Gets the USN of SSDP service.
/// @since_tizen 3.0
/// @remarks You must release @a usn using free().
/// Parameter service The SSDP service handle
/// Output parameter usn The USN of SSDP service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_service_get_usn(
  int service,
  ffi.Pointer<ffi.Pointer<ffi.Char>> usn,
) =>
    tizenNsdSsdp.ssdp_service_get_usn(
      service,
      usn,
    );

/// @brief Sets the URL (Uniform Resource Locator) for description of SSDP local service. See RFC 3986.
/// @since_tizen 3.0
/// @remarks You must pass only unregistered @a local_service created using ssdp_create_local_service().
/// If @a local_service is already registered, you cannot set @a url.
/// Parameter local_service The SSDP local service handle
/// Parameter url The URL of SSDP local service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_service_set_url(
  int local_service,
  ffi.Pointer<ffi.Char> url,
) =>
    tizenNsdSsdp.ssdp_service_set_url(
      local_service,
      url,
    );

/// @brief Sets the USN (Unique Service Name) of SSDP local service. The USN format is specified in UPnP forum (http://upnp.org).
/// @since_tizen 3.0
/// @remarks You must pass only unregistered @a local_service created using ssdp_create_local_service().
/// If @a local_service is already registered, you cannot set @a usn.
/// Parameter local_service The SSDP local service handle
/// Parameter usn The USN of SSDP local service
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_service_set_usn(
  int local_service,
  ffi.Pointer<ffi.Char> usn,
) =>
    tizenNsdSsdp.ssdp_service_set_usn(
      local_service,
      usn,
    );

/// @brief Starts browsing the SSDP remote service.
/// @details ssdp_start_browsing_service() keeps browsing services until calling ssdp_stop_browsing_service().
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter target The target to browse
/// Output parameter ssdp_browser The SSDP browser handle
/// Parameter found_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_OPERATION_FAILED Operation failed
/// @retval #SSDP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
/// @retval #SSDP_ERROR_PERMISSION_DENIED Permission Denied
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_start_browsing_service(
  ffi.Pointer<ffi.Char> target,
  ffi.Pointer<ssdp_browser_h> ssdp_browser,
  ssdp_found_cb found_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenNsdSsdp.ssdp_start_browsing_service(
      target,
      ssdp_browser,
      found_cb,
      user_data,
    );

/// @brief Stops browsing the SSDP remote service.
/// @since_tizen 3.0
/// Parameter ssdp_browser The SSDP browser handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #SSDP_ERROR_NONE Successful
/// @retval #SSDP_ERROR_NOT_INITIALIZED Not initialized
/// @retval #SSDP_ERROR_SERVICE_NOT_FOUND Service not found
/// @retval #SSDP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SSDP_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenNsdSsdp`.
int ssdp_stop_browsing_service(
  int ssdp_browser,
) =>
    tizenNsdSsdp.ssdp_stop_browsing_service(
      ssdp_browser,
    );

