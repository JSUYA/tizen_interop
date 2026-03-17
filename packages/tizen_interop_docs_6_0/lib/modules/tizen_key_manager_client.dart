// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenKeyManagerClient`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libkey-manager-client.so.1`.
///
/// Security / Key Manager Client.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_key_manager_client;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the alias from #ckmc_alias_info_s structure.
/// @since_tizen 5.5
/// @remarks The @a alias should not be released.
/// The @a alias can be used until #ckmc_alias_info_s is released.
/// Parameter info The pointer to the #ckmc_alias_info_s structure
/// Output parameter alias The pointer to the alias
/// @return #CKMC_ERROR_NONE on success,
/// othervise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @see #ckmc_alias_info_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_alias_info_get_alias(
  ffi.Pointer<ckmc_alias_info_s> info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> alias,
) =>
    tizenKeyManagerClient.ckmc_alias_info_get_alias(
      info,
      alias,
    );

/// @brief Gets the password protection status from #ckmc_alias_info_s structure.
/// @since_tizen 5.5
/// Parameter info The pointer to the #ckmc_alias_info_s structure
/// Output parameter is_password_protected The pointer to the password protection flag
/// @return #CKMC_ERROR_NONE on success,
/// othervise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @see #ckmc_alias_info_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_alias_info_is_password_protected(
  ffi.Pointer<ckmc_alias_info_s> info,
  ffi.Pointer<ffi.Bool> is_password_protected,
) =>
    tizenKeyManagerClient.ckmc_alias_info_is_password_protected(
      info,
      is_password_protected,
    );

/// @brief Destroys the #ckmc_alias_info_list_s handle and releases resources of #ckmc_alias_info_list_s from the provided first handle cascadingly.
/// @since_tizen 5.5
/// Parameter first The first #ckmc_alias_info_list_s handle to destroy
/// @see #ckmc_alias_info_list_s
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_alias_info_list_all_free(
  ffi.Pointer<ckmc_alias_info_list_s> first,
) =>
    tizenKeyManagerClient.ckmc_alias_info_list_all_free(
      first,
    );

/// @brief Creates a new #ckmc_alias_list_s handle, adds it to a previous #ckmc_alias_list_s and returns it.
/// The alias pointer in the returned #ckmc_alias_list_s handle points to the provided characters and next is null.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter previous The last #ckmc_alias_list_s handle to which a newly created #ckmc_alias_list_s is added
/// Parameter alias The item to be set in the newly created #ckmc_alias_list_s
/// Output parameter pplast The pointer to a newly created and added #ckmc_alias_list_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see ckmc_alias_list_all_free()
/// @see #ckmc_alias_list_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_alias_list_add(
  ffi.Pointer<ckmc_alias_list_s> previous,
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Pointer<ckmc_alias_list_s>> pplast,
) =>
    tizenKeyManagerClient.ckmc_alias_list_add(
      previous,
      alias,
      pplast,
    );

/// @brief Destroys the #ckmc_alias_list_s handle and releases all its resources from the provided first handle cascadingly.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks It also destroys the alias in #ckmc_alias_list_s.
/// Parameter first The first #ckmc_alias_list_s handle to destroy
/// @see #ckmc_alias_list_s
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_alias_list_all_free(
  ffi.Pointer<ckmc_alias_list_s> first,
) =>
    tizenKeyManagerClient.ckmc_alias_list_all_free(
      first,
    );

/// @brief Destroys the #ckmc_alias_list_s handle and releases resources of #ckmc_alias_list_s from the provided first handle cascadingly.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks It does not destroy an alias itself in #ckmc_alias_list_s.
/// Parameter first The first #ckmc_alias_list_s handle to destroy
/// @see ckmc_alias_list_all_free()
/// @see #ckmc_alias_list_s
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_alias_list_free(
  ffi.Pointer<ckmc_alias_list_s> first,
) =>
    tizenKeyManagerClient.ckmc_alias_list_free(
      first,
    );

/// @brief Creates a new #ckmc_alias_list_s handle and returns it.
/// The alias pointer in the returned #ckmc_alias_list_s handle points to the provided characters and next is null.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must destroy the newly created #ckmc_alias_list_s
/// by calling ckmc_alias_list_free() or ckmc_alias_list_all_free() if it is no longer needed.
/// Parameter alias The first item to be set in the newly created #ckmc_alias_list_s
/// Output parameter ppalias_list The pointer to a newly created #ckmc_alias_list_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see ckmc_alias_list_all_free()
/// @see #ckmc_alias_list_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_alias_list_new(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Pointer<ckmc_alias_list_s>> ppalias_list,
) =>
    tizenKeyManagerClient.ckmc_alias_list_new(
      alias,
      ppalias_list,
    );

/// @brief Creates a new full alias which is a concatenation of @a owner_id and @a alias.
/// @since_tizen 3.0
/// @remarks @a full_alias should be freed with free() after use.
/// @remarks Returns #CKMC_ERROR_INVALID_PARAMETER if any of parameter is NULL.
/// @remarks Returns #CKMC_ERROR_INVALID_PARAMETER if @a owner_id is empty.
/// Parameter owner_id Data owner's id. This should be package id if data owner is
/// application. If you want to access data stored by system
/// services, it should be #ckmc_owner_id_system
/// Parameter alias Data alias
/// Output parameter full_alias The newly created alias which is a concatenation of
/// @a owner_id, #ckmc_owner_id_separator and @a alias.
/// Destroy by free() after use
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see #ckmc_owner_id_separator
/// @see #ckmc_owner_id_system
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_alias_new(
  ffi.Pointer<ffi.Char> owner_id,
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Pointer<ffi.Char>> full_alias,
) =>
    tizenKeyManagerClient.ckmc_alias_new(
      owner_id,
      alias,
      full_alias,
    );

/// @deprecated Deprecated since @if MOBILE 2.4. @elseif WEARABLE 3.0. @endif [Use ckmc_set_permission() instead]
/// @brief Allows another application to access client's application data.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks Data identified by @a alias should exist.
/// Parameter alias Data alias for which access will be granted
/// Parameter accessor Package id of the application that will gain access rights
/// Parameter granted Rights granted for @a accessor application
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_deny_access()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_allow_access(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Char> accessor,
  int granted,
) =>
    tizenKeyManagerClient.ckmc_allow_access(
      alias,
      accessor,
      granted,
    );

/// @brief Destroys the #ckmc_raw_buffer_s handle and releases all its resources.
/// @since_tizen 2.3
/// Parameter buffer The #ckmc_raw_buffer_s structure to destroy
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_buffer_free(
  ffi.Pointer<ckmc_raw_buffer_s> buffer,
) =>
    tizenKeyManagerClient.ckmc_buffer_free(
      buffer,
    );

/// @brief Creates a new #ckmc_raw_buffer_s handle and returns it.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must destroy the newly created #ckmc_raw_buffer_s by calling ckmc_buffer_free() if it is no longer needed.
/// Parameter data The byte array of buffer
/// Parameter size The byte size of buffer
/// Output parameter ppbuffer The pointer to a newly created #ckmc_raw_buffer_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see ckmc_buffer_free()
/// @see #ckmc_raw_buffer_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_buffer_new(
  ffi.Pointer<ffi.UnsignedChar> data,
  int size,
  ffi.Pointer<ffi.Pointer<ckmc_raw_buffer_s>> ppbuffer,
) =>
    tizenKeyManagerClient.ckmc_buffer_new(
      data,
      size,
      ppbuffer,
    );

/// @brief Destroys the #ckmc_cert_s handle and releases all its resources.
/// @since_tizen 2.3
/// Parameter cert The #ckmc_cert_s handle to destroy
/// @see ckmc_load_cert_from_file()
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_cert_free(
  ffi.Pointer<ckmc_cert_s> cert,
) =>
    tizenKeyManagerClient.ckmc_cert_free(
      cert,
    );

/// @brief Creates a new #ckmc_cert_list_s handle, adds it to a previous #ckmc_cert_list_s and returns it.
/// The cert pointer in the returned #ckmc_alias_list_s handle points to the provided #ckmc_cert_s and next is null.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter previous The last #ckmc_cert_list_s handle to which a newly created #ckmc_cert_list_s is added
/// Parameter cert The item to be set in the newly created #ckmc_cert_list_s
/// Output parameter pplast The pointer to a newly created and added #ckmc_alias_list_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see ckmc_cert_list_all_free()
/// @see #ckmc_cert_list_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_cert_list_add(
  ffi.Pointer<ckmc_cert_list_s> previous,
  ffi.Pointer<ckmc_cert_s> cert,
  ffi.Pointer<ffi.Pointer<ckmc_cert_list_s>> pplast,
) =>
    tizenKeyManagerClient.ckmc_cert_list_add(
      previous,
      cert,
      pplast,
    );

/// @brief Destroys the #ckmc_cert_list_s handle and releases all its resources from the provided first handle cascadingly.
/// @since_tizen 2.3
/// @remarks It also destroys #ckmc_cert_s in #ckmc_cert_list_s.
/// Parameter first The first #ckmc_cert_list_s handle to destroy
/// @see #ckmc_cert_list_s
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_cert_list_all_free(
  ffi.Pointer<ckmc_cert_list_s> first,
) =>
    tizenKeyManagerClient.ckmc_cert_list_all_free(
      first,
    );

/// @brief Destroys the #ckmc_cert_list_s handle and releases resources of #ckmc_cert_list_s from the provided first handle cascadingly.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks It does not destroy #ckmc_cert_s itself in #ckmc_cert_list_s.
/// Parameter first The first #ckmc_cert_list_s handle to destroy
/// @see ckmc_cert_list_all_free()
/// @see #ckmc_cert_list_s
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_cert_list_free(
  ffi.Pointer<ckmc_cert_list_s> first,
) =>
    tizenKeyManagerClient.ckmc_cert_list_free(
      first,
    );

/// @brief Creates a new #ckmc_cert_list_s handle and returns it.
/// The cert pointer in the returned #ckmc_cert_list_s handle points to the provided #ckmc_cert_s and next is null.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must destroy the newly created #ckmc_cert_list_s by calling ckmc_cert_list_free() or ckmc_cert_list_all_free() if it is no longer needed.
/// Parameter cert The first item to be set in the newly created #ckmc_cert_list_s
/// Output parameter ppalias_list The pointer to a newly created #ckmc_alias_list_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see ckmc_cert_list_all_free()
/// @see #ckmc_cert_list_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_cert_list_new(
  ffi.Pointer<ckmc_cert_s> cert,
  ffi.Pointer<ffi.Pointer<ckmc_cert_list_s>> ppalias_list,
) =>
    tizenKeyManagerClient.ckmc_cert_list_new(
      cert,
      ppalias_list,
    );

/// @brief Creates a new #ckmc_cert_s handle and returns it.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must destroy the newly created #ckmc_cert_s by calling ckmc_cert_free() if it is no longer needed.
/// Parameter raw_cert The byte array of certificate
/// Parameter cert_size The byte size of raw_cert
/// Parameter data_format The encoding format of raw_cert
/// Output parameter ppcert The pointer to a newly created #ckmc_cert_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see ckmc_cert_free()
/// @see ckmc_load_cert_from_file()
/// @see #ckmc_cert_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_cert_new(
  ffi.Pointer<ffi.UnsignedChar> raw_cert,
  int cert_size,
  int data_format,
  ffi.Pointer<ffi.Pointer<ckmc_cert_s>> ppcert,
) =>
    tizenKeyManagerClient.ckmc_cert_new(
      raw_cert,
      cert_size,
      data_format,
      ppcert,
    );

/// @brief Creates AES key and stores it inside key manager based on the policy.
/// @since_tizen 3.0
/// @remarks If password in the policy is provided, the key is additionally encrypted with the password in the policy.
/// Parameter size The size of key strength to be created \n
/// @c 128, @c 192 and @c 256 are supported
/// Parameter key_alias The name of key to be stored
/// Parameter key_policy The policy about how to store the key securely
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ALIAS_EXISTS Alias already exists
/// @retval #CKMC_ERROR_DB_ERROR Failed due to other DB transaction unexpectedly
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_create_key_pair_rsa()
/// @see ckmc_create_key_pair_dsa()
/// @see ckmc_create_key_pair_ecdsa()
/// @see #ckmc_policy_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_create_key_aes(
  int size,
  ffi.Pointer<ffi.Char> key_alias,
  ckmc_policy_s key_policy,
) =>
    tizenKeyManagerClient.ckmc_create_key_aes(
      size,
      key_alias,
      key_policy,
    );

/// @brief Creates DSA private/public key pair and stores them inside key manager based on each policy.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks If password in the policy is provided, the key is additionally encrypted with the password in the policy.
/// Parameter size The size of key strength to be created \n
/// @c 1024, @c 2048, @c 3072 and @c 4096 are supported
/// Parameter private_key_alias The name of private key to be stored
/// Parameter public_key_alias The name of public key to be stored
/// Parameter policy_private_key The policy about how to store a private key securely
/// Parameter policy_public_key The policy about how to store a public key securely
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ALIAS_EXISTS Alias already exists
/// @retval #CKMC_ERROR_DB_ERROR Failed due to other DB transaction unexpectedly
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_create_key_pair_rsa()
/// @see ckmc_create_key_pair_ecdsa()
/// @see ckmc_create_signature()
/// @see ckmc_verify_signature()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_create_key_pair_dsa(
  int size,
  ffi.Pointer<ffi.Char> private_key_alias,
  ffi.Pointer<ffi.Char> public_key_alias,
  ckmc_policy_s policy_private_key,
  ckmc_policy_s policy_public_key,
) =>
    tizenKeyManagerClient.ckmc_create_key_pair_dsa(
      size,
      private_key_alias,
      public_key_alias,
      policy_private_key,
      policy_public_key,
    );

/// @brief Creates ECDSA private/public key pair and stores them inside key manager based on each policy.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks If password in the policy is provided, the key is additionally encrypted with the password in the policy.
/// Parameter type The type of elliptic curve of ECDSA
/// Parameter private_key_alias The name of private key to be stored
/// Parameter public_key_alias The name of public key to be stored
/// Parameter policy_private_key The policy about how to store a private key securely
/// Parameter policy_public_key The policy about how to store a public key securely
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ALIAS_EXISTS Alias already exists
/// @retval #CKMC_ERROR_DB_ERROR Failed due to other DB transaction unexpectedly
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_create_key_pair_rsa()
/// @see ckmc_create_key_pair_dsa()
/// @see ckmc_create_signature()
/// @see ckmc_verify_signature()
/// @see #ckmc_ec_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_create_key_pair_ecdsa(
  int type,
  ffi.Pointer<ffi.Char> private_key_alias,
  ffi.Pointer<ffi.Char> public_key_alias,
  ckmc_policy_s policy_private_key,
  ckmc_policy_s policy_public_key,
) =>
    tizenKeyManagerClient.ckmc_create_key_pair_ecdsa(
      type,
      private_key_alias,
      public_key_alias,
      policy_private_key,
      policy_public_key,
    );

/// @brief Creates RSA private/public key pair and stores them inside key manager based on each policy.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks If password in the policy is provided, the key is additionally encrypted with the password in the policy.
/// Parameter size The size of key strength to be created \n
/// @c 1024, @c 2048, and @c 4096 are supported
/// Parameter private_key_alias The name of private key to be stored
/// Parameter public_key_alias The name of public key to be stored
/// Parameter policy_private_key The policy about how to store a private key securely
/// Parameter policy_public_key The policy about how to store a public key securely
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ALIAS_EXISTS Alias already exists
/// @retval #CKMC_ERROR_DB_ERROR Failed due to other DB transaction unexpectedly
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_create_key_pair_dsa()
/// @see ckmc_create_key_pair_ecdsa()
/// @see ckmc_create_signature()
/// @see ckmc_verify_signature()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_create_key_pair_rsa(
  int size,
  ffi.Pointer<ffi.Char> private_key_alias,
  ffi.Pointer<ffi.Char> public_key_alias,
  ckmc_policy_s policy_private_key,
  ckmc_policy_s policy_public_key,
) =>
    tizenKeyManagerClient.ckmc_create_key_pair_rsa(
      size,
      private_key_alias,
      public_key_alias,
      policy_private_key,
      policy_public_key,
    );

/// @brief Creates a signature on a given message using a private key and returns the signature.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks If password of policy is provided during storing a key, the same password should be provided.
/// @remarks You must destroy the newly created @a ppsignature by calling ckmc_buffer_free() if it is no longer needed.
/// Parameter private_key_alias The name of private key
/// Parameter password The password used in decrypting a private key value
/// Parameter message The message that is signed with a private key
/// Parameter hash The hash algorithm used in creating signature. CKMC_HASH_NONE is invalid for DSA & ECDSA
/// Parameter padding The RSA padding algorithm used in creating signature \n
/// It is used only when the signature algorithm is RSA. If
/// @a padding is CKMC_NONE_PADDING you must use CKMC_HASH_NONE
/// and the message must be equal to key length
/// Output parameter ppsignature The pointer to a newly created signature \n
/// If an error occurs, @a *ppsignature will be null
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Decryption failed because password is incorrect
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_create_key_pair_rsa()
/// @see ckmc_create_key_pair_ecdsa()
/// @see ckmc_verify_signature()
/// @see ckmc_buffer_free()
/// @see #ckmc_hash_algo_e
/// @see #ckmc_rsa_padding_algo_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_create_signature(
  ffi.Pointer<ffi.Char> private_key_alias,
  ffi.Pointer<ffi.Char> password,
  ckmc_raw_buffer_s message,
  int hash,
  int padding,
  ffi.Pointer<ffi.Pointer<ckmc_raw_buffer_s>> ppsignature,
) =>
    tizenKeyManagerClient.ckmc_create_signature(
      private_key_alias,
      password,
      message,
      hash,
      padding,
      ppsignature,
    );

/// @brief Decrypts data using selected key and algorithm.
/// @since_tizen 3.0
/// @remarks Key identified by @a key_alias should exist.
/// Parameter params Algorithm parameter list handle. You should use the same parameters that were used for encryption.
/// See #ckmc_param_list_h and #ckmc_algo_type_e for details
/// Parameter key_alias Alias of the key to be used for encryption
/// Parameter password The password used in decrypting a key value \n
/// If password of the policy is provided in ckmc_save_key(), the same password should be provided
/// Parameter encrypted Data to be decrypted (some algorithms may require additional information embedded in encrypted data. AES GCM is an example)
/// Since Tizen 5.0, on chosen images where module is using TEE backend, data size is limited to at least 500 kB
/// (TEE implementation-specific).
/// Output parameter ppdecrypted Decrypted data \n
/// The caller is responsible for freeing @a decrypted with ckmc_buffer_free()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid (missing or invalid
/// mandatory algorithm parameter, GCM tag authentication failed, key or data is wrong,
/// in case of RSA key is wrong or data too long, encrypted = NULL, ppdecrypted = NULL)
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Key with given alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Key decryption failed because password is incorrect
/// @retval #CKMC_ERROR_SERVER_ERROR Too big data size or unsupported GCM mode (32 and 64 bit tag lengths not supported on TEE backend) or internal error
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_buffer_free()
/// @see ckmc_param_list_new()
/// @see ckmc_param_list_free()
/// @see ckmc_param_list_set_integer()
/// @see ckmc_param_list_set_buffer()
/// @see ckmc_generate_new_params()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_decrypt_data(
  ckmc_param_list_h params,
  ffi.Pointer<ffi.Char> key_alias,
  ffi.Pointer<ffi.Char> password,
  ckmc_raw_buffer_s encrypted,
  ffi.Pointer<ffi.Pointer<ckmc_raw_buffer_s>> ppdecrypted,
) =>
    tizenKeyManagerClient.ckmc_decrypt_data(
      params,
      key_alias,
      password,
      encrypted,
      ppdecrypted,
    );

/// @deprecated Deprecated since @if MOBILE 2.4. @elseif WEARABLE 3.0. @endif [Use ckmc_set_permission() instead]
/// @brief Revokes another application's access to client's application data.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks Data identified by @a alias should exist.
/// @remarks Only access previously granted with ckmc_allow_access can be revoked.
/// Parameter alias Data alias for which access will be revoked
/// Parameter accessor Package id of the application that will lose access rights
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid or the @a accessor doesn't have access to @a alias
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_allow_access()
/// @see ckmc_set_permission()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_deny_access(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Char> accessor,
) =>
    tizenKeyManagerClient.ckmc_deny_access(
      alias,
      accessor,
    );

/// @brief Encrypts data using selected key and algorithm.
/// @since_tizen 3.0
/// @remarks Key identified by @a key_alias should exist.
/// Parameter params Algorithm parameter list handle. See #ckmc_param_list_h and
/// #ckmc_algo_type_e for details
/// Parameter key_alias Alias of the key to be used for encryption
/// Parameter password The password used in decrypting a key value \n
/// If password of the policy is provided in ckmc_save_key(), the same
/// password should be provided
/// Parameter decrypted Data to be encrypted. In case of AES algorithm there are no restrictions on the size of data,
/// if S/W backend is used. If module uses TEE backend (since Tizen 5.0 on chosen images),
/// maximum size of data is implementation-specific and at least 500 kB.
/// For RSA the size must be smaller or equal to key size in bytes - 42.
/// Example: for 1024 RSA key the maximum data size is 1024/8 - 42 = 86.
/// Output parameter ppencrypted Encrypted data (some algorithms may return additional information embedded in encrypted data.
/// AES GCM is an example) \n
/// The caller is responsible for freeing @a encrypted with ckmc_buffer_free()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid (missing or invalid
/// mandatory algorithm parameter or RSA data too long, decrypted = NULL,
/// ppencrypted = NULL)
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Key with given alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Key decryption failed because password is incorrect
/// @retval #CKMC_ERROR_SERVER_ERROR Too big data size or unsupported GCM mode (32 and 64 bit tag lengths not supported on TEE backend) or internal error
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_buffer_free()
/// @see ckmc_param_list_new()
/// @see ckmc_param_list_free()
/// @see ckmc_param_list_set_integer()
/// @see ckmc_param_list_set_buffer()
/// @see ckmc_generate_new_params()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_encrypt_data(
  ckmc_param_list_h params,
  ffi.Pointer<ffi.Char> key_alias,
  ffi.Pointer<ffi.Char> password,
  ckmc_raw_buffer_s decrypted,
  ffi.Pointer<ffi.Pointer<ckmc_raw_buffer_s>> ppencrypted,
) =>
    tizenKeyManagerClient.ckmc_encrypt_data(
      params,
      key_alias,
      password,
      decrypted,
      ppencrypted,
    );

/// @brief Generates algorithm parameters for a given algorithm type and set them to the list.
/// @since_tizen 3.0
/// @remarks Caller is responsible for #ckmc_param_list_h destruction.
/// @remarks Algorithm parameters are set to default values. Optional fields are left empty.
/// Initialization vectors are left empty (they have to be set manually).
/// Caller is responsible for freeing the list with ckmc_param_list_free().
/// @remarks If the function returns error, provided param list may contain some of default parameters.
/// Parameter type Type of the algorithm
/// Output parameter pparams Newly generated handle of param list which should be freed by caller after use
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @see ckmc_param_list_new()
/// @see ckmc_param_list_set_integer()
/// @see ckmc_param_list_set_buffer()
/// @see ckmc_param_list_get_integer()
/// @see ckmc_param_list_get_buffer()
/// @see ckmc_param_list_free()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_generate_new_params(
  int type,
  ffi.Pointer<ckmc_param_list_h> pparams,
) =>
    tizenKeyManagerClient.ckmc_generate_new_params(
      type,
      pparams,
    );

/// @brief Gets a certificate from key manager.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks A client can access only certificate stored by the client.
/// @remarks A DER encoded certificate will be returned as a return value.
/// @remarks You must destroy the newly created @a ppcert by calling ckmc_cert_free() if it is no longer needed.
/// Parameter alias The name of a certificate to retrieve
/// Parameter password The password used in decrypting a certificate value \n
/// If password of policy is provided in ckmc_save_cert(), the same password
/// should be provided
/// Output parameter ppcert The pointer to a newly created ckmc_cert_s handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exists
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Decryption failed because password is incorrect
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_cert()
/// @see ckmc_remove_alias()
/// @see ckmc_get_cert_alias_list()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_cert(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Char> password,
  ffi.Pointer<ffi.Pointer<ckmc_cert_s>> ppcert,
) =>
    tizenKeyManagerClient.ckmc_get_cert(
      alias,
      password,
      ppcert,
    );

/// @brief Gets the information about all the aliases of certificates that the client can access.
/// @since_tizen 5.5
/// @remarks A client can access only data stored by the client and the entries from system database
/// if it was explicitly permitted to.
/// @remarks You must destroy the newly created @a ppalias_list by calling ckmc_alias_info_list_all_free()
/// if it is no longer needed.
/// Output parameter ppalias_list The pointer to a newly created ckmc_alias_info_list_s handle containing
/// information about all certificate aliases \n
/// If there is no available certificate alias, *ppalias_list will be null
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_cert()
/// @see ckmc_remove_alias()
/// @see ckmc_get_cert()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_cert_alias_info_list(
  ffi.Pointer<ffi.Pointer<ckmc_alias_info_list_s>> ppalias_list,
) =>
    tizenKeyManagerClient.ckmc_get_cert_alias_info_list(
      ppalias_list,
    );

/// @brief Gets all alias of certificates which the client can access.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks A client can access only data stored by the client.
/// @remarks You must destroy the newly created @a ppalias_list by calling ckmc_alias_list_all_free() if it is no longer needed.
/// Output parameter ppalias_list The pointer to a newly created ckmc_alias_list_s handle containing all available alias of keys \n
/// If there is no available key alias, *ppalias_list will be null
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_cert()
/// @see ckmc_remove_alias()
/// @see ckmc_get_cert()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_cert_alias_list(
  ffi.Pointer<ffi.Pointer<ckmc_alias_list_s>> ppalias_list,
) =>
    tizenKeyManagerClient.ckmc_get_cert_alias_list(
      ppalias_list,
    );

/// @brief Verifies a certificate chain and returns that chain.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks The trusted root certificate of the chain should exist in the system's certificate storage.
/// @remarks You must destroy the newly created @a ppcert_chain_list by calling ckmc_cert_list_all_free() if it is no longer needed.
/// Parameter cert The certificate to be verified
/// Parameter untrustedcerts The untrusted CA certificates to be used in verifying a certificate chain
/// Output parameter ppcert_chain_list The pointer to a newly created certificate chain's handle \n
/// If an error occurs, @a *ppcert_chain_list will be null
/// @return @c 0 on success and the signature is valid,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_VERIFICATION_FAILED The certificate chain is not valid
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_INVALID_FORMAT The format of certificate is not valid
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Decryption failed because password is incorrect
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_cert_list_all_free()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_cert_chain(
  ffi.Pointer<ckmc_cert_s> cert,
  ffi.Pointer<ckmc_cert_list_s> untrustedcerts,
  ffi.Pointer<ffi.Pointer<ckmc_cert_list_s>> ppcert_chain_list,
) =>
    tizenKeyManagerClient.ckmc_get_cert_chain(
      cert,
      untrustedcerts,
      ppcert_chain_list,
    );

/// @deprecated Deprecated since @if MOBILE 2.4. @elseif WEARABLE 3.0. @endif [Use ckmc_get_cert_chain() instead]
/// @brief Verifies a certificate chain using an alias list of untrusted certificates and return that chain.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks The trusted root certificate of the chain should exist in the system's certificate storage.
/// @remarks You must destroy the newly created @a ppcert_chain_list by calling ckmc_cert_list_all_free() if it is no longer needed.
/// @remarks @a untrustedcerts shouldn't be protected with optional password.
/// Parameter cert The certificate to be verified
/// Parameter untrustedcerts The alias list of untrusted CA certificates stored in key manager to be used in verifying a certificate chain
/// Output parameter ppcert_chain_list The pointer to a newly created certificate chain's handle \n
/// If an error occurs, @a *ppcert_chain_list will be null
/// @return @c 0 on success and the signature is valid,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_VERIFICATION_FAILED The certificate chain is not valid
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_INVALID_FORMAT The format of certificate is not valid
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Some certificates were encrypted with password and could not be used
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_get_cert_chain()
/// @see ckmc_cert_list_all_free()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_cert_chain_with_alias(
  ffi.Pointer<ckmc_cert_s> cert,
  ffi.Pointer<ckmc_alias_list_s> untrustedcerts,
  ffi.Pointer<ffi.Pointer<ckmc_cert_list_s>> ppcert_chain_list,
) =>
    tizenKeyManagerClient.ckmc_get_cert_chain_with_alias(
      cert,
      untrustedcerts,
      ppcert_chain_list,
    );

/// @brief Verifies a certificate chain and returns that chain using user-entered, trusted, and untrusted CA certificates.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks If the trusted root certificates are provided as a user input, these certificates do not need to exist in the system's certificate storage.
/// @remarks You must destroy the newly created @a ppcert_chain_list by calling ckmc_cert_list_all_free() if it is no longer needed.
/// Parameter cert The certificate to be verified
/// Parameter untrustedcerts The untrusted CA certificates to be used in verifying a certificate chain
/// Parameter trustedcerts The trusted CA certificates to be used in verifying a certificate chain
/// Parameter use_trustedsystemcerts The flag indicating the use of the trusted root certificates in the system's certificate storage
/// Output parameter ppcert_chain_list The pointer to a newly created certificate chain's handle \n
/// If an error occurs, @a *ppcert_chain_list will be null
/// @return @c 0 on success and the signature is valid,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_VERIFICATION_FAILED The certificate chain is not valid
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_INVALID_FORMAT The format of certificate is not valid
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_cert_list_all_free()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_cert_chain_with_trustedcert(
  ffi.Pointer<ckmc_cert_s> cert,
  ffi.Pointer<ckmc_cert_list_s> untrustedcerts,
  ffi.Pointer<ckmc_cert_list_s> trustedcerts,
  bool use_trustedsystemcerts,
  ffi.Pointer<ffi.Pointer<ckmc_cert_list_s>> ppcert_chain_list,
) =>
    tizenKeyManagerClient.ckmc_get_cert_chain_with_trustedcert(
      cert,
      untrustedcerts,
      trustedcerts,
      use_trustedsystemcerts,
      ppcert_chain_list,
    );

/// @brief Gets a data from key manager.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks A client can access only data stored by the client.
/// @remarks You must destroy the newly created @a ppdata by calling ckmc_buffer_free() if it is no longer needed.
/// Parameter alias The name of a data to retrieve
/// Parameter password The password used in decrypting a data value \n
/// If password of policy is provided in ckmc_save_data(), the same password
/// should be provided
/// Output parameter ppdata The pointer to a newly created ckmc_raw_buffer_s handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Decryption failed because password is incorrect
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_data()
/// @see ckmc_remove_alias()
/// @see ckmc_get_data_alias_list()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_data(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Char> password,
  ffi.Pointer<ffi.Pointer<ckmc_raw_buffer_s>> ppdata,
) =>
    tizenKeyManagerClient.ckmc_get_data(
      alias,
      password,
      ppdata,
    );

/// @brief Gets the information about all the aliases of data that the client can access.
/// @since_tizen 5.5
/// @remarks A client can access only data stored by the client and the entries from system database
/// if it was explicitly permitted to.
/// @remarks You must destroy the newly created @a ppalias_list by calling ckmc_alias_info_list_all_free()
/// if it is no longer needed.
/// Output parameter ppalias_list The pointer to a newly created ckmc_alias_info_list_s handle containing
/// information about all data aliases \n
/// If there is no available data alias, *ppalias_list will be null
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_data()
/// @see ckmc_remove_alias()
/// @see ckmc_get_data()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_data_alias_info_list(
  ffi.Pointer<ffi.Pointer<ckmc_alias_info_list_s>> ppalias_list,
) =>
    tizenKeyManagerClient.ckmc_get_data_alias_info_list(
      ppalias_list,
    );

/// @brief Gets all alias of data which the client can access.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks A client can access only data stored by the client.
/// @remarks You must destroy the newly created @a ppalias_list by calling ckmc_alias_list_all_free() if it is no longer needed.
/// Output parameter ppalias_list The pointer to a newly created ckmc_alias_list_s handle containing all available alias of keys \n
/// If there is no available key alias, *ppalias_list will be null
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_data()
/// @see ckmc_remove_alias()
/// @see ckmc_get_data()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_data_alias_list(
  ffi.Pointer<ffi.Pointer<ckmc_alias_list_s>> ppalias_list,
) =>
    tizenKeyManagerClient.ckmc_get_data_alias_list(
      ppalias_list,
    );

/// @brief Gets a key from key manager.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks A client can access only data stored by the client.
/// @remarks You must destroy the newly created @a ppkey by calling ckmc_key_free() if it is no longer needed.
/// Parameter alias The name of a key to retrieve
/// Parameter password The password used in decrypting a key value \n
/// If password of policy is provided in ckmc_save_key(), the same password should be provided
/// Output parameter ppkey The pointer to a newly created ckmc_key_s handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Decryption failed because password is incorrect
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_key()
/// @see ckmc_remove_alias()
/// @see ckmc_get_key_alias_list()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_key(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Char> password,
  ffi.Pointer<ffi.Pointer<ckmc_key_s>> ppkey,
) =>
    tizenKeyManagerClient.ckmc_get_key(
      alias,
      password,
      ppkey,
    );

/// @brief Gets the information about all the aliases of keys that the client can access.
/// @since_tizen 5.5
/// @remarks A client can access only data stored by the client and the entries from system database
/// if it was explicitly permitted to.
/// @remarks You must destroy the newly created @a ppalias_list by calling ckmc_alias_info_list_all_free()
/// if it is no longer needed.
/// Output parameter ppalias_list The pointer to a newly created ckmc_alias_info_list_s handle containing
/// information about all key aliases \n
/// If there is no available key alias, *ppalias_list will be null
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_key()
/// @see ckmc_remove_alias()
/// @see ckmc_get_key()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_key_alias_info_list(
  ffi.Pointer<ffi.Pointer<ckmc_alias_info_list_s>> ppalias_list,
) =>
    tizenKeyManagerClient.ckmc_get_key_alias_info_list(
      ppalias_list,
    );

/// @brief Gets all the alias of keys that the client can access.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks A client can access only data stored by the client.
/// @remarks You must destroy the newly created @a ppalias_list by calling ckmc_alias_list_all_free()
/// if it is no longer needed.
/// Output parameter ppalias_list The pointer to a newly created ckmc_alias_list_s handle containing all
/// available alias of keys \n
/// If there is no available key alias, *ppalias_list will be null
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_key()
/// @see ckmc_remove_alias()
/// @see ckmc_get_key()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_key_alias_list(
  ffi.Pointer<ffi.Pointer<ckmc_alias_list_s>> ppalias_list,
) =>
    tizenKeyManagerClient.ckmc_get_key_alias_list(
      ppalias_list,
    );

/// @brief Gets a pkcs12 from key manager.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks A client can access only data stored by the client.
/// @remarks You must destroy the newly created @a pkcs12 by calling ckmc_pkcs12_free() if it is no longer needed.
/// Parameter alias The name of a data to retrieve
/// Parameter key_password Password that was used to encrypt privateKey (may be NULL)
/// Parameter cert_password Password used to encrypt certificates (may be NULL)
/// Output parameter pkcs12 The pointer to a newly created ckmc_pkcs12_s handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED key_password or cert_password does not match with password used to encrypt data
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_pkcs12()
/// @see ckmc_remove_alias()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_get_pkcs12(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Char> key_password,
  ffi.Pointer<ffi.Char> cert_password,
  ffi.Pointer<ffi.Pointer<ckmc_pkcs12_s>> pkcs12,
) =>
    tizenKeyManagerClient.ckmc_get_pkcs12(
      alias,
      key_password,
      cert_password,
      pkcs12,
    );

/// @brief Destroys the #ckmc_key_s handle and releases all its resources.
/// @since_tizen 2.3
/// Parameter key The #ckmc_key_s handle to destroy
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_key_free(
  ffi.Pointer<ckmc_key_s> key,
) =>
    tizenKeyManagerClient.ckmc_key_free(
      key,
    );

/// @brief Creates a new #ckmc_key_s handle and returns it.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must destroy the newly created #ckmc_key_s by calling ckmc_key_free() if it is no longer needed.
/// Parameter raw_key The byte array of key \n
/// @a raw_key may be encrypted with password
/// Parameter key_size The byte size of @a raw_key
/// Parameter key_type The @a raw_key's type
/// Parameter password The byte array used to decrypt @a raw_key inside key manager \n
/// If @a raw_key is not encrypted, @a password can be null
/// Output parameter ppkey The pointer to a newly created #ckmc_key_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see ckmc_key_free()
/// @see #ckmc_key_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_key_new(
  ffi.Pointer<ffi.UnsignedChar> raw_key,
  int key_size,
  int key_type,
  ffi.Pointer<ffi.Char> password,
  ffi.Pointer<ffi.Pointer<ckmc_key_s>> ppkey,
) =>
    tizenKeyManagerClient.ckmc_key_new(
      raw_key,
      key_size,
      key_type,
      password,
      ppkey,
    );

/// @brief Creates a new #ckmc_cert_s handle from a given file and returns it.
/// @since_tizen 2.3
/// @remarks You must destroy the newly created #ckmc_cert_s by calling ckmc_cert_free() if it is no longer needed.
/// Parameter file_path The path of certificate file to be loaded \n
/// The only DER or PEM encoded certificate file is supported
/// Output parameter cert The pointer of newly created #ckmc_cert_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory space
/// @retval #CKMC_ERROR_INVALID_FORMAT Invalid certificate file format
/// @retval #CKMC_ERROR_FILE_ACCESS_DENIED Provided file does not exist or cannot be accessed
/// @see ckmc_cert_free()
/// @see #ckmc_cert_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_load_cert_from_file(
  ffi.Pointer<ffi.Char> file_path,
  ffi.Pointer<ffi.Pointer<ckmc_cert_s>> cert,
) =>
    tizenKeyManagerClient.ckmc_load_cert_from_file(
      file_path,
      cert,
    );

/// @deprecated Deprecated since @if MOBILE 2.4. @elseif WEARABLE 3.0. @endif [Use ckmc_pkcs12_load() instead]
/// @brief Creates a new #ckmc_key_s (@a private_key), #ckmc_cert_s (@a cert), and #ckmc_cert_list_s (@a ca_cert_list) handle from a given PKCS#12 file and returns them.
/// @since_tizen 2.3
/// @remarks You must destroy the newly created #ckmc_key_s, #ckmc_cert_s, and
/// #ckmc_cert_list_s by calling ckmc_key_free(), ckmc_cert_free(), and
/// ckmc_cert_list_all_free() if they are no longer needed.
/// Parameter file_path The path of PKCS12 file to be loaded
/// Parameter passphrase The passphrase used to decrypt the PCKS12 file \n
/// If PKCS12 file is not encrypted, passphrase can be null
/// Output parameter private_key The pointer of newly created #ckmc_key_s handle for a private key
/// Output parameter cert The pointer of newly created #ckmc_cert_s handle for a certificate \n
/// It is null if the PKCS12 file does not contain a certificate
/// Output parameter ca_cert_list The pointer of newly created #ckmc_cert_list_s handle for CA certificates \n
/// It is null if the PKCS12 file does not contain CA certificates
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory space
/// @retval #CKMC_ERROR_INVALID_FORMAT Invalid PKCS12 file format
/// @retval #CKMC_ERROR_FILE_ACCESS_DENIED Provided file does not exist or cannot be accessed
/// @see ckmc_pkcs12_new()
/// @see ckmc_pkcs12_load()
/// @see ckmc_key_free()
/// @see ckmc_cert_free()
/// @see ckmc_cert_list_all_free()
/// @see #ckmc_key_s
/// @see #ckmc_cert_s
/// @see #ckmc_cert_list_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_load_from_pkcs12_file(
  ffi.Pointer<ffi.Char> file_path,
  ffi.Pointer<ffi.Char> passphrase,
  ffi.Pointer<ffi.Pointer<ckmc_key_s>> private_key,
  ffi.Pointer<ffi.Pointer<ckmc_cert_s>> cert,
  ffi.Pointer<ffi.Pointer<ckmc_cert_list_s>> ca_cert_list,
) =>
    tizenKeyManagerClient.ckmc_load_from_pkcs12_file(
      file_path,
      passphrase,
      private_key,
      cert,
      ca_cert_list,
    );

/// @brief Perform OCSP that checks certificate is whether revoked or not.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks %http://tizen.org/privilege/internet (public level privilege) is required to use this API instead of %http://tizen.org/privilege/keymanager (public level privilege) since 3.0.
/// Parameter pcert_chain_list Valid certificate chain to perform OCSP check
/// Output parameter ocsp_status The pointer to status result of OCSP check
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_NOT_SUPPORTED Device needed to run API is not supported
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @pre @a pcert_chain_list is created with ckmc_get_certificate_chain() or
/// ckmc_get_certificate_chain_with_alias().
/// @see ckmc_get_cert_chain())
/// @see ckmc_cert_list_all_free()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_ocsp_check(
  ffi.Pointer<ckmc_cert_list_s> pcert_chain_list,
  ffi.Pointer<ffi.Int32> ocsp_status,
) =>
    tizenKeyManagerClient.ckmc_ocsp_check(
      pcert_chain_list,
      ocsp_status,
    );

/// @brief Frees previously allocated list of algorithm params.
/// @since_tizen 3.0
/// Parameter params First element of the list to be freed
/// @see ckmc_param_list_new()
/// @see ckmc_param_list_set_integer()
/// @see ckmc_param_list_set_buffer()
/// @see ckmc_param_list_get_integer()
/// @see ckmc_param_list_get_buffer()
/// @see ckmc_generate_new_params()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_param_list_free(
  ckmc_param_list_h params,
) =>
    tizenKeyManagerClient.ckmc_param_list_free(
      params,
    );

/// @brief Gets buffer parameter from the list.
/// @since_tizen 3.0
/// @remarks Caller is responsible for #ckmc_param_list_h creation.
/// Parameter params Algorithm param list handle created with ckmc_param_list_new() or ckmc_generate_new_params()
/// which contains param with @a name
/// Parameter name Name of parameter to get
/// Output parameter ppbuffer Value of the parameter in form of a buffer \n
/// Caller is responsible for creating and freeing the buffer
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @see ckmc_param_list_new()
/// @see ckmc_param_list_set_integer()
/// @see ckmc_param_list_set_buffer()
/// @see ckmc_param_list_get_integer()
/// @see ckmc_param_list_free()
/// @see ckmc_generate_new_params()
/// @see ckmc_buffer_free()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_param_list_get_buffer(
  ckmc_param_list_h params,
  int name,
  ffi.Pointer<ffi.Pointer<ckmc_raw_buffer_s>> ppbuffer,
) =>
    tizenKeyManagerClient.ckmc_param_list_get_buffer(
      params,
      name,
      ppbuffer,
    );

/// @brief Gets integer parameter from the list.
/// @since_tizen 3.0
/// @remarks Caller is responsible for #ckmc_param_list_h creation.
/// Parameter params Algorithm param list handle created with ckmc_param_list_new() or ckmc_generate_new_params()
/// which contains param with @a name
/// Parameter name Name of parameter to get
/// Output parameter pvalue Value of the parameter in form of a integer
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @see ckmc_param_list_new()
/// @see ckmc_param_list_set_integer()
/// @see ckmc_param_list_set_buffer()
/// @see ckmc_param_list_get_buffer()
/// @see ckmc_param_list_free()
/// @see ckmc_generate_new_params()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_param_list_get_integer(
  ckmc_param_list_h params,
  int name,
  ffi.Pointer<ffi.Uint64> pvalue,
) =>
    tizenKeyManagerClient.ckmc_param_list_get_integer(
      params,
      name,
      pvalue,
    );

/// @brief Creates new parameter list.
/// @since_tizen 3.0
/// @remarks Caller is responsible for freeing it with ckmc_param_list_free().
/// Parameter pparams Double pointer to the handle of param list to which the newly created algorithm param list will be assigned
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @see ckmc_param_list_set_integer()
/// @see ckmc_param_list_set_buffer()
/// @see ckmc_param_list_free()
/// @see ckmc_generate_new_params()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_param_list_new(
  ffi.Pointer<ckmc_param_list_h> pparams,
) =>
    tizenKeyManagerClient.ckmc_param_list_new(
      pparams,
    );

/// @brief Sets buffer parameter to the list.
/// @since_tizen 3.0
/// @remarks Caller is responsible for #ckmc_param_list_h creation.
/// Parameter params Algorithm param list handle created with ckmc_param_list_new() or ckmc_generate_new_params()
/// New param with @a name and @a buffer will be set here
/// Parameter name Name of parameter to set \n
/// Existing parameter will be overwritten \n
/// Passing invalid parameter name will result in an error
/// Parameter buffer Value of the parameter in form of a buffer \n
/// Caller is responsible for creating and freeing the buffer
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @see ckmc_param_list_new()
/// @see ckmc_param_list_set_integer()
/// @see ckmc_param_list_get_integer()
/// @see ckmc_param_list_get_buffer()
/// @see ckmc_param_list_free()
/// @see ckmc_generate_new_params()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_param_list_set_buffer(
  ckmc_param_list_h params,
  int name,
  ffi.Pointer<ckmc_raw_buffer_s> buffer,
) =>
    tizenKeyManagerClient.ckmc_param_list_set_buffer(
      params,
      name,
      buffer,
    );

/// @brief Sets integer parameter to the list.
/// @since_tizen 3.0
/// @remarks Caller is responsible for #ckmc_param_list_h creation.
/// Parameter params Algorithm param list handle created with ckmc_param_list_new() or ckmc_generate_new_params() \n
/// New param with @a name and @a value will be set here
/// Parameter name Name of parameter to set \n
/// Existing parameter will be overwritten \n
/// Passing invalid parameter name will result in an error
/// Parameter value Value of the parameter in form of a integer
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @see ckmc_param_list_new()
/// @see ckmc_param_list_set_buffer()
/// @see ckmc_param_list_get_integer()
/// @see ckmc_param_list_get_buffer()
/// @see ckmc_param_list_free()
/// @see ckmc_generate_new_params()
/// @see #ckmc_param_list_h
/// @see #ckmc_param_name_e
/// @see #ckmc_algo_type_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_param_list_set_integer(
  ckmc_param_list_h params,
  int name,
  int value,
) =>
    tizenKeyManagerClient.ckmc_param_list_set_integer(
      params,
      name,
      value,
    );

/// @brief Destroys the #ckmc_pkcs12_s handle and releases all its resources.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter pkcs12 The #ckmc_pkcs12_s handle to destroy
/// @see ckmc_pkcs12_new()
/// @see ckmc_pkcs12_load()
///
/// Module getter: `tizenKeyManagerClient`.
void ckmc_pkcs12_free(
  ffi.Pointer<ckmc_pkcs12_s> pkcs12,
) =>
    tizenKeyManagerClient.ckmc_pkcs12_free(
      pkcs12,
    );

/// @brief Creates a new #ckmc_pkcs12_s handle from a given PKCS#12 file and returns it.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must destroy the newly created #ckmc_pkcs12_s by calling ckmc_pkcs12_free() if they are no longer needed.
/// Parameter file_path The path of PKCS12 file to be loaded
/// Parameter passphrase The passphrase used to decrypt the PCKS12 file \n
/// If PKCS12 file is not encrypted, passphrase can be null
/// Output parameter pkcs12_bundle The pointer of newly created #ckmc_cert_list_s handle for CA certificates \n
/// It is null if the PKCS12 file does not contain CA certificates
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory space
/// @retval #CKMC_ERROR_INVALID_FORMAT Invalid PKCS12 file format
/// @retval #CKMC_ERROR_FILE_ACCESS_DENIED Provided file does not exist or cannot be accessed
/// @see ckmc_pkcs12_free()
/// @see #ckmc_pkcs12_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_pkcs12_load(
  ffi.Pointer<ffi.Char> file_path,
  ffi.Pointer<ffi.Char> passphrase,
  ffi.Pointer<ffi.Pointer<ckmc_pkcs12_s>> pkcs12_bundle,
) =>
    tizenKeyManagerClient.ckmc_pkcs12_load(
      file_path,
      passphrase,
      pkcs12_bundle,
    );

/// @brief Creates a new #ckmc_pkcs12_s handle and returns it.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must destroy the newly created #ckmc_pkcs12_s by calling ckmc_pkcs12_free() if it is no longer needed.
/// @remarks On success, private_key, cert && ca_cert_list ownership is transferred into newly returned ckmc_pkcs12_s.
/// Parameter private_key #ckmc_key_s handle to the private key (optional)
/// Parameter cert #ckmc_cert_s handle to the certificate (optional)
/// Parameter ca_cert_list #ckmc_cert_list_s list of chain certificate handles (optional)
/// Output parameter pkcs12_bundle The pointer to a newly created #ckmc_pkcs12_s handle
/// @return #CKMC_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid or private_key, cert and ca_cert_list all are null
/// @retval #CKMC_ERROR_OUT_OF_MEMORY Not enough memory
/// @see ckmc_pkcs12_free()
/// @see ckmc_pkcs12_load()
/// @see #ckmc_key_s
/// @see #ckmc_cert_s
/// @see #ckmc_cert_list_s
/// @see #ckmc_pkcs12_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_pkcs12_new(
  ffi.Pointer<ckmc_key_s> private_key,
  ffi.Pointer<ckmc_cert_s> cert,
  ffi.Pointer<ckmc_cert_list_s> ca_cert_list,
  ffi.Pointer<ffi.Pointer<ckmc_pkcs12_s>> pkcs12_bundle,
) =>
    tizenKeyManagerClient.ckmc_pkcs12_new(
      private_key,
      cert,
      ca_cert_list,
      pkcs12_bundle,
    );

/// @brief Removes an entry (no matter of type) from the key manager.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks To remove item, client must have remove permission to the specified item.
/// @remarks The item owner can remove by default.
/// Parameter alias Item alias to be removed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_key()
/// @see ckmc_save_cert()
/// @see ckmc_save_data()
/// @see ckmc_save_pkcs12()
/// @see ckmc_create_key_pair_rsa()
/// @see ckmc_create_key_pair_dsa()
/// @see ckmc_create_key_pair_ecdsa()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_remove_alias(
  ffi.Pointer<ffi.Char> alias,
) =>
    tizenKeyManagerClient.ckmc_remove_alias(
      alias,
    );

/// @deprecated Deprecated since @if MOBILE 2.4. @elseif WEARABLE 3.0. @endif [Use ckmc_remove_alias() instead]
/// @brief Removes a certificate from key manager.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks To remove certificate, client must have remove permission to the specified certificate.
/// @remarks The key owner can remove by default.
/// Parameter alias The name of a certificate to be removed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_cert()
/// @see ckmc_get_cert()
/// @see ckmc_get_cert_alias_list()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_remove_cert(
  ffi.Pointer<ffi.Char> alias,
) =>
    tizenKeyManagerClient.ckmc_remove_cert(
      alias,
    );

/// @deprecated Deprecated since @if MOBILE 2.4. @elseif WEARABLE 3.0. @endif [Use ckmc_remove_alias() instead]
/// @brief Removes a data from key manager.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks To remove data, client must have remove permission to the specified data object.
/// @remarks The data owner can remove by default.
/// Parameter alias The name of a data to be removed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_data()
/// @see ckmc_get_data()
/// @see ckmc_get_data_alias_list()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_remove_data(
  ffi.Pointer<ffi.Char> alias,
) =>
    tizenKeyManagerClient.ckmc_remove_data(
      alias,
    );

/// @deprecated Deprecated since @if MOBILE 2.4. @elseif WEARABLE 3.0. @endif [Use ckmc_remove_alias() instead]
/// @brief Removes a key from key manager.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks To remove key, client must have remove permission to the specified key.
/// @remarks The key owner can remove by default.
/// Parameter alias The name of a key to be removed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_save_key()
/// @see ckmc_get_key()
/// @see ckmc_get_key_alias_list()
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_remove_key(
  ffi.Pointer<ffi.Char> alias,
) =>
    tizenKeyManagerClient.ckmc_remove_key(
      alias,
    );

/// @brief Stores a certificate inside key manager based on the provided policy.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0
/// @remarks The certificate's binary value will be converted and saved as binary DER encoded certificates.
/// Parameter alias The name of a certificate to be stored
/// Parameter cert The certificate's binary value to be stored
/// Parameter policy The policy about how to store a certificate securely
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ALIAS_EXISTS Alias already exists
/// @retval #CKMC_ERROR_INVALID_FORMAT The format of raw_cert is not valid
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_remove_alias()
/// @see ckmc_get_cert()
/// @see ckmc_get_cert_alias_list()
/// @see #ckmc_cert_s
/// @see #ckmc_policy_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_save_cert(
  ffi.Pointer<ffi.Char> alias,
  ckmc_cert_s cert,
  ckmc_policy_s policy,
) =>
    tizenKeyManagerClient.ckmc_save_cert(
      alias,
      cert,
      policy,
    );

/// @brief Stores a data inside key manager based on the provided policy.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// Parameter alias The name of a data to be stored
/// Parameter data The binary value to be stored
/// Parameter policy The policy about how to store a data securely
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ALIAS_EXISTS Alias already exists
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_remove_alias()
/// @see ckmc_get_data()
/// @see ckmc_get_data_alias_list()
/// @see #ckmc_raw_buffer_s
/// @see #ckmc_policy_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_save_data(
  ffi.Pointer<ffi.Char> alias,
  ckmc_raw_buffer_s data,
  ckmc_policy_s policy,
) =>
    tizenKeyManagerClient.ckmc_save_data(
      alias,
      data,
      policy,
    );

/// @brief Stores a key inside key manager based on the provided policy.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks Currently API supports seven types of keys. These are RSA public/private key, DSA public/private key, ECDSA public/private key, and AES symmetric key.
/// @remarks key_type in key may be set to #CKMC_KEY_NONE as an input. key_type is determined inside key manager during storing keys.
/// @remarks Some private key files are protected by a password. If raw_key in key read from those encrypted files is encrypted with a password, the password should be provided in the #ckmc_key_s structure.
/// @remarks If password in policy is provided, the key is additionally encrypted with the password in the policy.
/// Parameter alias The name of a key to be stored
/// Parameter key The key's binary value to be stored
/// Parameter policy The policy about how to store a key securely
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ALIAS_EXISTS Alias already exists
/// @retval #CKMC_ERROR_INVALID_FORMAT The format of raw_key is not valid
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_remove_alias()
/// @see ckmc_get_key()
/// @see ckmc_get_key_alias_list()
/// @see #ckmc_key_s
/// @see #ckmc_policy_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_save_key(
  ffi.Pointer<ffi.Char> alias,
  ckmc_key_s key,
  ckmc_policy_s policy,
) =>
    tizenKeyManagerClient.ckmc_save_key(
      alias,
      key,
      policy,
    );

/// @brief Stores PKCS12's contents inside key manager based on the provided policies. All items from the PKCS12 will use the same alias.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// Parameter alias The name of a data to be stored
/// Parameter pkcs Pointer to the pkcs12 structure to be saved
/// Parameter key_policy The policy about how to store pkcs's private key
/// Parameter cert_policy The policy about how to store pkcs's certificate
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ALIAS_EXISTS Alias already exists
/// @retval #CKMC_ERROR_DB_ERROR Failed due to a database error
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_remove_alias()
/// @see ckmc_get_pkcs12()
/// @see ckmc_get_data_alias_list()
/// @see ckmc_pkcs12_load()
/// @see #ckmc_pkcs12_s
/// @see #ckmc_policy_s
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_save_pkcs12(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ckmc_pkcs12_s> pkcs,
  ckmc_policy_s key_policy,
  ckmc_policy_s cert_policy,
) =>
    tizenKeyManagerClient.ckmc_save_pkcs12(
      alias,
      pkcs,
      key_policy,
      cert_policy,
    );

/// @brief Allows another application to access client's application data.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks Data identified by @a alias should exist.
/// Parameter alias Data alias for which access will be granted
/// Parameter accessor Package id of the application that will gain access rights
/// Parameter permissions Mask of permissions granted for @a accessor application
/// (#ckmc_permission_e)
/// (previous permission mask will be replaced with the new mask value)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_set_permission(
  ffi.Pointer<ffi.Char> alias,
  ffi.Pointer<ffi.Char> accessor,
  int permissions,
) =>
    tizenKeyManagerClient.ckmc_set_permission(
      alias,
      accessor,
      permissions,
    );

/// @brief Verifies a given signature on a given message using a public key and returns the signature status.
/// @since_tizen 2.3
/// @remarks %http://tizen.org/privilege/keymanager (public level privilege) is no longer required to use this API since 3.0.
/// @remarks If password of policy is provided during storing a key, the same password should be provided.
/// Parameter public_key_alias The name of public key
/// Parameter password The password used in decrypting a public key value
/// Parameter message The input on which the signature is created
/// Parameter signature The signature that is verified with public key
/// Parameter hash The hash algorithm used in verifying signature. CKMC_HASH_NONE is invalid for DSA & ECDSA
/// Parameter padding The RSA padding algorithm used in verifying signature \n
/// It is used only when the signature algorithm is RSA. If
/// @a padding is CKMC_NONE_PADDING you must use CKMC_HASH_NONE
/// and the message must be equal to key length
/// @return @c 0 on success and the signature is valid,
/// otherwise a negative error value
/// @retval #CKMC_ERROR_NONE Successful
/// @retval #CKMC_ERROR_VERIFICATION_FAILED The signature is invalid
/// @retval #CKMC_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #CKMC_ERROR_DB_LOCKED A user key is not loaded in memory (a user is not logged in)
/// @retval #CKMC_ERROR_DB_ERROR Failed due to the error with unknown reason
/// @retval #CKMC_ERROR_DB_ALIAS_UNKNOWN Alias does not exist
/// @retval #CKMC_ERROR_PERMISSION_DENIED Failed to access key manager
/// @retval #CKMC_ERROR_AUTHENTICATION_FAILED Decryption failed because password is incorrect
/// @pre User is already logged in and the user key is already loaded into memory in plain text form.
/// @see ckmc_create_key_pair_rsa()
/// @see ckmc_create_key_pair_ecdsa()
/// @see ckmc_create_signature()
/// @see #ckmc_hash_algo_e
/// @see #ckmc_rsa_padding_algo_e
///
/// Module getter: `tizenKeyManagerClient`.
int ckmc_verify_signature(
  ffi.Pointer<ffi.Char> public_key_alias,
  ffi.Pointer<ffi.Char> password,
  ckmc_raw_buffer_s message,
  ckmc_raw_buffer_s signature,
  int hash,
  int padding,
) =>
    tizenKeyManagerClient.ckmc_verify_signature(
      public_key_alias,
      password,
      message,
      signature,
      hash,
      padding,
    );

