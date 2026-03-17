// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenYaca`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libyaca.so.0`.
///
/// Security / YACA.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_yaca;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Cleans up the library. Must be called before exiting the thread that called yaca_initialize().
/// @since_tizen 3.0
/// @see yaca_initialize()
///
/// Module getter: `tizenYaca`.
void yaca_cleanup() =>
    tizenYaca.yaca_cleanup();

/// @brief Destroys the crypto context. Must be called on all contexts that are no longer used.
/// Passing #YACA_CONTEXT_NULL is allowed.
/// @since_tizen 3.0
/// Parameter ctx  Crypto context
/// @see #yaca_context_h
///
/// Module getter: `tizenYaca`.
void yaca_context_destroy(
  yaca_context_h ctx,
) =>
    tizenYaca.yaca_context_destroy(
      ctx,
    );

/// @brief Returns the minimum required size of the output buffer for a single crypto function call.
/// @since_tizen 3.0
/// @remarks This function should be used to learn the required size of the output buffer
/// for a single function call (eg. *_update or *_finalize). The actual output length
/// (number of bytes that has been used) will be returned by the function call itself.
/// @remarks In case the function call has no output (e.g. yaca_sign_update(),
/// yaca_digest_update()), there is no need to use this function.
/// @remarks In case the function call has no input (eg. *_finalize), the value of
/// @a input_len has to be set to 0.
/// Parameter ctx Previously initialized crypto context
/// Parameter input_len Length of the input data to be processed
/// Output parameter output_len Required length of the output
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx or too big @a input_len)
/// @retval #YACA_ERROR_INTERNAL Internal error
///
/// Module getter: `tizenYaca`.
int yaca_context_get_output_length(
  yaca_context_h ctx,
  int input_len,
  ffi.Pointer<ffi.Size> output_len,
) =>
    tizenYaca.yaca_context_get_output_length(
      ctx,
      input_len,
      output_len,
    );

/// @brief Returns the non-standard context properties. Can only be called on an initialized context.
/// @since_tizen 3.0
/// @remarks The @a value should be freed using yaca_free().
/// @remarks The @a value has to be of type appropriate for given property. See #yaca_property_e
/// for details on corresponding types.
/// @remarks The @a value_len can be NULL if returned @a value is a single object (i.e. not an array/buffer).
/// Parameter ctx Previously initialized crypto context
/// Parameter property Property to be read
/// Output parameter value Copy of the property value
/// Output parameter value_len Length of the property value will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx or @a property)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_property_e
/// @see yaca_context_set_property()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_context_get_property(
  yaca_context_h ctx,
  int property,
  ffi.Pointer<ffi.Pointer<ffi.Void>> value,
  ffi.Pointer<ffi.Size> value_len,
) =>
    tizenYaca.yaca_context_get_property(
      ctx,
      property,
      value,
      value_len,
    );

/// @brief Sets the non-standard context properties. Can only be called on an initialized context.
/// @since_tizen 3.0
/// @remarks The @a value has to be of type appropriate for given property. See #yaca_property_e
/// for details on corresponding types.
/// Parameter ctx Previously initialized crypto context
/// Parameter property Property to be set
/// Parameter value Property value
/// Parameter value_len Length of the property value
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a ctx or @a property)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_property_e
/// @see yaca_context_get_property()
///
/// Module getter: `tizenYaca`.
int yaca_context_set_property(
  yaca_context_h ctx,
  int property,
  ffi.Pointer<ffi.Void> value,
  int value_len,
) =>
    tizenYaca.yaca_context_set_property(
      ctx,
      property,
      value,
      value_len,
    );

/// @brief Decrypts the final chunk of the data.
/// @since_tizen 3.0
/// @remarks Skipping yaca_decrypt_update() and calling only yaca_decrypt_finalize() will produce a decryption of an empty ciphertext.
/// Parameter ctx A valid decrypt context
/// Output parameter plaintext Final piece of the decrypted data
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter plaintext_len Length of the final piece,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx), wrong #YACA_PROPERTY_GCM_AAD or
/// wrong #YACA_PROPERTY_GCM_TAG was used
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_decrypt_initialize()
/// @see yaca_decrypt_update()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_decrypt_finalize(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> plaintext,
  ffi.Pointer<ffi.Size> plaintext_len,
) =>
    tizenYaca.yaca_decrypt_finalize(
      ctx,
      plaintext,
      plaintext_len,
    );

/// @brief Initializes an decryption context.
/// @since_tizen 3.0
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// Output parameter ctx Newly created context
/// Parameter algo Encryption algorithm that was used to encrypt the data
/// Parameter bcm Chaining mode that was used to encrypt the data
/// Parameter sym_key Symmetric key that was used to encrypt the data
/// Parameter iv Initialization Vector that was used to encrypt the data
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo, @a bcm, @a sym_key or @a iv)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_encrypt_algorithm_e
/// @see #yaca_block_cipher_mode_e
/// @see yaca_decrypt_update()
/// @see yaca_decrypt_finalize()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_decrypt_initialize(
  ffi.Pointer<yaca_context_h> ctx,
  int algo,
  int bcm,
  yaca_key_h sym_key,
  yaca_key_h iv,
) =>
    tizenYaca.yaca_decrypt_initialize(
      ctx,
      algo,
      bcm,
      sym_key,
      iv,
    );

/// @brief Decrypts chunk of the data.
/// @since_tizen 3.0
/// Parameter ctx Context created by yaca_decrypt_initialize()
/// Parameter ciphertext Ciphertext to be decrypted
/// Parameter ciphertext_len Length of the ciphertext
/// Output parameter plaintext Buffer for the decrypted data
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter plaintext_len Length of the decrypted data,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a ctx), wrong #YACA_PROPERTY_CCM_AAD or
/// wrong #YACA_PROPERTY_CCM_TAG was used
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_decrypt_initialize()
/// @see yaca_decrypt_finalize()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_decrypt_update(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> ciphertext,
  int ciphertext_len,
  ffi.Pointer<ffi.Char> plaintext,
  ffi.Pointer<ffi.Size> plaintext_len,
) =>
    tizenYaca.yaca_decrypt_update(
      ctx,
      ciphertext,
      ciphertext_len,
      plaintext,
      plaintext_len,
    );

/// @brief Calculates the final digest.
/// @since_tizen 3.0
/// @remarks Skipping yaca_digest_update() and calling only yaca_digest_finalize() will produce an empty message digest.
/// Parameter ctx A valid digest context
/// Output parameter digest Buffer for the message digest
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter digest_len Length of the digest,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_digest_initialize()
/// @see yaca_digest_update()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_digest_finalize(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> digest,
  ffi.Pointer<ffi.Size> digest_len,
) =>
    tizenYaca.yaca_digest_finalize(
      ctx,
      digest,
      digest_len,
    );

/// @brief Initializes a digest context.
/// @since_tizen 3.0
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// Output parameter ctx Newly created context
/// Parameter algo Digest algorithm that will be used
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_digest_algorithm_e
/// @see yaca_digest_update()
/// @see yaca_digest_finalize()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_digest_initialize(
  ffi.Pointer<yaca_context_h> ctx,
  int algo,
) =>
    tizenYaca.yaca_digest_initialize(
      ctx,
      algo,
    );

/// @brief Feeds the message into the message digest algorithm.
/// @since_tizen 3.0
/// Parameter ctx Context created by yaca_digest_initialize()
/// Parameter message Message from which the digest is to be calculated
/// Parameter message_len Length of the message
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_digest_initialize()
/// @see yaca_digest_finalize()
///
/// Module getter: `tizenYaca`.
int yaca_digest_update(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> message,
  int message_len,
) =>
    tizenYaca.yaca_digest_update(
      ctx,
      message,
      message_len,
    );

/// @brief Encrypts the final chunk of the data.
/// @since_tizen 3.0
/// @remarks Skipping yaca_encrypt_update() and calling only yaca_encrypt_finalize() will produce an encryption of an empty message.
/// Parameter ctx A valid encrypt context
/// Output parameter ciphertext Final piece of the encrypted data
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter ciphertext_len Length of the final piece,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_encrypt_initialize()
/// @see yaca_encrypt_update()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_encrypt_finalize(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> ciphertext,
  ffi.Pointer<ffi.Size> ciphertext_len,
) =>
    tizenYaca.yaca_encrypt_finalize(
      ctx,
      ciphertext,
      ciphertext_len,
    );

/// @brief Returns the recommended/default length of the Initialization Vector for a given encryption configuration.
/// @since_tizen 3.0
/// @remarks If returned @a iv_bit_len equals 0 that means that for this
/// specific algorithm and its parameters Initialization Vector is not used.
/// Parameter algo Encryption algorithm
/// Parameter bcm Chain mode
/// Parameter key_bit_len Key length in bits
/// Output parameter iv_bit_len Recommended Initialization Vector length in bits
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo, @a bcm or @a key_bit_len not
/// divisible by 8)
/// @retval #YACA_ERROR_INTERNAL Internal error
///
/// Module getter: `tizenYaca`.
int yaca_encrypt_get_iv_bit_length(
  int algo,
  int bcm,
  int key_bit_len,
  ffi.Pointer<ffi.Size> iv_bit_len,
) =>
    tizenYaca.yaca_encrypt_get_iv_bit_length(
      algo,
      bcm,
      key_bit_len,
      iv_bit_len,
    );

/// @brief Initializes an encryption context.
/// @since_tizen 3.0
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// Output parameter ctx Newly created context
/// Parameter algo Encryption algorithm that will be used
/// Parameter bcm Chaining mode that will be used
/// Parameter sym_key Symmetric key that will be used
/// Parameter iv Initialization Vector that will be used
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo, @a bcm, @a sym_key or @a iv)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_encrypt_algorithm_e
/// @see #yaca_block_cipher_mode_e
/// @see yaca_encrypt_update()
/// @see yaca_encrypt_finalize()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_encrypt_initialize(
  ffi.Pointer<yaca_context_h> ctx,
  int algo,
  int bcm,
  yaca_key_h sym_key,
  yaca_key_h iv,
) =>
    tizenYaca.yaca_encrypt_initialize(
      ctx,
      algo,
      bcm,
      sym_key,
      iv,
    );

/// @brief Encrypts chunk of the data.
/// @since_tizen 3.0
/// Parameter ctx Context created by yaca_encrypt_initialize()
/// Parameter plaintext Plaintext to be encrypted
/// Parameter plaintext_len Length of the plaintext
/// Output parameter ciphertext Buffer for the encrypted data
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter ciphertext_len Length of the encrypted data,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_encrypt_initialize()
/// @see yaca_encrypt_finalize()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_encrypt_update(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> plaintext,
  int plaintext_len,
  ffi.Pointer<ffi.Char> ciphertext,
  ffi.Pointer<ffi.Size> ciphertext_len,
) =>
    tizenYaca.yaca_encrypt_update(
      ctx,
      plaintext,
      plaintext_len,
      ciphertext,
      ciphertext_len,
    );

/// @brief Frees the memory allocated by yaca_malloc(), yaca_zalloc(),
/// yaca_realloc() or one of the cryptographic operations.
/// @since_tizen 3.0
/// Parameter memory Pointer to the memory to be freed
/// @see yaca_malloc()
/// @see yaca_zalloc()
/// @see yaca_realloc()
///
/// Module getter: `tizenYaca`.
void yaca_free(
  ffi.Pointer<ffi.Void> memory,
) =>
    tizenYaca.yaca_free(
      memory,
    );

/// @brief Initializes the library. Must be called before any other crypto
/// function. Should be called once in each thread that uses yaca.
/// @since_tizen 3.0
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_cleanup()
///
/// Module getter: `tizenYaca`.
int yaca_initialize() =>
    tizenYaca.yaca_initialize();

/// @brief Derives a shared secret using Diffie-Helmann or EC Diffie-Helmann key exchange protocol.
/// @since_tizen 3.0
/// @remarks The @a secret should not be used as a symmetric key.
/// To produce a symmetric key pass the secret to a key derivation function (KDF)
/// or a message digest function.
/// @remarks Both the keys passed should be of DH or EC type.
/// @remarks The @a secret should be freed with yaca_free().
/// Parameter prv_key Our private key
/// Parameter pub_key Peer public key
/// Output parameter secret Generated shared secret
/// Output parameter secret_len Size of the shared secret
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values
/// (invalid @a prv_key or @a pub_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_key_derive_kdf()
/// @see yaca_simple_calculate_digest()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_key_derive_dh(
  yaca_key_h prv_key,
  yaca_key_h pub_key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> secret,
  ffi.Pointer<ffi.Size> secret_len,
) =>
    tizenYaca.yaca_key_derive_dh(
      prv_key,
      pub_key,
      secret,
      secret_len,
    );

/// @brief Derives a key material from shared secret.
/// @since_tizen 3.0
/// @remarks The @a info parameter is ANSI X9.42 OtherInfo or ANSI X9.62 SharedInfo structure,
/// more information can be found in ANSI X9.42/62 standard specification.
/// @remarks The @a key_material or separate parts of it can be used to import a symmetric key
/// with yaca_key_import().
/// @remarks The @a key_material should be freed using yaca_free().
/// Parameter kdf Key derivation function
/// Parameter algo Digest algorithm that should be used in key derivation
/// Parameter secret Shared secret
/// Parameter secret_len Size of the shared secret
/// Parameter info Optional additional info, use NULL if not appending extra info
/// Parameter info_len Length of additional info, use 0 if not using additional info
/// Parameter key_material_len Length of a key material to be generated
/// Output parameter key_material Newly generated key material
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a algo or @a kdf)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_kdf_e
/// @see #yaca_digest_algorithm_e
/// @see yaca_key_derive_dh()
/// @see yaca_key_import()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_key_derive_kdf(
  int kdf,
  int algo,
  ffi.Pointer<ffi.Char> secret,
  int secret_len,
  ffi.Pointer<ffi.Char> info,
  int info_len,
  int key_material_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> key_material,
) =>
    tizenYaca.yaca_key_derive_kdf(
      kdf,
      algo,
      secret,
      secret_len,
      info,
      info_len,
      key_material_len,
      key_material,
    );

/// @brief Derives a key from user password (PKCS #5 a.k.a. pbkdf2 algorithm).
/// @since_tizen 3.0
/// @remarks The @a key should be released using yaca_key_destroy().
/// Parameter password User password as a null-terminated string
/// Parameter salt Salt, should be a non-empty string
/// Parameter salt_len Length of the salt
/// Parameter iterations Number of iterations
/// Parameter algo Digest algorithm that should be used in key generation
/// Parameter key_bit_len Length of a key (in bits) to be generated
/// Output parameter key Newly generated key
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a algo or @a key_bit_len not divisible by 8)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_digest_algorithm_e
/// @see yaca_key_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_key_derive_pbkdf2(
  ffi.Pointer<ffi.Char> password,
  ffi.Pointer<ffi.Char> salt,
  int salt_len,
  int iterations,
  int algo,
  int key_bit_len,
  ffi.Pointer<yaca_key_h> key,
) =>
    tizenYaca.yaca_key_derive_pbkdf2(
      password,
      salt,
      salt_len,
      iterations,
      algo,
      key_bit_len,
      key,
    );

/// @brief Releases the key created by the library. Passing YACA_KEY_NULL is allowed.
/// @since_tizen 3.0
/// Parameter key Key to be released
/// @see yaca_key_import()
/// @see yaca_key_export()
/// @see yaca_key_generate()
///
/// Module getter: `tizenYaca`.
void yaca_key_destroy(
  yaca_key_h key,
) =>
    tizenYaca.yaca_key_destroy(
      key,
    );

/// @brief Exports a key or key generation parameters to arbitrary format.
/// @since_tizen 3.0
/// @remarks Everywhere where either a key (of any type) or an asymmetric key is referred
/// in the documentation of this function key generator parameters are also included.
/// @remarks This function exports the key to an arbitrary key format and key file format.
/// @remarks For key formats two values are allowed:
/// - #YACA_KEY_FORMAT_DEFAULT: this is the only option possible in case of symmetric keys
/// (or Initialization Vector), for asymmetric keys it will
/// export to their default ASN1 structure format
/// (e.g. PKCS#1, SSLeay, PKCS#3).
/// - #YACA_KEY_FORMAT_PKCS8: this will only work for private asymmetric keys.
/// @remarks The following file formats are supported:
/// - #YACA_KEY_FILE_FORMAT_RAW: used only for symmetric, raw binary format
/// - #YACA_KEY_FILE_FORMAT_BASE64: used only for symmetric, BASE64 encoded binary form
/// - #YACA_KEY_FILE_FORMAT_PEM: used only for asymmetric, PEM file format
/// - #YACA_KEY_FILE_FORMAT_DER: used only for asymmetric, DER file format
/// @remarks Encryption is supported and optional for RSA/DSA private keys in the
/// #YACA_KEY_FORMAT_DEFAULT with #YACA_KEY_FILE_FORMAT_PEM format. If no password is
/// provided the exported key will be unencrypted. The encryption algorithm used
/// in this case is AES-256-CBC.
/// @remarks Encryption is obligatory for #YACA_KEY_FORMAT_PKCS8 format (for both, PEM and DER
/// file formats). If no password is provided the #YACA_ERROR_INVALID_PARAMETER will
/// be returned. The encryption algorithm used in this case is AES-256-CBC. The key is
/// generated from password using PBKDF2 with HMAC-SHA1 function and 2048 iterations.
/// @remarks Encryption is not supported for the symmetric, public keys and key generation
/// parameters in all their supported formats. If a password is provided in such
/// case the #YACA_ERROR_INVALID_PARAMETER will be returned.
/// Parameter key Key to be exported
/// Parameter key_fmt Format of the key
/// Parameter key_file_fmt Format of the key file
/// Parameter password Password used for the encryption (can be NULL)
/// Output parameter data Data, allocated by the library, containing exported key
/// (must be freed with yaca_free())
/// Output parameter data_len Size of the output data
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a key_fmt, @a key_file_fmt or @a data_len too big)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_format_e
/// @see #yaca_key_file_format_e
/// @see yaca_key_import()
/// @see yaca_key_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_key_export(
  yaca_key_h key,
  int key_fmt,
  int key_file_fmt,
  ffi.Pointer<ffi.Char> password,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data,
  ffi.Pointer<ffi.Size> data_len,
) =>
    tizenYaca.yaca_key_export(
      key,
      key_fmt,
      key_file_fmt,
      password,
      data,
      data_len,
    );

/// @brief Extracts parameters from a private or a public key.
/// @since_tizen 3.0
/// @remarks The @a params should be released using yaca_key_destroy().
/// @remarks This function does not support RSA keys.
/// Parameter key A key to extract the parameters from
/// Output parameter params Extracted parameters
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER @a key is of invalid type or @a params is NULL
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_key_generate()
/// @see yaca_key_generate_from_parameters()
/// @see yaca_key_import()
/// @see yaca_key_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_key_extract_parameters(
  yaca_key_h key,
  ffi.Pointer<yaca_key_h> params,
) =>
    tizenYaca.yaca_key_extract_parameters(
      key,
      params,
    );

/// @brief Extracts public key from a private one.
/// @since_tizen 3.0
/// @remarks The @a pub_key should be released using yaca_key_destroy().
/// Parameter prv_key Private key to extract the public one from
/// Output parameter pub_key Extracted public key
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER @a prv_key is of invalid type or @a pub_key is NULL
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_key_generate()
/// @see yaca_key_import()
/// @see yaca_key_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_key_extract_public(
  yaca_key_h prv_key,
  ffi.Pointer<yaca_key_h> pub_key,
) =>
    tizenYaca.yaca_key_extract_public(
      prv_key,
      pub_key,
    );

/// @brief Generates a secure key or key generation parameters (or an Initialization Vector).
/// @since_tizen 3.0
/// @remarks This function is used to generate symmetric keys, private asymmetric keys
/// or key generation parameters for key types that support them (DSA, DH and EC).
/// @remarks Supported key lengths:
/// - SYMMETRIC/IV: >= 8bits
/// - DES: 64, 128 or 192bits
/// - RSA: length >= 512bits
/// - DSA: length >= 512bits, multiple of 64
/// - DH: a value taken from #yaca_key_bit_length_dh_rfc_e or
/// (YACA_KEY_LENGTH_DH_GENERATOR_* | prime_length_in_bits),
/// where prime_length_in_bits has to be >= 256
/// - EC: a value taken from #yaca_key_bit_length_ec_e
/// @remarks The @a key should be released using yaca_key_destroy().
/// Parameter key_type Type of the key to be generated
/// Parameter key_bit_len Length of the key (in bits) to be generated
/// Output parameter key Newly generated key
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER @a key is NULL, incorrect @a key_type or
/// @a key_bit_len is not divisible by 8
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_key_bit_length_e
/// @see #yaca_key_bit_length_dh_rfc_e
/// @see #YACA_KEY_LENGTH_DH_GENERATOR_2
/// @see #YACA_KEY_LENGTH_DH_GENERATOR_5
/// @see #yaca_key_bit_length_ec_e
/// @see yaca_key_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_key_generate(
  int key_type,
  int key_bit_len,
  ffi.Pointer<yaca_key_h> key,
) =>
    tizenYaca.yaca_key_generate(
      key_type,
      key_bit_len,
      key,
    );

/// @brief Generates a secure private asymmetric key from parameters.
/// @since_tizen 3.0
/// @remarks This function is used to generate private asymmetric keys
/// based on pre-generated parameters.
/// @remarks This function does not support RSA keys, as it's not possible
/// to extract parameters from them.
/// @remarks The @a key should be released using yaca_key_destroy().
/// Parameter params Pre-generated parameters
/// Output parameter prv_key Newly generated private key
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER @a prv_key is NULL or incorrect @a params
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_key_destroy()
/// @see yaca_key_generate()
/// @see yaca_key_extract_parameters()
///
/// Module getter: `tizenYaca`.
int yaca_key_generate_from_parameters(
  yaca_key_h params,
  ffi.Pointer<yaca_key_h> prv_key,
) =>
    tizenYaca.yaca_key_generate_from_parameters(
      params,
      prv_key,
    );

/// @brief Gets key's length (in bits).
/// @since_tizen 3.0
/// @remarks The @a key can be any symmetric (including an Initialization Vector) or
/// asymmetric key (including key generation parameters).
/// @remarks For Diffie-Helmann @a key_bit_len returns prime length in bits. Values
/// used to generate the key/parameters in yaca_key_generate() are not
/// restored. Neither generator number nor values from #yaca_key_bit_length_dh_rfc_e.
/// @remarks For Elliptic Curves @a key_bit_len returns values from #yaca_key_bit_length_ec_e.
/// Parameter key Key which length we return
/// Output parameter key_bit_len Key length in bits
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Either of the params is NULL
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_bit_length_e
/// @see #yaca_key_bit_length_dh_rfc_e
/// @see #yaca_key_bit_length_ec_e
///
/// Module getter: `tizenYaca`.
int yaca_key_get_bit_length(
  yaca_key_h key,
  ffi.Pointer<ffi.Size> key_bit_len,
) =>
    tizenYaca.yaca_key_get_bit_length(
      key,
      key_bit_len,
    );

/// @brief Gets key's type.
/// @since_tizen 3.0
/// Parameter key Key which type we return
/// Output parameter key_type Key type
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Either of the params is NULL
/// @see #yaca_key_type_e
///
/// Module getter: `tizenYaca`.
int yaca_key_get_type(
  yaca_key_h key,
  ffi.Pointer<ffi.Int32> key_type,
) =>
    tizenYaca.yaca_key_get_type(
      key,
      key_type,
    );

/// @brief Imports a key or key generation parameters.
/// @since_tizen 3.0
/// @remarks Everywhere where either a key (of any type) or an asymmetric key is referred
/// in the documentation of this function key generator parameters are also included.
/// @remarks This function imports a key trying to match it to the @a key_type specified.
/// It should autodetect both the key format and the file format.
/// @remarks For symmetric, Initialization Vector and DES keys RAW binary format and BASE64 encoded
/// binary format are supported.
/// For asymmetric keys PEM and DER file formats are supported.
/// @remarks Asymmetric keys can be in their default ASN1 structure formats (like
/// PKCS#1, SSleay or PKCS#3). Private asymmetric keys can also be in
/// PKCS#8 format. Additionally it is possible to import public RSA/DSA/EC
/// keys from X509 certificate.
/// @remarks If the key is encrypted the algorithm will be autodetected and password
/// used. If it's not known if the key is encrypted one should pass NULL as
/// password and check for the #YACA_ERROR_INVALID_PASSWORD return code.
/// @remarks If the imported key will be detected as a format that does not support
/// encryption and password was passed #YACA_ERROR_INVALID_PARAMETER will
/// be returned. For a list of keys and formats that do support encryption
/// see yaca_key_export() documentation.
/// @remarks The @a key should be released using yaca_key_destroy().
/// Parameter key_type Type of the key
/// Parameter password Null-terminated password for the key (can be NULL)
/// Parameter data Blob containing the key
/// Parameter data_len Size of the blob
/// Output parameter key Returned key
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a key_type or @a data_len too big)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @retval #YACA_ERROR_INVALID_PASSWORD Invalid @a password given or @a password was required
/// and none was given
/// @see #yaca_key_type_e
/// @see yaca_key_export()
/// @see yaca_key_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_key_import(
  int key_type,
  ffi.Pointer<ffi.Char> password,
  ffi.Pointer<ffi.Char> data,
  int data_len,
  ffi.Pointer<yaca_key_h> key,
) =>
    tizenYaca.yaca_key_import(
      key_type,
      password,
      data,
      data_len,
      key,
    );

/// @brief Allocates the memory.
/// @since_tizen 3.0
/// @remarks The @a memory should be freed using yaca_free().
/// Parameter size Size of the allocation (bytes)
/// Output parameter memory Allocated memory
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @see yaca_zalloc()
/// @see yaca_realloc()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_malloc(
  int size,
  ffi.Pointer<ffi.Pointer<ffi.Void>> memory,
) =>
    tizenYaca.yaca_malloc(
      size,
      memory,
    );

/// @brief Safely compares first @a len bytes of two buffers.
/// @since_tizen 3.0
/// Parameter first Pointer to the first buffer
/// Parameter second Pointer to the second buffer
/// Parameter len Length to compare
/// @return #YACA_ERROR_NONE when buffers are equal,
/// otherwise #YACA_ERROR_DATA_MISMATCH
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0)
/// @retval #YACA_ERROR_DATA_MISMATCH Buffers are different
///
/// Module getter: `tizenYaca`.
int yaca_memcmp(
  ffi.Pointer<ffi.Void> first,
  ffi.Pointer<ffi.Void> second,
  int len,
) =>
    tizenYaca.yaca_memcmp(
      first,
      second,
      len,
    );

/// @brief Decrypts last chunk of sealed message.
/// @since_tizen 3.0
/// @remarks Skipping yaca_open_update() and calling only yaca_open_finalize() will produce a
/// decryption of an empty ciphertext.
/// Parameter ctx A valid open context
/// Output parameter plaintext Final piece of the decrypted data
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter plaintext_len Length of the final piece,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx), wrong #YACA_PROPERTY_GCM_AAD or
/// wrong #YACA_PROPERTY_GCM_TAG was used
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_open_initialize()
/// @see yaca_open_update()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_open_finalize(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> plaintext,
  ffi.Pointer<ffi.Size> plaintext_len,
) =>
    tizenYaca.yaca_open_finalize(
      ctx,
      plaintext,
      plaintext_len,
    );

/// @brief Initializes an asymmetric decryption context.
/// @since_tizen 3.0
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// @remarks The @a prv_key must be #YACA_KEY_TYPE_RSA_PRIV.
/// Output parameter ctx Newly created context
/// Parameter prv_key Private key, part of the pair that was used for the encryption
/// Parameter algo Symmetric algorithm that was used for the encryption
/// Parameter bcm Block chaining mode for the symmetric algorithm
/// Parameter sym_key_bit_len Symmetric key length (in bits) that was used for the encryption
/// Parameter sym_key Symmetric key, encrypted with the public key,
/// that was used to encrypt the data
/// Parameter iv Initialization Vector that was used for the encryption
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, invalid
/// @a algo, @a bcm, @a sym_key_bit_len, @a prv_key,
/// @a sym_key or @a iv)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_encrypt_algorithm_e
/// @see #yaca_block_cipher_mode_e
/// @see #yaca_key_bit_length_e
/// @see yaca_open_update()
/// @see yaca_open_finalize()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_open_initialize(
  ffi.Pointer<yaca_context_h> ctx,
  yaca_key_h prv_key,
  int algo,
  int bcm,
  int sym_key_bit_len,
  yaca_key_h sym_key,
  yaca_key_h iv,
) =>
    tizenYaca.yaca_open_initialize(
      ctx,
      prv_key,
      algo,
      bcm,
      sym_key_bit_len,
      sym_key,
      iv,
    );

/// @brief Decrypts piece of the data.
/// @since_tizen 3.0
/// Parameter ctx Context created by yaca_open_initialize()
/// Parameter ciphertext Ciphertext to be decrypted
/// Parameter ciphertext_len Length of the ciphertext
/// Output parameter plaintext Buffer for the decrypted data
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter plaintext_len Length of the decrypted data,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a ctx), wrong #YACA_PROPERTY_CCM_AAD or
/// wrong #YACA_PROPERTY_CCM_TAG was used
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_open_initialize()
/// @see yaca_open_finalize()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_open_update(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> ciphertext,
  int ciphertext_len,
  ffi.Pointer<ffi.Char> plaintext,
  ffi.Pointer<ffi.Size> plaintext_len,
) =>
    tizenYaca.yaca_open_update(
      ctx,
      ciphertext,
      ciphertext_len,
      plaintext,
      plaintext_len,
    );

/// @brief Generates random data.
/// @since_tizen 3.0
/// Parameter data Pointer to the memory to be randomized
/// Parameter data_len Length of the memory to be randomized
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0)
/// @retval #YACA_ERROR_INTERNAL Internal error
///
/// Module getter: `tizenYaca`.
int yaca_randomize_bytes(
  ffi.Pointer<ffi.Char> data,
  int data_len,
) =>
    tizenYaca.yaca_randomize_bytes(
      data,
      data_len,
    );

/// @brief Re-allocates the memory.
/// @since_tizen 3.0
/// @remarks In case of failure the function doesn't free the memory pointed by @a memory.
/// @remarks If @a memory is NULL then the call is equivalent to yaca_malloc().
/// @remarks If the function fails the contents of @a memory will be left unchanged.
/// @remarks The @a memory should be freed using yaca_free().
/// Parameter size Size of the new allocation (bytes)
/// Parameter memory  Memory to be reallocated
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @see yaca_malloc()
/// @see yaca_zalloc()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_realloc(
  int size,
  ffi.Pointer<ffi.Pointer<ffi.Void>> memory,
) =>
    tizenYaca.yaca_realloc(
      size,
      memory,
    );

/// @brief Decrypts data using a RSA private key (low-level decrypt equivalent).
/// @since_tizen 3.0
/// @remarks The @a plaintext should be freed using yaca_free().
/// @remarks The @a prv_key used has to be of a #YACA_KEY_TYPE_RSA_PRIV type.
/// Parameter padding Padding method
/// Parameter prv_key Private RSA key matching the public one used to encrypt the data
/// Parameter ciphertext Ciphertext to be decrypted
/// Parameter ciphertext_len Length of ciphertext
/// Output parameter plaintext Decrypted data, will be allocated by the library
/// Output parameter plaintext_len Length of the decrypted data
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a padding or @a prv_key), padding check failed
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_padding_e
/// @see yaca_rsa_public_encrypt()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_rsa_private_decrypt(
  int padding,
  yaca_key_h prv_key,
  ffi.Pointer<ffi.Char> ciphertext,
  int ciphertext_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> plaintext,
  ffi.Pointer<ffi.Size> plaintext_len,
) =>
    tizenYaca.yaca_rsa_private_decrypt(
      padding,
      prv_key,
      ciphertext,
      ciphertext_len,
      plaintext,
      plaintext_len,
    );

/// @brief Encrypts data using a RSA private key (low-level sign equivalent).
/// @since_tizen 3.0
/// @remarks The @a ciphertext should be freed using yaca_free().
/// @remarks The @a prv_key used has to be of a #YACA_KEY_TYPE_RSA_PRIV type.
/// @remarks The maximum length of plaintext depends on the key length and padding method,
/// see #yaca_padding_e for details.
/// @remarks The @a plaintext can be NULL but then the @a plaintext_len must be 0.
/// Parameter padding Padding method
/// Parameter prv_key Private RSA key (see yaca_key.h for key generation functions)
/// Parameter plaintext Plaintext to be encrypted
/// Parameter plaintext_len Length of the plaintext
/// Output parameter ciphertext Encrypted data, will be allocated by the library
/// Output parameter ciphertext_len Length of the encrypted data (may be larger than decrypted)
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a padding, @a prv_key or @a plaintext_len)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_padding_e
/// @see yaca_rsa_public_decrypt()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_rsa_private_encrypt(
  int padding,
  yaca_key_h prv_key,
  ffi.Pointer<ffi.Char> plaintext,
  int plaintext_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ciphertext,
  ffi.Pointer<ffi.Size> ciphertext_len,
) =>
    tizenYaca.yaca_rsa_private_encrypt(
      padding,
      prv_key,
      plaintext,
      plaintext_len,
      ciphertext,
      ciphertext_len,
    );

/// @brief Decrypts data using a RSA public key (low-level verify equivalent).
/// @since_tizen 3.0
/// @remarks The @a plaintext should be freed using yaca_free().
/// @remarks The @a pub_key used has to be of a #YACA_KEY_TYPE_RSA_PUB type.
/// Parameter padding Padding method
/// Parameter pub_key Public RSA key matching the private one used to encrypt the data
/// Parameter ciphertext Ciphertext to be decrypted
/// Parameter ciphertext_len Length of ciphertext
/// Output parameter plaintext Decrypted data, will be allocated by the library
/// Output parameter plaintext_len Length of the decrypted data
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a padding or @a pub_key), padding check failed
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_padding_e
/// @see yaca_rsa_private_encrypt()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_rsa_public_decrypt(
  int padding,
  yaca_key_h pub_key,
  ffi.Pointer<ffi.Char> ciphertext,
  int ciphertext_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> plaintext,
  ffi.Pointer<ffi.Size> plaintext_len,
) =>
    tizenYaca.yaca_rsa_public_decrypt(
      padding,
      pub_key,
      ciphertext,
      ciphertext_len,
      plaintext,
      plaintext_len,
    );

/// @brief Encrypts data using a RSA public key (low-level encrypt equivalent).
/// @since_tizen 3.0
/// @remarks The @a ciphertext should be freed using yaca_free().
/// @remarks The @a pub_key used has to be of a #YACA_KEY_TYPE_RSA_PUB type.
/// @remarks The maximum length of plaintext depends on the key length and padding method.
/// See #yaca_padding_e for details.
/// @remarks The @a plaintext can be NULL but then the @a plaintext_len must be 0.
/// Parameter padding Padding method
/// Parameter pub_key Public RSA key (see yaca_key.h for key generation functions)
/// Parameter plaintext Plaintext to be encrypted
/// Parameter plaintext_len Length of the plaintext
/// Output parameter ciphertext Encrypted data, will be allocated by the library
/// Output parameter ciphertext_len Length of the encrypted data (may be larger than decrypted)
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a padding, @a pub_key or @a plaintext_len)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_padding_e
/// @see yaca_rsa_private_decrypt()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_rsa_public_encrypt(
  int padding,
  yaca_key_h pub_key,
  ffi.Pointer<ffi.Char> plaintext,
  int plaintext_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ciphertext,
  ffi.Pointer<ffi.Size> ciphertext_len,
) =>
    tizenYaca.yaca_rsa_public_encrypt(
      padding,
      pub_key,
      plaintext,
      plaintext_len,
      ciphertext,
      ciphertext_len,
    );

/// @brief Encrypts the final piece of the data.
/// @since_tizen 3.0
/// @remarks Skipping yaca_seal_update() and calling only yaca_seal_finalize() will produce an
/// encryption of an empty message.
/// Parameter ctx A valid seal context
/// Output parameter ciphertext Final piece of the encrypted data
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter ciphertext_len Length of the final piece,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_seal_initialize()
/// @see yaca_seal_update()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_seal_finalize(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> ciphertext,
  ffi.Pointer<ffi.Size> ciphertext_len,
) =>
    tizenYaca.yaca_seal_finalize(
      ctx,
      ciphertext,
      ciphertext_len,
    );

/// @brief Initializes an asymmetric encryption context and generates symmetric key and Initialization Vector.
/// @since_tizen 3.0
/// @remarks Generated symmetric key is encrypted with public key,
/// so can be only used with yaca_open_initialize(). It can be exported,
/// but after import it can be only used with yaca_open_initialize() as well.
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// @remarks The @a pub_key must be #YACA_KEY_TYPE_RSA_PUB.
/// @remarks The @a sym_key_bit_len must be at least 88 bits shorter than the @a pub_key bit length.
/// @remarks The @a sym_key should be released using yaca_key_destroy().
/// @remarks The @a iv should be released using yaca_key_destroy().
/// Output parameter ctx Newly created context
/// Parameter pub_key Public key of the peer that will receive the encrypted data
/// Parameter algo Symmetric algorithm that will be used
/// Parameter bcm Block chaining mode for the symmetric algorithm
/// Parameter sym_key_bit_len Symmetric key length (in bits) that will be generated
/// Output parameter sym_key Generated symmetric key that will be used,
/// it is encrypted with peer's public key
/// Output parameter iv Generated Initialization Vector that will be used
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo, @a bcm, @a sym_key_bit_len or @a pub_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_encrypt_algorithm_e
/// @see #yaca_block_cipher_mode_e
/// @see #yaca_key_bit_length_e
/// @see yaca_seal_update()
/// @see yaca_seal_finalize()
/// @see yaca_open_initialize()
/// @see yaca_key_destroy()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_seal_initialize(
  ffi.Pointer<yaca_context_h> ctx,
  yaca_key_h pub_key,
  int algo,
  int bcm,
  int sym_key_bit_len,
  ffi.Pointer<yaca_key_h> sym_key,
  ffi.Pointer<yaca_key_h> iv,
) =>
    tizenYaca.yaca_seal_initialize(
      ctx,
      pub_key,
      algo,
      bcm,
      sym_key_bit_len,
      sym_key,
      iv,
    );

/// @brief Encrypts piece of the data.
/// @since_tizen 3.0
/// Parameter ctx Context created by yaca_seal_initialize()
/// Parameter plaintext Plaintext to be encrypted
/// Parameter plaintext_len Length of the plaintext
/// Output parameter ciphertext Buffer for the encrypted data
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter ciphertext_len Length of the encrypted data,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_seal_initialize()
/// @see yaca_seal_finalize()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_seal_update(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> plaintext,
  int plaintext_len,
  ffi.Pointer<ffi.Char> ciphertext,
  ffi.Pointer<ffi.Size> ciphertext_len,
) =>
    tizenYaca.yaca_seal_update(
      ctx,
      plaintext,
      plaintext_len,
      ciphertext,
      ciphertext_len,
    );

/// @brief Calculates the final signature or MAC.
/// @since_tizen 3.0
/// @remarks Skipping yaca_sign_update() and calling only yaca_sign_finalize() will produce a
/// signature or MAC of an empty message.
/// Parameter ctx A valid sign context
/// Output parameter signature Buffer for the MAC or the message signature
/// (must be allocated by client, see yaca_context_get_output_length())
/// Output parameter signature_len Length of the MAC or the signature,
/// actual number of bytes written will be returned here
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_sign_initialize()
/// @see yaca_sign_update()
/// @see yaca_sign_initialize_hmac()
/// @see yaca_sign_initialize_cmac()
/// @see yaca_context_get_output_length()
///
/// Module getter: `tizenYaca`.
int yaca_sign_finalize(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> signature,
  ffi.Pointer<ffi.Size> signature_len,
) =>
    tizenYaca.yaca_sign_finalize(
      ctx,
      signature,
      signature_len,
    );

/// @brief Initializes a signature context for asymmetric signatures.
/// @since_tizen 3.0
/// @remarks For verification use yaca_verify_initialize(), yaca_verify_update() and
/// yaca_verify_finalize() functions with matching public key.
/// @remarks For RSA operations the default padding used is #YACA_PADDING_PKCS1. It can be
/// changed using yaca_context_set_property() with #YACA_PROPERTY_PADDING.
/// @remarks For #YACA_DIGEST_SHA384 and #YACA_DIGEST_SHA512 the RSA key size must be bigger than
/// #YACA_KEY_LENGTH_512BIT.
/// @remarks Using of #YACA_DIGEST_MD5 algorithm for DSA and ECDSA operations is prohibited.
/// @remarks Using of #YACA_DIGEST_MD5 or #YACA_DIGEST_SHA224 with #YACA_PADDING_X931 is prohibited.
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// Output parameter ctx Newly created context
/// Parameter algo Digest algorithm that will be used
/// Parameter prv_key Private key that will be used, algorithm is deduced based
/// on key type, supported key types:
/// - #YACA_KEY_TYPE_RSA_PRIV,
/// - #YACA_KEY_TYPE_DSA_PRIV,
/// - #YACA_KEY_TYPE_EC_PRIV
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo or @a prv_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_digest_algorithm_e
/// @see #yaca_padding_e
/// @see yaca_context_set_property()
/// @see yaca_sign_update()
/// @see yaca_sign_finalize()
/// @see yaca_verify_initialize()
/// @see yaca_verify_update()
/// @see yaca_verify_finalize()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_sign_initialize(
  ffi.Pointer<yaca_context_h> ctx,
  int algo,
  yaca_key_h prv_key,
) =>
    tizenYaca.yaca_sign_initialize(
      ctx,
      algo,
      prv_key,
    );

/// @brief Initializes a signature context for CMAC.
/// @since_tizen 3.0
/// @remarks For verification, calculate message CMAC and compare with received MAC using yaca_memcmp().
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// Output parameter ctx Newly created context
/// Parameter algo Encryption algorithm that will be used
/// Parameter sym_key Symmetric key that will be used, supported key types:
/// - #YACA_KEY_TYPE_SYMMETRIC,
/// - #YACA_KEY_TYPE_DES
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo or @a sym_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_encrypt_algorithm_e
/// @see yaca_sign_update()
/// @see yaca_sign_finalize()
/// @see yaca_memcmp()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_sign_initialize_cmac(
  ffi.Pointer<yaca_context_h> ctx,
  int algo,
  yaca_key_h sym_key,
) =>
    tizenYaca.yaca_sign_initialize_cmac(
      ctx,
      algo,
      sym_key,
    );

/// @brief Initializes a signature context for HMAC.
/// @since_tizen 3.0
/// @remarks For verification, calculate message HMAC and compare with received MAC using yaca_memcmp().
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// Output parameter ctx Newly created context
/// Parameter algo Digest algorithm that will be used
/// Parameter sym_key Symmetric key that will be used, supported key types:
/// - #YACA_KEY_TYPE_SYMMETRIC,
/// - #YACA_KEY_TYPE_DES
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo or @a sym_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_digest_algorithm_e
/// @see yaca_sign_update()
/// @see yaca_sign_finalize()
/// @see yaca_memcmp()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_sign_initialize_hmac(
  ffi.Pointer<yaca_context_h> ctx,
  int algo,
  yaca_key_h sym_key,
) =>
    tizenYaca.yaca_sign_initialize_hmac(
      ctx,
      algo,
      sym_key,
    );

/// @brief Feeds the message into the digital signature or MAC algorithm.
/// @since_tizen 3.0
/// Parameter ctx Context created by yaca_sign_initialize(),
/// yaca_sign_initialize_hmac() or yaca_sign_initialize_cmac()
/// Parameter message Message to be signed
/// Parameter message_len Length of the message
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_sign_initialize()
/// @see yaca_sign_finalize()
/// @see yaca_sign_initialize_hmac()
/// @see yaca_sign_initialize_cmac()
///
/// Module getter: `tizenYaca`.
int yaca_sign_update(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> message,
  int message_len,
) =>
    tizenYaca.yaca_sign_update(
      ctx,
      message,
      message_len,
    );

/// @brief Calculates a CMAC of given message using symmetric key.
/// @since_tizen 3.0
/// @remarks For verification, calculate message CMAC and compare with received MAC using yaca_memcmp().
/// @remarks The @a mac should be freed using yaca_free().
/// @remarks The @a message can be NULL but then @a message_len must be 0.
/// Parameter algo Encryption algorithm that will be used
/// Parameter sym_key Key that will be used, supported key types:
/// - #YACA_KEY_TYPE_SYMMETRIC,
/// - #YACA_KEY_TYPE_DES
/// Parameter message Message to calculate CMAC from
/// Parameter message_len Length of the message
/// Output parameter mac MAC, will be allocated by the library
/// Output parameter mac_len Length of the MAC
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a algo or @a sym_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_encrypt_algorithm_e
/// @see yaca_memcmp()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_simple_calculate_cmac(
  int algo,
  yaca_key_h sym_key,
  ffi.Pointer<ffi.Char> message,
  int message_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mac,
  ffi.Pointer<ffi.Size> mac_len,
) =>
    tizenYaca.yaca_simple_calculate_cmac(
      algo,
      sym_key,
      message,
      message_len,
      mac,
      mac_len,
    );

/// @brief Calculates a digest of a message.
/// @since_tizen 3.0
/// @remarks The @a digest should be freed using yaca_free().
/// @remarks The @a message can be NULL but then @a message_len must be 0.
/// Parameter algo Digest algorithm (select #YACA_DIGEST_SHA256 if unsure)
/// Parameter message Message from which the digest is to be calculated
/// Parameter message_len Length of the message
/// Output parameter digest Message digest, will be allocated by the library
/// Output parameter digest_len Length of message digest (depends on algorithm)
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_digest_algorithm_e
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_simple_calculate_digest(
  int algo,
  ffi.Pointer<ffi.Char> message,
  int message_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> digest,
  ffi.Pointer<ffi.Size> digest_len,
) =>
    tizenYaca.yaca_simple_calculate_digest(
      algo,
      message,
      message_len,
      digest,
      digest_len,
    );

/// @brief Calculates a HMAC of given message using symmetric key.
/// @since_tizen 3.0
/// @remarks For verification, calculate message HMAC and compare with received MAC using yaca_memcmp().
/// @remarks The @a mac should be freed using yaca_free().
/// @remarks The @a message can be NULL but then @a message_len must be 0.
/// Parameter algo Digest algorithm that will be used
/// Parameter sym_key Key that will be used, supported key types:
/// - #YACA_KEY_TYPE_SYMMETRIC,
/// - #YACA_KEY_TYPE_DES
/// Parameter message Message to calculate HMAC from
/// Parameter message_len Length of the message
/// Output parameter mac MAC, will be allocated by the library
/// Output parameter mac_len Length of the MAC
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a algo or @a sym_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_digest_algorithm_e
/// @see yaca_memcmp()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_simple_calculate_hmac(
  int algo,
  yaca_key_h sym_key,
  ffi.Pointer<ffi.Char> message,
  int message_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mac,
  ffi.Pointer<ffi.Size> mac_len,
) =>
    tizenYaca.yaca_simple_calculate_hmac(
      algo,
      sym_key,
      message,
      message_len,
      mac,
      mac_len,
    );

/// @brief Creates a signature using asymmetric private key.
/// @since_tizen 3.0
/// @remarks For #YACA_DIGEST_SHA384 and #YACA_DIGEST_SHA512 the RSA key size must be bigger than
/// #YACA_KEY_LENGTH_512BIT.
/// @remarks Using of #YACA_DIGEST_MD5 algorithm for DSA and ECDSA operations is prohibited.
/// @remarks The @a signature should be freed using yaca_free().
/// @remarks The @a message can be NULL but then @a message_len must be 0.
/// Parameter algo Digest algorithm that will be used
/// Parameter prv_key Private key that will be used, algorithm is
/// deduced based on key type, supported key types:
/// - #YACA_KEY_TYPE_RSA_PRIV,
/// - #YACA_KEY_TYPE_DSA_PRIV,
/// - #YACA_KEY_TYPE_EC_PRIV
/// Parameter message Message to be signed
/// Parameter message_len Length of the message
/// Output parameter signature Message signature, will be allocated by the library
/// Output parameter signature_len Length of the signature
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a algo or @a prv_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_digest_algorithm_e
/// @see yaca_simple_verify_signature()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_simple_calculate_signature(
  int algo,
  yaca_key_h prv_key,
  ffi.Pointer<ffi.Char> message,
  int message_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> signature,
  ffi.Pointer<ffi.Size> signature_len,
) =>
    tizenYaca.yaca_simple_calculate_signature(
      algo,
      prv_key,
      message,
      message_len,
      signature,
      signature_len,
    );

/// @brief Decrypts data using a symmetric cipher.
/// @since_tizen 3.0
/// @remarks yaca_simple_decrypt() doesn't support #YACA_BCM_GCM and #YACA_BCM_CCM.
/// @remarks The @a plaintext should be freed using yaca_free().
/// @remarks The @a ciphertext can be NULL but then @a ciphertext_len must be 0.
/// Parameter algo Decryption algorithm that was used to encrypt the data
/// Parameter bcm Chaining mode that was used to encrypt the data
/// Parameter sym_key Symmetric encryption key that was used to encrypt the data
/// Parameter iv Initialization Vector that was used to encrypt the data
/// Parameter ciphertext Ciphertext to be decrypted
/// Parameter ciphertext_len Length of ciphertext
/// Output parameter plaintext Decrypted data, will be allocated by the library
/// Output parameter plaintext_len Length of the decrypted data
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a algo, @a bcm, @a sym_key or @a iv)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_encrypt_algorithm_e
/// @see #yaca_block_cipher_mode_e
/// @see yaca_simple_encrypt()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_simple_decrypt(
  int algo,
  int bcm,
  yaca_key_h sym_key,
  yaca_key_h iv,
  ffi.Pointer<ffi.Char> ciphertext,
  int ciphertext_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> plaintext,
  ffi.Pointer<ffi.Size> plaintext_len,
) =>
    tizenYaca.yaca_simple_decrypt(
      algo,
      bcm,
      sym_key,
      iv,
      ciphertext,
      ciphertext_len,
      plaintext,
      plaintext_len,
    );

/// @brief Encrypts data using a symmetric cipher.
/// @since_tizen 3.0
/// @remarks yaca_simple_encrypt() doesn't support #YACA_BCM_GCM and #YACA_BCM_CCM.
/// @remarks The @a ciphertext should be freed using yaca_free().
/// @remarks The @a plaintext can be NULL but then @a plaintext_len must be 0.
/// Parameter algo Encryption algorithm (select #YACA_ENCRYPT_AES if unsure)
/// Parameter bcm Chaining mode (select #YACA_BCM_CBC if unsure)
/// Parameter sym_key Symmetric encryption key (see yaca_key.h for key generation functions)
/// Parameter iv Initialization Vector
/// Parameter plaintext Plaintext to be encrypted
/// Parameter plaintext_len Length of the plaintext
/// Output parameter ciphertext Encrypted data, will be allocated by the library
/// Output parameter ciphertext_len Length of the encrypted data (may be larger than decrypted)
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a algo, @a bcm, @a sym_key or @a iv)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_encrypt_algorithm_e
/// @see #yaca_block_cipher_mode_e
/// @see yaca_simple_decrypt()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_simple_encrypt(
  int algo,
  int bcm,
  yaca_key_h sym_key,
  yaca_key_h iv,
  ffi.Pointer<ffi.Char> plaintext,
  int plaintext_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ciphertext,
  ffi.Pointer<ffi.Size> ciphertext_len,
) =>
    tizenYaca.yaca_simple_encrypt(
      algo,
      bcm,
      sym_key,
      iv,
      plaintext,
      plaintext_len,
      ciphertext,
      ciphertext_len,
    );

/// @brief Verifies a signature using asymmetric public key.
/// @since_tizen 3.0
/// @remarks The @a message can be NULL but then @a message_len must be 0.
/// Parameter algo Digest algorithm that will be used
/// Parameter pub_key Public key that will be used, algorithm is
/// deduced based on key type, supported key types:
/// - #YACA_KEY_TYPE_RSA_PUB,
/// - #YACA_KEY_TYPE_DSA_PUB,
/// - #YACA_KEY_TYPE_EC_PUB
/// Parameter message Message
/// Parameter message_len Length of the message
/// Parameter signature Message signature to be verified
/// Parameter signature_len Length of the signature
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0
/// invalid @a algo or @a pub_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @retval #YACA_ERROR_DATA_MISMATCH The verification failed
/// @see #yaca_key_type_e
/// @see #yaca_digest_algorithm_e
/// @see yaca_simple_calculate_signature()
///
/// Module getter: `tizenYaca`.
int yaca_simple_verify_signature(
  int algo,
  yaca_key_h pub_key,
  ffi.Pointer<ffi.Char> message,
  int message_len,
  ffi.Pointer<ffi.Char> signature,
  int signature_len,
) =>
    tizenYaca.yaca_simple_verify_signature(
      algo,
      pub_key,
      message,
      message_len,
      signature,
      signature_len,
    );

/// @brief Performs the verification.
/// @since_tizen 3.0
/// @remarks Skipping yaca_verify_update() and calling only yaca_verify_finalize() will verify
/// the signature of an empty message.
/// Parameter ctx A valid verify context
/// Parameter signature Message signature to be verified
/// Parameter signature_len Length of the signature
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @retval #YACA_ERROR_DATA_MISMATCH The verification failed
/// @see yaca_verify_initialize()
/// @see yaca_verify_update()
/// @see yaca_sign_finalize()
///
/// Module getter: `tizenYaca`.
int yaca_verify_finalize(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> signature,
  int signature_len,
) =>
    tizenYaca.yaca_verify_finalize(
      ctx,
      signature,
      signature_len,
    );

/// @brief Initializes a signature verification context for asymmetric signatures.
/// @since_tizen 3.0
/// @remarks For RSA operations the default padding used is #YACA_PADDING_PKCS1. It can be
/// changed using yaca_context_set_property() with #YACA_PROPERTY_PADDING.
/// For verify to succeed it has to be set to the same value it was signed with.
/// @remarks The @a ctx should be released using yaca_context_destroy().
/// Output parameter ctx Newly created context
/// Parameter algo Digest algorithm that will be used
/// Parameter pub_key Public key that will be used, algorithm is deduced based on
/// key type, supported key types:
/// - #YACA_KEY_TYPE_RSA_PUB,
/// - #YACA_KEY_TYPE_DSA_PUB,
/// - #YACA_KEY_TYPE_EC_PUB
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL,
/// invalid @a algo or @a pub_key)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see #yaca_key_type_e
/// @see #yaca_digest_algorithm_e
/// @see #yaca_padding_e
/// @see yaca_context_set_property()
/// @see yaca_verify_update()
/// @see yaca_verify_finalize()
/// @see yaca_context_destroy()
///
/// Module getter: `tizenYaca`.
int yaca_verify_initialize(
  ffi.Pointer<yaca_context_h> ctx,
  int algo,
  yaca_key_h pub_key,
) =>
    tizenYaca.yaca_verify_initialize(
      ctx,
      algo,
      pub_key,
    );

/// @brief Feeds the message into the digital signature verification algorithm.
/// @since_tizen 3.0
/// Parameter ctx Context created by yaca_verify_initialize()
/// Parameter message Message
/// Parameter message_len Length of the message
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0,
/// invalid @a ctx)
/// @retval #YACA_ERROR_INTERNAL Internal error
/// @see yaca_verify_initialize()
/// @see yaca_verify_finalize()
///
/// Module getter: `tizenYaca`.
int yaca_verify_update(
  yaca_context_h ctx,
  ffi.Pointer<ffi.Char> message,
  int message_len,
) =>
    tizenYaca.yaca_verify_update(
      ctx,
      message,
      message_len,
    );

/// @brief Allocates the zeroed memory.
/// @since_tizen 3.0
/// @remarks The @a memory should be freed using yaca_free().
/// Parameter size Size of the allocation (bytes)
/// Output parameter memory Allocated memory
/// @return #YACA_ERROR_NONE on success,
/// negative on error
/// @retval #YACA_ERROR_NONE Successful
/// @retval #YACA_ERROR_INVALID_PARAMETER Required parameters have incorrect values (NULL, 0)
/// @retval #YACA_ERROR_OUT_OF_MEMORY Out of memory error
/// @see yaca_malloc()
/// @see yaca_realloc()
/// @see yaca_free()
///
/// Module getter: `tizenYaca`.
int yaca_zalloc(
  int size,
  ffi.Pointer<ffi.Pointer<ffi.Void>> memory,
) =>
    tizenYaca.yaca_zalloc(
      size,
      memory,
    );

