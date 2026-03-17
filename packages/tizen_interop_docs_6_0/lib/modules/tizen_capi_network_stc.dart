// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiNetworkStc`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-network-stc.so.0`.
///
/// Network / Smart Traffic Control.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_network_stc;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Deinitializes STC.
/// @since_tizen 4.0
///
/// Parameter stc The STC handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_h
/// @see stc_initialize()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_deinitialize(
  stc_h stc,
) =>
    tizenCapiNetworkStc.stc_deinitialize(
      stc,
    );

/// @brief Gets all statistical information.
///
/// @since_tizen 5.5
///
/// Parameter info          All statistics information handle
/// Parameter info_cb       The callback is called for each application
/// Parameter user_data     The user data passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @pre stc_get_all_stats() needs to be called and data needs to be received
/// in stc_get_stats_finished_cb() before calling this function.
/// @post This function invokes stc_stats_info_cb().
/// @see stc_get_all_stats()
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_foreach_all_stats(
  stc_all_stats_info_h info,
  stc_stats_info_cb info_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkStc.stc_foreach_all_stats(
      info,
      info_cb,
      user_data,
    );

/// @deprecated Deprecated since 5.5. Use stc_get_all_stats() and stc_foreach_all_stats() instead.
/// @brief Gets the statistics information of each application asynchronously.
/// @details The callback is called for each application that used network
/// in between timestamps specified.
/// If interface name is not specified, each application will only appear
/// once with the total traffic used over all interfaces.
///
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
///
/// Parameter stc           The STC handle
/// Parameter rule          The statistics rule handle
/// Parameter info_cb The callback is called for each application
/// that used network in between timestamps specified
/// Parameter user_data     The user data passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
/// @retval #STC_ERROR_PERMISSION_DENIED       Permission denied
///
/// @see stc_h
/// @see stc_stats_rule_h
/// @see stc_initialize()
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_set_app_id()
/// @see stc_stats_rule_set_time_interval()
/// @see stc_stats_rule_set_iface_type()
/// @see stc_stats_rule_set_time_period()
/// @see stc_stats_rule_get_app_id()
/// @see stc_stats_rule_get_time_interval()
/// @see stc_stats_rule_get_iface_type()
/// @see stc_stats_rule_get_time_period()
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_foreach_stats(
  stc_h stc,
  stc_stats_rule_h rule,
  stc_stats_info_cb info_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkStc.stc_foreach_stats(
      stc,
      rule,
      info_cb,
      user_data,
    );

/// @brief Starts to get statistical information based on the rules asynchronously.
///
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
///
/// Parameter stc           The STC handle
/// Parameter rule          The statistics rule handle
/// Parameter finished_cb   The callback is called when information gathering is completed
/// Parameter user_data     The user data passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
/// @retval #STC_ERROR_PERMISSION_DENIED       Permission denied
///
/// @post This function invokes stc_get_all_stats_finished_cb().
/// @see stc_h
/// @see stc_stats_rule_h
/// @see stc_initialize()
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_set_app_id()
/// @see stc_stats_rule_set_time_interval()
/// @see stc_stats_rule_set_iface_type()
/// @see stc_stats_rule_set_time_period()
/// @see stc_stats_rule_get_app_id()
/// @see stc_stats_rule_get_time_interval()
/// @see stc_stats_rule_get_iface_type()
/// @see stc_stats_rule_get_time_period()
/// @see stc_get_all_stats_finished_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_get_all_stats(
  stc_h stc,
  stc_stats_rule_h rule,
  stc_get_all_stats_finished_cb finished_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkStc.stc_get_all_stats(
      stc,
      rule,
      finished_cb,
      user_data,
    );

/// @deprecated Deprecated since 5.5. Use stc_get_all_stats() and stc_foreach_all_stats() instead.
/// @brief Gets the statistics information an application matched rule asynchronously.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
///
/// Parameter stc           The STC handle
/// Parameter rule          The statistics rule handle
/// Parameter info_cb       The callback is called for each application
/// that used network in between timestamps specified
/// Parameter user_data     The user data passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
/// @retval #STC_ERROR_PERMISSION_DENIED       Permission denied
///
/// @see stc_h
/// @see stc_stats_rule_h
/// @see stc_initialize()
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_set_app_id()
/// @see stc_stats_rule_set_time_interval()
/// @see stc_stats_rule_set_iface_type()
/// @see stc_stats_rule_set_time_period()
/// @see stc_stats_rule_get_app_id()
/// @see stc_stats_rule_get_time_interval()
/// @see stc_stats_rule_get_iface_type()
/// @see stc_stats_rule_get_time_period()
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_get_stats(
  stc_h stc,
  stc_stats_rule_h rule,
  stc_stats_info_cb info_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkStc.stc_get_stats(
      stc,
      rule,
      info_cb,
      user_data,
    );

/// @deprecated Deprecated since 5.5. Use stc_get_all_stats() and stc_foreach_all_stats() instead.
/// @brief Gets the total statistics information by interface type asynchronously.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
///
/// Parameter stc           The STC handle
/// Parameter rule          The statistics rule handle
/// Parameter info_cb       The callback is called for each application
/// that used network in between timestamps specified
/// Parameter user_data     The user data passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
/// @retval #STC_ERROR_PERMISSION_DENIED       Permission denied
///
/// @see stc_h
/// @see stc_stats_rule_h
/// @see stc_initialize()
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_set_app_id()
/// @see stc_stats_rule_set_time_interval()
/// @see stc_stats_rule_set_iface_type()
/// @see stc_stats_rule_set_time_period()
/// @see stc_stats_rule_get_app_id()
/// @see stc_stats_rule_get_time_interval()
/// @see stc_stats_rule_get_iface_type()
/// @see stc_stats_rule_get_time_period()
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_get_total_stats(
  stc_h stc,
  stc_stats_rule_h rule,
  stc_stats_info_cb info_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkStc.stc_get_total_stats(
      stc,
      rule,
      info_cb,
      user_data,
    );

/// @brief Initializes STC (Smart Traffic Control).
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @remarks You must release @a stc using stc_deinitialize().
///
/// Output parameter stc The STC handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
/// @retval #STC_ERROR_PERMISSION_DENIED       Permission denied
///
/// @see stc_h
/// @see stc_deinitialize()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_initialize(
  ffi.Pointer<stc_h> stc,
) =>
    tizenCapiNetworkStc.stc_initialize(
      stc,
    );

/// @brief Clones the statistics info handle.
/// @since_tizen 5.5
/// @remarks You must release @a cloned using stc_stats_info_destroy().
///
/// Parameter info            The origin statistics info handle
/// Output parameter cloned         The cloned statistics info handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_h
/// @see stc_stats_info_h
/// @see stc_initialize()
/// @see stc_stats_info_destroy()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_clone(
  stc_stats_info_h info,
  ffi.Pointer<stc_stats_info_h> cloned,
) =>
    tizenCapiNetworkStc.stc_stats_info_clone(
      info,
      cloned,
    );

/// @brief Destroys the statistics info handle.
/// @since_tizen 5.5
///
/// Parameter info          The statistics info handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_stats_info_clone()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_destroy(
  stc_stats_info_h info,
) =>
    tizenCapiNetworkStc.stc_stats_info_destroy(
      info,
    );

/// @brief Gets the application ID from statistics information.
/// @since_tizen 4.0
/// @remarks You must release @a app_id using free().
///
/// Parameter info          The statistics information handle
/// Output parameter app_id       The application ID
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_get_app_id(
  stc_stats_info_h info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiNetworkStc.stc_stats_info_get_app_id(
      info,
      app_id,
    );

/// @brief Gets the counters from statistics information.
/// @since_tizen 4.0
///
/// Parameter info          The statistics information handle
/// Output parameter incoming     The incoming counter
/// Output parameter outgoing     The outgoing counter
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_get_counter(
  stc_stats_info_h info,
  ffi.Pointer<ffi.Int64> incoming,
  ffi.Pointer<ffi.Int64> outgoing,
) =>
    tizenCapiNetworkStc.stc_stats_info_get_counter(
      info,
      incoming,
      outgoing,
    );

/// @brief Gets the interface name from statistics information.
/// @since_tizen 4.0
/// @remarks You must release @a iface_name using free().
///
/// Parameter info          The statistics information handle
/// Output parameter iface_name   The interface name
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_get_iface_name(
  stc_stats_info_h info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> iface_name,
) =>
    tizenCapiNetworkStc.stc_stats_info_get_iface_name(
      info,
      iface_name,
    );

/// @brief Gets the interface type from statistics information.
/// @since_tizen 4.0
///
/// Parameter info          The statistics information handle
/// Output parameter iface_type   The interface type
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_iface_type_e
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_get_iface_type(
  stc_stats_info_h info,
  ffi.Pointer<ffi.Int32> iface_type,
) =>
    tizenCapiNetworkStc.stc_stats_info_get_iface_type(
      info,
      iface_type,
    );

/// @brief Gets the process state from statistics information.
/// @since_tizen 4.0
///
/// Parameter info          The statistics information handle
/// Output parameter state        The process state
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_process_state_e
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_get_process_state(
  stc_stats_info_h info,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkStc.stc_stats_info_get_process_state(
      info,
      state,
    );

/// @brief Gets the protocol type from statistics information.
/// @since_tizen 4.0
///
/// Parameter info          The statistics information handle
/// Output parameter protocol     The protocol type
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_protocol_type_e
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_get_protocol_type(
  stc_stats_info_h info,
  ffi.Pointer<ffi.Int32> protocol,
) =>
    tizenCapiNetworkStc.stc_stats_info_get_protocol_type(
      info,
      protocol,
    );

/// @brief Gets the roaming type from statistics information.
/// @since_tizen 4.0
///
/// Parameter info          The statistics information handle
/// Output parameter roaming_type The roaming type
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_roaming_type_e
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_get_roaming_type(
  stc_stats_info_h info,
  ffi.Pointer<ffi.Int32> roaming_type,
) =>
    tizenCapiNetworkStc.stc_stats_info_get_roaming_type(
      info,
      roaming_type,
    );

/// @brief Gets the time interval from statistics information.
/// @since_tizen 4.0
///
/// Parameter info          The statistics information handle
/// Output parameter from         The beginning of the time interval
/// Output parameter to           The end of the time interval
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_info_h
/// @see stc_stats_info_cb()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_info_get_time_interval(
  stc_stats_info_h info,
  ffi.Pointer<time_t> from,
  ffi.Pointer<time_t> to,
) =>
    tizenCapiNetworkStc.stc_stats_info_get_time_interval(
      info,
      from,
      to,
    );

/// @brief Creates the statistics rule handle.
/// @since_tizen 4.0
/// @remarks You must release @a rule using stc_stats_rule_destroy().
///
/// Parameter stc           The STC handle
/// Output parameter rule         The statistics rule handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_h
/// @see stc_stats_rule_h
/// @see stc_initialize()
/// @see stc_stats_rule_destroy()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_create(
  stc_h stc,
  ffi.Pointer<stc_stats_rule_h> rule,
) =>
    tizenCapiNetworkStc.stc_stats_rule_create(
      stc,
      rule,
    );

/// @brief Destroys the statistics rule handle.
/// @since_tizen 4.0
///
/// Parameter rule          The statistics rule handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_stats_rule_create()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_destroy(
  stc_stats_rule_h rule,
) =>
    tizenCapiNetworkStc.stc_stats_rule_destroy(
      rule,
    );

/// @brief Gets the application ID for statistics rule.
/// @since_tizen 4.0
/// @remarks You must release @a app_id using free().
///
/// Parameter rule          The statistics rule handle
/// Output parameter app_id       The application ID
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_set_app_id()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_get_app_id(
  stc_stats_rule_h rule,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiNetworkStc.stc_stats_rule_get_app_id(
      rule,
      app_id,
    );

/// @brief Gets the interface type for statistics rule.
/// @since_tizen 4.0
///
/// Parameter rule          The statistics rule handle
/// Output parameter iface_type   The interface type
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_iface_type_e
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_set_iface_type()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_get_iface_type(
  stc_stats_rule_h rule,
  ffi.Pointer<ffi.Int32> iface_type,
) =>
    tizenCapiNetworkStc.stc_stats_rule_get_iface_type(
      rule,
      iface_type,
    );

/// @brief Gets the time interval for statistics rule.
/// @since_tizen 4.0
///
/// Parameter rule          The statistics rule handle
/// Output parameter from         The beginning of the time interval
/// Output parameter to           The end of the time interval
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_set_time_interval()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_get_time_interval(
  stc_stats_rule_h rule,
  ffi.Pointer<time_t> from,
  ffi.Pointer<time_t> to,
) =>
    tizenCapiNetworkStc.stc_stats_rule_get_time_interval(
      rule,
      from,
      to,
    );

/// @brief Gets the time period for statistics rule.
/// @since_tizen 4.0
///
/// Parameter rule          The statistics rule handle
/// Output parameter time_period  The time period
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_time_period_e
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_set_time_period()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_get_time_period(
  stc_stats_rule_h rule,
  ffi.Pointer<ffi.Int32> time_period,
) =>
    tizenCapiNetworkStc.stc_stats_rule_get_time_period(
      rule,
      time_period,
    );

/// @brief Sets the application ID for statistics rule.
/// @since_tizen 4.0
///
/// Parameter rule          The statistics rule handle
/// Parameter app_id        The application ID
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_get_app_id()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_set_app_id(
  stc_stats_rule_h rule,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiNetworkStc.stc_stats_rule_set_app_id(
      rule,
      app_id,
    );

/// @brief Sets the interface type for statistics rule.
/// @since_tizen 4.0
///
/// Parameter rule          The stats rule handle
/// Parameter iface_type    The interface type
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_iface_type_e
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_get_iface_type()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_set_iface_type(
  stc_stats_rule_h rule,
  int iface_type,
) =>
    tizenCapiNetworkStc.stc_stats_rule_set_iface_type(
      rule,
      iface_type,
    );

/// @brief Sets the time interval for statistics rule.
/// @since_tizen 4.0
///
/// Parameter rule          The statistics rule handle
/// Parameter from          The beginning of the time interval
/// Parameter to            The end of the time interval
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_get_time_interval()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_set_time_interval(
  stc_stats_rule_h rule,
  int from,
  int to,
) =>
    tizenCapiNetworkStc.stc_stats_rule_set_time_interval(
      rule,
      from,
      to,
    );

/// @brief Sets the time period for statistics rule.
/// @since_tizen 4.0
///
/// Parameter rule          The statistics rule handle
/// Parameter time_period   The time period
///
/// @return 0 on success, otherwise a negative error value
/// @retval #STC_ERROR_NONE                    Successful
/// @retval #STC_ERROR_OPERATION_FAILED        General error
/// @retval #STC_ERROR_OUT_OF_MEMORY           Out of memory
/// @retval #STC_ERROR_INVALID_PARAMETER       Invalid parameter
/// @retval #STC_ERROR_INVALID_OPERATION       Invalid operation
/// @retval #STC_ERROR_NOT_INITIALIZED         Not initialized
/// @retval #STC_ERROR_NOT_SUPPORTED           Not supported
///
/// @see stc_stats_rule_h
/// @see stc_time_period_e
/// @see stc_stats_rule_create()
/// @see stc_stats_rule_destroy()
/// @see stc_stats_rule_get_time_period()
///
/// Module getter: `tizenCapiNetworkStc`.
int stc_stats_rule_set_time_period(
  stc_stats_rule_h rule,
  int time_period,
) =>
    tizenCapiNetworkStc.stc_stats_rule_set_time_period(
      rule,
      time_period,
    );

