// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenFidoClient`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libfido-client.so.0`.
///
/// Account / FIDO Client.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_fido_client;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Retrieves all the available attestation types for this Authenticator.
/// @since_tizen 3.0
///
/// Parameter auth The Authenticator handle
/// Parameter cb The iteration callback
/// Parameter user_data The user data
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_foreach_attestation_type(
  fido_authenticator_h auth,
  fido_attestation_type_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenFidoClient.fido_authenticator_foreach_attestation_type(
      auth,
      cb,
      user_data,
    );

/// @brief Retrieves the Authenticator AAID (Authenticator Attestation ID).
/// @since_tizen 3.0
///
/// @remarks		The @a aaid should be released using free().
/// Parameter auth The Authenticator handle
/// Output parameter aaid The AAID
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_aaid(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Pointer<ffi.Char>> aaid,
) =>
    tizenFidoClient.fido_authenticator_get_aaid(
      auth,
      aaid,
    );

/// @brief Retrieves the Authenticator algorithm.
/// @since_tizen 3.0
///
/// Parameter auth The Authenticator handle
/// Output parameter algo The authentication algorithm
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_algorithm(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Int32> algo,
) =>
    tizenFidoClient.fido_authenticator_get_algorithm(
      auth,
      algo,
    );

/// @brief Retrieves the Authenticator assertion scheme.
/// @since_tizen 3.0
///
/// @remarks		The @a scheme should be released using free(). Refer to FIDO UAF Registry document for more details.
/// Parameter auth The Authenticator handle
/// Output parameter scheme The assertion scheme. UAFV1TLV is the default assertion scheme
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_assertion_scheme(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Pointer<ffi.Char>> scheme,
) =>
    tizenFidoClient.fido_authenticator_get_assertion_scheme(
      auth,
      scheme,
    );

/// @brief Retrieves the attachment hint of this Authenticator.
/// @since_tizen 3.0
///
/// Parameter auth The Authenticator handle
/// Output parameter attachment_hint The matcher protection method
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_attachment_hint(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Int32> attachment_hint,
) =>
    tizenFidoClient.fido_authenticator_get_attachment_hint(
      auth,
      attachment_hint,
    );

/// @brief Retrieves the Authenticator description
/// @since_tizen 3.0
///
/// @remarks		The @a desc should be released using free().
/// Parameter auth The Authenticator handle
/// Output parameter desc The description
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_description(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Pointer<ffi.Char>> desc,
) =>
    tizenFidoClient.fido_authenticator_get_description(
      auth,
      desc,
    );

/// @brief Retrieves the icon of this Authenticator.
/// @since_tizen 3.0
///
/// @remarks		The @a icon should be released using free().
/// Parameter auth The Authenticator handle
/// Output parameter icon The icon. Portable Network Graphic (PNG) format image file representing the icon encoded as a data: url[RFC2397]
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_icon(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Pointer<ffi.Char>> icon,
) =>
    tizenFidoClient.fido_authenticator_get_icon(
      auth,
      icon,
    );

/// @brief Checks if the Authenticator is Second factor only which is supported by U2F standards.
/// @since_tizen 3.0
///
/// Parameter auth The Authenticator handle
///
/// @return     @c true if its only second factor,
/// otherwise false.
///
/// Module getter: `tizenFidoClient`.
bool fido_authenticator_get_is_second_factor_only(
  fido_authenticator_h auth,
) =>
    tizenFidoClient.fido_authenticator_get_is_second_factor_only(
      auth,
    );

/// @brief Retrieves the key protection method of this Authenticator.
/// @since_tizen 3.0
///
/// Parameter auth The Authenticator handle
/// Output parameter key_protection The key protection method
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_key_protection_method(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Int32> key_protection,
) =>
    tizenFidoClient.fido_authenticator_get_key_protection_method(
      auth,
      key_protection,
    );

/// @brief Retrieves the matcher protection method of this Authenticator.
/// @since_tizen 3.0
///
/// Parameter auth The Authenticator handle
/// Output parameter matcher_protection The matcher protection method
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_matcher_protection_method(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Int32> matcher_protection,
) =>
    tizenFidoClient.fido_authenticator_get_matcher_protection_method(
      auth,
      matcher_protection,
    );

/// @brief Retrieves the Transaction Confirmation display type of this Authenticator.
/// @since_tizen 3.0
///
/// Parameter auth The Authenticator handle
/// Output parameter tc_display The TC display type
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_tc_discplay(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Int32> tc_display,
) =>
    tizenFidoClient.fido_authenticator_get_tc_discplay(
      auth,
      tc_display,
    );

/// @brief Retrieves the Transaction Confirmation display content type of this Authenticator.
/// @since_tizen 3.0
///
/// @remarks		The @a tc_display_content_type should be released using free().
/// Parameter auth The Authenticator handle
/// Output parameter tc_display_content_type The TC display content type which is supported MIME type [RFC2049] such as text/plain or image/png
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_tc_display_type(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Pointer<ffi.Char>> tc_display_content_type,
) =>
    tizenFidoClient.fido_authenticator_get_tc_display_type(
      auth,
      tc_display_content_type,
    );

/// @brief Gets the Authenticator title.
/// @since_tizen 3.0
///
/// @remarks		The @a title should be released using free().
/// Parameter auth The Authenticator handle
/// Output parameter title The title
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_title(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Pointer<ffi.Char>> title,
) =>
    tizenFidoClient.fido_authenticator_get_title(
      auth,
      title,
    );

/// @brief Retrieves the user verification method of this Authenticator.
/// @since_tizen 3.0
///
/// Parameter auth The Authenticator handle
/// Output parameter user_verification The user verification method
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_authenticator_get_verification_method(
  fido_authenticator_h auth,
  ffi.Pointer<ffi.Int32> user_verification,
) =>
    tizenFidoClient.fido_authenticator_get_verification_method(
      auth,
      user_verification,
    );

/// @brief Retrieves  all the available FIDO authenticators supported by this Device.
/// @details fido_authenticator_cb() callback is called synchronously once for each authenticator.
/// @since_tizen 3.0
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/fido.client
///
/// Parameter cb The iteration callback handle
/// Parameter user_data The user data handle
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval     #FIDO_ERROR_PERMISSION_DENIED The application does not have permission to call this function.
/// @retval     #FIDO_ERROR_NOT_SUPPORTED FIDO is not supported on this device.
///
/// Module getter: `tizenFidoClient`.
int fido_foreach_authenticator(
  fido_authenticator_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenFidoClient.fido_foreach_authenticator(
      cb,
      user_data,
    );

/// @brief Gets the FIDO client vendor name.
/// @since_tizen 3.0
///
/// @remarks		The @a vendor_name should be released using free().
/// Output parameter vendor_name The vendor name
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_get_client_vendor(
  ffi.Pointer<ffi.Pointer<ffi.Char>> vendor_name,
) =>
    tizenFidoClient.fido_get_client_vendor(
      vendor_name,
    );

/// @brief Gets the FIDO client vendor version information.
/// @since_tizen 3.0
///
/// Output parameter client_major_version The FIDO client major version
/// Output parameter client_minor_version The FIDO client minor version
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE               Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// Module getter: `tizenFidoClient`.
int fido_get_client_version(
  ffi.Pointer<ffi.Int> client_major_version,
  ffi.Pointer<ffi.Int> client_minor_version,
) =>
    tizenFidoClient.fido_get_client_version(
      client_major_version,
      client_minor_version,
    );

/// @brief Processes the given FIDO UAF message.
/// @details This function is asynchronous. The response is delivered via fido_uaf_response_message_cb().
/// Depending on the FIDO message type, this may involve user interactions.
///
/// @since_tizen 3.0
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/fido.client
///
/// Parameter uaf_request_json The FIDO UAF message in JSON format which is received from the relying party server
/// Parameter channel_binding The channel binding data in JSON format which is received from the relying party server
/// Parameter callback The callback to receive response
/// Parameter user_data The user data to be passed to the callback function
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE                   Successful
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval     #FIDO_ERROR_NOT_SUPPORTED          FIDO is not supported
///
/// @see fido_uaf_response_message_cb()
///
/// Module getter: `tizenFidoClient`.
int fido_uaf_get_response_message(
  ffi.Pointer<ffi.Char> uaf_request_json,
  ffi.Pointer<ffi.Char> channel_binding,
  fido_uaf_response_message_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenFidoClient.fido_uaf_get_response_message(
      uaf_request_json,
      channel_binding,
      callback,
      user_data,
    );

/// @brief Checks whether the FIDO message can be processed.
/// @since_tizen 3.0
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/fido.client
///
/// Parameter uaf_message_json The FIDO message in JSON format which is received from the relying party server
/// Output parameter is_supported True if the message can be handled by the device, else false
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE                   Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY          Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER      Invalid parameter
/// @retval     #FIDO_ERROR_NOT_SUPPORTED          FIDO is not supported
/// @retval     #FIDO_ERROR_PERMISSION_DENIED      The application does not have permission to call this function.
/// @retval     #FIDO_ERROR_UNSUPPORTED_VERSION    The UAF Message does not specify a protocol version supported by this FIDO UAF Client.
/// @retval     #FIDO_ERROR_NO_SUITABLE_AUTHENTICATOR No suitable authenticators found.
/// @retval     #FIDO_ERROR_PROTOCOL_ERROR         The interaction may have timed out, or the UAF message is malformed.
/// @retval     #FIDO_ERROR_UNTRUSTED_FACET_ID     The caller's id is not allowed to use this operation.
///
/// Module getter: `tizenFidoClient`.
int fido_uaf_is_supported(
  ffi.Pointer<ffi.Char> uaf_message_json,
  ffi.Pointer<ffi.Bool> is_supported,
) =>
    tizenFidoClient.fido_uaf_is_supported(
      uaf_message_json,
      is_supported,
    );

/// @brief Notifies the FIDO client about the server result. FIDO Server sends the result of processing a UAF message to FIDO client.
/// @remarks This is especially important for cases when a new registration may be considered by the client to be in a pending state
/// until it is communicated that the server accepted it.
///
/// @since_tizen 3.0
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/fido.client
///
/// Parameter response_code The status code received from Server, #FIDO_SERVER_STATUS_CODE_OK implies success
/// Parameter uaf_response_json The FIDO response message sent to server in JSON format
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #FIDO_ERROR_NONE                   Successful
/// @retval     #FIDO_ERROR_OUT_OF_MEMORY          Out of Memory
/// @retval     #FIDO_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval     #FIDO_ERROR_NOT_SUPPORTED          FIDO is not supported
/// @retval     #FIDO_ERROR_PERMISSION_DENIED      The application does not have permission to call this function.
/// @retval     #FIDO_ERROR_UNSUPPORTED_VERSION    The UAF Message does not specify a protocol version supported by this FIDO UAF Client.
/// @retval     #FIDO_ERROR_NO_SUITABLE_AUTHENTICATOR No suitable authenticators found.
/// @retval     #FIDO_ERROR_PROTOCOL_ERROR         The interaction may have timed out, or the UAF message is malformed.
/// @retval     #FIDO_ERROR_UNTRUSTED_FACET_ID     The caller's id is not allowed to use this operation.
///
/// @see fido_uaf_response_message_cb()
///
/// Module getter: `tizenFidoClient`.
int fido_uaf_set_server_result(
  int response_code,
  ffi.Pointer<ffi.Char> uaf_response_json,
) =>
    tizenFidoClient.fido_uaf_set_server_result(
      response_code,
      uaf_response_json,
    );

