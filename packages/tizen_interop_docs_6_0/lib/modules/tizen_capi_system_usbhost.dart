// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiSystemUsbhost`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-system-usbhost.so.0`.
///
/// System / USB Host.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_system_usbhost;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @ingroup CAPI_USB_HOST_INTERFACE_MODULE
/// @brief Claims interface.
/// @details Claims interface on a device.
/// To perform I/O operations on interface user has to claim it.
/// Remember to call usb_host_release_interface() when communication
/// with the device is finished.
/// @since_tizen 3.0
/// Parameter interface The bInterfaceNumber of interface to claim
/// Parameter force Set to true to auto detach kernel driver, set to false to not detach it
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_FOUND Requested interface does not exist
/// @retval #USB_HOST_ERROR_RESOURCE_BUSY Another program or driver has claimed the
/// interface
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE Device has been disconnected
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_DEVICE_NOT_OPENED The device was not opened
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_claim_interface(
  usb_host_interface_h interface1,
  bool force,
) =>
    tizenCapiSystemUsbhost.usb_host_claim_interface(
      interface1,
      force,
    );

/// @ingroup CAPI_USB_HOST_CONFIG_MODULE
/// @brief Frees configuration.
/// @details Frees configuration obtained from usb_host_device_get_config().
/// @since_tizen 3.0
/// Parameter config Configuration to free
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre config must be obtained by usb_host_device_get_config().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_config_destroy(
  usb_host_config_h config,
) =>
    tizenCapiSystemUsbhost.usb_host_config_destroy(
      config,
    );

/// @ingroup CAPI_USB_HOST_CONFIG_MODULE
/// @brief Gets an interface from configuration.
/// @details Gets a USB interface from configuration by its index.
/// @since_tizen 3.0
/// Parameter config Configuration handle
/// Parameter interface_index index of interface to retrieve (counting from 0)
/// Output parameter interface Interface handle
/// @remarks There is no need to destroy the @a interface handle. It is no longer valid
/// when config is destroyed.
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_FOUND Configuration does not exist
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_config_get_interface(
  usb_host_config_h config,
  int interface_index,
  ffi.Pointer<usb_host_interface_h> interface1,
) =>
    tizenCapiSystemUsbhost.usb_host_config_get_interface(
      config,
      interface_index,
      interface1,
    );

/// @ingroup CAPI_USB_HOST_CONFIG_MODULE
/// @brief Gets maximum power in given configuration, in mA.
/// @since_tizen 3.0
/// Parameter config A configuration
/// Output parameter max_power Maximum power, in mA
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_config_get_max_power(
  usb_host_config_h config,
  ffi.Pointer<ffi.Int> max_power,
) =>
    tizenCapiSystemUsbhost.usb_host_config_get_max_power(
      config,
      max_power,
    );

/// @ingroup CAPI_USB_HOST_CONFIG_MODULE
/// @brief Gets number of interfaces for given configuration.
/// @since_tizen 3.0
/// Parameter config A configuration
/// Output parameter num_interfaces Number of interfaces
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_config_get_num_interfaces(
  usb_host_config_h config,
  ffi.Pointer<ffi.Int> num_interfaces,
) =>
    tizenCapiSystemUsbhost.usb_host_config_get_num_interfaces(
      config,
      num_interfaces,
    );

/// @ingroup CAPI_USB_HOST_CONFIG_MODULE
/// @brief Checks if device is self-powered in given configuration.
/// @since_tizen 3.0
/// Parameter config A configuration
/// Output parameter self_powered True if device is self-powered in given configuration,
/// false otherwise
/// @return 0 on success, negative error code otherwise
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_config_is_self_powered(
  usb_host_config_h config,
  ffi.Pointer<ffi.Bool> self_powered,
) =>
    tizenCapiSystemUsbhost.usb_host_config_is_self_powered(
      config,
      self_powered,
    );

/// @ingroup CAPI_USB_HOST_CONFIG_MODULE
/// @brief Checks if device in given configuration supports remote wakeup.
/// @since_tizen 3.0
/// Parameter config A configuration
/// Output parameter remote_wakeup True if device supports remote wakeup in given configuration,
/// false otherwise
/// @return 0 on success, negative error code otherwise
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval @USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_config_support_remote_wakeup(
  usb_host_config_h config,
  ffi.Pointer<ffi.Bool> remote_wakeup,
) =>
    tizenCapiSystemUsbhost.usb_host_config_support_remote_wakeup(
      config,
      remote_wakeup,
    );

/// @ingroup CAPI_USB_HOST_SYNCIO_MODULE
/// @brief Performs USB control transfer.
/// @details For more explanation about the values please refer to USB protocol specification
/// @since_tizen 3.0
/// @remarks The wValue, wIndex and wLength fields values should be given in host-endian
/// byte order.
/// Parameter dev Device handle
/// Parameter bm_request_type bmRequestType type field for the setup packet
/// Parameter b_request bRequest field for the setup packet
/// Parameter w_value wValue field for the setup packet
/// Parameter w_index wIndex field for the setup packet
/// Parameter data Suitably-sized data buffer for either input or output
/// (depending on direction bits within bmRequestType)
/// Parameter w_length wLength field for the setup packet. The data buffer should
/// be at least this size
/// Parameter timeout Timeout (in milliseconds) that this function should wait
/// before giving up due to no response being received. For an unlimited
/// Output parameter transferred Number of transferred bytes
/// timeout, 0 value should be used.
/// @return  0 on success, negative error code otherwise
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_TIMED_OUT Transfer timed out
/// @retval #USB_HOST_ERROR_BROKEN_PIPE Control request was not supported by the device
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE The device has been disconnected
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_DEVICE_NOT_OPENED The device was not opened
/// @retval #USB_HOST_ERROR_OVERFLOW Device offered more data
/// @pre dev must point to device opened by usb_host_device_open() or usb_host_device_open_with_vid_pid()
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_control_transfer(
  usb_host_device_h dev,
  int bm_request_type,
  int b_request,
  int w_value,
  int w_index,
  ffi.Pointer<ffi.UnsignedChar> data,
  int w_length,
  int timeout,
  ffi.Pointer<ffi.Int> transferred,
) =>
    tizenCapiSystemUsbhost.usb_host_control_transfer(
      dev,
      bm_request_type,
      b_request,
      w_value,
      w_index,
      data,
      w_length,
      timeout,
      transferred,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Gets the *control* transfer data.
/// @since_tizen 5.0
/// @remarks @a data is part of the transfer object and should not be released
/// separately. It should not be accessed after @a transfer is destroyed.
/// Parameter transfer Control transfer handle
/// Output parameter data Data buffer of this transfer
/// Output parameter actual_length Actual length of transferred data
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_control_transfer_get_data(
  usb_host_transfer_h transfer,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> data,
  ffi.Pointer<ffi.UnsignedInt> actual_length,
) =>
    tizenCapiSystemUsbhost.usb_host_control_transfer_get_data(
      transfer,
      data,
      actual_length,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets w_index field for control transfer setup packet.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter w_index wIndex field for the setup packet
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be created by usb_host_create_control_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_control_transfer_set_index(
  usb_host_transfer_h transfer,
  int w_index,
) =>
    tizenCapiSystemUsbhost.usb_host_control_transfer_set_index(
      transfer,
      w_index,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets request field for control transfer setup packet.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter b_request bRequest field for the setup packet
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be created by usb_host_create_control_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_control_transfer_set_request(
  usb_host_transfer_h transfer,
  int b_request,
) =>
    tizenCapiSystemUsbhost.usb_host_control_transfer_set_request(
      transfer,
      b_request,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets request type for control transfer setup packet.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter bm_request_type bmRequestType type field for the setup packet
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be created by usb_host_create_control_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_control_transfer_set_request_type(
  usb_host_transfer_h transfer,
  int bm_request_type,
) =>
    tizenCapiSystemUsbhost.usb_host_control_transfer_set_request_type(
      transfer,
      bm_request_type,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets w_value field for control transfer setup packet.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter w_value wValue field for the setup packet
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be created by usb_host_create_control_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_control_transfer_set_value(
  usb_host_transfer_h transfer,
  int w_value,
) =>
    tizenCapiSystemUsbhost.usb_host_control_transfer_set_value(
      transfer,
      w_value,
    );

/// @ingroup CAPI_USB_HOST_MODULE
/// @brief Initializes usb_host context.
/// @details This function must be called before any other function from this module.
/// @since_tizen 3.0
/// @remarks @a ctx should be destroyed by calling usb_host_destroy() when no longer needed.
/// Output parameter ctx Context pointer
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NONE Successful
/// @post usb_host_destroy() should be called to free resources allocated for ctx by this function.
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_create(
  ffi.Pointer<usb_host_context_h> ctx,
) =>
    tizenCapiSystemUsbhost.usb_host_create(
      ctx,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Prepares an asynchronous USB control transfer.
/// @details This function prepares control transfer handle. Transfer handle can
/// be used for multiple transfers after this initialization. Note, that first
/// 8 bytes of data buffer are interpreted as control setup packet. You may use
/// usb_host_control_transfer_set_* functions to set the setup packet fields.
/// @since_tizen 5.0
/// Parameter dev Device handle
/// Parameter callback Callback to be called when transfer is finished
/// Parameter data Suitably-sized data buffer
/// Parameter length For writes, the number of bytes from data to be sent, for
/// reads, the maximum number of bytes to receive into the data buffer
/// Parameter user_data Pointer to data which will be passed to callback function later on
/// Parameter timeout Timeout (in milliseconds) that transfer should wait before giving up
/// due to no response being received (for an unlimited timeout use value of 0)
/// Output parameter transfer Transfer handle
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Out of memory
/// @pre @a dev must be an opened device handle
/// @post @a transfer should be destroyed by calling usb_host_transfer_destroy() when it's no longer needed.
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_create_control_transfer(
  usb_host_device_h dev,
  usb_host_transferred_cb callback,
  ffi.Pointer<ffi.UnsignedChar> data,
  int length,
  ffi.Pointer<ffi.Void> user_data,
  int timeout,
  ffi.Pointer<usb_host_transfer_h> transfer,
) =>
    tizenCapiSystemUsbhost.usb_host_create_control_transfer(
      dev,
      callback,
      data,
      length,
      user_data,
      timeout,
      transfer,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Prepares an asynchronous USB isochronous transfer.
/// @details This function prepares transfer handle for asynchronous communication.
/// Usage is similar to usb_host_create_transfer(), except this function is intended for
/// isochronous endpoints. Transfer handle can be used for multiple transfers after this initialization.
/// Note however, that this function needs to allocate memory for @a num_iso_packets isochronous packets and
/// it will be the limit for number of them in this transfer.
/// @since_tizen 5.0
/// Parameter ep Endpoint handle
/// Parameter callback Callback to be called when transfer is finished
/// Parameter data Suitably-sized data buffer, similar to synchronized transfer
/// Parameter length For writes, the number of bytes from data to be sent; for
/// reads, the maximum number of bytes to receive into the data buffer
/// Parameter num_iso_packets Number of isochronous packets
/// Parameter user_data Pointer to data which will be passed to callback function later on
/// Parameter timeout Timeout (in milliseconds) that transfer should wait before giving up
/// due to no response being received (for an unlimited timeout use value of 0)
/// Output parameter transfer Transfer handle
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Out of memory
/// @pre @a ep must be a valid endpoint received from usb_host_interface_get_endpoint().
/// @post @a transfer should be destroyed by calling usb_host_transfer_destroy() when it's no longer needed.
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_create_isochronous_transfer(
  usb_host_endpoint_h ep,
  usb_host_transferred_cb callback,
  ffi.Pointer<ffi.UnsignedChar> data,
  int length,
  int num_iso_packets,
  ffi.Pointer<ffi.Void> user_data,
  int timeout,
  ffi.Pointer<usb_host_transfer_h> transfer,
) =>
    tizenCapiSystemUsbhost.usb_host_create_isochronous_transfer(
      ep,
      callback,
      data,
      length,
      num_iso_packets,
      user_data,
      timeout,
      transfer,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Prepares an asynchronous USB transfer.
/// @details This function prepares transfer handle for asynchronous communication.
/// Transfer handle can be used for multiple transfers after this initialization.
/// @since_tizen 5.0
/// Parameter ep Endpoint handle
/// Parameter callback Callback to be called when transfer is finished
/// Parameter data Suitably-sized data buffer, similar to synchronized transfer
/// Parameter length For writes, the number of bytes from data to be sent; for
/// reads, the maximum number of bytes to receive into the data buffer
/// Parameter user_data Pointer to data which will be passed to callback function later on
/// Parameter timeout Timeout (in milliseconds) that transfer should wait before giving up
/// due to no response being received (for an unlimited timeout use value of 0)
/// Output parameter transfer Transfer handle
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Out of memory
/// @pre @a ep must be a valid endpoint received from usb_host_interface_get_endpoint().
/// @post @a transfer should be destroyed by calling usb_host_transfer_destroy() when it's no longer needed.
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_create_transfer(
  usb_host_endpoint_h ep,
  usb_host_transferred_cb callback,
  ffi.Pointer<ffi.UnsignedChar> data,
  int length,
  ffi.Pointer<ffi.Void> user_data,
  int timeout,
  ffi.Pointer<usb_host_transfer_h> transfer,
) =>
    tizenCapiSystemUsbhost.usb_host_create_transfer(
      ep,
      callback,
      data,
      length,
      user_data,
      timeout,
      transfer,
    );

/// @ingroup CAPI_USB_HOST_MODULE
/// @brief Deinitializes usb_host context.
/// @details This function must be called after closing all devices
/// and before application close. It has to be called to clean
/// the memory used by library.
/// @since_tizen 3.0
/// Parameter ctx Context to deinitialize
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Success
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre Context must be initialized by usb_host_create().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_destroy(
  usb_host_context_h ctx,
) =>
    tizenCapiSystemUsbhost.usb_host_destroy(
      ctx,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Closes device.
/// @details Function should be called before usb_host_destroy().
/// It destroys reference that was added by usb_host_device_open().
/// @since_tizen 3.0
/// Parameter dev Device that should be closed
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_DEVICE_NOT_OPENED If device is not opened
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_close(
  usb_host_device_h dev,
) =>
    tizenCapiSystemUsbhost.usb_host_device_close(
      dev,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets address.
/// @details Gets device address. This is address of device on the bus
/// that device is connected to.
/// @since_tizen 3.0
/// Parameter dev Device
/// Output parameter device_address Device address
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_address(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> device_address,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_address(
      dev,
      device_address,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets device release number in binary-coded decimal.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter device_bcd Device release number
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_bcd_device(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> device_bcd,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_bcd_device(
      dev,
      device_bcd,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets USB specification release number.
/// @details Gets binary-coded decimal USB specification release number.
/// This value is equal to bcdUSB field of device descriptor. See USB specification
/// for more info.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter bcd_usb Bcd release number of USB
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_bcd_usb(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> bcd_usb,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_bcd_usb(
      dev,
      bcd_usb,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets bus number.
/// @details Gets device bus number. This is number of the bus
/// that device is connected to.
/// @since_tizen 3.0
/// Parameter dev Device handle
/// Output parameter bus_number Device bus number
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_bus_number(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> bus_number,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_bus_number(
      dev,
      bus_number,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets device class.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter device_class Device class
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_class(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> device_class,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_class(
      dev,
      device_class,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets a configuration.
/// @details Gets a USB configuration from a device.
/// @since_tizen 3.0
/// @remarks @a config must be freed with usb_host_config_destroy().
/// Parameter dev Device
/// Parameter config_index index of configuration to retrieve (counting from 0)
/// Output parameter config Output location for USB configuration
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_FOUND The configuration does not exist
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @post Returned configuration should be destroyed by usb_host_config_destroy()
/// when no longer needed.
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_config(
  usb_host_device_h dev,
  int config_index,
  ffi.Pointer<usb_host_config_h> config,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_config(
      dev,
      config_index,
      config,
    );

/// @ingroup CAPI_USB_HOST_CONFIG_MODULE
/// @brief Gets string describing a configuration.
/// @since_tizen 3.0
/// Parameter config A configuration
/// @param[in, out] length Data buffer size/how much was actually used
/// Output parameter data Buffer to store string
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_OVERFLOW There was no space in buffer
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre config must be configuration of device opened by usb_host_device_open() or
/// usb_host_device_open_with_vid_pid()
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_config_str(
  usb_host_config_h config,
  ffi.Pointer<ffi.Int> length,
  ffi.Pointer<ffi.UnsignedChar> data,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_config_str(
      config,
      length,
      data,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets product id.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter product_id Product id of @a dev
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_id_product(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> product_id,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_id_product(
      dev,
      product_id,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets vendor id.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter vendor_id Vendor id of @a dev
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_id_vendor(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> vendor_id,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_id_vendor(
      dev,
      vendor_id,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets string describing device manufacturer, in ASCII.
/// @since_tizen 3.0
/// Parameter dev A handle to opened device
/// @param[in, out] length Data buffer size/how much was actually used
/// Output parameter data Buffer to store string
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_OVERFLOW There was no space in buffer
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre dev must point to device opened by usb_host_device_open() or usb_host_device_open_with_vid_pid().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_manufacturer_str(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> length,
  ffi.Pointer<ffi.UnsignedChar> data,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_manufacturer_str(
      dev,
      length,
      data,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets maximum packet size for endpoint 0.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter max_packet_size Maximum size of single packet, in bytes
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_max_packet_size_0(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> max_packet_size,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_max_packet_size_0(
      dev,
      max_packet_size,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets number of configurations for given device.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter num_configurations Number of configurations for given device
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_num_configurations(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> num_configurations,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_num_configurations(
      dev,
      num_configurations,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets list of port numbers.
/// @details Gets list of all port numbers from a device.
/// @since_tizen 3.0
/// Parameter dev Device
/// Output parameter port_numbers Array to be filled with port numbers
/// Parameter port_numbers_len Max length of array
/// Output parameter ports_count Number of all ports obtained from device
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Insufficient memory
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_port_numbers(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> port_numbers,
  int port_numbers_len,
  ffi.Pointer<ffi.Int> ports_count,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_port_numbers(
      dev,
      port_numbers,
      port_numbers_len,
      ports_count,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets product string of device, in ASCII.
/// @since_tizen 3.0
/// Parameter dev A handle to opened device
/// @param[in, out] length Data buffer size/how much was actually used
/// Output parameter data Buffer to store string
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_OVERFLOW There was no space in buffer
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre dev must point to device opened by usb_host_device_open() or usb_host_device_open_with_vid_pid().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_product_str(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> length,
  ffi.Pointer<ffi.UnsignedChar> data,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_product_str(
      dev,
      length,
      data,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets device protocol.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter protocol Device protocol
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_protocol(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> protocol,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_protocol(
      dev,
      protocol,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets serial number of a device, in ASCII.
/// @since_tizen 3.0
/// Parameter dev A handle to opened device
/// @param[in, out] length Data buffer size/how much was actually used
/// Output parameter data Buffer to store string
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_OVERFLOW There was no space in buffer
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre dev must point to device opened by usb_host_device_open() or usb_host_device_open_with_vid_pid().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_serial_number_str(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> length,
  ffi.Pointer<ffi.UnsignedChar> data,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_serial_number_str(
      dev,
      length,
      data,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets device sub class.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter subclass Device subclass
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_get_sub_class(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Int> subclass,
) =>
    tizenCapiSystemUsbhost.usb_host_device_get_sub_class(
      dev,
      subclass,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Opens a device.
/// @details This function opens a device, which allows performing operations on it
/// (including transfer operations and strings introspection).
/// @since_tizen 3.0
/// Parameter dev Device to open
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Memory allocation failure
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE There is no device connected
/// @retval #USB_HOST_ERROR_PERMISSION_DENIED No proper permission to access device
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Operation not supported
/// @see usb_host_is_device_opened()
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_open(
  usb_host_device_h dev,
) =>
    tizenCapiSystemUsbhost.usb_host_device_open(
      dev,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Opens device with valid idVendor and idProduct.
/// @details This function can be used to open device with known idVendor and
/// idProduct. If two or more devices have same vendor and product id only
/// first will be opened.
/// @since_tizen 3.0
/// Parameter ctx Context
/// Parameter vendor_id idVendor of connected device
/// Parameter product_id idProduct of connected device
/// Output parameter device_handle Opened device handle
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Insufficient memory
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE No device
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_open_with_vid_pid(
  usb_host_context_h ctx,
  int vendor_id,
  int product_id,
  ffi.Pointer<usb_host_device_h> device_handle,
) =>
    tizenCapiSystemUsbhost.usb_host_device_open_with_vid_pid(
      ctx,
      vendor_id,
      product_id,
      device_handle,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Puts a device in unconfigured state.
/// @since_tizen 4.0
/// Parameter dev Device to be unconfigured
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_RESOURCE_BUSY Interfaces are currently claimed
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE Device has been disconnected
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_device_unconfigure(
  usb_host_device_h dev,
) =>
    tizenCapiSystemUsbhost.usb_host_device_unconfigure(
      dev,
    );

/// @ingroup CAPI_USB_HOST_ENDPOINT_MODULE
/// @brief Gets direction of an endpoint.
/// @since_tizen 3.0
/// Parameter ep An endpoint
/// Output parameter direction Direction of endpoint (a value from enum #usb_host_endpoint_direction_e)
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_endpoint_get_direction(
  usb_host_endpoint_h ep,
  ffi.Pointer<ffi.Int32> direction,
) =>
    tizenCapiSystemUsbhost.usb_host_endpoint_get_direction(
      ep,
      direction,
    );

/// @ingroup CAPI_USB_HOST_ENDPOINT_MODULE
/// @brief Gets interval for polling endpoint for data transfers.
/// @since_tizen 3.0
/// Parameter ep An endpoint
/// Output parameter interval Interval for polling, in frame counts (refer to USB protocol specification)
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_endpoint_get_interval(
  usb_host_endpoint_h ep,
  ffi.Pointer<ffi.Int> interval,
) =>
    tizenCapiSystemUsbhost.usb_host_endpoint_get_interval(
      ep,
      interval,
    );

/// @ingroup CAPI_USB_HOST_ENDPOINT_MODULE
/// @brief Gets max packet size of given endpoint.
/// @since_tizen 3.0
/// Parameter ep An endpoint
/// Output parameter max_packet_size Max packet size, in bytes
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_endpoint_get_max_packet_size(
  usb_host_endpoint_h ep,
  ffi.Pointer<ffi.Int> max_packet_size,
) =>
    tizenCapiSystemUsbhost.usb_host_endpoint_get_max_packet_size(
      ep,
      max_packet_size,
    );

/// @ingroup CAPI_USB_HOST_ENDPOINT_MODULE
/// @brief Gets number of given endpoint.
/// @since_tizen 3.0
/// Parameter ep An endpoint
/// Output parameter number Number of given endpoint
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_endpoint_get_number(
  usb_host_endpoint_h ep,
  ffi.Pointer<ffi.Int> number,
) =>
    tizenCapiSystemUsbhost.usb_host_endpoint_get_number(
      ep,
      number,
    );

/// @ingroup CAPI_USB_HOST_ENDPOINT_MODULE
/// @brief Gets synchronization type of given endpoint.
/// @since_tizen 3.0
/// Parameter ep An endpoint
/// Output parameter synch_type Synch type (a value from enum #usb_host_iso_sync_type_e)
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_endpoint_get_synch_type(
  usb_host_endpoint_h ep,
  ffi.Pointer<ffi.Int32> synch_type,
) =>
    tizenCapiSystemUsbhost.usb_host_endpoint_get_synch_type(
      ep,
      synch_type,
    );

/// @ingroup CAPI_USB_HOST_ENDPOINT_MODULE
/// @brief Gets transfer type of given endpoint.
/// @since_tizen 3.0
/// Parameter ep An endpoint
/// Output parameter transfer_type Transfer type (a value from enum #usb_host_transfer_type_e)
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_endpoint_get_transfer_type(
  usb_host_endpoint_h ep,
  ffi.Pointer<ffi.Int32> transfer_type,
) =>
    tizenCapiSystemUsbhost.usb_host_endpoint_get_transfer_type(
      ep,
      transfer_type,
    );

/// @ingroup CAPI_USB_HOST_ENDPOINT_MODULE
/// @brief Gets usage type of given endpoint.
/// @since_tizen 3.0
/// Parameter ep An endpoint
/// Output parameter usage_type Usage type (a value from enum #usb_host_usage_type_e)
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_endpoint_get_usage_type(
  usb_host_endpoint_h ep,
  ffi.Pointer<ffi.Int32> usage_type,
) =>
    tizenCapiSystemUsbhost.usb_host_endpoint_get_usage_type(
      ep,
      usage_type,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Frees devices list.
/// @details This function needs to be called to free device list. This
/// function can also unref devices if unref_devices is set to non-zero value.
/// Do not unref device and then open it.
/// @since_tizen 3.0
/// Parameter devs List of devices
/// Parameter unref_devices Set to true to unreference devices, set to false to not unref
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre usb_host_get_device_list() must be called before using this function.
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_free_device_list(
  ffi.Pointer<usb_host_device_h> devs,
  bool unref_devices,
) =>
    tizenCapiSystemUsbhost.usb_host_free_device_list(
      devs,
      unref_devices,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets an active config.
/// @details Gets handle to active configuration.
/// This function will return 0 value in config parameter :if device is unconfigured.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter config Handle to active configuration
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE the dev has been disconnected
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_DEVICE_NOT_OPENED The device was not opened
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @post Obtained configuration should be destroyed by usb_host_config_destroy()
/// when no longer needed.
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_get_active_config(
  usb_host_device_h dev,
  ffi.Pointer<usb_host_config_h> config,
) =>
    tizenCapiSystemUsbhost.usb_host_get_active_config(
      dev,
      config,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Gets USB device list.
/// @details This function returns list of USB devices attached to system.
/// To free obtained device list usb_host_free_device_list() should be used, this
/// function can also unref devices. Do not unref device and then open it.
///
/// All devices have reference counter. Functions usb_host_ref_device() and
/// usb_host_unref_device() are used to ref or unref device. When ref counter
/// reaches 0 device will be freed.
/// Devices reached by calling usb_host_get_device_list() have a reference count of
/// 1, and usb_host_free_device_list() can optionally decrease the reference count
/// on all devices in the list. usb_host_device_open() adds another reference which is
/// later destroyed by usb_host_device_close().
///
/// @since_tizen 3.0
/// Parameter ctx Context handle
/// Output parameter devs An array of devices
/// Output parameter length Number of devices
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Operation not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @post @a devs must be freed with usb_host_free_device_list() when no longer needed.
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_get_device_list(
  usb_host_context_h ctx,
  ffi.Pointer<ffi.Pointer<usb_host_device_h>> devs,
  ffi.Pointer<ffi.Int> length,
) =>
    tizenCapiSystemUsbhost.usb_host_get_device_list(
      ctx,
      devs,
      length,
    );

/// @ingroup CAPI_USB_HOST_INTERFACE_MODULE
/// @brief Gets current alternative setting from an interface.
/// @since_tizen 4.0
/// Parameter interface Interface handle
/// Output parameter altsetting Index of alternative setting set for the given interface
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_interface_get_altsetting(
  usb_host_interface_h interface1,
  ffi.Pointer<ffi.Int> altsetting,
) =>
    tizenCapiSystemUsbhost.usb_host_interface_get_altsetting(
      interface1,
      altsetting,
    );

/// @ingroup CAPI_USB_HOST_INTERFACE_MODULE
/// @brief Gets an endpoint from interface.
/// @details Get a USB endpoint from interface by its index.
/// @since_tizen 3.0
/// Parameter interface Interface handle
/// Parameter ep_index index of endpoint to retrieve (counting from 0)
/// Output parameter ep Endpoint handle
/// @remarks @a ep handle is no longer valid when config will be destroyed. There is no need to destroy it,
/// it is done automatically when the configuration is destroyed.
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_interface_get_endpoint(
  usb_host_interface_h interface1,
  int ep_index,
  ffi.Pointer<usb_host_endpoint_h> ep,
) =>
    tizenCapiSystemUsbhost.usb_host_interface_get_endpoint(
      interface1,
      ep_index,
      ep,
    );

/// @ingroup CAPI_USB_HOST_INTERFACE_MODULE
/// @brief Gets number of given interface.
/// @since_tizen 3.0
/// Parameter interface An interface
/// Output parameter number Number of given interface
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_interface_get_number(
  usb_host_interface_h interface1,
  ffi.Pointer<ffi.Int> number,
) =>
    tizenCapiSystemUsbhost.usb_host_interface_get_number(
      interface1,
      number,
    );

/// @ingroup CAPI_USB_HOST_INTERFACE_MODULE
/// @brief Gets number of endpoints in given interface.
/// @since_tizen 3.0
/// Parameter interface An interface
/// Output parameter num_endpoints Number of endpoints in @a interface
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_interface_get_num_endpoints(
  usb_host_interface_h interface1,
  ffi.Pointer<ffi.Int> num_endpoints,
) =>
    tizenCapiSystemUsbhost.usb_host_interface_get_num_endpoints(
      interface1,
      num_endpoints,
    );

/// @ingroup CAPI_USB_HOST_INTERFACE_MODULE
/// @brief Gets string describing an interface.
/// @since_tizen 3.0
/// Parameter interface An interface
/// @param[in, out] length Data buffer size/how much was actually used
/// Output parameter data Buffer to store string
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_OVERFLOW There was no space in buffer
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre device which interface is part of must be opened by usb_host_device_open() or
/// usb_host_device_open_with_vid_pid()
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_interface_get_str(
  usb_host_interface_h interface1,
  ffi.Pointer<ffi.Int> length,
  ffi.Pointer<ffi.UnsignedChar> data,
) =>
    tizenCapiSystemUsbhost.usb_host_interface_get_str(
      interface1,
      length,
      data,
    );

/// @ingroup CAPI_USB_HOST_INTERFACE_MODULE
/// @brief Sets alternative setting for interface.
/// @since_tizen 3.0
/// Parameter interface Interface handle
/// Parameter altsetting Index of new alternative setting for given interface
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_interface_set_altsetting(
  usb_host_interface_h interface1,
  int altsetting,
) =>
    tizenCapiSystemUsbhost.usb_host_interface_set_altsetting(
      interface1,
      altsetting,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Checks if device is opened.
/// @since_tizen 3.0
/// Parameter dev A device
/// Output parameter is_opened True if device is opened, false otherwise
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_is_device_opened(
  usb_host_device_h dev,
  ffi.Pointer<ffi.Bool> is_opened,
) =>
    tizenCapiSystemUsbhost.usb_host_is_device_opened(
      dev,
      is_opened,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Refs a device.
/// @details Increment ref count of device.
/// @since_tizen 3.0
/// Parameter dev Device to reference
/// @return 0 on success, error code otherwise
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_ref_device(
  usb_host_device_h dev,
) =>
    tizenCapiSystemUsbhost.usb_host_ref_device(
      dev,
    );

/// @ingroup CAPI_USB_HOST_INTERFACE_MODULE
/// @brief Releases interface.
/// @details Releases interface previously claimed by usb_host_claim_interface().
/// This is a blocking function.
/// @since_tizen 3.0
/// Parameter interface The bInterfaceNumber of interface to release
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_FOUND Interface was not claimed
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE Device has been disconnected
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_DEVICE_NOT_OPENED The device was not opened
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_release_interface(
  usb_host_interface_h interface1,
) =>
    tizenCapiSystemUsbhost.usb_host_release_interface(
      interface1,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Sets a configuration.
/// @details Set active configuration for a device.
/// @since_tizen 3.0
/// Parameter configuration Handle to configuration to be activated
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_FOUND Requested configuration does not exist
/// @retval #USB_HOST_ERROR_RESOURCE_BUSY Interfaces are currently claimed
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE The device has been disconnected
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_DEVICE_NOT_OPENED The device was not opened
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_set_config(
  usb_host_config_h configuration,
) =>
    tizenCapiSystemUsbhost.usb_host_set_config(
      configuration,
    );

/// @ingroup CAPI_USB_HOST_HOTPLUG_MODULE
/// @brief Sets a callback function to be invoked when a device is connected or disconnected.
/// @since_tizen 4.0
/// Parameter ctx Context handle
/// Parameter cb The callback function to be registered
/// Parameter event Event that will trigger registered callback
/// Parameter user_data The user data to be passed to the callback function
/// Output parameter handle Handle of the registered callback
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_set_hotplug_cb(
  usb_host_context_h ctx,
  usb_host_hotplug_cb cb,
  int event,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<usb_host_hotplug_h> handle,
) =>
    tizenCapiSystemUsbhost.usb_host_set_hotplug_cb(
      ctx,
      cb,
      event,
      user_data,
      handle,
    );

/// @ingroup CAPI_USB_HOST_SYNCIO_MODULE
/// @brief Performs transfer on given endpoint.
/// @details Performs a USB transfer on given endpoint. Direction of transfer is
/// determined by the endpoint.
/// @since_tizen 3.0
/// Parameter ep Endpoint handle
/// Parameter data Suitably-sized data buffer for either input or output
/// (depending on endpoint)
/// Parameter length For writes, the number of bytes from data to be sent, for
/// reads the maximum number of bytes to receive into the data buffer
/// Output parameter transferred number of bytes actually transferred
/// Parameter timeout Timeout (in milliseconds) that this function should wait
/// before giving up due to no response being received (for an unlimited
/// timeout 0 value should be used)
/// @return 0 on success (and populates @a transferred), negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_TIMED_OUT Transfer timed out
/// @retval #USB_HOST_ERROR_BROKEN_PIPE Endpoint halted
/// @retval #USB_HOST_ERROR_OVERFLOW Device offered more data
/// @retval #USB_HOST_ERROR_NO_SUCH_DEVICE Device has been disconnected
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_DEVICE_NOT_OPENED The device was not opened
/// @pre ep must be a valid endpoint received from usb_host_interface_get_endpoint().
/// @pre ep must be an endpoint of device opened by usb_host_device_open() or
/// usb_host_device_open_with_vid_pid().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer(
  usb_host_endpoint_h ep,
  ffi.Pointer<ffi.UnsignedChar> data,
  int length,
  ffi.Pointer<ffi.Int> transferred,
  int timeout,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer(
      ep,
      data,
      length,
      transferred,
      timeout,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Cancels an asynchronous USB transfer.
/// @details After calling this function the transfer will be cancelled, if only
/// it was not finished already. The transfer callback will be called with #USB_HOST_TRANSFER_CANCELLED status.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle to be cancelled
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_cancel(
  usb_host_transfer_h transfer,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_cancel(
      transfer,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Destroys an asynchronous transfer structure.
/// @details When no longer needed, transfer should be destroyed by this function.
/// It frees memory allocated for the transfer. You cannot destroy unfinished transfer,
/// wait for its completion or cancel it.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle to be destroyed
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_destroy(
  usb_host_transfer_h transfer,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_destroy(
      transfer,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Gets the transfer data.
/// @since_tizen 5.0
/// @remarks @a data is part of the transfer object and should not be released
/// separately. It should not be accessed after @a transfer is destroyed.
/// Parameter transfer Transfer handle
/// Output parameter data Data buffer of this transfer
/// Output parameter actual_length Actual length of transferred data
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_get_data(
  usb_host_transfer_h transfer,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> data,
  ffi.Pointer<ffi.UnsignedInt> actual_length,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_get_data(
      transfer,
      data,
      actual_length,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Gets data buffer of isochronous packet.
/// @since_tizen 5.0
/// @remarks @a data is part of the transfer object and should not be released
/// separately. It should not be accessed after @a transfer is destroyed.
/// Parameter transfer Transfer handle
/// Parameter packet_number Number of isochronous packet
/// Output parameter data Data buffer for this packet
/// Output parameter actual_length Length of transferred data
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_FOUND Packet of given number not found
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_get_iso_packet_data(
  usb_host_transfer_h transfer,
  int packet_number,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> data,
  ffi.Pointer<ffi.Int> actual_length,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_get_iso_packet_data(
      transfer,
      packet_number,
      data,
      actual_length,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Gets isochronous packet data buffer length.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle
/// Parameter packet_number Number of isochronous packet
/// Output parameter length Length of data buffer
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_FOUND Packet of given number not found
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_get_iso_packet_length(
  usb_host_transfer_h transfer,
  int packet_number,
  ffi.Pointer<ffi.Int> length,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_get_iso_packet_length(
      transfer,
      packet_number,
      length,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Gets an isochronous packet status.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle
/// Parameter packet_number Number of isochronous packet
/// Output parameter status Status of selected packet
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_FOUND Packet of given number not found
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_get_iso_packet_status(
  usb_host_transfer_h transfer,
  int packet_number,
  ffi.Pointer<ffi.Int> status,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_get_iso_packet_status(
      transfer,
      packet_number,
      status,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Gets length of data buffer.
/// @details This functions gets length that was set for data buffer, not the actual transferred data length.
/// For length of transferred data see usb_host_transfer_get_data().
/// @since_tizen 5.0
/// Parameter transfer Transfer handle
/// Output parameter length Length of data buffer for this transfer
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_get_length(
  usb_host_transfer_h transfer,
  ffi.Pointer<ffi.UnsignedInt> length,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_get_length(
      transfer,
      length,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Gets number of isochronous packets for this transfer.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle
/// Output parameter num_iso_packets Number of isochronous packets
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_get_num_iso_packets(
  usb_host_transfer_h transfer,
  ffi.Pointer<ffi.UnsignedInt> num_iso_packets,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_get_num_iso_packets(
      transfer,
      num_iso_packets,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Gets the transfer status.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle
/// Output parameter status Status of this transfer
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_get_status(
  usb_host_transfer_h transfer,
  ffi.Pointer<ffi.Int> status,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_get_status(
      transfer,
      status,
    );

/// @ingroup CAPI_USB_HOST_ENDPOINT_MODULE
/// @brief Gets type of a transfer.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle
/// Output parameter transfer_type Transfer type (a value from enum #usb_host_transfer_type_e)
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_get_type(
  usb_host_transfer_h transfer,
  ffi.Pointer<ffi.Int32> transfer_type,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_get_type(
      transfer,
      transfer_type,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets a callback for asynchronous transfer.
/// @details This function changes the callback to be called on transfer completion.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter callback A callback function
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be created by usb_host_create_transfer() or usb_host_create_isochronous_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_set_callback(
  usb_host_transfer_h transfer,
  usb_host_transferred_cb callback,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_set_callback(
      transfer,
      callback,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets data buffer for asynchronous transfer.
/// @details This function changes the data buffer used for this transfer.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter data A data buffer
/// Parameter length Length of data buffer
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be created by usb_host_create_transfer() or usb_host_create_isochronous_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_set_data(
  usb_host_transfer_h transfer,
  ffi.Pointer<ffi.UnsignedChar> data,
  int length,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_set_data(
      transfer,
      data,
      length,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets an endpoint for asynchronous transfer.
/// @details This function changes the endpoint on which given transfer is performed. Next submissions will be
/// performed on this endpoint.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter ep An endpoint handle
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be created by usb_host_create_transfer() or usb_host_create_isochronous_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_set_ep(
  usb_host_transfer_h transfer,
  usb_host_endpoint_h ep,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_set_ep(
      transfer,
      ep,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets an isochronous packet length.
/// @details This function sets length of individual packet.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle
/// Parameter packet_number Number of isochronous packet
/// Parameter length Length of the packet handle
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_FOUND Packet of given number not found
/// @retval #USB_HOST_ERROR_OVERFLOW Not enough space for this packet in data buffer
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_set_iso_packet_length(
  usb_host_transfer_h transfer,
  int packet_number,
  int length,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_set_iso_packet_length(
      transfer,
      packet_number,
      length,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets number of isochronous packet for isochronous transfer.
/// @details This function changes the number of isochronous packets in transfer.
/// This parameter affects only isochronous transfers (i.e. transfers on isochronous endpoints).
/// Use usb_host_endpoint_get_transfer_type() for checking types of your endpoints.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter num_iso_packets Number of isochronous packets in this transfer
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_OUT_OF_MEMORY Out of memory (too many packets)
/// @pre @a transfer should be created by usb_host_create_transfer() or usb_host_create_isochronous_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_set_num_iso_packets(
  usb_host_transfer_h transfer,
  int num_iso_packets,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_set_num_iso_packets(
      transfer,
      num_iso_packets,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Sets timeout for asynchronous transfer.
/// @details This function changes the timeout after which transfer will be stopped due to
/// no response being received.
/// @since_tizen 5.0
/// Parameter transfer A transfer handle
/// Parameter timeout A timeout in milliseconds
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be created by usb_host_create_transfer() or usb_host_create_isochronous_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_set_timeout(
  usb_host_transfer_h transfer,
  int timeout,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_set_timeout(
      transfer,
      timeout,
    );

/// @ingroup CAPI_USB_HOST_ASYNC_MODULE
/// @brief Submits an asynchronous USB transfer.
/// @details Calling this will start actual transfer.
/// @since_tizen 5.0
/// Parameter transfer Transfer handle to be submitted
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @pre @a transfer should be initialized by one of initialization functions:
/// usb_host_create_transfer(), usb_host_create_isochronous_transfer() or usb_host_create_control_transfer().
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_transfer_submit(
  usb_host_transfer_h transfer,
) =>
    tizenCapiSystemUsbhost.usb_host_transfer_submit(
      transfer,
    );

/// @ingroup CAPI_USB_HOST_DEV_MODULE
/// @brief Unrefs a device.
/// @details Decrements ref count of device. If ref count reaches zero,
/// device will be destroyed.
/// @since_tizen 3.0
/// Parameter dev Device to unreference
/// @return 0 on success, otherwise a negative error value
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_unref_device(
  usb_host_device_h dev,
) =>
    tizenCapiSystemUsbhost.usb_host_unref_device(
      dev,
    );

/// @ingroup CAPI_USB_HOST_HOTPLUG_MODULE
/// @brief Unsets the hotplug callback function.
/// @since_tizen 4.0
/// Parameter handle Handle of the callback to be unregistered
/// @return 0 on success, negative error code on error
/// @retval #USB_HOST_ERROR_NONE Successful
/// @retval #USB_HOST_ERROR_INVALID_PARAMETER Invalid parameter was passed
/// @retval #USB_HOST_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiSystemUsbhost`.
int usb_host_unset_hotplug_cb(
  usb_host_hotplug_h handle,
) =>
    tizenCapiSystemUsbhost.usb_host_unset_hotplug_cb(
      handle,
    );

