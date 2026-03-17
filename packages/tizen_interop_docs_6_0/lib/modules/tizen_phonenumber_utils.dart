// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenPhonenumberUtils`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libphonenumber-utils.so.0`.
///
/// Social / Phonenumber utils.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_phonenumber_utils;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @partner
/// @brief Adds a blocking rule to the phone number database.
///
/// @since_tizen 4.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/blocknumber.write
///
/// Parameter rule     The blocking rule handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_DB_FAILED           Database operation failure
/// @retval #PHONE_NUMBER_ERROR_PERMISSION_DENIED   Permission denied. This application does not have the privilege to call this method.
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_IPC                 Unknown IPC error
/// @retval #PHONE_NUMBER_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @pre phone_number_connect() should be called to open a connection to the phonenumber-utils service.
/// @post phone_number_disconnect() should be called to close a connection to the phonenumber-utils service.
/// @see phone_number_remove_blocking_rule()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_add_blocking_rule(
  phone_number_blocking_rule_h rule,
) =>
    tizenPhonenumberUtils.phone_number_add_blocking_rule(
      rule,
    );

/// @brief Creates a blocking rule.
///
/// @since_tizen 4.0
///
/// @remarks You must release @a rule using phone_number_blocking_rule_destroy().
///
/// Output parameter rule      The blocking rule handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
///
/// @pre     phone_number_connect() should be called to initialize.
///
/// @see phone_number_blocking_rule_destroy()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_blocking_rule_create(
  ffi.Pointer<phone_number_blocking_rule_h> rule,
) =>
    tizenPhonenumberUtils.phone_number_blocking_rule_create(
      rule,
    );

/// @brief Destroys a blocking rule and releases all its resources.
///
/// @since_tizen 4.0
///
/// Parameter rule          The blocking rule handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                 Successful
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
///
/// @see phone_number_blocking_rule_create()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_blocking_rule_destroy(
  phone_number_blocking_rule_h rule,
) =>
    tizenPhonenumberUtils.phone_number_blocking_rule_destroy(
      rule,
    );

/// @brief Gets a rule's match type.
///
/// @since_tizen 4.0
///
/// Parameter   rule         The blocking rule handle
/// Output parameter  match_type        The match type of blocked number
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
///
/// @see phone_number_blocking_rule_set_match_type()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_blocking_rule_get_match_type(
  phone_number_blocking_rule_h rule,
  ffi.Pointer<ffi.Int32> match_type,
) =>
    tizenPhonenumberUtils.phone_number_blocking_rule_get_match_type(
      rule,
      match_type,
    );

/// @brief Gets a blocked number from a rule.
///
/// @since_tizen 4.0
///
/// @remarks You must release @a number using free().
///
/// Parameter   rule        The blocking rule handle
/// Output parameter  number       The blocked number
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
///
/// @see phone_number_blocking_rule_set_number()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_blocking_rule_get_number(
  phone_number_blocking_rule_h rule,
  ffi.Pointer<ffi.Pointer<ffi.Char>> number,
) =>
    tizenPhonenumberUtils.phone_number_blocking_rule_get_number(
      rule,
      number,
    );

/// @brief Sets a rule's match type.
///
/// @since_tizen 4.0
///
/// Parameter rule          The blocking rule handle
/// Parameter match_type        The match type of blocked number
///
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                  Successful
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER     Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
///
/// @see phone_number_blocking_rule_get_match_type()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_blocking_rule_set_match_type(
  phone_number_blocking_rule_h rule,
  int match_type,
) =>
    tizenPhonenumberUtils.phone_number_blocking_rule_set_match_type(
      rule,
      match_type,
    );

/// @brief Sets a blocked number to a rule.
///
/// @since_tizen 4.0
///
/// Parameter   rule          The blocking rule handle
/// Parameter  number       The blocked number
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
///
/// @see phone_number_blocking_rule_get_number()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_blocking_rule_set_number(
  phone_number_blocking_rule_h rule,
  ffi.Pointer<ffi.Char> number,
) =>
    tizenPhonenumberUtils.phone_number_blocking_rule_set_number(
      rule,
      number,
    );

/// @partner
/// @brief Checks if a specific number is blocked or not.
///
/// @since_tizen 4.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/blocknumber.read
///
/// Parameter  number     The number to check blocking
/// Output parameter is_blocked The blocking result
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_DB_FAILED           Database operation failure
/// @retval #PHONE_NUMBER_ERROR_PERMISSION_DENIED   Permission denied. This application does not have the privilege to call this method.
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_IPC                 Unknown IPC error
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @pre phone_number_connect() should be called to open a connection to the phonenumber-utils service.
/// @post phone_number_disconnect() should be called to close a connection to the phonenumber-utils service.
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_check_blocking(
  ffi.Pointer<ffi.Char> number,
  ffi.Pointer<ffi.Bool> is_blocked,
) =>
    tizenPhonenumberUtils.phone_number_check_blocking(
      number,
      is_blocked,
    );

/// @brief Connects to the phonenumber-utils service.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE Successful
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @see phone_number_disconnect()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_connect() =>
    tizenPhonenumberUtils.phone_number_connect();

/// @brief Disconnects from the phonenumber-utils service.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE Successful
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @see phone_number_connect()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_disconnect() =>
    tizenPhonenumberUtils.phone_number_disconnect();

/// @partner
/// @brief Retrieves blocking rules as an array.
///
/// @since_tizen 4.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/blocknumber.read
///
/// @remarks You must release each blocking rule in the array with phone_number_blocking_rule_destroy() and @a rules using free().
///
/// Parameter  offset     The index from which to get results
/// Parameter  limit      The number to limit results (value 0 is used for all blocking rules)
/// Output parameter rules      The array of blocking rule handles
/// Output parameter length     The number of blocking rule handles in the array
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_DB_FAILED           Database operation failure
/// @retval #PHONE_NUMBER_ERROR_PERMISSION_DENIED   Permission denied. This application does not have the privilege to call this method.
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_IPC                 Unknown IPC error
/// @retval #PHONE_NUMBER_ERROR_NO_DATA             Data does not exist
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @pre phone_number_connect() should be called to open a connection to the phonenumber-utils service.
/// @post phone_number_disconnect() should be called to close a connection to the phonenumber-utils service.
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_get_blocking_rules(
  int offset,
  int limit,
  ffi.Pointer<ffi.Pointer<phone_number_blocking_rule_h>> rules,
  ffi.Pointer<ffi.Int> length,
) =>
    tizenPhonenumberUtils.phone_number_get_blocking_rules(
      offset,
      limit,
      rules,
      length,
    );

/// @partner
/// @brief Retrieves blocking rules that block a specific number.
///
/// @since_tizen 4.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/blocknumber.read
///
/// @remarks You must release each blocking rule in the array with phone_number_blocking_rule_destroy() and @a rules using free().
///
/// Parameter  number     The number to get blocking rules related with
/// Output parameter rules      The array of blocking rule handles
/// Output parameter length     The number of blocking rule handles in the array
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_DB_FAILED           Database operation failure
/// @retval #PHONE_NUMBER_ERROR_PERMISSION_DENIED   Permission denied. This application does not have the privilege to call this method.
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_IPC                 Unknown IPC error
/// @retval #PHONE_NUMBER_ERROR_NO_DATA             Data does not exist
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @pre phone_number_connect() should be called to open a connection to the phonenumber-utils service.
/// @post phone_number_disconnect() should be called to close a connection to the phonenumber-utils service.
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_get_blocking_rules_related(
  ffi.Pointer<ffi.Char> number,
  ffi.Pointer<ffi.Pointer<phone_number_blocking_rule_h>> rules,
  ffi.Pointer<ffi.Int> length,
) =>
    tizenPhonenumberUtils.phone_number_get_blocking_rules_related(
      number,
      rules,
      length,
    );

/// @brief Gets the formatted number.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a formatted_number using free().
/// @remarks The phonenumber-utils is changed to client/server architecture for performance improvement since 3.0.
/// phone_number_connect()/phone_number_disconnect() should be called.
/// Parameter  number           The number
/// Parameter  region           The region of number
/// Output parameter formatted_number The formatted number string to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE Successful
/// @retval #PHONE_NUMBER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_FILE_NO_SPACE_ON_DEVICE FS Full
/// @retval #PHONE_NUMBER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_NO_DATA Requested data does not exist
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @pre phone_number_connect() should be called to open a connection to the phonenumber-utils service. (Since 3.0)
/// @post phone_number_disconnect() should be called to close a connection to the phonenumber-utils service. (Since 3.0)
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_get_formatted_number(
  ffi.Pointer<ffi.Char> number,
  int region,
  ffi.Pointer<ffi.Pointer<ffi.Char>> formatted_number,
) =>
    tizenPhonenumberUtils.phone_number_get_formatted_number(
      number,
      region,
      formatted_number,
    );

/// @brief Gets the location string from number, region, and language.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a location using free().
/// @remarks The phonenumber-utils is changed to client/server architecture for performance improvement since 3.0.
/// phone_number_connect()/phone_number_disconnect() should be called.
/// Parameter  number    The number
/// Parameter  region    The region of number
/// Parameter  language  The language of location
/// Output parameter location  The location string to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE Successful
/// @retval #PHONE_NUMBER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_FILE_NO_SPACE_ON_DEVICE FS Full
/// @retval #PHONE_NUMBER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_NO_DATA Requested data does not exist
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @pre phone_number_connect() should be called to open a connection to the phonenumber-utils service. (Since 3.0)
/// @post phone_number_disconnect() should be called to close a connection to the phonenumber-utils service. (Since 3.0)
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_get_location_from_number(
  ffi.Pointer<ffi.Char> number,
  int region,
  int language,
  ffi.Pointer<ffi.Pointer<ffi.Char>> location,
) =>
    tizenPhonenumberUtils.phone_number_get_location_from_number(
      number,
      region,
      language,
      location,
    );

/// @brief Gets the normalized number.
/// @details Normalized number starts with plus('+') and country code, and excludes the separators such
/// as dash or space. It is a format of E.164 standard including the country code based on current network.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/telephony
/// @remarks You must release @a normalized_number using free().
/// @remarks The phonenumber-utils is changed to client/server architecture for performance improvement since 3.0.
/// phone_number_connect()/phone_number_disconnect() should be called.
/// Parameter  number            The number
/// Output parameter normalized_number The normalized number string to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE Successful
/// @retval #PHONE_NUMBER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_NO_DATA Requested data does not exist
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @pre phone_number_connect() should be called to open a connection to the phonenumber-utils service. (Since 3.0)
/// @post phone_number_disconnect() should be called to close a connection to the phonenumber-utils service. (Since 3.0)
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_get_normalized_number(
  ffi.Pointer<ffi.Char> number,
  ffi.Pointer<ffi.Pointer<ffi.Char>> normalized_number,
) =>
    tizenPhonenumberUtils.phone_number_get_normalized_number(
      number,
      normalized_number,
    );

/// @partner
/// @brief Removes a blocking rule from the phone number database.
///
/// @since_tizen 4.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/blocknumber.write
///
/// @remarks The blocking rule to remove should have been gotten from the phone number database using phone_number_get_blocking_rules().
///
/// Parameter rule     The blocking rule handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #PHONE_NUMBER_ERROR_NONE                Successful
/// @retval #PHONE_NUMBER_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #PHONE_NUMBER_ERROR_DB_FAILED           Database operation failure
/// @retval #PHONE_NUMBER_ERROR_PERMISSION_DENIED   Permission denied. This application does not have the privilege to call this method.
/// @retval #PHONE_NUMBER_ERROR_NOT_SUPPORTED Not supported
/// @retval #PHONE_NUMBER_ERROR_IPC                 Unknown IPC error
/// @retval #PHONE_NUMBER_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #PHONE_NUMBER_ERROR_SYSTEM Internal error
/// @pre phone_number_connect() should be called to open a connection to the phonenumber-utils service.
/// @post phone_number_disconnect() should be called to close a connection to the phonenumber-utils service.
/// @see phone_number_add_blocking_rule()
///
/// Module getter: `tizenPhonenumberUtils`.
int phone_number_remove_blocking_rule(
  phone_number_blocking_rule_h rule,
) =>
    tizenPhonenumberUtils.phone_number_remove_blocking_rule(
      rule,
    );

