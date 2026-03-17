// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenDeviceCertificateManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libdevice-certificate-manager.so.2.0`.
///
/// Security / Device Certificate Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_device_certificate_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @platform
/// @brief Creates a new key context based on specific name indication (service name, key usage, key type).
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/devicecertificate
///
/// @remarks The @a key_ctx should be freed with dcm_free_key_context() after use.
///
/// Parameter service  Service name indicates first category name (if null, default value is used)
/// Parameter usage  Usage name indicates sub-category name (if null, default value is used)
/// Parameter key_type  Key type name indication (if null, default value is used)
/// Output parameter key_ctx  Newly created key context
/// @return #DCM_ERROR_NONE on success,
/// otherwise a negative error value
///
/// @retval #DCM_ERROR_NONE Successful
/// @retval #DCM_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #DCM_ERROR_OUT_OF_MEMORY Out of memory during processing
/// @retval #DCM_ERROR_PERMISSION_DENIED Failed to access device certificate manager
/// @retval #DCM_ERROR_NOT_SUPPORTED Feature needed to run API is not supported
/// @retval #DCM_ERROR_SOCKET Socket error between client and server
/// @retval #DCM_ERROR_UNKNOWN Unknown error
///
/// @see dcm_free_key_context()
///
/// Module getter: `tizenDeviceCertificateManager`.
int dcm_create_key_context(
  ffi.Pointer<ffi.Char> service,
  ffi.Pointer<ffi.Char> usage,
  ffi.Pointer<ffi.Char> key_type,
  ffi.Pointer<ffi.Pointer<ffi.Void>> key_ctx,
) =>
    tizenDeviceCertificateManager.dcm_create_key_context(
      service,
      usage,
      key_type,
      key_ctx,
    );

/// @platform
/// @brief Creates a signature on a given data using a private key and returns the signature.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/devicecertificate
///
/// @remarks The private key is identified by @a key_ctx.
/// @remarks The @a message can be NULL but then @a message_len must be 0.
/// @remarks The @a signature should be freed using free().
///
/// Parameter key_ctx  Key context object that identifies a proper private key for signing
/// Parameter md  Message digest algorithm used in creating signature
/// Parameter message  Message that is signed with a key
/// Parameter message_len  Length of the message
/// Output parameter signature  Newly created signature, will be allocated by the library
/// Output parameter signature_len  Length of a newly created signature
/// @return #DCM_ERROR_NONE on success,
/// otherwise a negative error value
///
/// @retval #DCM_ERROR_NONE Successful
/// @retval #DCM_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #DCM_ERROR_OUT_OF_MEMORY Out of memory during processing
/// @retval #DCM_ERROR_PERMISSION_DENIED Failed to access device certificate manager
/// @retval #DCM_ERROR_NOT_SUPPORTED Feature needed to run API is not supported
/// @retval #DCM_ERROR_SOCKET Socket error between client and server
/// @retval #DCM_ERROR_UNKNOWN Unknown error
///
/// Module getter: `tizenDeviceCertificateManager`.
int dcm_create_signature(
  ffi.Pointer<ffi.Void> key_ctx,
  int md,
  ffi.Pointer<ffi.Char> message,
  int message_len,
  ffi.Pointer<ffi.Pointer<ffi.Char>> signature,
  ffi.Pointer<ffi.Size> signature_len,
) =>
    tizenDeviceCertificateManager.dcm_create_signature(
      key_ctx,
      md,
      message,
      message_len,
      signature,
      signature_len,
    );

/// @platform
/// @brief Destroys the key context that was created by calling dcm_create_key_context().
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/devicecertificate
///
/// Parameter key_ctx  Key context object to be deallocated
/// @return #DCM_ERROR_NONE on success,
/// otherwise a negative error value
///
/// @retval #DCM_ERROR_NONE Successful
/// @retval #DCM_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #DCM_ERROR_OUT_OF_MEMORY Out of memory during processing
/// @retval #DCM_ERROR_PERMISSION_DENIED Failed to access device certificate manager
/// @retval #DCM_ERROR_NOT_SUPPORTED Feature needed to run API is not supported
/// @retval #DCM_ERROR_SOCKET Socket error between client and server
/// @retval #DCM_ERROR_NO_DATA No such key context object
/// @retval #DCM_ERROR_UNKNOWN Unknown error
///
/// @see dcm_create_key_context()
///
/// Module getter: `tizenDeviceCertificateManager`.
int dcm_free_key_context(
  ffi.Pointer<ffi.Void> key_ctx,
) =>
    tizenDeviceCertificateManager.dcm_free_key_context(
      key_ctx,
    );

/// @platform
/// @brief Returns a certificate chain which was pre-injected in device.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/devicecertificate
///
/// @remarks The @a cert_chain should be freed using free().
///
/// Parameter key_ctx  Key context object that identifies proper certificate chain
/// Output parameter cert_chain  Certificate chain in binary, will be allocated by the library
/// Output parameter cert_chain_len  The total length of certificate chain
/// @return #DCM_ERROR_NONE on success,
/// otherwise a negative error value
///
/// @retval #DCM_ERROR_NONE Successful
/// @retval #DCM_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #DCM_ERROR_OUT_OF_MEMORY Out of memory during processing
/// @retval #DCM_ERROR_PERMISSION_DENIED Failed to access device certificate manager
/// @retval #DCM_ERROR_NOT_SUPPORTED Feature needed to run API is not supported
/// @retval #DCM_ERROR_SOCKET Socket error between client and server
/// @retval #DCM_ERROR_NO_DATA No certificate chain available
/// @retval #DCM_ERROR_UNKNOWN Unknown error
///
/// Module getter: `tizenDeviceCertificateManager`.
int dcm_get_certificate_chain(
  ffi.Pointer<ffi.Void> key_ctx,
  ffi.Pointer<ffi.Pointer<ffi.Char>> cert_chain,
  ffi.Pointer<ffi.Size> cert_chain_len,
) =>
    tizenDeviceCertificateManager.dcm_get_certificate_chain(
      key_ctx,
      cert_chain,
      cert_chain_len,
    );

/// @platform
/// @brief Returns the key size in bits for a given key context.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/devicecertificate
///
/// Parameter key_ctx  Key context object that identifies proper certificate chain
/// Output parameter key_bit_len  Key length in bits
/// @return #DCM_ERROR_NONE on success,
/// otherwise a negative error value
///
/// @retval #DCM_ERROR_NONE Successful
/// @retval #DCM_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #DCM_ERROR_OUT_OF_MEMORY Out of memory during processing
/// @retval #DCM_ERROR_PERMISSION_DENIED Failed to access device certificate manager
/// @retval #DCM_ERROR_NOT_SUPPORTED Feature needed to run API is not supported
/// @retval #DCM_ERROR_SOCKET Socket error between client and server
/// @retval #DCM_ERROR_NO_DATA No certificate chain available
/// @retval #DCM_ERROR_UNKNOWN Unknown error
///
/// Module getter: `tizenDeviceCertificateManager`.
int dcm_get_key_bit_length(
  ffi.Pointer<ffi.Void> key_ctx,
  ffi.Pointer<ffi.Size> key_bit_len,
) =>
    tizenDeviceCertificateManager.dcm_get_key_bit_length(
      key_ctx,
      key_bit_len,
    );

/// @platform
/// @brief Returns the key type name for a given key context.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/devicecertificate
///
/// @remarks The @a key_type should be freed using free().
///
/// Parameter key_ctx  Key context object that identifies proper certificate chain
/// Output parameter key_type  Key type name (UNKNOWN, RSA or ECDSA), will be allocated by the library
/// @return #DCM_ERROR_NONE on success,
/// otherwise a negative error value
///
/// @retval #DCM_ERROR_NONE Successful
/// @retval #DCM_ERROR_INVALID_PARAMETER Input parameter is invalid
/// @retval #DCM_ERROR_OUT_OF_MEMORY Out of memory during processing
/// @retval #DCM_ERROR_PERMISSION_DENIED Failed to access device certificate manager
/// @retval #DCM_ERROR_NOT_SUPPORTED Feature needed to run API is not supported
/// @retval #DCM_ERROR_SOCKET Socket error between client and server
/// @retval #DCM_ERROR_NO_DATA No certificate chain available
/// @retval #DCM_ERROR_UNKNOWN Unknown error
///
/// Module getter: `tizenDeviceCertificateManager`.
int dcm_get_key_type(
  ffi.Pointer<ffi.Void> key_ctx,
  ffi.Pointer<ffi.Pointer<ffi.Char>> key_type,
) =>
    tizenDeviceCertificateManager.dcm_get_key_type(
      key_ctx,
      key_type,
    );

