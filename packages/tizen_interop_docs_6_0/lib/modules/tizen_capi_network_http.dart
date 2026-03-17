// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiNetworkHttp`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-network-http.so.0.1.0`.
///
/// Network / HTTP.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_network_http;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Deinitializes the HTTP module.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_OPERATION_FAILED Operation failed
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
/// @see http_init()
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_deinit() =>
    tizenCapiNetworkHttp.http_deinit();

/// @brief Initializes the HTTP module.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_OPERATION_FAILED Operation failed
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
/// @see http_deinit()
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_init() =>
    tizenCapiNetworkHttp.http_init();

/// @brief Creates the HTTP session handle.
/// @since_tizen 3.0
/// @remarks The @a http_session should be released using http_session_destroy().
/// Opened transactions can't be submitted after destroying session handle.
/// Parameter mode The HTTP session mode
/// Output parameter http_session The HTTP session handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
/// @see http_session_destroy()
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_session_create(
  int mode,
  ffi.Pointer<http_session_h> http_session,
) =>
    tizenCapiNetworkHttp.http_session_create(
      mode,
      http_session,
    );

/// @brief Destroys the HTTP session handle.
/// @since_tizen 3.0
/// @remarks The @a http_session should be set to NULL after using it
/// Parameter http_session The HTTP session handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
/// @see http_session_create()
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_session_destroy(
  http_session_h http_session,
) =>
    tizenCapiNetworkHttp.http_session_destroy(
      http_session,
    );

/// @brief Destroys all transactions.
/// @since_tizen 3.0
/// @remarks All http_transactions should be set to NULL after using it
/// Parameter http_session The HTTP session handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_OPERATION_FAILED Operation failed
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_session_destroy_all_transactions(
  http_session_h http_session,
) =>
    tizenCapiNetworkHttp.http_session_destroy_all_transactions(
      http_session,
    );

/// @brief Gets the number of active transactions in the current session.
/// @since_tizen 3.0
/// Parameter http_session The HTTP session handle
/// Output parameter active_transaction_count The number of activated transactions
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_session_get_active_transaction_count(
  http_session_h http_session,
  ffi.Pointer<ffi.Int> active_transaction_count,
) =>
    tizenCapiNetworkHttp.http_session_get_active_transaction_count(
      http_session,
      active_transaction_count,
    );

/// @brief Gets the auto redirection for the HTTP request.
/// @since_tizen 3.0
/// Parameter http_session The HTTP session handle
/// Output parameter auto_redirect The value of auto redirect
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
/// @see http_session_set_auto_redirection()
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_session_get_auto_redirection(
  http_session_h http_session,
  ffi.Pointer<ffi.Bool> auto_redirect,
) =>
    tizenCapiNetworkHttp.http_session_get_auto_redirection(
      http_session,
      auto_redirect,
    );

/// @brief Gets the maximum number of transactions for the current session.
/// @since_tizen 3.0
/// Parameter http_session The HTTP session handle
/// Output parameter transaction_count The maximum transaction count
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_session_get_max_transaction_count(
  http_session_h http_session,
  ffi.Pointer<ffi.Int> transaction_count,
) =>
    tizenCapiNetworkHttp.http_session_get_max_transaction_count(
      http_session,
      transaction_count,
    );

/// @brief Opens HTTP transaction from the HTTP Session.
/// @since_tizen 3.0
/// @remarks The @a http_transaction should be released using http_transaction_destroy().
/// Parameter http_session The HTTP session handle
/// Parameter method The HTTP request method
/// Output parameter http_transaction The HTTP transaction handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_session_open_transaction(
  http_session_h http_session,
  int method,
  ffi.Pointer<http_transaction_h> http_transaction,
) =>
    tizenCapiNetworkHttp.http_session_open_transaction(
      http_session,
      method,
      http_transaction,
    );

/// @brief Sets the value to redirect the HTTP request automatically.
/// @since_tizen 3.0
/// Parameter http_session The HTTP session handle
/// Parameter auto_redirection The value which determines whether allow redirection or not
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
/// @see http_session_get_auto_redirection()
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_session_set_auto_redirection(
  http_session_h http_session,
  bool auto_redirection,
) =>
    tizenCapiNetworkHttp.http_session_set_auto_redirection(
      http_session,
      auto_redirection,
    );

/// @brief Cancels the transaction.
/// @details This function cancels the transaction.\n
/// The aborted callback is invoked after using it.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE  Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval #HTTP_ERROR_OPERATION_FAILED  Operation failed
/// @retval #HTTP_ERROR_NOT_SUPPORTED  Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_cancel(
  http_transaction_h http_transaction,
) =>
    tizenCapiNetworkHttp.http_transaction_cancel(
      http_transaction,
    );

/// @brief Closes the HTTP transaction handle.
/// @since_tizen 3.0
/// @remarks The @a http_transaction should be set to NULL after using it.
/// Parameter http_transaction The HTTP transaction handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
/// @see http_session_open_transaction()
/// @see http_transaction_open_authentication()
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_destroy(
  http_transaction_h http_transaction,
) =>
    tizenCapiNetworkHttp.http_transaction_destroy(
      http_transaction,
    );

/// @brief Gets the username & password for the HTTP credential.
/// @since_tizen 3.0
/// @remarks The @a user_name & @a password should be freed using free().
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter user_name The HTTP credential user name
/// Output parameter password The HTTP credential password
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_get_credentials(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Pointer<ffi.Char>> user_name,
  ffi.Pointer<ffi.Pointer<ffi.Char>> password,
) =>
    tizenCapiNetworkHttp.http_transaction_get_credentials(
      http_transaction,
      user_name,
      password,
    );

/// @brief Gets the HTTP authentication scheme.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter auth_scheme The HTTP auth scheme value
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_get_http_auth_scheme(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Int32> auth_scheme,
) =>
    tizenCapiNetworkHttp.http_transaction_get_http_auth_scheme(
      http_transaction,
      auth_scheme,
    );

/// @brief Gets the interface name.
/// @since_tizen 3.0
/// @remarks The @a interface_name should be freed using free().
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter interface_name The interface name
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_get_interface_name(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Pointer<ffi.Char>> interface_name,
) =>
    tizenCapiNetworkHttp.http_transaction_get_interface_name(
      http_transaction,
      interface_name,
    );

/// @brief Gets the HTTP authentication realm.
/// @since_tizen 3.0
/// @remarks The @a realm should be freed using free().
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter realm The HTTP authentication realm value
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_get_realm(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Pointer<ffi.Char>> realm,
) =>
    tizenCapiNetworkHttp.http_transaction_get_realm(
      http_transaction,
      realm,
    );

/// @brief Gets the flag to verify a server certificate.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter verify The flag to verify a server certificate; true means verifies; false means it doesn't.
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_get_server_certificate_verification(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Bool> verify,
) =>
    tizenCapiNetworkHttp.http_transaction_get_server_certificate_verification(
      http_transaction,
      verify,
    );

/// @brief Gets the flag to allow TCP Fast Open.
/// @since_tizen 5.0
/// @remarks TCP Fast Open depends on kernel version.\n
/// #HTTP_ERROR_NOT_SUPPORTED error will be returned for kernel version less than 3.13.
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter enable The flag to enable TCP Fast Open
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_get_tcp_fastopen(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Bool> enable,
) =>
    tizenCapiNetworkHttp.http_transaction_get_tcp_fastopen(
      http_transaction,
      enable,
    );

/// @brief Gets the timeout in seconds for the transaction.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter timeout The timeout in seconds
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_get_timeout(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Int> timeout,
) =>
    tizenCapiNetworkHttp.http_transaction_get_timeout(
      http_transaction,
      timeout,
    );

/// @brief Adds a named field to header.
/// @details Adds a named field, which is a <@c fieldName, @c fieldValue> pair, to the current instance of HTTP Transaction.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter field_name The HTTP Header Field name
/// Parameter field_value The HTTP Header Field value
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_header_add_field(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> field_name,
  ffi.Pointer<ffi.Char> field_value,
) =>
    tizenCapiNetworkHttp.http_transaction_header_add_field(
      http_transaction,
      field_name,
      field_value,
    );

/// @brief Gets the HTTP Header Field value from custom header.
/// @since_tizen 3.0
/// @remarks The @a field_value should be freed using free().
/// Parameter http_transaction The HTTP transaction handle
/// Parameter field_name The HTTP Header Field name
/// Output parameter field_value The HTTP Header Field value
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_header_get_field_value(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> field_name,
  ffi.Pointer<ffi.Pointer<ffi.Char>> field_value,
) =>
    tizenCapiNetworkHttp.http_transaction_header_get_field_value(
      http_transaction,
      field_name,
      field_value,
    );

/// @brief Removes the named field from header.
/// @details Remove the named field, which is a <@c fieldName, @c fieldValue> pair, from the current instance of HTTP Transaction.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter field_name The HTTP Header Field name
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_header_remove_field(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> field_name,
) =>
    tizenCapiNetworkHttp.http_transaction_header_remove_field(
      http_transaction,
      field_name,
    );

/// @brief Opens HTTP transaction with authentication information.
/// @since_tizen 3.0
/// @remarks The @a http_auth_transaction should be released using http_transaction_destroy().
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter http_auth_transaction The HTTP transaction handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_open_authentication(
  http_transaction_h http_transaction,
  ffi.Pointer<http_transaction_h> http_auth_transaction,
) =>
    tizenCapiNetworkHttp.http_transaction_open_authentication(
      http_transaction,
      http_auth_transaction,
    );

/// @brief Pauses the transaction.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter pause_type The pause type of the connection
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_OPERATION_FAILED Operation failed
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_pause(
  http_transaction_h http_transaction,
  int pause_type,
) =>
    tizenCapiNetworkHttp.http_transaction_pause(
      http_transaction,
      pause_type,
    );

/// @brief Gets the Accept-Encoding header field of HTTP Request.
/// @since_tizen 3.0
/// @remarks The @a encoding should be freed using free().
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter encoding The encoding algorithms
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_get_accept_encoding(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Pointer<ffi.Char>> encoding,
) =>
    tizenCapiNetworkHttp.http_transaction_request_get_accept_encoding(
      http_transaction,
      encoding,
    );

/// @brief Gets a cookie in the HTTP request.
/// @since_tizen 3.0
/// @remarks The @a cookie should be freed using free().
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter cookie The cookie
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_get_cookie(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Pointer<ffi.Char>> cookie,
) =>
    tizenCapiNetworkHttp.http_transaction_request_get_cookie(
      http_transaction,
      cookie,
    );

/// @brief Gets the HTTP method from request header.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter method The HTTP method
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_get_method(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Int32> method,
) =>
    tizenCapiNetworkHttp.http_transaction_request_get_method(
      http_transaction,
      method,
    );

/// @brief Gets the URI.
/// @since_tizen 3.0
/// @remarks The @a host_uri should be freed using free().
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter host_uri The host URI
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_get_uri(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Pointer<ffi.Char>> host_uri,
) =>
    tizenCapiNetworkHttp.http_transaction_request_get_uri(
      http_transaction,
      host_uri,
    );

/// @brief Gets the HTTP version from request header.
/// @details Gets the HTTP version.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter version The HTTP version
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_get_version(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Int32> version,
) =>
    tizenCapiNetworkHttp.http_transaction_request_get_version(
      http_transaction,
      version,
    );

/// @brief Sets the Accept-Encoding header field of HTTP Request.
/// @details The Accept-Encoding header enables automatic decompression of HTTP downloads.
/// @since_tizen 3.0
/// @remarks If empty string is set, an Accept-Encoding header contains all supported built-in compressions.
/// Parameter http_transaction The HTTP transaction handle
/// Parameter encoding The encoding algorithms (e.g. gzip, deflate)
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_set_accept_encoding(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> encoding,
) =>
    tizenCapiNetworkHttp.http_transaction_request_set_accept_encoding(
      http_transaction,
      encoding,
    );

/// @brief Sets a cookie in the HTTP request.
/// @since_tizen 3.0
/// @remarks The format of string should be NME=CONTENTS (e.g. "name1=hello; name2=tizen;")
/// Parameter http_transaction The HTTP transaction handle
/// Parameter cookie The cookie
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_set_cookie(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> cookie,
) =>
    tizenCapiNetworkHttp.http_transaction_request_set_cookie(
      http_transaction,
      cookie,
    );

/// @brief Sets an HTTP method of the request header.
/// @details Sets an HTTP method such as GET, POST, PUT and etc.
/// @since_tizen 3.0
/// @remarks The default method is GET.
/// Parameter http_transaction The HTTP transaction handle
/// Parameter method The HTTP method
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_set_method(
  http_transaction_h http_transaction,
  int method,
) =>
    tizenCapiNetworkHttp.http_transaction_request_set_method(
      http_transaction,
      method,
    );

/// @brief Sets the file path for uploading a file.
/// @since_tizen 3.0
/// @remarks It is used with #HTTP_METHOD_PUT. \n
/// http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage. \n
/// http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
/// Parameter http_transaction The HTTP transaction handle
/// Parameter file_path The path for file
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE  Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION  Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED  Not Supported
/// @retval #HTTP_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_set_upload_file(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> file_path,
) =>
    tizenCapiNetworkHttp.http_transaction_request_set_upload_file(
      http_transaction,
      file_path,
    );

/// @brief Sets a URI of the request header.
/// @details Sets a URI of the request header.
/// @since_tizen 3.0
/// @remarks It should be used before http_transaction_submit().
/// Parameter http_transaction The HTTP transaction handle
/// Parameter host_uri The URI to use in the request
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_set_uri(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> host_uri,
) =>
    tizenCapiNetworkHttp.http_transaction_request_set_uri(
      http_transaction,
      host_uri,
    );

/// @brief Sets an HTTP version of the request header.
/// @since_tizen 3.0
/// @remarks The default version is HTTP 1.1.
/// Parameter http_transaction The HTTP transaction handle
/// Parameter version The HTTP version
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_set_version(
  http_transaction_h http_transaction,
  int version,
) =>
    tizenCapiNetworkHttp.http_transaction_request_set_version(
      http_transaction,
      version,
    );

/// @brief Writes the request message body.
/// @details This function writes the request message body in the internal queue. \n
/// The written queue for request body is uploaded after invoking http_transaction_submit().
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter body The message body data
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_request_write_body(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> body,
) =>
    tizenCapiNetworkHttp.http_transaction_request_write_body(
      http_transaction,
      body,
    );

/// @brief Gets the HTTP status code from HTTP Response.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter status_code The HTTP status code
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_response_get_status_code(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Int32> status_code,
) =>
    tizenCapiNetworkHttp.http_transaction_response_get_status_code(
      http_transaction,
      status_code,
    );

/// @brief Gets the HTTP status text from HTTP Response.
/// @since_tizen 3.0
/// @remarks The @a status_text should be freed using free().
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter status_text The HTTP status text
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_response_get_status_text(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Pointer<ffi.Char>> status_text,
) =>
    tizenCapiNetworkHttp.http_transaction_response_get_status_text(
      http_transaction,
      status_text,
    );

/// @brief Gets the HTTP version from HTTP Response.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter version The HTTP version
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_response_get_version(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Int32> version,
) =>
    tizenCapiNetworkHttp.http_transaction_response_get_version(
      http_transaction,
      version,
    );

/// @brief Resumes the transaction.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_OPERATION_FAILED Operation failed
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_resume(
  http_transaction_h http_transaction,
) =>
    tizenCapiNetworkHttp.http_transaction_resume(
      http_transaction,
    );

/// @brief Registers callback called when transaction is aborted.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter aborted_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_aborted_cb(
  http_transaction_h http_transaction,
  http_transaction_aborted_cb aborted_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkHttp.http_transaction_set_aborted_cb(
      http_transaction,
      aborted_cb,
      user_data,
    );

/// @brief Registers callback called when transaction is completed.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter completed_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_completed_cb(
  http_transaction_h http_transaction,
  http_transaction_completed_cb completed_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkHttp.http_transaction_set_completed_cb(
      http_transaction,
      completed_cb,
      user_data,
    );

/// @brief Sets an HTTP credentials.
/// @details Sets an HTTP authentication scheme such as username and password.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter user_name The HTTP user name
/// Parameter password The HTTP password
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_credentials(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> user_name,
  ffi.Pointer<ffi.Char> password,
) =>
    tizenCapiNetworkHttp.http_transaction_set_credentials(
      http_transaction,
      user_name,
      password,
    );

/// @brief Sets an HTTP authentication scheme.
/// @details Set an HTTP authentication scheme such as BASIC, MD5, NTLM and etc.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter auth_scheme The HTTP authentication scheme
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_http_auth_scheme(
  http_transaction_h http_transaction,
  int auth_scheme,
) =>
    tizenCapiNetworkHttp.http_transaction_set_http_auth_scheme(
      http_transaction,
      auth_scheme,
    );

/// @brief Sets the interface name.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter interface_name The interface name to use as outgoing network interface
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_interface_name(
  http_transaction_h http_transaction,
  ffi.Pointer<ffi.Char> interface_name,
) =>
    tizenCapiNetworkHttp.http_transaction_set_interface_name(
      http_transaction,
      interface_name,
    );

/// @brief Registers the progress callbacks.
/// @details Registers callback that is called when data is uploaded/downloaded.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter progress_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_progress_cb(
  http_transaction_h http_transaction,
  http_transaction_progress_cb progress_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkHttp.http_transaction_set_progress_cb(
      http_transaction,
      progress_cb,
      user_data,
    );

/// @brief Sets ready to write event for a transaction.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Output parameter read_to_write Enable/disable ready to write
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_ready_to_write(
  http_transaction_h http_transaction,
  bool read_to_write,
) =>
    tizenCapiNetworkHttp.http_transaction_set_ready_to_write(
      http_transaction,
      read_to_write,
    );

/// @brief Registers callback called when receives body.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter body_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_received_body_cb(
  http_transaction_h http_transaction,
  http_transaction_body_cb body_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkHttp.http_transaction_set_received_body_cb(
      http_transaction,
      body_cb,
      user_data,
    );

/// @brief Registers callback called when receives header.
/// @since_tizen 3.0
/// Parameter http_transaction        The HTTP transaction handle
/// Parameter header_cb The callback  function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_received_header_cb(
  http_transaction_h http_transaction,
  http_transaction_header_cb header_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkHttp.http_transaction_set_received_header_cb(
      http_transaction,
      header_cb,
      user_data,
    );

/// @brief Sets the flag to verify a server certificate.
/// @details The verify determines whether verifies the peer's certificate.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter verify The flag to verify a server certificate; true means verifies; false means it doesn't.
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_server_certificate_verification(
  http_transaction_h http_transaction,
  bool verify,
) =>
    tizenCapiNetworkHttp.http_transaction_set_server_certificate_verification(
      http_transaction,
      verify,
    );

/// @brief Sets the flag to allow TCP Fast Open.
/// @since_tizen 5.0
/// @remarks TCP Fast Open depends on kernel version.\n
/// #HTTP_ERROR_NOT_SUPPORTED error will be returned for kernel version less than 3.13.
/// Parameter http_transaction The HTTP transaction handle
/// Parameter enable The flag to enable TCP Fast Open
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_tcp_fastopen(
  http_transaction_h http_transaction,
  bool enable,
) =>
    tizenCapiNetworkHttp.http_transaction_set_tcp_fastopen(
      http_transaction,
      enable,
    );

/// @brief Sets the timeout in seconds that is the timeout for waiting the transaction.
/// @details Sets the timeout in seconds that is the timeout for waiting the transaction. \n
/// A timeout value of zero means an infinite timeout.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter timeout The timeout in seconds
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_timeout(
  http_transaction_h http_transaction,
  int timeout,
) =>
    tizenCapiNetworkHttp.http_transaction_set_timeout(
      http_transaction,
      timeout,
    );

/// @brief Registers callback called when writes data.
/// @since_tizen 3.0
/// Parameter http_transaction The HTTP transaction handle
/// Parameter write_cb The callback function to be called
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_set_uploaded_cb(
  http_transaction_h http_transaction,
  http_transaction_write_cb write_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkHttp.http_transaction_set_uploaded_cb(
      http_transaction,
      write_cb,
      user_data,
    );

/// @brief Submits the HTTP request.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet \n
/// %http://tizen.org/privilege/network.get
/// Parameter http_transaction The HTTP transaction handle
/// @return @c 0 on success,
/// otherwise negative error value
/// @retval #HTTP_ERROR_NONE Successful
/// @retval #HTTP_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #HTTP_ERROR_INVALID_OPERATION Invalid operation
/// @retval #HTTP_ERROR_NOT_SUPPORTED Not Supported
/// @retval #HTTP_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiNetworkHttp`.
int http_transaction_submit(
  http_transaction_h http_transaction,
) =>
    tizenCapiNetworkHttp.http_transaction_submit(
      http_transaction,
    );

