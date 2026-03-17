// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiNetworkBluetooth`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-network-bluetooth.so.0`.
///
/// Network / Bluetooth.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_network_bluetooth;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Retrieves the device information of all bonded devices.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data passed from the foreach function
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @post This function invokes bt_adapter_bonded_device_cb().
///
/// @see bt_adapter_bonded_device_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_foreach_bonded_device(
  bt_adapter_bonded_device_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_foreach_bonded_device(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Frees device info.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter device_info The bonded device information
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_adapter_get_bonded_device_info()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_free_device_info(
  ffi.Pointer<bt_device_info_s> device_info,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_free_device_info(
      device_info,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Gets the address of local Bluetooth adapter.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @remarks The @a local_address must be released with free() by you.
///
/// Output parameter local_address The device address of local Bluetooth adapter
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_OPERATION_FAILED Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @see bt_adapter_get_name()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_get_address(
  ffi.Pointer<ffi.Pointer<ffi.Char>> local_address,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_get_address(
      local_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Gets the device information of a bonded device.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks The @a device_info must be released with bt_adapter_free_device_info() by you .
///
/// Parameter remote_address The address of remote device
/// Output parameter device_info The bonded device information
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_BONDED  Remote device not bonded
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @post This function invokes bt_adapter_bonded_device_cb().
///
/// @see bt_adapter_bonded_device_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_get_bonded_device_info(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<ffi.Pointer<bt_device_info_s>> device_info,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_get_bonded_device_info(
      remote_address,
      device_info,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OOB_MODULE
/// @brief Gets the Hash and Randomizer value, synchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks %http://tizen.org/privilege/bluetooth (public level privilege) is required to use this API since 5.5.
///
/// Output parameter hash The hash value received from the controller
/// Output parameter randomizer The hash value received from the controller
/// Output parameter hash_len The length of the hash value
/// Output parameter randomizer_len The length of the randomizer value
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_get_local_oob_data(
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> hash,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> randomizer,
  ffi.Pointer<ffi.Int> hash_len,
  ffi.Pointer<ffi.Int> randomizer_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_get_local_oob_data(
      hash,
      randomizer,
      hash_len,
      randomizer_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OOB_MODULE
/// @brief Gets the Hash and Randomizer value, synchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks %http://tizen.org/privilege/bluetooth (public level privilege) is required to use this API since 5.5.
/// @remarks The @a hash192, randomizer192, hash256 and randomizer256 must be released using free().
///
/// Output parameter hash192 The hash value derived from the P-192 public key
/// Output parameter randomizer192 The randomizer value associated with the P-192 public key
/// Output parameter hash192_len The length of @a hash192
/// Output parameter randomizer192_len The length of @a randomizer192
/// Output parameter hash256 The hash value derived from the P-256 public key
/// Output parameter randomizer256 The randomizer value associated with the P-256 public key
/// Output parameter hash256_len The length of @a hash256
/// Output parameter randomizer256_len The length of @a randomizer256
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_get_local_oob_ext_data(
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> hash192,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> randomizer192,
  ffi.Pointer<ffi.Int> hash192_len,
  ffi.Pointer<ffi.Int> randomizer192_len,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> hash256,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> randomizer256,
  ffi.Pointer<ffi.Int> hash256_len,
  ffi.Pointer<ffi.Int> randomizer256_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_get_local_oob_ext_data(
      hash192,
      randomizer192,
      hash192_len,
      randomizer192_len,
      hash256,
      randomizer256,
      hash256_len,
      randomizer256_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Gets the name of local Bluetooth adapter.
///
/// @details Use this function to get the friendly name associated with Bluetooth \n
/// device, retrieved by the remote Bluetooth devices.
///
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @remarks The @a local_name must be released with free() by you.
///
/// Output parameter local_name  The local device name
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
///
/// @see bt_adapter_set_name()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_get_name(
  ffi.Pointer<ffi.Pointer<ffi.Char>> local_name,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_get_name(
      local_name,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Gets the current state of local Bluetooth adapter.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Output parameter adapter_state The current adapter state
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_get_state(
  ffi.Pointer<ffi.Int32> adapter_state,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_get_state(
      adapter_state,
    );

/// @ingroup  CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief  Gets the visibility mode of local Bluetooth adapter.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Output parameter mode  The visibility mode of the Bluetooth device
/// Output parameter duration  The duration until the visibility mode is changed to #BT_ADAPTER_VISIBILITY_MODE_NON_DISCOVERABLE (in seconds).
/// @a duration is valid only if @a mode is #BT_ADAPTER_VISIBILITY_MODE_LIMITED_DISCOVERABLE. This value can be NULL.
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_get_visibility(
  ffi.Pointer<ffi.Int32> mode,
  ffi.Pointer<ffi.Int> duration,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_get_visibility(
      mode,
      duration,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Checks for the device discovery is in progress or not.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @remarks If Bluetooth discovery is in progress, other operations are not allowed and \n
/// you have to either stop the discovery operation, or wait for it to be finished, \n
/// before performing other operations.
///
/// Output parameter is_discovering The discovering status: (@c true = in progress , @c  false = not in progress )
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
///
/// @see bt_adapter_start_device_discovery()
/// @see bt_adapter_stop_device_discovery()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_is_discovering(
  ffi.Pointer<ffi.Bool> is_discovering,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_is_discovering(
      is_discovering,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Checks whether the UUID of service is used or not.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter service_uuid The UUID of service
/// Output parameter used Indicates whether the service is used or not
/// @return true on success, otherwise false.
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_is_service_used(
  ffi.Pointer<ffi.Char> service_uuid,
  ffi.Pointer<ffi.Bool> used,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_is_service_used(
      service_uuid,
      used,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Adds manufacturer specific data to advertise or scan response data.
/// Please refer to the Bluetooth Assigned Numbers provided by the Bluetooth SIG for a list of existing company identifiers.
/// The maximum advertised or responded data size is 31 bytes
/// including data type and system wide data.
/// @since_tizen 2.3.1
///
///
/// Parameter advertiser The handle of advertiser
/// Parameter pkt_type The packet type
/// Parameter manufacturer_id Manufacturer identifier
/// Parameter manufacturer_data The manufacturer specific data
/// Parameter manufacturer_data_len The data length of manufacturer data
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_QUOTA_EXCEEDED  Quota exceeded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_clear_advertising_data()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_add_advertising_manufacturer_data(
  bt_advertiser_h advertiser,
  int pkt_type,
  int manufacturer_id,
  ffi.Pointer<ffi.Char> manufacturer_data,
  int manufacturer_data_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_add_advertising_manufacturer_data(
      advertiser,
      pkt_type,
      manufacturer_id,
      manufacturer_data,
      manufacturer_data_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Adds service data to advertise or scan response data.
/// The maximum advertised or responded data size is 31 bytes
/// including data type and system wide data.
/// @since_tizen 2.3.1
///
/// @remarks 16-bit UUID is supported. (e.g. 180F).
///
/// Parameter advertiser The handle of advertiser
/// Parameter pkt_type The packet type
/// Parameter uuid 16-bit UUID of the service
/// Parameter service_data The service data
/// Parameter service_data_len The data length of service data
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_QUOTA_EXCEEDED  Quota exceeded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_clear_advertising_data()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_add_advertising_service_data(
  bt_advertiser_h advertiser,
  int pkt_type,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<ffi.Char> service_data,
  int service_data_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_add_advertising_service_data(
      advertiser,
      pkt_type,
      uuid,
      service_data,
      service_data_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Adds a service solicitation UUID to advertise or scan response data.
/// The maximum advertised or responded data size is 31 bytes
/// including data type and system wide data.
/// @since_tizen 2.3.1
///
/// @remarks 16-bit service solicitation UUID or 128-bit service solicitation UUID is supported.
/// (e.g. 180F, 0000180F-0000-1000-8000-00805F9B34FB).
/// 16-bit UUID is advertised as 16-bit UUID.
/// 128-bit UUID made from base UUID(00000000-0000-1000-8000-00805F9B34FB)
/// is converted to the 16-bit equivalent form and advertised as such.
/// (e.g. 0000180F-0000-1000-8000-00805F9B34FB is converted to 180F 16-bit form).
/// Any other 128-bit UUID is advertised as 128-bit UUID.
///
/// Parameter advertiser The handle of advertiser
/// Parameter pkt_type The packet type
/// Parameter uuid The string of the service solicitation UUID.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_QUOTA_EXCEEDED  Quota exceeded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_clear_advertising_data()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_add_advertising_service_solicitation_uuid(
  bt_advertiser_h advertiser,
  int pkt_type,
  ffi.Pointer<ffi.Char> uuid,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_add_advertising_service_solicitation_uuid(
      advertiser,
      pkt_type,
      uuid,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Adds a service UUID to advertise or scan response data.
/// The maximum advertised or responded data size is 31 bytes
/// including data type and system wide data.
/// @since_tizen 2.3.1
///
/// @remarks 16-bit UUID or 128-bit UUID is supported.
/// (e.g. 180F, 0000180F-0000-1000-8000-00805F9B34FB).
/// 16-bit UUID is advertised as 16-bit UUID.
/// 128-bit UUID made from base UUID(00000000-0000-1000-8000-00805F9B34FB)
/// is converted to the 16-bit equivalent form and advertised as such.
/// (e.g. 0000180F-0000-1000-8000-00805F9B34FB is converted to 180F 16-bit form).
/// Any other 128-bit UUID is advertised as 128-bit UUID.
///
/// Parameter advertiser The handle of advertiser
/// Parameter pkt_type The packet type
/// Parameter uuid The string of the service UUID.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_QUOTA_EXCEEDED  Quota exceeded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_clear_advertising_data()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_add_advertising_service_uuid(
  bt_advertiser_h advertiser,
  int pkt_type,
  ffi.Pointer<ffi.Char> uuid,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_add_advertising_service_uuid(
      advertiser,
      pkt_type,
      uuid,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Clears all data to be advertised or responded to scan request from LE scanning device.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter advertiser The handle of advertiser
/// Parameter pkt_type The packet type to be cleared
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_clear_advertising_data(
  bt_advertiser_h advertiser,
  int pkt_type,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_clear_advertising_data(
      advertiser,
      pkt_type,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Creates advertiser to advertise device's existence or respond to LE scanning request.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Output parameter advertiser The handle of advertiser
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_destroy_advertiser()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_create_advertiser(
  ffi.Pointer<bt_advertiser_h> advertiser,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_create_advertiser(
      advertiser,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Destroys advertiser.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Output parameter advertiser The handle of advertiser
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_create_advertiser()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_destroy_advertiser(
  bt_advertiser_h advertiser,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_destroy_advertiser(
      advertiser,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Frees iBeacon information.
/// @since_tizen 4.0
///
/// Parameter ibeacon_info The iBeacon format's scan result data
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_adapter_le_get_scan_result_service_data_list()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_free_ibeacon_report(
  ffi.Pointer<bt_adapter_le_ibeacon_scan_result_info_s> ibeacon_info,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_free_ibeacon_report(
      ibeacon_info,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Frees service data list.
/// @since_tizen 2.3.1
///
/// Parameter data_list The list of the service data
/// Parameter count The count of the service data list
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_adapter_le_get_scan_result_service_data_list()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_free_service_data_list(
  ffi.Pointer<bt_adapter_le_service_data_s> data_list,
  int count,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_free_service_data_list(
      data_list,
      count,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Gets the appearance from the scan result information.
/// @since_tizen 2.3.1
///
/// Parameter info The scan result information
/// Parameter pkt_type The packet type
/// Output parameter appearance The appearance
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_get_scan_result_appearance(
  ffi.Pointer<bt_adapter_le_device_scan_result_info_s> info,
  int pkt_type,
  ffi.Pointer<ffi.Int> appearance,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_get_scan_result_appearance(
      info,
      pkt_type,
      appearance,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Gets the device name from the scan result information.
/// @since_tizen 2.3.1
///
/// @remarks The @a name must be released with free() by you.
///
/// Parameter info The scan result information
/// Parameter pkt_type The packet type
/// Output parameter name The device name
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_get_scan_result_device_name(
  ffi.Pointer<bt_adapter_le_device_scan_result_info_s> info,
  int pkt_type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_get_scan_result_device_name(
      info,
      pkt_type,
      name,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Gets iBeacon format's data from the scan result information.
/// @since_tizen 4.0
///
/// @remarks The @a ibeacon_info must be released with bt_adapter_le_free_ibeacon_report().
///
/// Parameter info The scan result information
/// Parameter pkt_type The packet type
/// Output parameter ibeacon_info The iBeacon format's scan result data
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_get_scan_result_ibeacon_report(
  ffi.Pointer<bt_adapter_le_device_scan_result_info_s> info,
  int pkt_type,
  ffi.Pointer<ffi.Pointer<bt_adapter_le_ibeacon_scan_result_info_s>> ibeacon_info,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_get_scan_result_ibeacon_report(
      info,
      pkt_type,
      ibeacon_info,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Gets the manufacturer data from the scan result information.
/// @since_tizen 2.3.1
///
/// @remarks The @a manufacturer_data must be released with free() by you.
///
/// Parameter info The scan result information
/// Parameter pkt_type The packet type
/// Output parameter manufacturer_id The manufacturer ID
/// Output parameter manufacturer_data The manufacturer data (byte array)
/// Output parameter manufacturer_data_len The length of manufacturer data
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_get_scan_result_manufacturer_data(
  ffi.Pointer<bt_adapter_le_device_scan_result_info_s> info,
  int pkt_type,
  ffi.Pointer<ffi.Int> manufacturer_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> manufacturer_data,
  ffi.Pointer<ffi.Int> manufacturer_data_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_get_scan_result_manufacturer_data(
      info,
      pkt_type,
      manufacturer_id,
      manufacturer_data,
      manufacturer_data_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Gets the service data list from the scan result information.
/// @since_tizen 2.3.1
///
/// @remarks The @a data_list must be released with bt_adapter_le_free_service_data_list() by you .
///
/// Parameter info The scan result information
/// Parameter pkt_type The packet type
/// Output parameter data_list The list of the service data
/// Output parameter count The count of the service data list
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_get_scan_result_service_data_list(
  ffi.Pointer<bt_adapter_le_device_scan_result_info_s> info,
  int pkt_type,
  ffi.Pointer<ffi.Pointer<bt_adapter_le_service_data_s>> data_list,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_get_scan_result_service_data_list(
      info,
      pkt_type,
      data_list,
      count,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Gets the service solicitation UUID list from the scan result information.
/// @since_tizen 2.3.1
///
/// @remarks The @a uuids must be iterated as count and each pointed data must be released with free().
/// Then @a uuids must be released with free(). \n
/// 16-bit service solicitation UUID or 128-bit service solicitation UUID is supported.
/// (e.g. 180F, 0000180F-0000-1000-8000-00805F9B34FB)
///
/// Parameter info The scan result information
/// Parameter pkt_type The packet type
/// Output parameter uuids The list of string of the service solicitation UUID
/// Output parameter count The count of the service UUIDs
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_get_scan_result_service_solicitation_uuids(
  ffi.Pointer<bt_adapter_le_device_scan_result_info_s> info,
  int pkt_type,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> uuids,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_get_scan_result_service_solicitation_uuids(
      info,
      pkt_type,
      uuids,
      count,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Gets the service UUID list from the scan result information.
/// @since_tizen 2.3.1
///
/// @remarks The @a uuids must be iterated as count and each pointed data must be released with free().
/// Then @a uuids must be released with free(). \n
/// 16-bit service UUID or 128-bit service UUID is supported. (e.g. 180F, 0000180F-0000-1000-8000-00805F9B34FB)
///
/// Parameter info The scan result information
/// Parameter pkt_type The packet type
/// Output parameter uuids The list of string of the service UUID
/// Output parameter count The count of the service UUIDs
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_get_scan_result_service_uuids(
  ffi.Pointer<bt_adapter_le_device_scan_result_info_s> info,
  int pkt_type,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> uuids,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_get_scan_result_service_uuids(
      info,
      pkt_type,
      uuids,
      count,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Gets the transmission power level from the scan result information.
/// @since_tizen 2.3.1
///
/// Parameter info The scan result information
/// Parameter pkt_type The packet type
/// Output parameter power_level The transmission power level in dBm
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_get_scan_result_tx_power_level(
  ffi.Pointer<bt_adapter_le_device_scan_result_info_s> info,
  int pkt_type,
  ffi.Pointer<ffi.Int> power_level,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_get_scan_result_tx_power_level(
      info,
      pkt_type,
      power_level,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_50_MODULE
/// @brief Checks if LE 2M PHY feature is supported or not.
/// @since_tizen 5.0
///
/// @remarks The LE 2M PHY feature was introduced in the BT 5.0 core specification.
///
/// Output parameter is_supported The LE 2M PHY feature support: (@c true = supported , @c  false = not supported)
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_is_2m_phy_supported(
  ffi.Pointer<ffi.Bool> is_supported,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_is_2m_phy_supported(
      is_supported,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_50_MODULE
/// @brief Checks if LE CODED PHY feature is supported or not.
/// @since_tizen 5.0
///
/// @remarks The LE CODED PHY feature was introduced in the BT 5.0 core specification.
///
/// Output parameter is_supported The LE CODED PHY feature support: (@c true = supported , @c  false = not supported)
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_is_coded_phy_supported(
  ffi.Pointer<ffi.Bool> is_supported,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_is_coded_phy_supported(
      is_supported,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Checks for the LE device discovery is in progress or not.
/// @since_tizen @if MOBILE 2.3 @else 6.0 @endif
///
/// @remarks If Bluetooth LE scan is in progress, other operations are not allowed and \n
/// you have to either stop the LE scan operation, or wait for it to be finished, \n
/// before performing other operations.
///
/// Output parameter is_discovering The discovering status: (@c true = in progress , @c  false = not in progress )
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_is_discovering(
  ffi.Pointer<ffi.Bool> is_discovering,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_is_discovering(
      is_discovering,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Creates a scan filter to find only LE advertisements which match specific requirements.
/// @details If the filter's attribute is not set, then the filter will accept
/// all values of that attribute. If an attribute is set, the filter
/// will accept only advertisements which match the set attribute.
///
/// For example, if device name is set with
/// bt_adapter_le_scan_filter_set_device_name(), the filter will accept
/// only advertisements from devices with the given name. If device name
/// is not set, advertisements will be filtered without regard to device
/// names.
/// @since_tizen 4.0
///
/// @remarks The @a scan_filter should be destroyed with bt_adapter_le_scan_filter_destroy().
///
/// Output parameter scan_filter The scan filter handle
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_filter_destroy()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_create(
  ffi.Pointer<bt_scan_filter_h> scan_filter,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_create(
      scan_filter,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Destroys a scan filter.
/// @since_tizen 4.0
///
/// Parameter scan_filter The scan filter handle
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_scan_filter_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_destroy(
  bt_scan_filter_h scan_filter,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_destroy(
      scan_filter,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Registers a scan filter to use for scanning.
/// @details If the filter is registered, it cannot be changed.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks Several scan filters can be registered. If an advertisement passes \n
/// any of the registered scan filters, it will be included in the results.
///
/// Parameter scan_filter The scan filter handle
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Scan is in progress
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_register(
  bt_scan_filter_h scan_filter,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_register(
      scan_filter,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the device address for the advertisements filter.
/// @since_tizen 4.0
///
/// Parameter scan_filter The scan filter handle
/// Parameter address The device address by which advertisements will be filtered
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_device_address(
  bt_scan_filter_h scan_filter,
  ffi.Pointer<ffi.Char> address,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_device_address(
      scan_filter,
      address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the device name for the advertisements filter.
/// @details Any previously set value will be overwritten.
/// @since_tizen 4.0
///
/// Parameter scan_filter The scan filter handle
/// Parameter name The device name by which advertisements will be filtered
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_device_name(
  bt_scan_filter_h scan_filter,
  ffi.Pointer<ffi.Char> name,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_device_name(
      scan_filter,
      name,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the manufacturer data for the advertisements filter.
/// @details Any previously set value will be overwritten.
/// @since_tizen 4.0
///
/// Parameter scan_filter The scan filter handle
/// Parameter manufacturer_id The manufacturer ID (0x0000 ~ 0xFFFF)
/// Parameter data The manufacturer data (byte array)
/// Parameter data_len The length of the manufacturer data
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_manufacturer_data(
  bt_scan_filter_h scan_filter,
  int manufacturer_id,
  ffi.Pointer<ffi.Char> data,
  int data_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_manufacturer_data(
      scan_filter,
      manufacturer_id,
      data,
      data_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the manufacturer data and the mask for the advertisements filter,
/// to use for filtering by partial data.
/// @details Any previously set value will be overwritten. The mask works as follows:
/// For each bit set to 1 in the mask, the corresponding bits in @a data
/// and in the filtered data will have to be equal. If the mask bit is set to 0,
/// the corresponding bits will be ignored.
/// @since_tizen 4.0
///
/// @remarks The @a mask and the manufacturer @a data must have equal lengths.
///
/// Parameter scan_filter The scan filter handle
/// Parameter manufacturer_id The manufacturer ID (0x0000 ~ 0xFFFF)
/// Parameter data The manufacturer data (byte array)
/// Parameter data_len The length of the manufacturer data
/// Parameter mask The mask by which advertisements will be filtered
/// Parameter mask_len The length of the mask
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_manufacturer_data_with_mask(
  bt_scan_filter_h scan_filter,
  int manufacturer_id,
  ffi.Pointer<ffi.Char> data,
  int data_len,
  ffi.Pointer<ffi.Char> mask,
  int mask_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_manufacturer_data_with_mask(
      scan_filter,
      manufacturer_id,
      data,
      data_len,
      mask,
      mask_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the service data for the advertisements filter.
/// @details Any previously set value will be overwritten.
/// @since_tizen 4.0
///
/// Parameter scan_filter The scan filter handle
/// Parameter uuid The service UUID by which advertisements will be filtered
/// Parameter data The service data by which advertisements will be filtered
/// Parameter data_len The length of the service data
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_service_data(
  bt_scan_filter_h scan_filter,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<ffi.Char> data,
  int data_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_service_data(
      scan_filter,
      uuid,
      data,
      data_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the service data and the mask for the advertisements filter,
/// to use for filtering by partial data.
/// @details Any previously set value will be overwritten. The mask works as follows:
/// For each bit set to 1 in the mask, the corresponding bits in @a data
/// and in the filtered data will have to be equal. If the mask bit is set to 0,
/// the corresponding bits will be ignored.
/// @since_tizen 4.0
///
/// @remarks The @a mask and the service @a data must have equal lengths.
///
/// Parameter scan_filter The scan filter handle
/// Parameter uuid The service UUID by which advertisements will be filtered
/// Parameter data The service data by which advertisements will be filtered
/// Parameter data_len The length of the service data
/// Parameter mask The mask by which advertisements will be filtered
/// Parameter mask_len The length of the mask
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_service_data_with_mask(
  bt_scan_filter_h scan_filter,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<ffi.Char> data,
  int data_len,
  ffi.Pointer<ffi.Char> mask,
  int mask_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_service_data_with_mask(
      scan_filter,
      uuid,
      data,
      data_len,
      mask,
      mask_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the service solicitation UUID for the advertisements filter.
/// @details Any previously set value will be overwritten.
/// @since_tizen 4.0
///
/// Parameter scan_filter The scan filter handle
/// Parameter uuid The service solicitation UUID by which advertisements will be filtered
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_service_solicitation_uuid(
  bt_scan_filter_h scan_filter,
  ffi.Pointer<ffi.Char> uuid,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_service_solicitation_uuid(
      scan_filter,
      uuid,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the service solicitation UUID and the mask for the advertisements filter,
/// to use for filtering by partial data.
/// @details Any previously set value will be overwritten. The mask works as follows:
/// For each bit set to 1 in the mask, the corresponding bits in @a uuid
/// and in the filtered data will have to be equal. If the mask bit is set to 0,
/// the corresponding bits will be ignored.
/// @since_tizen 4.0
///
/// @remarks The @a mask and the service solicitation @a uuid must have equal lengths.
///
/// Parameter scan_filter The scan filter handle
/// Parameter uuid The service solicitation UUID by which advertisements will be filtered
/// Parameter mask The mask by which advertisements will be filtered
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_service_solicitation_uuid_with_mask(
  bt_scan_filter_h scan_filter,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<ffi.Char> mask,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_service_solicitation_uuid_with_mask(
      scan_filter,
      uuid,
      mask,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the service UUID for the advertisements filter.
/// @details Any previously set value will be overwritten.
/// @since_tizen 4.0
///
/// Parameter scan_filter The scan filter handle
/// Parameter uuid The service UUID by which advertisements will be filtered
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_service_uuid(
  bt_scan_filter_h scan_filter,
  ffi.Pointer<ffi.Char> uuid,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_service_uuid(
      scan_filter,
      uuid,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the service UUID and the mask for the advertisements filter,
/// to use for filtering by partial data.
/// @details Any previously set value will be overwritten. The mask works as follows:
/// For each bit set to 1 in the mask, the corresponding bits in @a uuid
/// and in the filtered data will have to be equal. If the mask bit is set to 0,
/// the corresponding bits will be ignored.
/// @since_tizen 4.0
///
/// @remarks The @a mask and the service @a uuid must have equal lengths.
///
/// Parameter scan_filter The scan filter handle
/// Parameter uuid The service UUID by which advertisements will be filtered
/// Parameter mask The mask to filter advertisements
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_service_uuid_with_mask(
  bt_scan_filter_h scan_filter,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<ffi.Char> mask,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_service_uuid_with_mask(
      scan_filter,
      uuid,
      mask,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the scan filter type for the advertisements filter.
/// @details The filter type is used when searching only for iBeacon or proximity
/// type's advertising data. If the type is not set, LE scanner will
/// search devices as with regard to other filtered attributes.
/// If the type is set, all other attributes set for the filter are ignored.
/// @since_tizen 4.0
///
/// Parameter scan_filter The scan filter handle
/// Parameter mode The scan filter type
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_set_type(
  bt_scan_filter_h scan_filter,
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_set_type(
      scan_filter,
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Unregisters all registered scan filters.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter scan_filter The scan filter handle
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Scan is in progress
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_unregister(
  bt_scan_filter_h scan_filter,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_unregister(
      scan_filter,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Unregisters all registered scan filters.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Scan is in progress
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_scan_filter_unregister_all() =>
    tizenCapiNetworkBluetooth.bt_adapter_le_scan_filter_unregister_all();

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets the external appearance of this device to advertise or scan response data.
/// Please refer to the adopted Bluetooth specification for the the appearance.
/// @since_tizen 2.3.1
///
/// Parameter advertiser The handle of advertiser
/// Parameter pkt_type The packet type
/// Parameter appearance The external appearance of device
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_QUOTA_EXCEEDED  Quota exceeded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_clear_advertising_data()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_set_advertising_appearance(
  bt_advertiser_h advertiser,
  int pkt_type,
  int appearance,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_set_advertising_appearance(
      advertiser,
      pkt_type,
      appearance,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets whether the advertising type should be connectable or non-connectable.
/// @since_tizen 2.3.1
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter advertiser The handle of advertiser
/// Parameter connectable The type of advertising
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation is now in progress
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_start_advertising_new()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_set_advertising_connectable(
  bt_advertiser_h advertiser,
  bool connectable,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_set_advertising_connectable(
      advertiser,
      connectable,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets whether the device name should be included in advertise or scan response data.
/// The maximum advertised or responded data size is 31 bytes
/// including data type and system wide data.
/// @since_tizen 2.3.1
///
/// Parameter advertiser The handle of advertiser
/// Parameter pkt_type The packet type
/// Parameter include_name Whether the device name should be included
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_QUOTA_EXCEEDED  Quota exceeded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_clear_advertising_data()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_set_advertising_device_name(
  bt_advertiser_h advertiser,
  int pkt_type,
  bool include_name,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_set_advertising_device_name(
      advertiser,
      pkt_type,
      include_name,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets advertising mode to control the advertising power and latency.
/// @since_tizen 2.3.1
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter advertiser The handle of advertiser
/// Parameter mode The mode of advertising
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation is now in progress
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_start_advertising_new()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_set_advertising_mode(
  bt_advertiser_h advertiser,
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_set_advertising_mode(
      advertiser,
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets whether the transmission power level should be included in advertise or scan response data.
/// The maximum advertised or responded data size is 31 bytes
/// including data type and system wide data.
/// @since_tizen 2.3.1
///
/// Parameter advertiser The handle of advertiser
/// Parameter pkt_type The packet type
/// Parameter include_tx_power Whether the transmission power level should be included
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_QUOTA_EXCEEDED  Quota exceeded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_adapter_le_clear_advertising_data()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_set_advertising_tx_power_level(
  bt_advertiser_h advertiser,
  int pkt_type,
  bool include_tx_power,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_set_advertising_tx_power_level(
      advertiser,
      pkt_type,
      include_tx_power,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Sets Bluetooth LE scan mode.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter scan_mode The scan mode
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_NOT_ENABLED Adapter is not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER Parameter is invalid
/// @retval #BT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED Not supported
/// @pre The state of local bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_set_scan_mode(
  int scan_mode,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_set_scan_mode(
      scan_mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Starts advertising with passed advertiser and advertising parameters.
///
/// @details Once Bluetooth advertising is started, nearby Bluetooth LE (Low Energy) supported \n
/// devices can know this device's existence. And one of them can make a connection request, \n
/// if it is allowed.
///
/// @since_tizen 2.3.1
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter advertiser The handle of advertiser
/// Parameter cb The callback to report the result of this function
/// Parameter user_data The user data to be passed when callback is called
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation is now in progress
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post This function invokes bt_adapter_le_advertising_state_changed_cb().
///
/// @see bt_adapter_le_stop_advertising()
/// @see bt_adapter_le_advertising_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_start_advertising_new(
  bt_advertiser_h advertiser,
  bt_adapter_le_advertising_state_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_start_advertising_new(
      advertiser,
      cb,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Starts the LE scan to find LE advertisement.
///
/// @details If a LE advertisement is found, bt_adapter_le_scan_result_cb() will be invoked.
///
/// @since_tizen 2.3.1
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter cb The callback to report the result of this function
/// Parameter user_data The user data to be passed when callback is called
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation is now in progress
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @post This function invokes bt_adapter_le_scan_result_cb().
///
/// @see bt_adapter_le_scan_result_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_start_scan(
  bt_adapter_le_scan_result_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_start_scan(
      cb,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Stops the advertising.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter advertiser The handle of advertiser
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOT_IN_PROGRESS  Operation is not in progress
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The advertising must be going on with bt_adapter_le_start_advertising_new().
/// @post This function invokes bt_adapter_le_advertising_state_changed_cb().
///
/// @see bt_adapter_le_start_advertising_new()
/// @see bt_adapter_le_advertising_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_stop_advertising(
  bt_advertiser_h advertiser,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_le_stop_advertising(
      advertiser,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_LE_MODULE
/// @brief Stops the LE scan.
/// @since_tizen 2.3.1
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOT_IN_PROGRESS  Operation is not in progress
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The LE scan must be in progress with bt_adapter_le_start_scan().
///
/// @see bt_adapter_le_start_scan()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_le_stop_scan() =>
    tizenCapiNetworkBluetooth.bt_adapter_le_stop_scan();

/// @ingroup CAPI_NETWORK_BLUETOOTH_OOB_MODULE
/// @brief Deletes the Hash and Randomizer value, synchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address Remote device address
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_remove_remote_oob_data(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_remove_remote_oob_data(
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief  Registers a callback function to be invoked when the device discovery state changes.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
///
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post bt_adapter_device_discovery_state_changed_cb() will be invoked.
///
/// @see bt_initialize()
/// @see bt_adapter_device_discovery_state_changed_cb()
/// @see bt_adapter_unset_device_discovery_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_set_device_discovery_state_changed_cb(
  bt_adapter_device_discovery_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_set_device_discovery_state_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Sets the name of local Bluetooth adapter.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter local_name The name of the Bluetooth device. \n
/// The maximum length is 248 characters.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @post bt_adapter_name_changed_cb() will be invoked if this function returns #BT_ERROR_NONE.
///
/// @see bt_adapter_get_name()
/// @see bt_adapter_name_changed_cb()
/// @see bt_adapter_set_name_changed_cb()
/// @see bt_adapter_unset_name_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_set_name(
  ffi.Pointer<ffi.Char> local_name,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_set_name(
      local_name,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief  Registers a callback function to be invoked when the name of Bluetooth adapter changes.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
///
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post  bt_adapter_name_changed_cb() will be invoked.
///
/// @see bt_initialize()
/// @see bt_adapter_name_changed_cb()
/// @see bt_adapter_unset_name_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_set_name_changed_cb(
  bt_adapter_name_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_set_name_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OOB_MODULE
/// @brief Sets the Hash and Randomizer value, synchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address Remote device address
/// Parameter hash The hash value received from the controller
/// Parameter randomizer The hash value received from the controller
/// Parameter hash_len The length of the hash value. Allowed value is 16
/// Parameter randomizer_len The length of the randomizer value. Allowed value is 16
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_set_remote_oob_data(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<ffi.UnsignedChar> hash,
  ffi.Pointer<ffi.UnsignedChar> randomizer,
  int hash_len,
  int randomizer_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_set_remote_oob_data(
      remote_address,
      hash,
      randomizer,
      hash_len,
      randomizer_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OOB_MODULE
/// @brief Sets the Hash and Randomizer value, synchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address Remote device address
/// Parameter hash192 The P-192 hash value received via OOB from remote device
/// Parameter randomizer192 The P-192 randomizer value received via OOB from remote device
/// Parameter hash192_len The length of @a hash192
/// Parameter randomizer192_len The length of @a randomizer192
/// Parameter hash256 The P-256 hash value received via OOB from remote device
/// Parameter randomizer256 The P-256 randomizer value received via OOB from remote device
/// Parameter hash256_len The length of @a hash256
/// Parameter randomizer256_len The length of @a randomizer256
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_set_remote_oob_ext_data(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<ffi.UnsignedChar> hash192,
  ffi.Pointer<ffi.UnsignedChar> randomizer192,
  int hash192_len,
  int randomizer192_len,
  ffi.Pointer<ffi.UnsignedChar> hash256,
  ffi.Pointer<ffi.UnsignedChar> randomizer256,
  int hash256_len,
  int randomizer256_len,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_set_remote_oob_ext_data(
      remote_address,
      hash192,
      randomizer192,
      hash192_len,
      randomizer192_len,
      hash256,
      randomizer256,
      hash256_len,
      randomizer256_len,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief  Registers a callback function to be invoked when the Bluetooth adapter state changes.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
///
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post bt_adapter_state_changed_cb() will be invoked.
///
/// @see bt_initialize()
/// @see bt_adapter_state_changed_cb()
/// @see bt_adapter_unset_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_set_state_changed_cb(
  bt_adapter_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_set_state_changed_cb(
      callback,
      user_data,
    );

/// @ingroup  CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief  Registers a callback function to be invoked every second.
///
/// @details  When you set visibility mode as #BT_ADAPTER_VISIBILITY_MODE_LIMITED_DISCOVERABLE, \n
/// @a callback will be called every second until visibility mode is changed to #BT_ADAPTER_VISIBILITY_MODE_NON_DISCOVERABLE.
///
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// until the visibility mode is changed from #BT_ADAPTER_VISIBILITY_MODE_LIMITED_DISCOVERABLE
/// to #BT_ADAPTER_VISIBILITY_MODE_NON_DISCOVERABLE.
/// Parameter  callback  The callback function to register
/// Parameter  user_data  The user data to be passed to the callback function
/// @return  0 on success, otherwise a negative error value.
/// @retval  #BT_ERROR_NONE  Successful
/// @retval  #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval  #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre  The Bluetooth service must be initialized by bt_initialize().
/// @post  bt_adapter_visibility_duration_changed_cb() will be invoked.
/// @see  bt_initialize()
/// @see  bt_adapter_visibility_duration_changed_cb()
/// @see  bt_adapter_unset_visibility_duration_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_set_visibility_duration_changed_cb(
  bt_adapter_visibility_duration_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_set_visibility_duration_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief  Registers a callback function to be invoked when the visibility mode changes.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
///
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post bt_adapter_visibility_mode_changed_cb() will be invoked.
///
/// @see bt_initialize()
/// @see bt_adapter_visibility_mode_changed_cb()
/// @see bt_adapter_unset_visibility_mode_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_set_visibility_mode_changed_cb(
  bt_adapter_visibility_mode_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_adapter_set_visibility_mode_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Starts the device discovery, asynchronously.
///
/// @details If a device is discovered, bt_adapter_device_discovery_state_changed_cb() will be invoked \n
/// with #BT_ADAPTER_DEVICE_DISCOVERY_FOUND, and then bt_adapter_device_discovery_state_changed_cb() \n
/// will be called with #BT_ADAPTER_DEVICE_DISCOVERY_FINISHED in case of the completion or cancellation of the discovery.
///
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks To connect to peer Bluetooth device, you need to know its Bluetooth address. \n
/// The device discovery can be stopped by bt_adapter_stop_device_discovery().
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation is now in progress
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @post This function invokes bt_adapter_device_discovery_state_changed_cb().
///
/// @see bt_adapter_is_discovering()
/// @see bt_adapter_stop_device_discovery()
/// @see bt_adapter_device_discovery_state_changed_cb()
/// @see bt_adapter_set_device_discovery_state_changed_cb()
/// @see bt_adapter_unset_device_discovery_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_start_device_discovery() =>
    tizenCapiNetworkBluetooth.bt_adapter_start_device_discovery();

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Stops the device discovery, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks The device discovery process will take 10 ~ 20 seconds to get all the devices in vicinity.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOT_IN_PROGRESS  Operation is not in progress
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The device discovery must be in progress with bt_adapter_start_device_discovery().
/// @post This function invokes bt_adapter_device_discovery_state_changed_cb().
///
/// @see bt_adapter_is_discovering()
/// @see bt_adapter_start_device_discovery()
/// @see bt_adapter_set_device_discovery_state_changed_cb()
/// @see bt_adapter_unset_device_discovery_state_changed_cb()
/// @see bt_adapter_device_discovery_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_stop_device_discovery() =>
    tizenCapiNetworkBluetooth.bt_adapter_stop_device_discovery();

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief	Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_initialize()
/// @see bt_adapter_set_device_discovery_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_unset_device_discovery_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_adapter_unset_device_discovery_state_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief	Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_initialize()
/// @see bt_adapter_set_name_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_unset_name_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_adapter_unset_name_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
///
/// @see bt_initialize()
/// @see bt_adapter_set_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_unset_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_adapter_unset_state_changed_cb();

/// @ingroup  CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief	 Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return  0 on success, otherwise a negative error value.
/// @retval  #BT_ERROR_NONE  Successful
/// @retval  #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval  #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre  The Bluetooth service must be initialized with bt_initialize().
/// @see  bt_initialize()
/// @see  bt_adapter_set_visibility_duration_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_unset_visibility_duration_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_adapter_unset_visibility_duration_changed_cb();

/// @ingroup  CAPI_NETWORK_BLUETOOTH_ADAPTER_MODULE
/// @brief  Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @return  0 on success, otherwise a negative error value.
/// @retval  #BT_ERROR_NONE  Successful
/// @retval  #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval  #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre  The Bluetooth service must be initialized with bt_initialize().
///
/// @see  bt_initialize()
/// @see  bt_adapter_set_visibility_mode_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_adapter_unset_visibility_mode_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_adapter_unset_visibility_mode_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AUDIO_MODULE
/// @brief Connects the remote device with the given audio profile, asynchronously.
/// @details If you input type as #BT_AUDIO_PROFILE_TYPE_ALL and connection request succeeds, then bt_audio_connection_state_changed_cb() will be called twice \n
/// when #BT_AUDIO_PROFILE_TYPE_HSP_HFP is connected and #BT_AUDIO_PROFILE_TYPE_A2DP is connected.
///
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address  The remote address
/// Parameter type  The type of audio profile
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth audio service must be initialized with bt_audio_initialize().
/// @pre The local device must be bonded with the remote device by bt_device_create_bond().
/// @post bt_audio_connection_state_changed_cb() will be invoked.
/// @see bt_audio_disconnect()
/// @see bt_audio_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_audio_connect(
  ffi.Pointer<ffi.Char> remote_address,
  int type,
) =>
    tizenCapiNetworkBluetooth.bt_audio_connect(
      remote_address,
      type,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AUDIO_MODULE
/// @brief Deinitializes the Bluetooth profiles related with audio.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth audio service must be initialized with bt_audio_initialize().
/// @see bt_audio_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_audio_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_audio_deinitialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AUDIO_MODULE
/// @brief Disconnects the remote device with the given audio profile, asynchronously.
/// @details If you input type as #BT_AUDIO_PROFILE_TYPE_ALL and disconnection request succeeds, then bt_audio_connection_state_changed_cb() will be called twice \n
/// when #BT_AUDIO_PROFILE_TYPE_HSP_HFP is disconnected and #BT_AUDIO_PROFILE_TYPE_A2DP is disconnected.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address  The remote address
/// Parameter type  The type of audio profile
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected by bt_audio_connect().
/// @post bt_audio_connection_state_changed_cb() will be invoked.
/// @see bt_audio_connect()
/// @see bt_audio_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_audio_disconnect(
  ffi.Pointer<ffi.Char> remote_address,
  int type,
) =>
    tizenCapiNetworkBluetooth.bt_audio_disconnect(
      remote_address,
      type,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AUDIO_MODULE
/// @brief Initializes the Bluetooth profiles related with audio.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks This function must be called before Bluetooth profiles related with audio starts. \n
/// You must free all resources of the this service by calling bt_audio_deinitialize() \n
/// if Bluetooth profiles related with audio service is no longer needed.
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_audio_deinitialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_audio_initialize() =>
    tizenCapiNetworkBluetooth.bt_audio_initialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AUDIO_MODULE
/// @brief  Registers a callback function that will be invoked when the connection state is changed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth audio service must be initialized with bt_audio_initialize().
/// @see bt_audio_initialize()
/// @see bt_audio_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_audio_set_connection_state_changed_cb(
  bt_audio_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_audio_set_connection_state_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AUDIO_MODULE
/// @brief  Unregisters a callback function that will be invoked when the connection state is changed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth audio service must be initialized with bt_audio_initialize().
/// @see bt_audio_initialize()
/// @see bt_audio_connection_state_changed_cb()
/// @see bt_audio_set_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_audio_unset_connection_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_audio_unset_connection_state_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief Connects the AVRCP (Audio/Video Remote Control Profile) target device.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address  The remote address
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @pre The Bluetooth audio service must be initialized with bt_avrcp_control_initialize().
/// @see bt_avrcp_control_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_connect(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_connect(
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief Deinitializes the Bluetooth AVRCP (Audio/Video Remote Control Profile) controller service.
/// @since_tizen 3.0
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @pre The Bluetooth audio service must be initialized with bt_avrcp_control_initialize().
/// @see bt_avrcp_control_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_deinitialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief Disconnects from the AVRCP (Audio/Video Remote Control Profile) target device.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address  The remote address
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @pre The Bluetooth audio service must be initialized with bt_avrcp_control_initialize().
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_control_connect()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_disconnect(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_disconnect(
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Frees the track metadata.
/// @since_tizen 3.0
/// Parameter track The track metadata.
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @pre track should point to valid metadata address.
/// @see bt_avrcp_control_get_track_info()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_free_track_info(
  ffi.Pointer<bt_avrcp_metadata_attributes_info_s> track,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_free_track_info(
      track,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Gets the the equalizer state of the remote device.
/// @since_tizen 3.0
/// Output parameter state The equalizer state, one of: ON, OFF
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_get_equalizer_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_get_equalizer_state(
      state,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Gets the play status of the remote device.
/// @since_tizen 3.0
/// Output parameter status The play status, one of: PLAYING, STOPPED...
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_get_play_status(
  ffi.Pointer<ffi.Int32> status,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_get_play_status(
      status,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Gets the position of the song played by the remote device.
/// @since_tizen 3.0
/// Output parameter position The position, in milliseconds
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_get_position(
  ffi.Pointer<ffi.UnsignedInt> position,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_get_position(
      position,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Gets the repeat state of the remote device.
/// @since_tizen 3.0
/// Output parameter mode The repeat mode, one of: OFF, SINGLE, ALL
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_get_repeat_mode(
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_get_repeat_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Gets the scan mode of the remote device.
/// @since_tizen 3.0
/// Output parameter mode The scan mode, one of: OFF, GROUP, ALL
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_get_scan_mode(
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_get_scan_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Gets the shuffle mode of the remote device.
/// @since_tizen 3.0
/// Output parameter mode The shuffle mode, one of: OFF, GROUP, ALL
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_get_shuffle_mode(
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_get_shuffle_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Gets the metadata of the track played by the remote device.
/// @since_tizen 3.0
/// @remarks The @a track must be released using bt_avrcp_control_free_track_info().
/// Output parameter track The track metadata.
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_get_track_info(
  ffi.Pointer<ffi.Pointer<bt_avrcp_metadata_attributes_info_s>> track,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_get_track_info(
      track,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief Initializes the Bluetooth AVRCP (Audio/Video Remote Control Profile) controller service.
/// @since_tizen 3.0
/// @remarks This function must be called before any other AVRCP controller functions are called. \n
/// You must free all resources of the this service by calling bt_avrcp_control_deinitialize() \n
/// if Bluetooth AVRCP service is no longer needed.
/// Parameter callback The callback function called when the connection state is changed
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_avrcp_control_deinitialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_initialize(
  bt_avrcp_control_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_initialize(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief Sends a command to the target device.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter cmd The commands, one of: Play, Pause, Next, Rewind.
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @pre The Bluetooth audio service must be initialized with bt_avrcp_control_initialize().
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_control_connect()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_send_player_command(
  int cmd,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_send_player_command(
      cmd,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Sends the equalizer state change request to the remote device.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter state The new equalizer state, one of: ON, OFF
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_set_equalizer_state(
  int state,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_set_equalizer_state(
      state,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Sends the repeat change request to the remote device.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter mode The new repeat mode, one of: OFF, SINGLE, ALL
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_set_repeat_mode(
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_set_repeat_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Sends the scan mode change request to the remote device.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter mode The new scan mode, one of: OFF, GROUP, ALL
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_set_scan_mode(
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_set_scan_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_CONTROL_MODULE
/// @brief  Sends the shuffle mode change request to the remote device.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter mode The new shuffle mode, one of: OFF, GROUP, ALL
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_control_set_shuffle_mode(
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_control_set_shuffle_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Registers a callback function that will be invoked when the equalizer state is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_unset_equalizer_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_set_equalizer_state_changed_cb(
  bt_avrcp_equalizer_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_set_equalizer_state_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Registers a callback function that will be invoked when the Play status is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen 3.0
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_unset_play_status_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_set_play_status_changed_cb(
  bt_avrcp_play_status_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_set_play_status_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Registers a callback function that will be invoked when the song position is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen 3.0
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_unset_position_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_set_position_changed_cb(
  bt_avrcp_position_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_set_position_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Registers a callback function that will be invoked when the repeat mode is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_unset_repeat_mode_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_set_repeat_mode_changed_cb(
  bt_avrcp_repeat_mode_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_set_repeat_mode_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Registers a callback function that will be invoked when the scan mode is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_unset_scan_mode_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_set_scan_mode_changed_cb(
  bt_avrcp_scan_mode_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_set_scan_mode_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Registers a callback function that will be invoked when the shuffle mode is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_unset_shuffle_mode_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_set_shuffle_mode_changed_cb(
  bt_avrcp_shuffle_mode_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_set_shuffle_mode_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Registers a callback function that will be invoked when the track metadata is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen 3.0
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_unset_track_info_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_set_track_info_changed_cb(
  bt_avrcp_track_info_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_set_track_info_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief Deinitializes the Bluetooth AVRCP (Audio/Video Remote Control Profile) target service.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth audio service must be initialized with bt_avrcp_target_initialize().
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_deinitialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief Initializes the Bluetooth AVRCP (Audio/Video Remote Control Profile) target service.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @remarks This function must be called before any other AVRCP target functions are called. \n
/// You must free all resources of the this service by calling bt_avrcp_target_deinitialize() \n
/// if Bluetooth AVRCP service is no longer needed.
/// Parameter callback The callback function called when the connection state is changed
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_avrcp_target_deinitialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_initialize(
  bt_avrcp_target_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_initialize(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief  Notifies the equalizer state to the remote device.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter state The state of equalizer
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_notify_equalizer_state(
  int state,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_notify_equalizer_state(
      state,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief  Notifies the player state to the remote device.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter state The player state
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_notify_player_state(
  int state,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_notify_player_state(
      state,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief  Notifies the current position of song to the remote device.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter position The current position in milliseconds
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_notify_position(
  int position,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_notify_position(
      position,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief  Notifies the repeat mode to the remote device.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter mode The repeat mode
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_notify_repeat_mode(
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_notify_repeat_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief  Notifies the scan mode to the remote device.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter mode The scan mode
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_notify_scan_mode(
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_notify_scan_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief  Notifies the shuffle mode to the remote device.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter mode The repeat mode
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_notify_shuffle_mode(
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_notify_shuffle_mode(
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_TARGET_MODULE
/// @brief  Notifies the track to the remote device.
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter title The title of track
/// Parameter artist The artist of track
/// Parameter album The album of track
/// Parameter genre The genre of track
/// Parameter track_num The track number
/// Parameter total_tracks The number of all tracks
/// Parameter duration The duration of track in milliseconds
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_avrcp_target_connection_state_changed_cb()
/// @see bt_avrcp_target_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_target_notify_track(
  ffi.Pointer<ffi.Char> title,
  ffi.Pointer<ffi.Char> artist,
  ffi.Pointer<ffi.Char> album,
  ffi.Pointer<ffi.Char> genre,
  int track_num,
  int total_tracks,
  int duration,
) =>
    tizenCapiNetworkBluetooth.bt_avrcp_target_notify_track(
      title,
      artist,
      album,
      genre,
      track_num,
      total_tracks,
      duration,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the equalizer state is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_set_equalizer_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_unset_equalizer_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_avrcp_unset_equalizer_state_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the Play status is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen 3.0
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_set_play_status_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_unset_play_status_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_avrcp_unset_play_status_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the song position is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen 3.0
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_set_position_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_unset_position_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_avrcp_unset_position_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the repeat mode is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_set_repeat_mode_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_unset_repeat_mode_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_avrcp_unset_repeat_mode_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the scan mode is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_set_scan_mode_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_unset_scan_mode_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_avrcp_unset_scan_mode_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the shuffle mode is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen @if WEARABLE 3.0 @else 2.4 @endif
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_set_shuffle_mode_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_unset_shuffle_mode_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_avrcp_unset_shuffle_mode_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_AVRCP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the track metadata is changed. (e.g., by a TV remote control or other input devices).
/// @since_tizen 3.0
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The AVRCP service must be initialized with bt_avrcp_target_initialize() or bt_avrcp_control_initialize().
/// @see bt_avrcp_target_initialize()
/// @see bt_avrcp_control_initialize()
/// @see bt_avrcp_set_track_info_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_avrcp_unset_track_info_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_avrcp_unset_track_info_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_MODULE
/// @brief Releases all resources of the Bluetooth API.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @remarks This function must be called if Bluetooth API is no longer needed.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre Bluetooth API must be initialized with bt_initialize().
///
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_deinitialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Cancels the bonding process.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks Use this function when the remote Bluetooth device is not responding to the \n
/// bond request or you wish to cancel the bonding request.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOT_IN_PROGRESS  Operation not in progress
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The creating a bond must be in progress by bt_device_create_bond().
///
/// @see bt_device_create_bond()
/// @see bt_device_bond_created_cb()
/// @see bt_device_set_bond_created_cb()
/// @see bt_device_unset_bond_created_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_cancel_bonding() =>
    tizenCapiNetworkBluetooth.bt_device_cancel_bonding();

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Creates a bond with a remote Bluetooth device, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks A bond can be destroyed by bt_device_destroy_bond().\n
/// The bonding request can be cancelled by bt_device_cancel_bonding().
///
/// Parameter remote_address The address of the remote Bluetooth device with which the bond should be created
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_RESOURCE_BUSY  Device or resource busy
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The remote device must be discoverable with bt_adapter_start_device_discovery().
/// @post This function invokes bt_device_bond_created_cb().
///
/// @see bt_adapter_start_device_discovery()
/// @see bt_device_bond_created_cb()
/// @see bt_device_cancel_bonding()
/// @see bt_device_destroy_bond()
/// @see bt_device_set_bond_created_cb()
/// @see bt_device_unset_bond_created_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_create_bond(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_device_create_bond(
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Destroys the bond, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address The address of the remote Bluetooth device to remove bonding
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_RESOURCE_BUSY  Device or resource busy
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_BONDED  Remote device not bonded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The bond with the remote device must be created with bt_device_create_bond().
/// @post This function invokes bt_device_bond_destroyed_cb().
///
/// @see bt_device_create_bond()
/// @see bt_device_bond_destroyed_cb()
/// @see bt_device_set_bond_destroyed_cb()
/// @see bt_device_unset_bond_destroyed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_destroy_bond(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_device_destroy_bond(
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Gets the connected profiles.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter remote_address The address of the remote device
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @post bt_device_connected_profile() will be invoked.
/// @see bt_device_connected_profile()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_foreach_connected_profiles(
  ffi.Pointer<ffi.Char> remote_address,
  bt_device_connected_profile callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_device_foreach_connected_profiles(
      remote_address,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Gets the service mask from the UUID list.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter uuids The UUID list of the device.
/// Parameter no_of_service The number of the UUID list count.
/// Output parameter service_mask_list Service mask list converted from the given UUID list.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_service_class_t
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_get_service_mask_from_uuid_list(
  ffi.Pointer<ffi.Pointer<ffi.Char>> uuids,
  int no_of_service,
  ffi.Pointer<ffi.Int32> service_mask_list,
) =>
    tizenCapiNetworkBluetooth.bt_device_get_service_mask_from_uuid_list(
      uuids,
      no_of_service,
      service_mask_list,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Gets the profile connected status.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter remote_address The address of the remote device
/// Parameter bt_profile wish to know bt_profile
/// Output parameter connected_status the connected status
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_BONDED	Remote device not bonded
/// @retval #BT_ERROR_OPERATION_FAILED	Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_is_profile_connected(
  ffi.Pointer<ffi.Char> remote_address,
  int bt_profile,
  ffi.Pointer<ffi.Bool> connected_status,
) =>
    tizenCapiNetworkBluetooth.bt_device_is_profile_connected(
      remote_address,
      bt_profile,
      connected_status,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Sets an alias for the bonded device.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address The address of the remote Bluetooth device
/// Parameter alias The alias of the remote Bluetooth device
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_BONDED  Remote device not bonded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The bond with the remote device must be created with bt_device_create_bond().
///
/// @see bt_device_create_bond()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_set_alias(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<ffi.Char> alias,
) =>
    tizenCapiNetworkBluetooth.bt_device_set_alias(
      remote_address,
      alias,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Sets the authorization of a bonded device, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks Once a device is authorized, you don't need to receive a confirmation.
///
/// Parameter remote_address The address of the remote Bluetooth device to authorize
/// Parameter authorization_state The Bluetooth authorization state
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_BONDED  Remote device not bonded
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The bond with the remote device must be created with bt_device_create_bond().
/// @post bt_device_authorization_changed_cb() will be invoked.
///
/// @see bt_device_create_bond()
/// @see bt_device_authorization_changed_cb()
/// @see bt_device_set_authorization_changed_cb()
/// @see bt_device_unset_authorization_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_set_authorization(
  ffi.Pointer<ffi.Char> remote_address,
  int authorization_state,
) =>
    tizenCapiNetworkBluetooth.bt_device_set_authorization(
      remote_address,
      authorization_state,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief  Registers a callback function to be invoked when the authorization of device changes.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post  bt_device_authorization_changed_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_device_authorization_changed_cb()
/// @see bt_device_unset_authorization_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_set_authorization_changed_cb(
  bt_device_authorization_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_device_set_authorization_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief  Registers a callback function to be invoked when the bond creates.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post  bt_device_bond_created_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_device_bond_created_cb()
/// @see bt_device_unset_bond_created_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_set_bond_created_cb(
  bt_device_bond_created_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_device_set_bond_created_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief  Registers a callback function to be invoked when the bond destroys.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post  bt_device_bond_destroyed_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_device_bond_destroyed_cb()
/// @see bt_device_unset_bond_destroyed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_set_bond_destroyed_cb(
  bt_device_bond_destroyed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_device_set_bond_destroyed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief  Registers a callback function to be invoked when the connection state is changed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post bt_device_connection_state_changed_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_device_connection_state_changed_cb()
/// @see bt_device_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_set_connection_state_changed_cb(
  bt_device_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_device_set_connection_state_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief  Registers a callback function to be invoked when the process of service search finishes.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post  bt_device_service_searched_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_device_service_searched_cb()
/// @see bt_device_unset_service_searched_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_set_service_searched_cb(
  bt_device_service_searched_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_device_set_service_searched_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Starts the search for services supported by the specified device, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks If creating a bond succeeds, which means bt_device_bond_created_cb() is called with result #BT_ERROR_NONE, \n
/// then you don't need to run this function.\n
/// The service search takes a couple of seconds to complete normally.
///
/// Parameter remote_address The address of the remote Bluetooth device whose services need to be checked
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_BONDED  Remote device not bonded
/// @retval #BT_ERROR_SERVICE_SEARCH_FAILED  Service search failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The remote device must be discoverable with bt_adapter_start_device_discovery().
/// @pre The bond with the remote device must be created with bt_device_create_bond().
/// @post This function invokes bt_device_service_searched_cb().
///
/// @see bt_adapter_start_device_discovery()
/// @see bt_device_create_bond()
/// @see bt_device_bond_created_cb()
/// @see bt_device_service_searched_cb()
/// @see bt_device_set_service_searched_cb()
/// @see bt_device_unset_service_searched_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_start_service_search(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_device_start_service_search(
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief	Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_device_set_authorization_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_unset_authorization_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_device_unset_authorization_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief	Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_device_set_bond_created_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_unset_bond_created_cb() =>
    tizenCapiNetworkBluetooth.bt_device_unset_bond_created_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief	Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_device_set_bond_destroyed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_unset_bond_destroyed_cb() =>
    tizenCapiNetworkBluetooth.bt_device_unset_bond_destroyed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief	Unregisters the callback function to be invoked when the connection state is changed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_device_set_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_unset_connection_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_device_unset_connection_state_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief	Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_device_set_service_searched_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_unset_service_searched_cb() =>
    tizenCapiNetworkBluetooth.bt_device_unset_service_searched_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_DEVICE_MODULE
/// @brief Updates a LE connection mode.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address The address of the remote Bluetooth device
/// Parameter mode The LE connection mode
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED   Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_device_update_le_connection_mode(
  ffi.Pointer<ffi.Char> remote_address,
  int mode,
) =>
    tizenCapiNetworkBluetooth.bt_device_update_le_connection_mode(
      remote_address,
      mode,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Adds a descriptor to a specified characteristic.
/// @since_tizen 3.0
///
/// Parameter characteristic The GATT handle of the characteristic
/// Parameter descriptor The descriptor's GATT handle to be added
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_characteristic_create()
/// @see bt_gatt_descriptor_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_add_descriptor(
  bt_gatt_h characteristic,
  bt_gatt_h descriptor,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_add_descriptor(
      characteristic,
      descriptor,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Creates the GATT characteristic.
/// @since_tizen 3.0
///
/// @remarks The @a permissions can be one or more values of #bt_gatt_permission_e, combined with bitwise 'or'. \n
/// @remarks The @a properties can be one or more values of #bt_gatt_property_e, combined with bitwise 'or'. \n
/// @remarks The @a characteristic should be destroyed by using bt_gatt_characteristic_destroy().
///
/// Parameter uuid The UUID of the characteristic
/// Parameter permissions the permissions of the characteristic
/// Parameter properties The properties of the characteristic
/// Parameter value The value(byte stream) of the characteristic
/// Parameter value_length The length of @a value
/// Output parameter characteristic The GATT handle of the created characteristic
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_characteristic_destroy()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_create(
  ffi.Pointer<ffi.Char> uuid,
  int permissions,
  int properties,
  ffi.Pointer<ffi.Char> value,
  int value_length,
  ffi.Pointer<bt_gatt_h> characteristic,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_create(
      uuid,
      permissions,
      properties,
      value,
      value_length,
      characteristic,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief Destroys the GATT handle of characteristic.
/// @since_tizen 3.0
///
/// Parameter gatt_handle The handle of characteristic
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_characteristic_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_destroy(
  bt_gatt_h gatt_handle,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_destroy(
      gatt_handle,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Invokes @a callback function on each descriptor that belongs to the specified characteristic.
/// @since_tizen 2.3.1
///
/// Parameter characteristic The characteristic's GATT handle
/// Parameter callback The function to be invoked on each descriptor
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_foreach_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_foreach_descriptors(
  bt_gatt_h characteristic,
  bt_gatt_foreach_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_foreach_descriptors(
      characteristic,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets a descriptor's GATT handle which has specific UUID.
/// @since_tizen 2.3.1
///
/// @remarks The returned GATT handle must not be freed by application. \n
/// It will be freed when an associated client is destroyed by bt_gatt_client_destroy(). \n
/// If there are multiple descriptors which have same UUID, only the first matched one will be returned.
///
/// Parameter characteristic The characteristic's GATT handle
/// Parameter uuid The descriptor's GATT handle which has this UUID will be returned if it exists
/// Output parameter descriptor The descriptor's GATT handle which has @a uuid if it exists
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_get_descriptor(
  bt_gatt_h characteristic,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<bt_gatt_h> descriptor,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_get_descriptor(
      characteristic,
      uuid,
      descriptor,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the permissions which a characteristic's GATT handle has.
/// @since_tizen 3.0
///
/// @remarks The @a permissions can be one or more values of #bt_gatt_permission_e, combined with bitwise 'or'.
///
/// Parameter gatt_handle The handle of a characteristic
/// Output parameter permissions The permissions which a characteristic's GATT handle has
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_characteristic_create()
/// @see bt_gatt_permission_e
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_get_permissions(
  bt_gatt_h gatt_handle,
  ffi.Pointer<ffi.Int> permissions,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_get_permissions(
      gatt_handle,
      permissions,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the properties which a characteristic's GATT handle has.
/// @since_tizen 2.3.1
///
/// Parameter characteristic The characteristic's GATT handle
/// Output parameter properties The properties which a characteristic's GATT handle has
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_property_e
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_get_properties(
  bt_gatt_h characteristic,
  ffi.Pointer<ffi.Int> properties,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_get_properties(
      characteristic,
      properties,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the service's GATT handle which the specified characteristic belongs to.
/// @since_tizen 2.3.1
///
/// @remarks The returned GATT handle must not be freed by application. \n
/// It will be freed when an associated client is destroyed by bt_gatt_client_destroy().
///
/// Parameter characteristic The characteristic's GATT handle
/// Output parameter service The service's GATT handle which @a characteristic belongs to
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_get_service(
  bt_gatt_h characteristic,
  ffi.Pointer<bt_gatt_h> service,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_get_service(
      characteristic,
      service,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief Gets the write type of the specified characteristic.
/// @since_tizen 2.3.1
///
/// Parameter characteristic The characteristic's GATT handle
/// Output parameter write_type The write type of the specified characteristic
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_write_type_e
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_get_write_type(
  bt_gatt_h characteristic,
  ffi.Pointer<ffi.Int32> write_type,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_get_write_type(
      characteristic,
      write_type,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Updates the write type of the specified characteristic.
/// @since_tizen 2.3.1
///
/// Parameter characteristic The characteristic's GATT handle
/// Parameter write_type The write type to be updated
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_write_value()
/// @see bt_gatt_write_type_e
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_characteristic_set_write_type(
  bt_gatt_h characteristic,
  int write_type,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_characteristic_set_write_type(
      characteristic,
      write_type,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Creates the GATT client handle.
/// @since_tizen 2.3.1
///
/// @remarks The GATT client handle must be freed by bt_gatt_client_destroy() after use.
///
/// Parameter remote_address The address of the remote device
/// Output parameter client The created GATT client's handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_ALREADY_DONE  Operation is already done
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_destroy()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_create(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<bt_gatt_client_h> client,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_create(
      remote_address,
      client,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Destroys the GATT client's handle.
/// @since_tizen 2.3.1
///
/// @remarks All related service, characteristic and descriptor's GATT handles are freed also.
///
/// Parameter client The GATT client's handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_destroy(
  bt_gatt_client_h client,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_destroy(
      client,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Invokes @a callback function on each service that belongs to the specified GATT client.
/// @since_tizen 2.3.1
///
/// Parameter client The GATT client's handle
/// Parameter callback The function to be invoked on each service
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_foreach_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_foreach_services(
  bt_gatt_client_h client,
  bt_gatt_foreach_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_foreach_services(
      client,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief Gets the ATT MTU value set for a connection.
/// @since_tizen 4.0
///
/// Parameter client The created GATT client's handle
/// Output parameter mtu The MTU value set for a connection
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED	Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_get_att_mtu(
  bt_gatt_client_h client,
  ffi.Pointer<ffi.UnsignedInt> mtu,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_get_att_mtu(
      client,
      mtu,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Gets the address of remote device.
/// @since_tizen 2.3.1
///
/// Parameter client The created GATT client's handle
/// Output parameter remote_address The address of the remote device which is associated with @a client
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_get_remote_address(
  bt_gatt_client_h client,
  ffi.Pointer<ffi.Pointer<ffi.Char>> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_get_remote_address(
      client,
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Gets a service's GATT handle which has specific UUID.
/// @since_tizen 2.3.1
///
/// @remarks The returned GATT handle must not be freed by application. \n
/// It will be freed when an associated client is destroyed by bt_gatt_client_destroy(). \n
/// If there are multiple services which have same UUID, only the first matched one will be returned.
///
/// Parameter client The GATT client's handle
/// Parameter uuid The service's GATT handle which has this UUID will be returned if it exists
/// Output parameter service The service's GATT handle which has @a uuid if it exists
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_get_service(
  bt_gatt_client_h client,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<bt_gatt_h> service,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_get_service(
      client,
      uuid,
      service,
    );

/// @ingroup  CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Reads the value of a characteristic or descriptor from the remote device asynchronously.
/// @since_tizen 2.3.1
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter gatt_handle The GATT handle of a characteristic or descriptor
/// Parameter callback When a read request is completed, this callback function will be called
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE	Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation now in progress
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_create()
/// @see bt_gatt_client_request_completed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_read_value(
  bt_gatt_h gatt_handle,
  bt_gatt_client_request_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_read_value(
      gatt_handle,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief Requests a change of the ATT MTU value.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter client The created GATT client's handle
/// Parameter mtu The new MTU value
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED   Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @see bt_gatt_client_set_att_mtu_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_request_att_mtu_change(
  bt_gatt_client_h client,
  int mtu,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_request_att_mtu_change(
      client,
      mtu,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Registers a callback function to be invoked when the ATT MTU is changed.
/// @since_tizen 4.0
/// Parameter client The created GATT client's handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post bt_device_connection_state_changed_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_gatt_client_request_att_mtu_change()
/// @see bt_gatt_client_unset_att_mtu_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_set_att_mtu_changed_cb(
  bt_gatt_client_h client,
  bt_gatt_client_att_mtu_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_set_att_mtu_changed_cb(
      client,
      callback,
      user_data,
    );

/// @ingroup  CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Registers a callback function to be invoked when the characteristic value is changed on the remote device.
/// @since_tizen 2.3.1
///
/// Parameter characteristic The characteristic's GATT handle
/// Parameter callback The callback to be invoked when the value is changed and it is informed
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE	Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_characteristic_value_changed_cb()
/// @see bt_gatt_client_unset_characteristic_value_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_set_characteristic_value_changed_cb(
  bt_gatt_h characteristic,
  bt_gatt_client_characteristic_value_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_set_characteristic_value_changed_cb(
      characteristic,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Registers a callback function to be invoked when service is changed from a remote device(GATT server).
/// @since_tizen 3.0
///
/// Parameter client The GATT client's handle
/// Parameter callback The callback to be invoked
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_unset_service_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_set_service_changed_cb(
  bt_gatt_client_h client,
  bt_gatt_client_service_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_set_service_changed_cb(
      client,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief Unregisters the callback function to be invoked when the ATT MTU is changed.
/// @since_tizen 4.0
/// Parameter client The created GATT client's handle
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_gatt_client_request_att_mtu_change()
/// @see bt_gatt_client_set_att_mtu_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_unset_att_mtu_changed_cb(
  bt_gatt_client_h client,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_unset_att_mtu_changed_cb(
      client,
    );

/// @ingroup  CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Unregisters a callback function to be invoked when the characteristic value is changed on the remote device.
/// @since_tizen 2.3.1
///
/// Parameter characteristic The characteristic's GATT handle, whose value change will not be informed
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE	Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_set_characteristic_value_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_unset_characteristic_value_changed_cb(
  bt_gatt_h characteristic,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_unset_characteristic_value_changed_cb(
      characteristic,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Unregisters a callback function.
/// @since_tizen 3.0
///
/// Parameter client The GATT client's handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_set_service_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_unset_service_changed_cb(
  bt_gatt_client_h client,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_unset_service_changed_cb(
      client,
    );

/// @ingroup  CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Writes the value of a characteristic or descriptor to the remote device asynchronously.
/// @since_tizen 2.3.1
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter gatt_handle The GATT handle of a characteristic or descriptor
/// Parameter callback When a write request is completed, this callback function will be called
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE	Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation now in progress
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_create()
/// @see bt_gatt_characteristic_set_write_type()
/// @see bt_gatt_set_value()
/// @see bt_gatt_set_int_value()
/// @see bt_gatt_set_float_value()
/// @see bt_gatt_client_request_completed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_client_write_value(
  bt_gatt_h gatt_handle,
  bt_gatt_client_request_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_client_write_value(
      gatt_handle,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief Connects to a specific LE based service on a remote bluetooth device address, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks A connection can be disconnected by bt_gatt_disconnect().
///
/// Parameter address The address of the remote Bluetooth device.
/// Parameter auto_connect The flag of the auto connection.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED Not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @pre The remote device must support le connection.
/// @post This function invokes bt_gatt_connection_state_changed_cb().
///
/// @see bt_initialize()
/// @see bt_gatt_disconnect()
/// @see bt_gatt_set_connection_state_changed_cb()
/// @see bt_gatt_unset_connection_state_changed_cb()
/// @see bt_gatt_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_connect(
  ffi.Pointer<ffi.Char> address,
  bool auto_connect,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_connect(
      address,
      auto_connect,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Creates the GATT characteristic descriptor.
/// @since_tizen 3.0
///
/// @remarks The @a permissions can be one or more values of #bt_gatt_permission_e, combined with bitwise 'or'. \n
/// @remarks The @a descriptor should be destroyed by using bt_gatt_descriptor_destroy().
///
/// Parameter uuid The UUID of the descriptor
/// Parameter permissions The permissions of the descriptor
/// Parameter value The value(byte stream) associated with the descriptor
/// Parameter value_length The length of @a value
/// Output parameter descriptor The GATT handle of the created characteristic descriptor
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_descriptor_destroy()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_descriptor_create(
  ffi.Pointer<ffi.Char> uuid,
  int permissions,
  ffi.Pointer<ffi.Char> value,
  int value_length,
  ffi.Pointer<bt_gatt_h> descriptor,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_descriptor_create(
      uuid,
      permissions,
      value,
      value_length,
      descriptor,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief Destroys the GATT handle of descriptor.
/// @since_tizen 3.0
///
/// Parameter gatt_handle The handle of descriptor
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_descriptor_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_descriptor_destroy(
  bt_gatt_h gatt_handle,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_descriptor_destroy(
      gatt_handle,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the characteristic's GATT handle which the specified descriptor belongs to.
/// @since_tizen 2.3.1
///
/// @remarks The returned GATT handle must not be freed by application. \n
/// It will be freed when an associated client is destroyed by bt_gatt_client_destroy().
///
/// Parameter descriptor The descriptor's GATT handle
/// Output parameter characteristic The characteristic's GATT handle which @a descriptor belongs to
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_descriptor_get_characteristic(
  bt_gatt_h descriptor,
  ffi.Pointer<bt_gatt_h> characteristic,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_descriptor_get_characteristic(
      descriptor,
      characteristic,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the permissions which a descriptor's GATT handle has.
/// @since_tizen 3.0
///
/// @remarks The @a permissions can be one or more values of #bt_gatt_permission_e, combined with bitwise 'or'.
///
/// Parameter gatt_handle The handle of a descriptor
/// Output parameter permissions The permissions which a descriptor's GATT handle has
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_descriptor_create()
/// @see bt_gatt_permission_e
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_descriptor_get_permissions(
  bt_gatt_h gatt_handle,
  ffi.Pointer<ffi.Int> permissions,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_descriptor_get_permissions(
      gatt_handle,
      permissions,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief Disconnects to LE connection with the given remote Bluetooth device address, asynchronously or cancels a LE connection attempt currently in progress.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter address The address of the remote Bluetooth device
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED Not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @post This function invokes bt_gatt_connection_state_changed_cb().
///
/// @see bt_initialize()
/// @see bt_gatt_connect()
/// @see bt_gatt_set_connection_state_changed_cb()
/// @see bt_gatt_unset_connection_state_changed_cb()
/// @see bt_gatt_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_disconnect(
  ffi.Pointer<ffi.Char> address,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_disconnect(
      address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the value of a characteristic or descriptor's GATT handle as a float type.
/// @since_tizen 2.3.1
///
/// @remarks This function returns a locally saved value in @a gatt_handle. \n
/// When @a gatt_handle is associated with bt_gatt_client_h, bt_gatt_client_read_value() must be used prior to this function \n
/// in order to get the remote device's current value.
///
/// Parameter gatt_handle  The handle of a characteristic or descriptor
/// Parameter type The type of a saved value in @a gatt_handle
/// Parameter offset The offset from where a value will be read from @a gatt_handle as an integer type
/// Output parameter value The float type's value of @a gatt_handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_get_float_value(
  bt_gatt_h gatt_handle,
  int type,
  int offset,
  ffi.Pointer<ffi.Float> value,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_get_float_value(
      gatt_handle,
      type,
      offset,
      value,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the value of a characteristic or descriptor's GATT handle as an integer type.
/// @since_tizen 2.3.1
///
/// @remarks This function returns a locally saved value in @a gatt_handle. \n
/// When @a gatt_handle is associated with bt_gatt_client_h, bt_gatt_client_read_value() must be used prior to this function \n
/// in order to get the remote device's current value.
///
/// Parameter gatt_handle The handle of a characteristic or descriptor
/// Parameter type The type of a saved value in @a gatt_handle
/// Parameter offset The offset from where a value will be read from @a gatt_handle as an integer type
/// Output parameter value The integer type's value of @a gatt_handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_get_int_value(
  bt_gatt_h gatt_handle,
  int type,
  int offset,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_get_int_value(
      gatt_handle,
      type,
      offset,
      value,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the type of GATT handle.
/// @since_tizen 2.3.1
///
/// Parameter gatt_handle The GATT handle
/// Output parameter gatt_type The type of @a gatt_handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_get_type(
  bt_gatt_h gatt_handle,
  ffi.Pointer<ffi.Int32> gatt_type,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_get_type(
      gatt_handle,
      gatt_type,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the UUID of a service, characteristic or descriptor's GATT handle.
/// @since_tizen 2.3.1
///
/// @remarks @a uuid must be released using free(). \n
/// 16-bit UUID or 128-bit UUID is supported. (e.g. 2A19, 00002A19-0000-1000-8000-00805F9B34FB).
///
/// Parameter gatt_handle The handle of a service, characteristic or descriptor
/// Output parameter uuid The string of the UUID of @a gatt_handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_get_uuid(
  bt_gatt_h gatt_handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> uuid,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_get_uuid(
      gatt_handle,
      uuid,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets the value of a characteristic or descriptor's GATT handle.
/// @since_tizen 2.3.1
///
/// @remarks @a value must be released using free(). \n
/// When @a gatt_handle is associated with bt_gatt_client_h, bt_gatt_client_read_value() must be used prior to this function \n
/// in order to get the remote device's current value.
///
/// Parameter gatt_handle The handle of a characteristic or descriptor
/// Output parameter value The value of @a gatt_handle. It is a byte stream type.
/// Output parameter value_length The length of @a value
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_get_value(
  bt_gatt_h gatt_handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
  ffi.Pointer<ffi.Int> value_length,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_get_value(
      gatt_handle,
      value,
      value_length,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Creates the GATT server's handle.
/// @since_tizen 3.0
///
/// @remarks The @a server handle should be destroyed by using bt_gatt_server_destroy().
///
/// Output parameter server The GATT server's handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_destroy()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_create(
  ffi.Pointer<bt_gatt_server_h> server,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_create(
      server,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief DeInitializes the GATT server.
/// @since_tizen 3.0
///
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE	Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre	The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @see	bt_gatt_server_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_gatt_server_deinitialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Destroys the GATT server's handle.
/// @since_tizen 3.0
///
/// @remarks All registered services to GATT server are unregistered.
///
/// Parameter server The GATT server's handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_destroy(
  bt_gatt_server_h server,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_destroy(
      server,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Invokes @a callback function on each service that belongs to the specified GATT server.
/// @since_tizen 3.0
///
/// Parameter server The GATT server's handle
/// Parameter callback The function to be invoked on each service
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_foreach_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_foreach_services(
  bt_gatt_server_h server,
  bt_gatt_foreach_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_foreach_services(
      server,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief Gets an ATT MTU value for a connection.
/// @since_tizen 5.5
///
/// Parameter remote_address The address of the remote Bluetooth device
/// Output parameter mtu The MTU value for a connection
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED	Operation failed
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_get_device_mtu(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<ffi.UnsignedInt> mtu,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_get_device_mtu(
      remote_address,
      mtu,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Gets a service's GATT handle which has specific UUID.
/// @since_tizen 3.0
///
/// @remarks The returned GATT handle must not be freed by application. \n
/// It will be freed when an associated server is destroyed by bt_gatt_server_destroy(). \n
/// If there are multiple services which have same UUID, only the first matched one will be returned.
///
/// Parameter server The GATT server's handle
/// Parameter uuid The service's GATT handle which has this UUID will be returned if it exists
/// Output parameter service The service's GATT handle which has @a uuid if it exists
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_get_service(
  bt_gatt_server_h server,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<bt_gatt_h> service,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_get_service(
      server,
      uuid,
      service,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief Initializes the GATT Server.
/// @since_tizen 3.0
///
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre	The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @see	bt_gatt_server_deinitialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_initialize() =>
    tizenCapiNetworkBluetooth.bt_gatt_server_initialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Notifies value change of the characteristic to the remote devices which enable a Client Characteristic Configuration Descriptor.
/// @since_tizen 3.0
///
/// Parameter characteristic The characteristic which has a changed value
/// Parameter callback The function to be invoked on each remote device when a sending operation is done
/// Parameter device_address Remote device address to send notify or indicate and if set to NULL then notify/indicate all is enabled.
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_notification_sent_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_notify_characteristic_changed_value(
  bt_gatt_h characteristic,
  bt_gatt_server_notification_sent_cb callback,
  ffi.Pointer<ffi.Char> device_address,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_notify_characteristic_changed_value(
      characteristic,
      callback,
      device_address,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Registers a specified service to the specified GATT server that the local device is hosting.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter server The GATT server that local device is hosting
/// Parameter service The service, which needs to be registered in @a server
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_ALREADY_DONE Operation is already done
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_create()
/// @see bt_gatt_service_create()
/// @see bt_gatt_server_start()
/// @see bt_gatt_server_unregister_service()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_register_service(
  bt_gatt_server_h server,
  bt_gatt_h service,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_register_service(
      server,
      service,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Sends a response to the remote device as a result of a read/write request.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks Until this function is called, a read/write request is not finished.
///
/// Parameter request_id The identification of a read/write request
/// Parameter request_type The request type for read/write
/// Parameter offset The offset from where a value is read
/// Parameter resp_status The application error if any occurred or BT_ERROR_NONE for successful.
/// Parameter value The value to be sent. It will be sent from @a offset. If it is NULL, a requested GATT handle's value will be sent from @a offset.
/// Parameter value_length Value Length
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_read_value_requested_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_send_response(
  int request_id,
  int request_type,
  int offset,
  int resp_status,
  ffi.Pointer<ffi.Char> value,
  int value_length,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_send_response(
      request_id,
      request_type,
      offset,
      resp_status,
      value,
      value_length,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Registers a callback function to be invoked when the remote device enables or disables the Notification/Indication for particular characteristics.
/// @since_tizen 3.0
///
/// Parameter gatt_handle The GATT handle of a characteristic
/// Parameter callback The callback to be invoked
/// Parameter user_data The user data to be passed to @a callback function
/// @return	0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED	Not supported
///
/// @see bt_gatt_server_characteristic_notification_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_set_characteristic_notification_state_change_cb(
  bt_gatt_h gatt_handle,
  bt_gatt_server_characteristic_notification_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_set_characteristic_notification_state_change_cb(
      gatt_handle,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Registers a callback function to be invoked when a read request for a specified characteristic or descriptor is issued from a remote device(GATT client).
/// @since_tizen 3.0
///
/// Parameter gatt_handle The GATT handle of a characteristic or descriptor
/// Parameter callback The callback to be invoked
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_read_value_requested_cb()
/// @see bt_gatt_server_send_response()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_set_read_value_requested_cb(
  bt_gatt_h gatt_handle,
  bt_gatt_server_read_value_requested_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_set_read_value_requested_cb(
      gatt_handle,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Registers a callback function to be invoked when a value of a characteristic or descriptor has been changed by a remote device(GATT client)'s request.
/// @since_tizen 3.0
///
/// Parameter gatt_handle The GATT handle of a characteristic or descriptor
/// Parameter callback The callback to be invoked
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_write_value_requested_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_set_write_value_requested_cb(
  bt_gatt_h gatt_handle,
  bt_gatt_server_write_value_requested_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_set_write_value_requested_cb(
      gatt_handle,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Registers the application along with the GATT services of the application it is hosting.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_ALREADY_DONE Operation is already done
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_initialize()
/// @see bt_gatt_server_create()
/// @see bt_gatt_service_create()
/// @see bt_gatt_server_unregister_service()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_start() =>
    tizenCapiNetworkBluetooth.bt_gatt_server_start();

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Unregisters all services from the specified GATT server that the local device is hosting.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter server The GATT server that local device is hosting
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_register_service()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_unregister_all_services(
  bt_gatt_server_h server,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_unregister_all_services(
      server,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Unregisters a specified service from the specified GATT server that the local device is hosting.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter server The GATT server that local device is hosting
/// Parameter service The service, which needs to be unregistered from @a server
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_SERVICE_NOT_FOUND  Service not found
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_register_service()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_server_unregister_service(
  bt_gatt_server_h server,
  bt_gatt_h service,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_server_unregister_service(
      server,
      service,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Adds a characteristic to a specified service.
/// @since_tizen 3.0
///
/// Parameter service The service's GATT handle
/// Parameter characteristic The characteristic's GATT handle to be added
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_service_create()
/// @see bt_gatt_characteristic_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_add_characteristic(
  bt_gatt_h service,
  bt_gatt_h characteristic,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_add_characteristic(
      service,
      characteristic,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Adds a service to a specified service as included service.
/// @since_tizen 3.0
///
/// Parameter service The service's GATT handle
/// Parameter included_service The service's GATT handle to be added as included service
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_service_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_add_included_service(
  bt_gatt_h service,
  bt_gatt_h included_service,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_add_included_service(
      service,
      included_service,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Creates the GATT service.
/// @since_tizen 3.0
///
/// @remarks The @a service should be destroyed by using bt_gatt_service_destroy().
///
/// Parameter uuid The UUID of the service
/// Parameter type The type of the service
/// Output parameter service The GATT handle of the created service
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_service_destroy()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_create(
  ffi.Pointer<ffi.Char> uuid,
  int type,
  ffi.Pointer<bt_gatt_h> service,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_create(
      uuid,
      type,
      service,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief Destroys the GATT handle of service.
/// @since_tizen 3.0
///
/// Parameter gatt_handle The handle of service
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_service_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_destroy(
  bt_gatt_h gatt_handle,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_destroy(
      gatt_handle,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Invokes @a callback function on each characteristic that belongs to the specified service.
/// @since_tizen 2.3.1
///
/// Parameter service The service's GATT handle
/// Parameter callback The function to be invoked on each characteristic
/// Parameter user_data The user data to be passed to @a callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_foreach_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_foreach_characteristics(
  bt_gatt_h service,
  bt_gatt_foreach_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_foreach_characteristics(
      service,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Invokes @a callback function on each included service that belongs to the specified service.
/// @since_tizen 2.3.1
///
/// Parameter service The service's GATT handle
/// Parameter callback The function to be invoked on each included service
/// Parameter user_data The user data to be passed to the callback function
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_foreach_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_foreach_included_services(
  bt_gatt_h service,
  bt_gatt_foreach_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_foreach_included_services(
      service,
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets a characteristic's GATT handle which has specific UUID.
/// @since_tizen 2.3.1
///
/// @remarks The returned GATT handle must not be freed by application. \n
/// It will be freed when an associated client is destroyed by bt_gatt_client_destroy(). \n
/// If there are multiple characteristics which have same UUID, only the first matched one will be returned.
///
/// Parameter service The service's GATT handle
/// Parameter uuid The characteristic's GATT handle which has this UUID will be returned if it exists
/// Output parameter characteristic The characteristic's GATT handle which has @a uuid if it exists
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_get_characteristic(
  bt_gatt_h service,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<bt_gatt_h> characteristic,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_get_characteristic(
      service,
      uuid,
      characteristic,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_CLIENT_MODULE
/// @brief  Gets the GATT client handle which the specified service belongs to.
/// @since_tizen 2.3.1
///
/// @remarks This function doesn't allocate new memory for GATT client handle. \n
/// The returned GATT client handle is the same one which was got from bt_gatt_client_create(). \n
/// So if it is destroyed by bt_gatt_client_destroy(), all related GATT handles are freed also.
///
/// Parameter service The service's GATT handle
/// Output parameter client The GATT client handle which @a service belongs to
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_client_create()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_get_client(
  bt_gatt_h service,
  ffi.Pointer<bt_gatt_client_h> client,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_get_client(
      service,
      client,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Gets an included service's GATT handle which has specific UUID.
/// @since_tizen 2.3.1
///
/// @remarks The returned GATT handle must not be freed by application. \n
/// It will be freed when an associated client is destroyed by bt_gatt_client_destroy(). \n
/// If there are multiple included services which have same UUID, only the first matched one will be returned.
///
/// Parameter service The service's GATT handle
/// Parameter uuid The included service's GATT handle which has this UUID will be returned if it exists
/// Output parameter included_service The included service's GATT handle which has @a uuid if it exists
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NO_DATA  No data available
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_get_included_service(
  bt_gatt_h service,
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<bt_gatt_h> included_service,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_get_included_service(
      service,
      uuid,
      included_service,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_SERVER_MODULE
/// @brief  Gets the GATT server handle to which the specified service belongs.
/// @since_tizen 3.0
///
/// @remarks The returned Server handle must not be freed by application.
///
/// Parameter service The service's GATT handle
/// Output parameter server The GATT server handle to which @a service belongs
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_server_create()
/// @see bt_gatt_service_create()
/// @see bt_gatt_server_register_service()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_service_get_server(
  bt_gatt_h service,
  ffi.Pointer<bt_gatt_server_h> server,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_service_get_server(
      service,
      server,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief Registers a callback function that will be invoked when the connection state is changed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// Parameter callback The callback function to register.
/// Parameter user_data The user data to be passed  to the callback function.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_connect()
/// @see bt_gatt_disconnect()
/// @see bt_gatt_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_set_connection_state_changed_cb(
  bt_gatt_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_set_connection_state_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Updates the value of a characteristic or descriptor's GATT handle using a float type's value.
/// @since_tizen 2.3.1
///
/// @remarks This function updates a value of @a gatt_handle locally. \n
/// When @a gatt_handle is associated with bt_gatt_client_h, bt_gatt_client_write_value() can be used after this function \n
/// in order to update the remote device's value.
///
/// Parameter gatt_handle The handle of a characteristic or descriptor
/// Parameter type @a mantissa and @a exponent will be saved in @a gatt_handle as this type
/// Parameter mantissa The mantissa of float type's value to be updated
/// Parameter exponent The exponent of float type's value to be updated
/// Parameter offset The offset from where @a mantissa and @a exponent will be saved in @a gatt_handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_set_float_value(
  bt_gatt_h gatt_handle,
  int type,
  int mantissa,
  int exponent,
  int offset,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_set_float_value(
      gatt_handle,
      type,
      mantissa,
      exponent,
      offset,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Updates the value of a characteristic or descriptor's GATT handle using a integer type's value.
/// @since_tizen 2.3.1
///
/// @remarks This function updates a value of @a gatt_handle locally. \n
/// When @a gatt_handle is associated with bt_gatt_client_h, bt_gatt_client_write_value() can be used after this function \n
/// in order to update the remote device's value.
///
/// Parameter gatt_handle The handle of a characteristic or descriptor
/// Parameter type @a value will be saved in @a gatt_handle as this type
/// Parameter value The integer type's value to be updated
/// Parameter offset The offset from where @a value will be saved in @a gatt_handle
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_set_int_value(
  bt_gatt_h gatt_handle,
  int type,
  int value,
  int offset,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_set_int_value(
      gatt_handle,
      type,
      value,
      offset,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief  Updates the value of a characteristic or descriptor's GATT handle.
/// @since_tizen 2.3.1
///
/// @remarks This function updates a value of @a gatt_handle locally. \n
/// When @a gatt_handle is associated with bt_gatt_client_h, bt_gatt_client_write_value() can be used after this function \n
/// in order to update the remote device's value. \n
///
/// Parameter gatt_handle The handle of a characteristic or descriptor
/// Parameter value The value to be updated
/// Parameter value_length The length of @a value
/// @return  0 on success, otherwise a negative error value
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_set_value(
  bt_gatt_h gatt_handle,
  ffi.Pointer<ffi.Char> value,
  int value_length,
) =>
    tizenCapiNetworkBluetooth.bt_gatt_set_value(
      gatt_handle,
      value,
      value_length,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_GATT_MODULE
/// @brief Unregisters a callback function that will be invoked when the connection state is changed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_connect()
/// @see bt_gatt_disconnect()
/// @see bt_gatt_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_gatt_unset_connection_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_gatt_unset_connection_state_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_MODULE
/// @brief Gets the specification name for the given UUID.
/// @since_tizen 3.0
///
/// @remarks The @a name must be released using free().
///
/// Parameter uuid The UUID
/// Output parameter name The specification name defined at www.bluetooth.com
/// @return  0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_gatt_get_uuid()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_get_uuid_name(
  ffi.Pointer<ffi.Char> uuid,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiNetworkBluetooth.bt_get_uuid_name(
      uuid,
      name,
    );

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief Connects the remote device which acts as Source role, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks Deprecated, because of no usecase and supported devices.
/// Parameter remote_address  The remote address
/// Parameter app_id  The ID of application
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Sink role of HDP must be registered with bt_hdp_register_sink_app().
/// @pre The local device must be bonded with the remote device by bt_device_create_bond().
/// @post bt_hdp_connected_cb() will be invoked.
/// @see bt_hdp_disconnect()
/// @see bt_hdp_set_connection_state_changed_cb()
/// @see bt_hdp_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_connect_to_source(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiNetworkBluetooth.bt_hdp_connect_to_source(
      remote_address,
      app_id,
    );

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief Disconnects the remote device, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks Deprecated, because of no usecase and supported devices.
/// Parameter remote_address  The remote address
/// Parameter channel  The connected data channel
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @post bt_hdp_disconnected_cb() will be invoked.
/// @see bt_hdp_set_connection_state_changed_cb()
/// @see bt_hdp_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_disconnect(
  ffi.Pointer<ffi.Char> remote_address,
  int channel,
) =>
    tizenCapiNetworkBluetooth.bt_hdp_disconnect(
      remote_address,
      channel,
    );

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief Registers an application that acts as the Sink role of HDP (Health Device Profile).
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks The @a app_id must be released with free() by you. \n
/// Deprecated, because of no usecase and supported devices.
/// Parameter data_type  The data type of MDEP. This value is defined in ISO/IEEE 11073-20601 spec.
/// For example, pulse oximeter is 0x1004 and blood pressure monitor is 0x1007.
/// Output parameter app_id  The ID of application
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OUT_OF_MEMORY  Out of memory
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @see bt_hdp_unregister_sink_app()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_register_sink_app(
  int data_type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenCapiNetworkBluetooth.bt_hdp_register_sink_app(
      data_type,
      app_id,
    );

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief Sends the data to the remote device.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks Deprecated, because of no usecase and supported devices.
/// Parameter channel  The connected data channel
/// Parameter data  The data to send
/// Parameter size  The size of data to send (byte)
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The remote device must be connected.
/// @see bt_hdp_data_received_cb()
/// @see bt_hdp_set_data_received_cb()
/// @see bt_hdp_unset_data_received_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_send_data(
  int channel,
  ffi.Pointer<ffi.Char> data,
  int size,
) =>
    tizenCapiNetworkBluetooth.bt_hdp_send_data(
      channel,
      data,
      size,
    );

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief  Registers a callback function that will be invoked when the connection state is changed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks Deprecated, because of no usecase and supported devices.
/// Parameter connected_cb The callback function called when a connection is established
/// Parameter disconnected_cb The callback function called when a connection is disconnected
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_hdp_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_set_connection_state_changed_cb(
  bt_hdp_connected_cb connected_cb,
  bt_hdp_disconnected_cb disconnected_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_hdp_set_connection_state_changed_cb(
      connected_cb,
      disconnected_cb,
      user_data,
    );

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief  Registers a callback function that will be invoked when you receive the data.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks Deprecated, because of no usecase and supported devices.
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_hdp_unset_data_received_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_set_data_received_cb(
  bt_hdp_data_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_hdp_set_data_received_cb(
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief Unregisters the given application that acts as the Sink role of HDP (Health Device Profile).
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks Deprecated, because of no usecase and supported devices.
/// Parameter app_id  The ID of application
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see bt_hdp_register_sink_app()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_unregister_sink_app(
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenCapiNetworkBluetooth.bt_hdp_unregister_sink_app(
      app_id,
    );

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the connection state is changed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks Deprecated, because of no usecase and supported devices.
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_hdp_set_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_unset_connection_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_hdp_unset_connection_state_changed_cb();

/// @deprecated Deprecated since 5.0.
/// @ingroup CAPI_NETWORK_BLUETOOTH_HDP_MODULE
/// @brief  Unregisters a callback function that will be invoked when you receive the data.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks Deprecated, because of no usecase and supported devices.
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_hdp_set_data_received_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hdp_unset_data_received_cb() =>
    tizenCapiNetworkBluetooth.bt_hdp_unset_data_received_cb();

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Activates the Bluetooth HID Device role.
/// @since_tizen @if WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks This function must be called to register HID UUID. \n
/// Only then a remote device is able to identify this one as a HID device.
///
/// Parameter callback  The callback called when the connection state is changed
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Already activated
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_hid_device_deactivate()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_activate(
  bt_hid_device_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_hid_device_activate(
      callback,
      user_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Initiates the HID device connection with the Device role, asynchronously.
/// @since_tizen @if WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks This function must be called to Initiate the HID device role connection.
///
/// Parameter remote_address The remote device's address.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOT_IN_PROGRESS  Not activated
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_ALREADY_DONE   Already connected
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @pre The local device must be bonded with the remote device by bt_device_create_bond().
/// @see bt_initialize()
/// @see bt_hid_device_activate()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_connect(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_hid_device_connect(
      remote_address,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Deactivates the Bluetooth HID Device role.
/// @since_tizen @if WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks This function must be called to deregister the HID UUID.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_NOT_IN_PROGRESS  Not activated
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_hid_device_activate()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_deactivate() =>
    tizenCapiNetworkBluetooth.bt_hid_device_deactivate();

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Disconnects from the HID Host device, asynchronously.
/// @since_tizen @if WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address The remote device's address.
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_hid_device_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_disconnect(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_hid_device_disconnect(
      remote_address,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Responds to reports from the HID Host.
/// @since_tizen @if WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address The remote device's address.
/// Parameter header_type The response header type
/// Parameter param_type The response parameter type
/// Parameter data The response data
/// Parameter data_len The length of the response data
///
/// @return the number of bytes written (zero indicates nothing was written).
/// @retval On error, -1 is returned, and errno is set appropriately. See write 2 man page.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The HID connection must be established.
/// @see bt_hid_device_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_reply_to_report(
  ffi.Pointer<ffi.Char> remote_address,
  int header_type,
  int param_type,
  ffi.Pointer<ffi.Char> data,
  int data_len,
) =>
    tizenCapiNetworkBluetooth.bt_hid_device_reply_to_report(
      remote_address,
      header_type,
      param_type,
      data,
      data_len,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Sends the keyboard event data to the remote device.
/// @since_tizen @if WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address The remote device's address.
/// Parameter key_data The key data to be passed to the remote device
///
/// @return the number of bytes written (zero indicates nothing was written).
/// @retval On error, -1 is returned, and errno is set appropriately. See write 2 man page.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The HID connection must be established.
/// @see bt_hid_device_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_send_key_event(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<bt_hid_key_data_s> key_data,
) =>
    tizenCapiNetworkBluetooth.bt_hid_device_send_key_event(
      remote_address,
      key_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Sends the mouse event data to the remote device.
/// @since_tizen @if WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// Parameter remote_address The remote device's address.
/// Parameter mouse_data The mouse data to be passed to the remote device.
///
/// @return the number of bytes written (zero indicates nothing was written).
/// @retval On error, -1 is returned, and errno is set appropriately. See write 2 man page.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The HID connection must be established.
/// @see bt_hid_device_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_send_mouse_event(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<bt_hid_mouse_data_s> mouse_data,
) =>
    tizenCapiNetworkBluetooth.bt_hid_device_send_mouse_event(
      remote_address,
      mouse_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Sets the callback called when the device receives data from the HID Host.
/// @since_tizen @if WEARABLE 3.0 @endif
///
/// Parameter callback The callback function to be set when data is received.
/// Parameter user_data The user data to be passed to the callback.
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see bt_hid_device_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_set_data_received_cb(
  bt_hid_device_data_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_hid_device_set_data_received_cb(
      callback,
      user_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_HID_DEVICE_MODULE
/// @brief Unsets the data received callback.
/// @since_tizen @if WEARABLE 3.0 @endif
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see bt_hid_device_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_device_unset_data_received_cb() =>
    tizenCapiNetworkBluetooth.bt_hid_device_unset_data_received_cb();

/// @brief Connects the remote device with the HID (Human Interface Device) service, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address  The remote address
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The local device must be bonded with the remote device by bt_device_create_bond().
/// @pre The Bluetooth HID service must be initialized with bt_hid_host_initialize().
/// @post bt_hid_host_connection_state_changed_cb() will be invoked.
/// @see bt_hid_host_disconnect()
/// @see bt_hid_host_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_host_connect(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_hid_host_connect(
      remote_address,
    );

/// @brief Deinitializes the Bluetooth HID (Human Interface Device) Host.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth HID service must be initialized with bt_hid_host_initialize().
/// @see  bt_hid_host_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_host_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_hid_host_deinitialize();

/// @brief Disconnects the remote device with the HID (Human Interface Device) service, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address  The remote address
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The remote device must be connected by bt_hid_host_connect().
/// @post bt_hid_host_connection_state_changed_cb() will be invoked.
/// @see bt_hid_host_connect()
/// @see bt_hid_host_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_host_disconnect(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_hid_host_disconnect(
      remote_address,
    );

/// @brief Initializes the Bluetooth HID (Human Interface Device) Host.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks This function must be called before Bluetooth HID Host starts. \n
/// You must free all resources of the Bluetooth service by calling bt_hid_host_deinitialize() \n
/// if Bluetooth HID Host service is no longer needed.
/// Parameter connection_cb  The callback called when the connection state is changed
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see  bt_hid_host_deinitialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_hid_host_initialize(
  bt_hid_host_connection_state_changed_cb connection_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_hid_host_initialize(
      connection_cb,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_MODULE
/// @brief Initializes the Bluetooth API.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
///
/// @remarks This function must be called before Bluetooth API starts. \n
/// You must free all resources of the Bluetooth service by calling bt_deinitialize() if Bluetooth service is no longer needed.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @see  bt_deinitialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_initialize() =>
    tizenCapiNetworkBluetooth.bt_initialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_IPSP_MODULE
/// @brief Connects to a remote device's IPSP service over LE, asynchronously.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address  The remote address
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @post bt_ipsp_set_connection_state_changed_cb() will be invoked.
/// @see bt_ipsp_set_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_ipsp_connect(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_ipsp_connect(
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_IPSP_MODULE
/// @brief Deinitializes the Bluetooth IPSP (Internet Protocol Support Profile) service.
/// @since_tizen 4.0
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_ipsp_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_ipsp_deinitialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_IPSP_MODULE
/// @brief Disconnects from a remote device's IPSP service, asynchronously.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address  The remote address
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_REMOTE_DEVICE_NOT_CONNECTED  Remote device is not connected
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The remote device must be connected by bt_ipsp_connect().
/// @post bt_ipsp_set_connection_state_changed_cb() will be invoked.
/// @see bt_ipsp_connect()
/// @see bt_ipsp_set_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_ipsp_disconnect(
  ffi.Pointer<ffi.Char> remote_address,
) =>
    tizenCapiNetworkBluetooth.bt_ipsp_disconnect(
      remote_address,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_IPSP_MODULE
/// @brief Initializes the Bluetooth IPSP (Internet Protocol Support Profile) service.
/// @since_tizen 4.0
/// Parameter callback The callback called when the initialization is finished
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_ipsp_initialize(
  bt_ipsp_init_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_ipsp_initialize(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_IPSP_MODULE
/// @brief  Registers a callback function that will be invoked when the connection state changes.
/// @since_tizen 4.0
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_ipsp_set_connection_state_changed_cb(
  bt_ipsp_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_ipsp_set_connection_state_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_IPSP_MODULE
/// @brief	Unregisters the callback function called when the connection state changes.
/// @since_tizen 4.0
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_ipsp_unset_connection_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_ipsp_unset_connection_state_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_CLIENT_MODULE
/// @brief Adds file to be pushed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter file  The path of file to be pushed
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
///
/// @see  bt_opp_client_clear_files()
/// @see  bt_opp_client_push_files()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_client_add_file(
  ffi.Pointer<ffi.Char> file,
) =>
    tizenCapiNetworkBluetooth.bt_opp_client_add_file(
      file,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_CLIENT_MODULE
/// @brief Cancels the push request in progress, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre bt_opp_client_push_files() must be called.
/// @post bt_opp_client_push_finished_cb() will be invoked with result #BT_ERROR_CANCELLED,
/// which is a parameter of bt_opp_client_push_files().
/// @see bt_opp_client_initialize()
/// @see bt_opp_client_push_files()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_client_cancel_push() =>
    tizenCapiNetworkBluetooth.bt_opp_client_cancel_push();

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_CLIENT_MODULE
/// @brief Adds file to be pushed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see  bt_opp_client_add_file()
/// @see  bt_opp_client_push_files()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_client_clear_files() =>
    tizenCapiNetworkBluetooth.bt_opp_client_clear_files();

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_CLIENT_MODULE
/// @brief Deinitializes the Bluetooth OPP client.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see  bt_opp_client_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_client_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_opp_client_deinitialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_CLIENT_MODULE
/// @brief Initializes the Bluetooth OPP client.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks This function must be called before Bluetooth OPP client starts. \n
/// You must free all resources of the Bluetooth service by calling bt_opp_client_deinitialize() \n
/// if Bluetooth OPP service is no longer needed.
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_RESOURCE_BUSY  Device or resource busy
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see  bt_opp_client_deinitialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_client_initialize() =>
    tizenCapiNetworkBluetooth.bt_opp_client_initialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_CLIENT_MODULE
/// @brief Pushes the file to the remote device, asynchronously.
///
/// @details At first, bt_opp_client_push_responded_cb() will be called when OPP server responds to the push request. \n
/// After connection is established, bt_opp_client_push_progress_cb() will be called repeatedly until a file is transferred completely. \n
/// If you send several files, then bt_opp_client_push_progress_cb() with another file will be called repeatedly until the file is transferred completely. \n
/// bt_opp_client_push_finished_cb() will be called when the push request is finished.
///
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter remote_address The remote address
/// Parameter responded_cb  The callback called when OPP server responds to the push request
/// Parameter progress_cb  The callback called when each file is being transferred
/// Parameter finished_cb  The callback called when the push request is finished
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation now in progress
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see bt_opp_client_initialize()
/// @see bt_opp_client_cancel_push()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_client_push_files(
  ffi.Pointer<ffi.Char> remote_address,
  bt_opp_client_push_responded_cb responded_cb,
  bt_opp_client_push_progress_cb progress_cb,
  bt_opp_client_push_finished_cb finished_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_opp_client_push_files(
      remote_address,
      responded_cb,
      progress_cb,
      finished_cb,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_SERVER_MODULE
/// @brief Accepts the push request from the remote device.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks If you initialize OPP server by bt_opp_server_initialize_by_connection_request(), then name is ignored.
/// You can cancel the pushes by bt_opp_server_cancel_transfer() with transfer_id.
/// Parameter progress_cb  The callback called when a file is being transferred
/// Parameter finished_cb  The callback called when a transfer is finished
/// Parameter name  The name to store. This can be NULL if you initialize OPP server by bt_opp_server_initialize_by_connection_request().
/// Parameter user_data The user data to be passed to the callback function
/// Output parameter  transfer_id  The ID of transfer
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation now in progress
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see  bt_opp_server_reject()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_server_accept(
  bt_opp_server_transfer_progress_cb progress_cb,
  bt_opp_server_transfer_finished_cb finished_cb,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> transfer_id,
) =>
    tizenCapiNetworkBluetooth.bt_opp_server_accept(
      progress_cb,
      finished_cb,
      name,
      user_data,
      transfer_id,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_SERVER_MODULE
/// @brief Cancels the transfer.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter transfer_id  The ID of transfer
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see  bt_opp_server_accept()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_server_cancel_transfer(
  int transfer_id,
) =>
    tizenCapiNetworkBluetooth.bt_opp_server_cancel_transfer(
      transfer_id,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_SERVER_MODULE
/// @brief Deinitializes the Bluetooth OPP server.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see  bt_opp_server_initialize_by_connection_request()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_server_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_opp_server_deinitialize();

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_SERVER_MODULE
/// @brief Initializes the Bluetooth OPP server requested by bt_opp_server_connection_requested_cb().
/// @details No popup appears when an OPP connection is requested from a remote device. \n
/// Instead, @a connection_requested_cb() will be called. \n
/// At that time, you can call either bt_opp_server_accept() or bt_opp_server_reject().
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @remarks This function must be called to start Bluetooth OPP server. \n
/// You must free all resources of the Bluetooth service by calling bt_opp_server_deinitialize() if Bluetooth OPP service is no longer needed.
/// Parameter destination  The destination path
/// Parameter connection_requested_cb  The callback called when an OPP connection is requested
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_RESOURCE_BUSY  Device or resource busy
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see  bt_opp_server_connection_requested_cb()
/// @see  bt_opp_server_deinitialize()
/// @see  bt_opp_server_accept()
/// @see  bt_opp_server_reject()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_server_initialize_by_connection_request(
  ffi.Pointer<ffi.Char> destination,
  bt_opp_server_connection_requested_cb connection_requested_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_opp_server_initialize_by_connection_request(
      destination,
      connection_requested_cb,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_SERVER_MODULE
/// @brief Rejects the push request from the remote device.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @see  bt_opp_server_accept()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_server_reject() =>
    tizenCapiNetworkBluetooth.bt_opp_server_reject();

/// @ingroup CAPI_NETWORK_BLUETOOTH_OPP_SERVER_MODULE
/// @brief Sets the destination path of file to be pushed.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter destination  The destination path of file to be pushed
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_opp_server_set_destination(
  ffi.Pointer<ffi.Char> destination,
) =>
    tizenCapiNetworkBluetooth.bt_opp_server_set_destination(
      destination,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Connects to PBAP server, asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege http://tizen.org/privilege/bluetooth
///
/// Parameter address The other device's address
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation is in progress
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @pre The local device must be bonded with the remote device by bt_device_create_bond().
/// @post bt_pbap_connection_state_changed_cb() will be invoked.
/// @see bt_pbap_client_disconnect()
/// @see bt_pbap_client_set_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_connect(
  ffi.Pointer<ffi.Char> address,
) =>
    tizenCapiNetworkBluetooth.bt_pbap_client_connect(
      address,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Deinitializes the Bluetooth PBAP Client.
/// @details This deinitialization must be done to free resources when the PBAP client is not longer needed.
/// @since_tizen 3.0
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
/// The PBAP client must be initialized with bt_pbap_client_initialize().
/// @see  bt_pbap_client_initialize()
/// @see  bt_pbap_client_connect()
/// @see  bt_pbap_client_disconnect()
/// @see  bt_pbap_client_get_phone_book_size()
/// @see  bt_pbap_client_get_phone_book()
/// @see  bt_pbap_client_get_list()
/// @see  bt_pbap_client_pull_vcard()
/// @see  bt_pbap_client_search_phone_book()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_deinitialize() =>
    tizenCapiNetworkBluetooth.bt_pbap_client_deinitialize();

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Disconnects from PBAP server, asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege http://tizen.org/privilege/bluetooth
///
/// Parameter address The other device's address
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
/// @retval #BT_ERROR_NOW_IN_PROGRESS  Operation is in progress
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @pre PBAP connection must be created with bt_pbap_client_connect().
/// @post bt_pbap_connection_state_changed_cb() will be invoked.
/// @see bt_pbap_client_connect()
/// @see bt_pbap_client_set_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_disconnect(
  ffi.Pointer<ffi.Char> address,
) =>
    tizenCapiNetworkBluetooth.bt_pbap_client_disconnect(
      address,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Gets contact and call log information from the PBAP server, asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege http://tizen.org/privilege/bluetooth
///
/// Parameter address The other device's address
/// Parameter source Source of phone book (Phone/SIM)
/// Parameter folder_type Type of folder
/// Parameter order Specifies which field shall be used to sort vCards.
/// Parameter offset vCards to be excluded from beginning.
/// Parameter max_list_count Maximum number of vCards to be fetched
/// Parameter callback The callback function called when PBAP List is returned.
/// Parameter user_data Data to be passed to the PBAP phone book pulling callback.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @pre PBAP connection must be created with bt_pbap_client_connect().
///
/// @see bt_pbap_client_connect()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_get_list(
  ffi.Pointer<ffi.Char> address,
  int source,
  int folder_type,
  int order,
  int offset,
  int max_list_count,
  bt_pbap_list_vcards_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_pbap_client_get_list(
      address,
      source,
      folder_type,
      order,
      offset,
      max_list_count,
      callback,
      user_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Gets all contacts and call logs as vCard from PBAP server, asynchronously.
/// @details The received phone book file will be saved in the platform downloads folder.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege http://tizen.org/privilege/bluetooth
/// http://tizen.org/privilege/mediastorage
///
/// Parameter address The other device's address
/// Parameter source Source of phone book (Phone/SIM)
/// Parameter folder_type Type of folder
/// Parameter format The vCard format
/// Parameter order Specifies which field shall be used to sort vCards.
/// Parameter offset The number of vCards to be excluded, counting from the beginning
/// Parameter max_list_count The maximum number of vCards to be fetched
/// Parameter fields vCard fields to be fetched; one or more #bt_pbap_field_e values combined with bitwise 'or'
/// Parameter callback The callback function called when PBAP phone book is Pulled.
/// Parameter user_data Data to be passed to the PBAP phone book pulling callback.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @pre PBAP connection must be created with bt_pbap_client_connect().
///
/// @see bt_pbap_client_connect()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_get_phone_book(
  ffi.Pointer<ffi.Char> address,
  int source,
  int folder_type,
  int format,
  int order,
  int offset,
  int max_list_count,
  int fields,
  bt_pbap_phone_book_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_pbap_client_get_phone_book(
      address,
      source,
      folder_type,
      format,
      order,
      offset,
      max_list_count,
      fields,
      callback,
      user_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Gets size of phone book from PBAP server, asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege http://tizen.org/privilege/bluetooth
///
/// Parameter address The other device's address
/// Parameter source Source of the phone book (Phone/SIM)
/// Parameter folder_type Type of folder
/// Parameter callback The callback function called when PBAP phone book size is returned.
/// Parameter user_data Data to be passed to the PBAP phone book size callback.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @pre PBAP connection must be created with bt_pbap_client_connect().
///
/// @see bt_pbap_client_connect()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_get_phone_book_size(
  ffi.Pointer<ffi.Char> address,
  int source,
  int folder_type,
  bt_pbap_phone_book_size_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_pbap_client_get_phone_book_size(
      address,
      source,
      folder_type,
      callback,
      user_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Initializes the Bluetooth PBAP Client.
/// @details This initialization is necessary to call other PBAP client APIs.
/// @since_tizen 3.0
///
/// @remarks This function must be called to initialize Bluetooth PBAP client. You must free all resources of the Bluetooth service \n
/// by calling bt_pbap_client_deinitialize() if Bluetooth PBAP Client is no longer needed.
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
///
/// @see  bt_pbap_client_deinitialize()
/// @see  bt_pbap_client_connect()
/// @see  bt_pbap_client_disconnect()
/// @see  bt_pbap_client_get_phone_book_size()
/// @see  bt_pbap_client_get_phone_book()
/// @see  bt_pbap_client_get_list()
/// @see  bt_pbap_client_pull_vcard()
/// @see  bt_pbap_client_search_phone_book()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_initialize() =>
    tizenCapiNetworkBluetooth.bt_pbap_client_initialize();

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Gets the selected contact using the index parameter as vCard from PBAP server, asynchronously.
/// @details The received phone book file will be saved in the platform downloads folder.
/// The @a index value should be equal to the value of the @a index field in the #bt_pbap_vcard_info_s structure,
/// which can be obtained with bt_pbap_client_get_list() or bt_pbap_client_search_phone_book().
/// @since_tizen 3.0
/// @privlevel public
/// @privilege http://tizen.org/privilege/bluetooth
/// http://tizen.org/privilege/mediastorage
///
/// Parameter address The other device's address
/// Parameter source Source of phone book (Phone/SIM)
/// Parameter folder_type Type of folder
/// Parameter index The handle index of vCard to be fetched
/// Parameter format Format of vCard
/// Parameter fields vCard fields to be fetched; one or more #bt_pbap_field_e values combined with bitwise 'or'
/// Parameter callback The callback function called when PBAP phone book is Pulled.
/// Parameter user_data Data to be passed to the PBAP phone book Pulling callback.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @pre PBAP connection must be created with bt_pbap_client_connect().
/// @pre The vCard information (#bt_pbap_vcard_info_s) must be obtained with bt_pbap_client_get_list() or bt_pbap_client_search_phone_book().
/// @see bt_pbap_client_connect()
/// @see bt_pbap_client_get_list()
/// @see bt_pbap_client_search_phone_book()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_pull_vcard(
  ffi.Pointer<ffi.Char> address,
  int source,
  int folder_type,
  int index,
  int format,
  int fields,
  bt_pbap_phone_book_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_pbap_client_pull_vcard(
      address,
      source,
      folder_type,
      index,
      format,
      fields,
      callback,
      user_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief Finds and fetches the contact and call log information from the PBAP server, asynchronously.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege http://tizen.org/privilege/bluetooth
///
/// Parameter address The other device's address
/// Parameter source Source of phone book (Phone/SIM)
/// Parameter folder_type Type of folder
/// Parameter search_attribute field to be search
/// Parameter search_value pattern to be searched for
/// Parameter order Specifies which field shall be used to sort vCards.
/// Parameter offset vCards to be excluded from beginning.
/// Parameter max_list_count Maximum number of vCards to be fetched
/// Parameter callback The callback function called when PBAP List is returned.
/// Parameter user_data Data to be passed to the PBAP phone book pulling callback.
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Adapter is not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of the local Bluetooth adapter must be #BT_ADAPTER_ENABLED.
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @pre PBAP connection must be created with bt_pbap_client_connect().
///
/// @see bt_pbap_client_connect()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_search_phone_book(
  ffi.Pointer<ffi.Char> address,
  int source,
  int folder_type,
  int search_attribute,
  ffi.Pointer<ffi.Char> search_value,
  int order,
  int offset,
  int max_list_count,
  bt_pbap_list_vcards_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_pbap_client_search_phone_book(
      address,
      source,
      folder_type,
      search_attribute,
      search_value,
      order,
      offset,
      max_list_count,
      callback,
      user_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief  Registers a callback function that will be invoked when the connection state is changed.
/// @since_tizen 3.0
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @see bt_pbap_client_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_set_connection_state_changed_cb(
  bt_pbap_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_pbap_client_set_connection_state_changed_cb(
      callback,
      user_data,
    );

/// @WEARABLE_ONLY
/// @ingroup CAPI_NETWORK_BLUETOOTH_PBAP_MODULE
/// @brief  Unregisters a callback function that will be invoked when the connection state is changed.
/// @since_tizen 3.0
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The PBAP client must be initialized with bt_pbap_client_initialize().
/// @see bt_pbap_client_initialize()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_pbap_client_unset_connection_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_pbap_client_unset_connection_state_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief Connects to a specific RFCOMM based service on a remote Bluetooth device UUID, asynchronously.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks A connection can be disconnected by bt_socket_disconnect_rfcomm().
///
/// Parameter remote_address The address of the remote Bluetooth device
/// Parameter service_uuid The UUID of service provided by the remote Bluetooth device
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
/// @pre The remote device must be discoverable with bt_adapter_start_device_discovery().
/// @pre The bond with the remote device must be created with bt_device_create_bond().
/// @post This function invokes bt_socket_connection_state_changed_cb().
///
/// @see bt_device_create_bond()
/// @see bt_adapter_start_device_discovery()
/// @see bt_device_start_service_search()
/// @see bt_socket_disconnect_rfcomm()
/// @see bt_socket_connection_state_changed_cb()
/// @see bt_socket_set_connection_state_changed_cb()
/// @see bt_socket_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_connect_rfcomm(
  ffi.Pointer<ffi.Char> remote_address,
  ffi.Pointer<ffi.Char> service_uuid,
) =>
    tizenCapiNetworkBluetooth.bt_socket_connect_rfcomm(
      remote_address,
      service_uuid,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief Registers a RFCOMM server socket with a specific UUID.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
///
/// @remarks A socket can be destroyed by bt_socket_destroy_rfcomm().
///
/// Parameter service_uuid The 128-bit UUID of service to provide
/// Output parameter socket_fd The file descriptor of socket to listen
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The state of local Bluetooth must be #BT_ADAPTER_ENABLED.
///
/// @see bt_socket_listen_and_accept_rfcomm()
/// @see bt_socket_destroy_rfcomm()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_create_rfcomm(
  ffi.Pointer<ffi.Char> service_uuid,
  ffi.Pointer<ffi.Int> socket_fd,
) =>
    tizenCapiNetworkBluetooth.bt_socket_create_rfcomm(
      service_uuid,
      socket_fd,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief Removes the RFCOMM server socket which was created using bt_socket_create_rfcomm().
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks If callback function bt_socket_connection_state_changed_cb() is set and the remote Bluetooth device is connected, \n
/// then bt_socket_connection_state_changed_cb() will be called when this function is finished successfully.
///
/// Parameter socket_fd The file descriptor of socket (which was created using bt_socket_create_rfcomm()) to destroy
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The socket must be created with bt_socket_create_rfcomm().
/// @post If callback function bt_socket_connection_state_changed_cb() is set and the remote Bluetooth device is connected,
/// then bt_socket_connection_state_changed_cb() will be called.
/// @see bt_socket_create_rfcomm()
/// @see bt_socket_connection_state_changed_cb()
/// @see bt_socket_set_connection_state_changed_cb()
/// @see bt_socket_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_destroy_rfcomm(
  int socket_fd,
) =>
    tizenCapiNetworkBluetooth.bt_socket_destroy_rfcomm(
      socket_fd,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief Disconnects the RFCOMM connection with the given file descriptor of connected socket.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter socket_fd  The file descriptor of socket to close which was received using bt_socket_connection_state_changed_cb().
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The connection must be established.
///
/// @see bt_socket_connection_state_changed_cb()
/// @see bt_socket_set_connection_state_changed_cb()
/// @see bt_socket_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_disconnect_rfcomm(
  int socket_fd,
) =>
    tizenCapiNetworkBluetooth.bt_socket_disconnect_rfcomm(
      socket_fd,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief Starts listening on passed RFCOMM socket and accepts connection requests.
/// @details Pop-up is shown automatically when a RFCOMM connection is requested. \n
/// bt_socket_connection_state_changed_cb() will be called with \n
/// #BT_SOCKET_CONNECTED if you click "yes" and connection is finished successfully.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// Parameter socket_fd The file descriptor of socket on which start to listen
/// Parameter max_pending_connections The maximum number of pending connections
/// @return 0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_ENABLED  Not enabled
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_OPERATION_FAILED  Operation failed
/// @retval #BT_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #BT_ERROR_NOT_SUPPORTED  Not supported
///
/// @pre The socket must be created with bt_socket_create_rfcomm().
/// @post If callback function bt_socket_connection_state_changed_cb() is set,
/// then bt_socket_connection_state_changed_cb() will be called when the remote Bluetooth device is connected.
/// @see bt_socket_create_rfcomm()
/// @see bt_socket_connection_state_changed_cb()
/// @see bt_socket_set_connection_state_changed_cb()
/// @see bt_socket_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_listen_and_accept_rfcomm(
  int socket_fd,
  int max_pending_connections,
) =>
    tizenCapiNetworkBluetooth.bt_socket_listen_and_accept_rfcomm(
      socket_fd,
      max_pending_connections,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief Sends data to the connected device.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/bluetooth
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
///
/// Parameter socket_fd The file descriptor of connected socket which was received using bt_socket_connection_state_changed_cb()
/// Parameter data The data to be sent
/// Parameter length The length of data to be sent
///
/// @return the number of bytes written (zero indicates nothing was written).
/// @retval On error, -1 is returned, and errno is set appropriately. See write 2 man page.
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @exception BT_ERROR_PERMISSION_DENIED  Permission denied
/// @exception BT_ERROR_AGAIN  Resource temporarily unavailable
///
/// @pre The connection must be established.
///
/// @see bt_socket_connection_state_changed_cb()
/// @see bt_socket_set_connection_state_changed_cb()
/// @see bt_socket_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_send_data(
  int socket_fd,
  ffi.Pointer<ffi.Char> data,
  int length,
) =>
    tizenCapiNetworkBluetooth.bt_socket_send_data(
      socket_fd,
      data,
      length,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief  Registers a callback function that will be invoked when a RFCOMM connection is requested.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post bt_socket_connection_requested_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_socket_unset_connection_requested_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_set_connection_requested_cb(
  bt_socket_connection_requested_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_socket_set_connection_requested_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief  Registers a callback function that will be invoked when the connection state changes.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post bt_socket_connection_state_changed_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_socket_connection_state_changed_cb()
/// @see bt_socket_unset_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_set_connection_state_changed_cb(
  bt_socket_connection_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_socket_set_connection_state_changed_cb(
      callback,
      user_data,
    );

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief  Registers a callback function that will be invoked when you receive data.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return   0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @post  bt_socket_data_received_cb() will be invoked.
/// @see bt_initialize()
/// @see bt_socket_data_received_cb()
/// @see bt_socket_unset_data_received_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_set_data_received_cb(
  bt_socket_data_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiNetworkBluetooth.bt_socket_set_data_received_cb(
      callback,
      user_data,
    );

/// @ingroup  CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief  Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return  0 on success, otherwise a negative error value.
/// @retval  #BT_ERROR_NONE  Successful
/// @retval  #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval  #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre  The Bluetooth service must be initialized with bt_initialize().
/// @see  bt_initialize()
/// @see  bt_socket_set_connection_requested_cb()
/// @see  bt_socket_connection_requested_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_unset_connection_requested_cb() =>
    tizenCapiNetworkBluetooth.bt_socket_unset_connection_requested_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief	Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_socket_connection_state_changed_cb()
/// @see bt_socket_set_connection_state_changed_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_unset_connection_state_changed_cb() =>
    tizenCapiNetworkBluetooth.bt_socket_unset_connection_state_changed_cb();

/// @ingroup CAPI_NETWORK_BLUETOOTH_SOCKET_MODULE
/// @brief	Unregisters the callback function.
/// @since_tizen @if WEARABLE 2.3.1 @else 2.3 @endif
/// @return	0 on success, otherwise a negative error value.
/// @retval #BT_ERROR_NONE  Successful
/// @retval #BT_ERROR_NOT_INITIALIZED  Not initialized
/// @retval #BT_ERROR_NOT_SUPPORTED   Not supported
///
/// @pre The Bluetooth service must be initialized with bt_initialize().
/// @see bt_initialize()
/// @see bt_socket_data_received_cb()
/// @see bt_socket_set_data_received_cb()
///
/// Module getter: `tizenCapiNetworkBluetooth`.
int bt_socket_unset_data_received_cb() =>
    tizenCapiNetworkBluetooth.bt_socket_unset_data_received_cb();

