// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMessagingEmail`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-messaging-email.so.0`.
///
/// Messaging / Email.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_messaging_email;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a file as an attachment to the email message.
/// @details It should be used to add a file to the attachment list
/// of the email message.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks The maximum attachment file size is 10MB.
/// http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage
/// http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
/// Parameter email The handle to the email message
/// Parameter filepath The absolute full path of the file to be attached
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #EMAILS_ERROR_PERMISSION_DENIED The application does not have the privilege to call this method
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre An email message handle is created using email_create_message().
/// @see email_remove_all_attachments()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_add_attach(
  email_h email,
  ffi.Pointer<ffi.Char> filepath,
) =>
    tizenCapiMessagingEmail.email_add_attach(
      email,
      filepath,
    );

/// @brief Adds a recipient to the email message.
/// @details The email API supports sending an email message to multiple recipients.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks Email address should be in standard format (as described in
/// Internet standards RFC 5321 and RFC 5322).
/// Parameter email The handle to the email message
/// Parameter type The recipient type
/// Parameter address The recipient email address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre An email message handle is created using email_create_message().
/// @see email_create_message()
/// @see email_remove_all_recipients()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_add_recipient(
  email_h email,
  int type,
  ffi.Pointer<ffi.Char> address,
) =>
    tizenCapiMessagingEmail.email_add_recipient(
      email,
      type,
      address,
    );

/// @brief Creates an email message handle for sending an email message.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/email
/// @remarks You must release @a email using email_destroy_message().
/// Output parameter email A handle to the email message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #EMAILS_ERROR_ACCOUNT_NOT_FOUND Email account not found
/// @retval #EMAILS_ERROR_PERMISSION_DENIED The application does not have the privilege to call this method
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre At least one email account should be set up on the device.
/// @see email_destroy_message()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_create_message(
  ffi.Pointer<email_h> email,
) =>
    tizenCapiMessagingEmail.email_create_message(
      email,
    );

/// @brief Destroys the email message handle and releases all its resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter email The handle to the email message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_OPERATION_FAILED Operation failed
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @see email_create_message()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_destroy_message(
  email_h email,
) =>
    tizenCapiMessagingEmail.email_destroy_message(
      email,
    );

/// @brief Clears all attachments of the email message.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter email The handle to the email message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre An email message handle is created using email_create_message().
/// @see email_create_message()
/// @see email_add_attach()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_remove_all_attachments(
  email_h email,
) =>
    tizenCapiMessagingEmail.email_remove_all_attachments(
      email,
    );

/// @brief Removes all recipients for the email message.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter email The handle to the email message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre An email message handle is created using email_create_message().
/// @see email_add_recipient()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_remove_all_recipients(
  email_h email,
) =>
    tizenCapiMessagingEmail.email_remove_all_recipients(
      email,
    );

/// @brief Saves the email message at outbox.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/email
/// Parameter email The handle to the email message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_COMMUNICATION_WITH_SERVER_FAILED Communication with server failed.
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_PERMISSION_DENIED The application does not have the privilege to call this method
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre An email message handle is created using email_create_message().
/// @see email_create_message()
/// @see email_add_recipient()
/// @see email_set_body()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_save_message(
  email_h email,
) =>
    tizenCapiMessagingEmail.email_save_message(
      email,
    );

/// @brief Sends the email message.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks In order to check whether sending a message succeeds,
/// you should register email_message_sent_cb() using email_set_message_sent_cb().
/// Parameter email The handle to the email message
/// Parameter save_to_sentbox Set to @c true to save the message in the sentbox,
/// otherwise set to @c false to not save the message in the sentbox
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_COMMUNICATION_WITH_SERVER_FAILED Communication with server failed
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre An email message is stored using email_save_message().
/// @see email_save_message()
/// @see email_set_message_sent_cb()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_send_message(
  email_h email,
  bool save_to_sentbox,
) =>
    tizenCapiMessagingEmail.email_send_message(
      email,
      save_to_sentbox,
    );

/// @brief Populates a body of the email message.
/// @details Email message body means the text data to be delivered.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediastorage
/// Parameter email The handle to the email message
/// Parameter body The message body
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_OPERATION_FAILED Operation failed
/// @retval #EMAILS_ERROR_PERMISSION_DENIED The application does not have the privilege to call this method
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre An email message handle is created using email_create_message().
/// @see email_create_message()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_set_body(
  email_h email,
  ffi.Pointer<ffi.Char> body,
) =>
    tizenCapiMessagingEmail.email_set_body(
      email,
      body,
    );

/// @brief Registers a callback function to be invoked when an email message is sent.
/// @details You will be notified when sending a message finishes and check whether it succeeds using this function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter email The handle to the email message
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @post It will invoke email_message_sent_cb().
/// @see email_message_sent_cb()
/// @see email_unset_message_sent_cb()
/// @see email_send_message()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_set_message_sent_cb(
  email_h email,
  email_message_sent_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMessagingEmail.email_set_message_sent_cb(
      email,
      callback,
      user_data,
    );

/// @brief Sets a subject of the email message.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/email
/// Parameter email The handle to the email message
/// Parameter subject The subject of the email message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #EMAILS_ERROR_PERMISSION_DENIED The application does not have the privilege to call this method
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @pre An email message handle is created using email_create_message().
/// @see email_create_message()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_set_subject(
  email_h email,
  ffi.Pointer<ffi.Char> subject,
) =>
    tizenCapiMessagingEmail.email_set_subject(
      email,
      subject,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter msg The handle to the email message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #EMAILS_ERROR_NONE Successful
/// @retval #EMAILS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #EMAILS_ERROR_NOT_SUPPORTED Not supported
/// @see email_message_sent_cb()
/// @see email_set_message_sent_cb()
/// @see email_send_message()
///
/// Module getter: `tizenCapiMessagingEmail`.
int email_unset_message_sent_cb(
  email_h msg,
) =>
    tizenCapiMessagingEmail.email_unset_message_sent_cb(
      msg,
    );

