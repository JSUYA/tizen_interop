// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenAsp`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libasp.so.0`.
///
/// Network / Application Service Platform.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_asp;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds the information for a service to be advertised.
/// @details Application should set service information after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter key          Service-defined key data specified in Section 6 of RFC6763
/// Parameter value        Service-defined value data specified in Section 6 of RFC6763
/// Only one value can be added for a given key. If a value is set for a key,
/// and another value was set for the key before, the old value will be
/// overwritten with the new one.
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_add_info(
  asp_advert_service_h adv_service,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenAsp.asp_advert_add_info(
      adv_service,
      key,
      value,
    );

/// @brief Changes the advertising service status.
/// @details Application should change the advertising service
/// status after advertising service using asp_advert_start_advertising().
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter status       Status of the service:
/// (@c 1 = available to use, @c 0 = not available to use,
/// @c 2-255 = service specific information)
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_start_advertising() before use
/// @see asp_advert_start_advertising()
///
/// Module getter: `tizenAsp`.
int asp_advert_change_service_status(
  asp_advert_service_h adv_service,
  int status,
) =>
    tizenAsp.asp_advert_change_service_status(
      adv_service,
      status,
    );

/// @brief Creates the description of a service to be advertised.
/// @since_tizen 4.0
/// @remarks The @a adv_service should be released using asp_advert_destroy().
/// Parameter instance_name  Service instance name of a service type to be advertised.
/// The length of this parameter be 63 byte or less and
/// encoding shall be single-byte or multi-byte UTF-8 characters.
/// If you want to advertise one of the original P2PS defined services,
/// this shall be NULL.
/// Output parameter adv_service   service descriptor handle
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_advert_destroy()
///
/// Module getter: `tizenAsp`.
int asp_advert_create(
  ffi.Pointer<ffi.Char> instance_name,
  ffi.Pointer<asp_advert_service_h> adv_service,
) =>
    tizenAsp.asp_advert_create(
      instance_name,
      adv_service,
    );

/// @brief Destroys the description of a service to be advertised.
/// @details If asp_advert_start_advertising() was called for a service,
/// asp_advert_stop_advertising() should be called for it before destroying it.
/// @since_tizen 4.0
/// Parameter adv_service Service descriptor handle provided by the asp_advert_create()
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_destroy(
  asp_advert_service_h adv_service,
) =>
    tizenAsp.asp_advert_destroy(
      adv_service,
    );

/// @brief Sets the information for a service to be advertised.
/// @details Application should set service information after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// @remarks @a value should not be freed.
/// It is recommended to make a copy of it to use.
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter key          Service-defined key data specified in Section 6 of RFC6763
/// Parameter length       Length of service-defined value data specified in Section 6 of RFC6763
/// Parameter value        Service-defined value data specified in Section 6 of RFC6763
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_get_info(
  asp_advert_service_h adv_service,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> length,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenAsp.asp_advert_get_info(
      adv_service,
      key,
      length,
      value,
    );

/// @brief Gets the P2P configuration method for a service to be advertised.
/// @details Application should Get configuration method after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service    Service descriptor handle provided by the asp_advert_create()
/// Parameter config_method  preferred Wi-Fi Simple Config (WSC)configuration method.
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_get_p2p_config_method(
  asp_advert_service_h adv_service,
  ffi.Pointer<ffi.Int32> config_method,
) =>
    tizenAsp.asp_advert_get_p2p_config_method(
      adv_service,
      config_method,
    );

/// @brief Gets the Wi-Fi P2P role for a service to be advertised.
/// @details Application should Get role after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter role         The role of the service: \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_ANY - All roles are acceptable \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_GO  - The receiving interface should assume \n
/// the GO role \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_GC  -
/// The receiving interface should assume the GC role
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_get_p2p_role_scheme(
  asp_advert_service_h adv_service,
  ffi.Pointer<ffi.Int32> role,
) =>
    tizenAsp.asp_advert_get_p2p_role_scheme(
      adv_service,
      role,
    );

/// @brief Sets the information for a service to be advertised.
/// @details Application should set service information after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter key          Service-defined key data specified to be removed
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_remove_info(
  asp_advert_service_h adv_service,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenAsp.asp_advert_remove_info(
      adv_service,
      key,
    );

/// @brief Sets auto accept for a service to be advertised.
/// @details Application should set service auto accept after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter auto_accept  Enables/Disables auto accept based on the value TRUE/FALSE
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_auto_accept(
  asp_advert_service_h adv_service,
  bool auto_accept,
) =>
    tizenAsp.asp_advert_set_auto_accept(
      adv_service,
      auto_accept,
    );

/// @brief Sets the discovery mechanism for a service to be advertised.
/// @details Application should set discovery mechanism after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service     Service descriptor handle provided by the asp_advert_create()
/// Parameter discovery_tech  The discovery mechanism; values of
/// #asp_discovery_tech_e combined with bitwise 'or'
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_discovery_tech(
  asp_advert_service_h adv_service,
  int discovery_tech,
) =>
    tizenAsp.asp_advert_set_discovery_tech(
      adv_service,
      discovery_tech,
    );

/// @brief Sets the P2P configuration method for a service to be advertised.
/// @details Application should set configuration method after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service    Service descriptor handle provided by the asp_advert_create()
/// Parameter config_method  preferred Wi-Fi Simple Config (WSC) configuration method.
/// Default value is #ASP_WPS_TYPE_DEFAULT.
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_p2p_config_method(
  asp_advert_service_h adv_service,
  int config_method,
) =>
    tizenAsp.asp_advert_set_p2p_config_method(
      adv_service,
      config_method,
    );

/// @brief Sets the service response for an advertised service.
/// @details Application should set service response after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_create().
/// @since_tizen 4.0
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter rsp_info     Specified for a particular service up to 144 bytes.
/// You can refer to Wi-Fi Peer-to-Peer Services Technical Specification,
/// Wi-Fi Alliance. Available at: http://www.wi-fi.org
/// Parameter length       The length of @a rsp_info in bytes, maximum length is 144
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_p2p_response(
  asp_advert_service_h adv_service,
  ffi.Pointer<ffi.Char> rsp_info,
  int length,
) =>
    tizenAsp.asp_advert_set_p2p_response(
      adv_service,
      rsp_info,
      length,
    );

/// @brief Sets the Wi-Fi P2P role for a service to be advertised.
/// @details Application should set role after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter role         The role of the service: \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_ANY - All roles are acceptable \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_GO  - The receiving interface should assume \n
/// the GO role, if it's not possible, #ASP_ERROR_NETWORK_ROLE_REJECTED \n
/// is returned \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_GC  -
/// The receiving interface should assume the GC role
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE                   Successful
/// @retval #ASP_ERROR_NOT_PERMITTED          Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY          Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER      Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED          Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED        Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED       Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND      Service not found
/// @retval #ASP_ERROR_NETWORK_ROLE_REJECTED  Network role rejected
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_p2p_role_scheme(
  asp_advert_service_h adv_service,
  int role,
) =>
    tizenAsp.asp_advert_set_p2p_role_scheme(
      adv_service,
      role,
    );

/// @brief Sets the preferred connection for a service to be advertised.
/// @details Application should set preferred connection after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service           Service descriptor handle provided by the asp_advert_create()
/// Parameter preferred_connection  The preferred connection
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_preferred_connection(
  asp_advert_service_h adv_service,
  int preferred_connection,
) =>
    tizenAsp.asp_advert_set_preferred_connection(
      adv_service,
      preferred_connection,
    );

/// @brief Sets the service type for a service to be advertised.
/// @details Application should set service type after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service   Service descriptor handle provided by the asp_advert_create()
/// Parameter               service_type  The unique type of a particular service.
/// this shall be at least 1 character and no more than 15 characters long
/// contain only US-ASCII [ANSI.X3.4-1986] letters 'A' - 'Z' and
/// 'a' - 'z', digits '0' - '9', and hyphens ('-', ASCII 0x2D or decimal 45)
/// contain at least one letter ('A' - 'Z' or 'a' - ‘z')
/// not begin or end with a hyphen. If you want to advertise one of the
/// original P2PS defined services, this means service name.
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_service_type(
  asp_advert_service_h adv_service,
  ffi.Pointer<ffi.Char> service_type,
) =>
    tizenAsp.asp_advert_set_service_type(
      adv_service,
      service_type,
    );

/// @brief Sets the status for a service to be advertised.
/// @details Application should set service status after creating service using
/// asp_advert_create() and before advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// Parameter status       Status of the service:
/// (@c 1 = available to use, @c 0 = not available to use,
/// @c 2-255 = service specific information)
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_status(
  asp_advert_service_h adv_service,
  int status,
) =>
    tizenAsp.asp_advert_set_status(
      adv_service,
      status,
    );

/// @brief Registers the callback function that will invoked when the status of an advertisement to a service is changed.
/// @since_tizen 4.0
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data passed from the callback registration function
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @post asp_seek_search_result_cb() will be called under certain conditions,
/// after calling asp_seek_start()
/// @see asp_initialize()
/// @see asp_advert_unset_status_changed_cb()
/// @see asp_advert_start_advertising()
///
/// Module getter: `tizenAsp`.
int asp_advert_set_status_changed_cb(
  asp_advert_status_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAsp.asp_advert_set_status_changed_cb(
      cb,
      user_data,
    );

/// @brief Starts to advertise a service.
/// @details Application should start to advertise after creating service using
/// asp_advert_create(). If the service is being advertised, no changes can be made to it.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_create() before use
/// @see asp_advert_create()
/// @see asp_advert_stop_advertising()
///
/// Module getter: `tizenAsp`.
int asp_advert_start_advertising(
  asp_advert_service_h adv_service,
) =>
    tizenAsp.asp_advert_start_advertising(
      adv_service,
    );

/// @brief Stops a service advertisement.
/// @details Application should cancel to advertise after advertising service using
/// asp_advert_start_advertising().
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter adv_service  Service descriptor handle provided by the asp_advert_create()
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_advert_start_advertising() before use
/// @see asp_advert_start_advertising()
///
/// Module getter: `tizenAsp`.
int asp_advert_stop_advertising(
  asp_advert_service_h adv_service,
) =>
    tizenAsp.asp_advert_stop_advertising(
      adv_service,
    );

/// @brief Unregisters the callback function that will invoked when the status of an advertisement to a service is changed.
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE             Successful
/// @retval #ASP_ERROR_NOT_SUPPORTED    Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED  Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_advert_set_status_changed_cb()
///
/// Module getter: `tizenAsp`.
int asp_advert_unset_status_changed_cb() =>
    tizenAsp.asp_advert_unset_status_changed_cb();

/// @brief Deinitializes Application Service Platform (ASP).
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// @return 0 on success, otherwise a negative error value.
/// @retval #ASP_ERROR_NONE                  Successful
/// @retval #ASP_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #ASP_ERROR_NOT_SUPPORTED         Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #ASP_ERROR_COMMUNICATION_FAILED  Communication failed
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
///
/// Module getter: `tizenAsp`.
int asp_deinitialize() =>
    tizenAsp.asp_deinitialize();

/// @brief Initializes Application Service Platform (ASP).
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value.
/// @retval #ASP_ERROR_NONE                  Successful
/// @retval #ASP_ERROR_RESOURCE_BUSY         Device or resource busy
/// @retval #ASP_ERROR_NOT_SUPPORTED         Not supported
/// @retval #ASP_ERROR_COMMUNICATION_FAILED  Communication failed
/// @retval #ASP_ERROR_OPERATION_FAILED      Operation failed
/// @see asp_deinitialize()
///
/// Module getter: `tizenAsp`.
int asp_initialize() =>
    tizenAsp.asp_initialize();

/// @brief Adds the information for a service to be sought.
/// @details Application should set service information after creating service using
/// asp_seek_create() and before seeking service using asp_seek_start().
/// @since_tizen 4.0
/// @privlevel public
/// Parameter seek_service  Service descriptor handle provided by the asp_seek_create()
/// Parameter key           Service-defined key data to be searched,
/// specified in Section 6 of RFC6763
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_seek_create() before use
/// @see asp_seek_create()
///
/// Module getter: `tizenAsp`.
int asp_seek_add_info(
  asp_seek_service_h seek_service,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenAsp.asp_seek_add_info(
      seek_service,
      key,
    );

/// @brief Creates the description of a seek operation.
/// @remarks The @a seek_service should be released using asp_seek_destroy().
/// @since_tizen 4.0
/// Parameter service_type   Service Type of a service being searched.
/// this shall be at least 1 character and no more than 15 characters long
/// contain only US-ASCII [ANSI.X3.4-1986] letters 'A' - 'Z' and
/// 'a' - 'z', digits '0' - '9', and hyphens ('-', ASCII 0x2D or decimal 45)
/// contain at least one letter ('A' - 'Z' or 'a' - ‘z')
/// not begin or end with a hyphen. If you want to seek one of the
/// original P2PS defined services, this means service name.
/// Output parameter seek_service  Service seek handle
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_seek_destroy()
///
/// Module getter: `tizenAsp`.
int asp_seek_create(
  ffi.Pointer<ffi.Char> service_type,
  ffi.Pointer<asp_seek_service_h> seek_service,
) =>
    tizenAsp.asp_seek_create(
      service_type,
      seek_service,
    );

/// @brief Destroys the description of a seek operation.
/// @details If asp_seek_start() was called for a service,
/// asp_seek_stop() should be called for it before destroying it.
/// asp_seek_stop().
/// @since_tizen 4.0
/// Parameter seek_service  Service seek handle provided by the asp_seek_create()
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre A seek service handle must be created with asp_seek_create().
/// @see asp_seek_create
///
/// Module getter: `tizenAsp`.
int asp_seek_destroy(
  asp_seek_service_h seek_service,
) =>
    tizenAsp.asp_seek_destroy(
      seek_service,
    );

/// @brief Removes the information for a service to be sought.
/// @details Application should set service information after creating service using
/// asp_seek_create() and before seeking service using asp_seek_start().
/// @since_tizen 4.0
/// Parameter seek_service  Service descriptor handle provided by the asp_seek_create()
/// Parameter key           Service-defined key data to be searched,
/// specified in Section 6 of RFC6763
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_seek_create() before use
/// @see asp_seek_create()
///
/// Module getter: `tizenAsp`.
int asp_seek_remove_info(
  asp_seek_service_h seek_service,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenAsp.asp_seek_remove_info(
      seek_service,
      key,
    );

/// @brief Sets the discovery mechanism for a service to be sought.
/// @details Application should set service information after creating service using
/// asp_seek_create() and before seeking service using asp_seek_start().
/// @since_tizen 4.0
/// Parameter seek_service    Service descriptor handle provided by the asp_seek_create()
/// Parameter discovery_tech  The discovery mechanism, values of
/// #asp_discovery_tech_e combined with bitwise 'or'
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_seek_create() before use
/// @see asp_seek_create()
///
/// Module getter: `tizenAsp`.
int asp_seek_set_discovery_tech(
  asp_seek_service_h seek_service,
  int discovery_tech,
) =>
    tizenAsp.asp_seek_set_discovery_tech(
      seek_service,
      discovery_tech,
    );

/// @brief Sets the preferred connection for a service to be sought.
/// @details Application should set service information after creating service using
/// asp_seek_create() and before seeking service using asp_seek_start().
/// @since_tizen 4.0
/// Parameter seek_service          Service descriptor handle provided by the asp_seek_create()
/// Parameter preferred_connection  The preferred connection
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre This API needs asp_seek_create() before use
/// @see asp_seek_create()
///
/// Module getter: `tizenAsp`.
int asp_seek_set_preferred_connection(
  asp_seek_service_h seek_service,
  int preferred_connection,
) =>
    tizenAsp.asp_seek_set_preferred_connection(
      seek_service,
      preferred_connection,
    );

/// @brief Registers the callback function that will be invoked when a service found.
/// @since_tizen 4.0
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data passed from the callback registration function
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @post asp_search_result_cb will be called under certain conditions,
/// after calling asp_seek_start()
/// @see asp_initialize()
/// @see asp_seek_unset_search_result_cb()
/// @see asp_seek_start()
///
/// Module getter: `tizenAsp`.
int asp_seek_set_search_result_cb(
  asp_seek_search_result_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAsp.asp_seek_set_search_result_cb(
      cb,
      user_data,
    );

/// @brief Starts to seek services on peer devices.
/// @details If the service is currently seeking, no changes can be made to it.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter seek_service  Service seek handle provided by the asp_seek_create()
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre A seek service handle must be created with asp_seek_create().
/// @see asp_seek_create()
/// @see asp_seek_stop()
///
/// Module getter: `tizenAsp`.
int asp_seek_start(
  asp_seek_service_h seek_service,
) =>
    tizenAsp.asp_seek_start(
      seek_service,
    );

/// @brief Stops seeking services.
/// @details Application should cancel to seek service after searching service using
/// asp_seek_start().
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter seek_service  Service seek handle provided by the asp_seek_create()
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SERVICE_NOT_FOUND  Service not found
/// @pre A seek service handle must be created with asp_seek_create().
/// @see asp_seek_start()
///
/// Module getter: `tizenAsp`.
int asp_seek_stop(
  asp_seek_service_h seek_service,
) =>
    tizenAsp.asp_seek_stop(
      seek_service,
    );

/// @brief Unregisters the callback function that will invoked when a service found.
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE             Successful
/// @retval #ASP_ERROR_NOT_SUPPORTED    Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED  Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_seek_set_search_result_cb()
///
/// Module getter: `tizenAsp`.
int asp_seek_unset_search_result_cb() =>
    tizenAsp.asp_seek_unset_search_result_cb();

/// @brief Requests that incoming connections be allowed on a given port.
/// @since_tizen 4.0
/// Parameter session     ASP session descriptor handle provided by
/// the asp_session_request_cb() callback or
/// asp_session_create()
/// Parameter ip_address  The IP address on which the port is being used
/// Parameter port        The port number
/// Parameter proto       The IANA protocol number
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @see asp_session_create()
/// @see asp_session_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_bind_port(
  asp_session_h session,
  ffi.Pointer<ffi.Char> ip_address,
  int port,
  int proto,
) =>
    tizenAsp.asp_session_bind_port(
      session,
      ip_address,
      port,
      proto,
    );

/// @brief Ends an Application Service Platform (ASP) session and releases associated resources.
/// @details The ASP may tear down the underlying ASP P2P group
/// if not other ASP sessions are using it.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter session  ASP session descriptor handle provided by
/// the asp_session_request_cb() callback or
/// asp_session_create()
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @see asp_session_create()
/// @see asp_session_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_close(
  asp_session_h session,
) =>
    tizenAsp.asp_session_close(
      session,
    );

/// @brief Confirms the Application Service Platform(ASP) session request.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter session    ASP session descriptor handle provided by
/// the asp_session_request_cb() callback or
/// asp_session_create() if pin is requested.
/// Parameter confirmed  (@c true = confirm session, @c false = reject session)
/// Parameter pin        If session requests the WSC PIN
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @see asp_advert_start_advertising()
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_confirm(
  asp_session_h session,
  bool confirmed,
  ffi.Pointer<ffi.Char> pin,
) =>
    tizenAsp.asp_session_confirm(
      session,
      confirmed,
      pin,
    );

/// @brief Starts to connect the Application Service Platform session.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/wifidirect
/// Parameter session  Application Service Platform session descriptor handle
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_connect(
  asp_session_h session,
) =>
    tizenAsp.asp_session_connect(
      session,
    );

/// @brief Creates a local Application Service Platform (ASP) session.
/// @since_tizen 4.0
/// @remarks The @a session should be released using asp_session_destroy().
/// Parameter service_mac  P2P device address of remote P2P device provided by
/// asp_seek_search_result_cb()
/// Parameter adv_id       The advertisement ID provided by
/// asp_seek_search_result_cb()
/// Output parameter session     ASP session descriptor handle
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @see asp_session_destroy()
///
/// Module getter: `tizenAsp`.
int asp_session_create(
  ffi.Pointer<ffi.Char> service_mac,
  int adv_id,
  ffi.Pointer<asp_session_h> session,
) =>
    tizenAsp.asp_session_create(
      service_mac,
      adv_id,
      session,
    );

/// @brief Destroys a local Application Service Platform (ASP) session.
/// @details Application should create session by asp_session_create().
/// @since_tizen 4.0
/// Parameter session  Application Service Platform session descriptor handle
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_destroy(
  asp_session_h session,
) =>
    tizenAsp.asp_session_destroy(
      session,
    );

/// @brief Gets the session close status.
/// @details This call is valid only for closed sessions (sessions in the #ASP_SESSION_STATE_CLOSED
/// state). If the @a session does not identify a closed session,
/// #ASP_ERROR_NOT_PERMITTED is returned.
/// @since_tizen 4.0
/// Parameter session  ASP session descriptor handle provided by
/// the asp_session_request_cb() callback,
/// asp_session_create(), or asp_session_get_handle()
/// Output parameter status  The session close status
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
///
/// Module getter: `tizenAsp`.
int asp_session_get_close_status(
  asp_session_h session,
  ffi.Pointer<ffi.Int> status,
) =>
    tizenAsp.asp_session_get_close_status(
      session,
      status,
    );

/// @brief Gets the Description of Application Service Platform (ASP) session to be connected.
/// @since_tizen 4.0
/// Parameter session_mac  The MAC address of the P2P device that assigned
/// the value of session_id, as provided by
/// the asp_session_request_cb() callback or
/// asp_session_create() if pin is requested.
/// Parameter session_id   The session ID
/// Output parameter session     Peer-to-Peer service session descriptor handle
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_get_handle(
  ffi.Pointer<ffi.Char> session_mac,
  int session_id,
  ffi.Pointer<asp_session_h> session,
) =>
    tizenAsp.asp_session_get_handle(
      session_mac,
      session_id,
      session,
    );

/// @brief Gets the ID of an Application Service Platform session.
/// @details Application should create local session by
/// asp_session_create() or receive request by asp_session_request_cb().
/// @since_tizen 4.0
/// Parameter session      Application Service Platform session descriptor handle
/// Output parameter session_id  The session ID
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
/// @see asp_session_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_get_id(
  asp_session_h session,
  ffi.Pointer<ffi.UnsignedInt> session_id,
) =>
    tizenAsp.asp_session_get_id(
      session,
      session_id,
    );

/// @brief Gets the information for an Application Service Platform session.
/// @details Application should get session_info after creating session by
/// asp_session_create() and before requesting to connect
/// session by asp_session_connect().
/// @since_tizen 4.0
/// @remarks @a session_info should not be freed.
/// It is recommended to make a copy of it to use.
/// Parameter session        Application Service Platform session descriptor handle
/// provided by the asp_session_create()
/// Output parameter session_info  detailed information about session
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_get_info(
  asp_session_h session,
  ffi.Pointer<ffi.Pointer<ffi.Char>> session_info,
) =>
    tizenAsp.asp_session_get_info(
      session,
      session_info,
    );

/// @brief Gets the session MAC for an Application Service Platform session.
/// @details Application should request to connect session by
/// asp_session_connect() or receive request by asp_session_request_cb().
/// @since_tizen 4.0
/// @remarks @a session_mac should not be freed.
/// It is recommended to make a copy of it to use.
/// Parameter session       Application Service Platform session descriptor handle
/// Output parameter session_mac  The session MAC is the MAC address of
/// P2P device which assigned the session ID
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_connect() before use.
/// @see asp_session_connect()
/// @see asp_session_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_get_mac(
  asp_session_h session,
  ffi.Pointer<ffi.Pointer<ffi.Char>> session_mac,
) =>
    tizenAsp.asp_session_get_mac(
      session,
      session_mac,
    );

/// @brief Gets the Preferred WSC Configuration method.
/// @since_tizen 4.0
/// Parameter session         Application Service Platform session descriptor handle
/// provided by the asp_session_create()
/// Output parameter config_method  Preferred WSC Configuration method
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_get_p2p_config_method(
  asp_session_h session,
  ffi.Pointer<ffi.Int32> config_method,
) =>
    tizenAsp.asp_session_get_p2p_config_method(
      session,
      config_method,
    );

/// @brief Gets the Wi-Fi Direct group role in session.
/// @since_tizen 4.0
/// Parameter session  Application Service Platform session descriptor handle
/// provided by the asp_session_create()
/// Parameter role     The role of the service: \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_ANY - All roles are acceptable \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_GO  - The receiving interface should assume \n
/// the GO role\n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_GC  -
/// The receiving interface should assume the GC role
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_get_p2p_role_scheme(
  asp_session_h session,
  ffi.Pointer<ffi.Int32> role,
) =>
    tizenAsp.asp_session_get_p2p_role_scheme(
      session,
      role,
    );

/// @brief Indicates that the service is no longer utilizing the port in the ASP session.
/// @since_tizen 4.0
/// Parameter session     ASP session descriptor handle provided by
/// the asp_session_request_cb() callback or
/// asp_session_create()
/// Parameter ip_address  The IP address on which the port is being used
/// Parameter port        The port number
/// Parameter proto       The IANA protocol number
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @see asp_session_create()
/// @see asp_session_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_release_port(
  asp_session_h session,
  ffi.Pointer<ffi.Char> ip_address,
  int port,
  int proto,
) =>
    tizenAsp.asp_session_release_port(
      session,
      ip_address,
      port,
      proto,
    );

/// @brief Registers the callback called when the session configuration is requested.
/// @since_tizen 4.0
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data passed from the callback registration function
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_unset_config_request_cb()
/// @see asp_session_config_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_set_config_request_cb(
  asp_session_config_request_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAsp.asp_session_set_config_request_cb(
      cb,
      user_data,
    );

/// @brief Registers the callback called when the state of the session connection is changed.
/// @since_tizen 4.0
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data passed from the callback registration function
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_unset_connect_status_cb()
/// @see asp_session_connect_status_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_set_connect_status_cb(
  asp_session_connect_status_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAsp.asp_session_set_connect_status_cb(
      cb,
      user_data,
    );

/// @brief Sets the information for an Application Service Platform session.
/// @details Application should set session_info after creating session by
/// asp_session_create() and before requesting to connect
/// session by asp_session_connect().
/// @since_tizen 4.0
/// Parameter session       Application Service Platform session descriptor handle
/// provided by the asp_session_create()
/// Parameter session_info  Detailed information about the session.
/// The session_info parameter is defined for each service section
/// and up to 144 bytes. You can refer to Wi-Fi Peer-to-Peer Services
/// Technical Specification, Wi-Fi Alliance.
/// Available at: http://www.wi-fi.org
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_set_info(
  asp_session_h session,
  ffi.Pointer<ffi.Char> session_info,
) =>
    tizenAsp.asp_session_set_info(
      session,
      session_info,
    );

/// @brief Sets the Preferred WSC Configuration method.
/// @details Application should set the config method after creating session by
/// asp_session_create() and before requesting to connect
/// session by asp_session_connect().
/// @since_tizen 4.0
/// Parameter session        Application Service Platform session descriptor handle
/// provided by the asp_session_create()
/// Parameter config_method  Preferred WSC Configuration method.
/// Default value is #ASP_WPS_TYPE_DEFAULT.
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_set_p2p_config_method(
  asp_session_h session,
  int config_method,
) =>
    tizenAsp.asp_session_set_p2p_config_method(
      session,
      config_method,
    );

/// @brief Sets the Wi-Fi Direct group role in session.
/// @details Application should set role after creating session by
/// asp_session_create() and before requesting to connect
/// session by asp_session_connect().
/// @since_tizen 4.0
/// Parameter session  Application Service Platform session descriptor handle
/// provided by the asp_session_create()
/// Parameter role     The role of the service: \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_ANY - All roles are acceptable \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_GO  - The receiving interface should assume \n
/// the GO role, if it's not possible, #ASP_ERROR_NETWORK_ROLE_REJECTED \n
/// is returned \n
/// #ASP_ADVERT_P2P_ROLE_SCHEME_GC  -
/// The receiving interface should assume the GC role
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE                  Successful
/// @retval #ASP_ERROR_NOT_PERMITTED         Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY         Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED         Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED       Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED      Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND     Session not found
/// @retval #ASP_ERROR_NETWORK_ROLE_REJECTED Network role rejected
/// @pre This API needs asp_session_create() before use.
/// @see asp_session_create()
///
/// Module getter: `tizenAsp`.
int asp_session_set_p2p_role_scheme(
  asp_session_h session,
  int role,
) =>
    tizenAsp.asp_session_set_p2p_role_scheme(
      session,
      role,
    );

/// @brief Registers the callback called when the state of the port is changed.
/// @since_tizen 4.0
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data passed from the callback registration function
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_unset_status_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_set_port_status_cb(
  asp_session_port_status_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAsp.asp_session_set_port_status_cb(
      cb,
      user_data,
    );

/// @brief Registers the callback called when ASP session connection is requested.
/// @since_tizen 4.0
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data passed from the callback registration function
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_unset_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_set_request_cb(
  asp_session_request_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAsp.asp_session_set_request_cb(
      cb,
      user_data,
    );

/// @brief Moves an Application Service Platform (ASP) session from Requested state to the Open state.
/// @since_tizen 4.0
/// Parameter session  ASP session descriptor handle provided by
/// the asp_session_request_cb() callback
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_NOT_PERMITTED      Operation not permitted
/// @retval #ASP_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @retval #ASP_ERROR_OPERATION_FAILED   Operation failed
/// @retval #ASP_ERROR_SESSION_NOT_FOUND  Session not found
/// @pre Peer-to-Peer service must be advertised by asp_advert_start_advertising().\n
/// Local device should be listening or finding remote P2P device by
/// asp_advert_start_advertising()
/// @see asp_advert_start_advertising()
///
/// Module getter: `tizenAsp`.
int asp_session_set_state_ready(
  asp_session_h session,
) =>
    tizenAsp.asp_session_set_state_ready(
      session,
    );

/// @brief Registers the callback called when the state of the session is changed.
/// @since_tizen 4.0
/// Parameter cb         The callback function to invoke
/// Parameter user_data  The user data passed from the callback registration function
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE               Successful
/// @retval #ASP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ASP_ERROR_NOT_SUPPORTED      Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED    Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_unset_status_cb()
/// @see asp_session_status_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_set_status_cb(
  asp_session_status_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAsp.asp_session_set_status_cb(
      cb,
      user_data,
    );

/// @brief Unregisters the callback called when the session configuration is requested.
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE             Successful
/// @retval #ASP_ERROR_NOT_SUPPORTED    Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED  Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_config_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_unset_config_request_cb() =>
    tizenAsp.asp_session_unset_config_request_cb();

/// @brief Unregisters the callback called when the state of the session connection is changed.
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE             Successful
/// @retval #ASP_ERROR_NOT_SUPPORTED    Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED  Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_set_connection_status_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_unset_connect_status_cb() =>
    tizenAsp.asp_session_unset_connect_status_cb();

/// @brief Unregisters the callback called when the state of the port is changed.
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE             Successful
/// @retval #ASP_ERROR_NOT_SUPPORTED    Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED  Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_set_port_status_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_unset_port_status_cb() =>
    tizenAsp.asp_session_unset_port_status_cb();

/// @brief Unregisters the callback called ASP when session connection is requested.
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE             Successful
/// @retval #ASP_ERROR_NOT_SUPPORTED    Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED  Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_set_request_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_unset_request_cb() =>
    tizenAsp.asp_session_unset_request_cb();

/// @brief Unregisters the callback called when the state of the session is changed.
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value
/// @retval #ASP_ERROR_NONE             Successful
/// @retval #ASP_ERROR_NOT_SUPPORTED    Not supported
/// @retval #ASP_ERROR_NOT_INITIALIZED  Not initialized
/// @pre Application Service Platform (ASP) must be initialized by asp_initialize().
/// @see asp_initialize()
/// @see asp_session_set_status_cb()
///
/// Module getter: `tizenAsp`.
int asp_session_unset_status_cb() =>
    tizenAsp.asp_session_unset_status_cb();

