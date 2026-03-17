// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiSystemPeripheralIo`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-system-peripheral-io.so.0`.
///
/// System / Peripheral IO.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_system_peripheral_io;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @platform
/// @brief Closes the ADC pin.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter adc The ADC handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @pre peripheral_adc_open()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_adc_close(
  peripheral_adc_h adc,
) =>
    tizenCapiSystemPeripheralIo.peripheral_adc_close(
      adc,
    );

/// @platform
/// @brief Opens the ADC pin.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks @a adc should be released with peripheral_adc_close()
///
/// Parameter device The ADC device number
/// Parameter channel The ADC channel number to control
/// Output parameter adc The ADC handle is created on success
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_OUT_OF_MEMORY Memory allocation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_RESOURCE_BUSY Device is in use
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @post peripheral_adc_close()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_adc_open(
  int device,
  int channel,
  ffi.Pointer<peripheral_adc_h> adc,
) =>
    tizenCapiSystemPeripheralIo.peripheral_adc_open(
      device,
      channel,
      adc,
    );

/// @platform
/// @brief Gets the current value of the ADC pin.
/// @since_tizen 5.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter adc The ADC handle
/// Output parameter value The value to get
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_adc_read(
  peripheral_adc_h adc,
  ffi.Pointer<ffi.Uint32> value,
) =>
    tizenCapiSystemPeripheralIo.peripheral_adc_read(
      adc,
      value,
    );

/// @platform
/// @brief Closes a GPIO pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter gpio The GPIO handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @pre peripheral_gpio_open()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_gpio_close(
  peripheral_gpio_h gpio,
) =>
    tizenCapiSystemPeripheralIo.peripheral_gpio_close(
      gpio,
    );

/// @platform
/// @brief Opens a GPIO pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks @a gpio should be released with peripheral_gpio_close()
///
/// Parameter gpio_pin The GPIO pin number
/// Output parameter gpio The GPIO handle is created on success
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_OUT_OF_MEMORY Memory allocation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_RESOURCE_BUSY Device is in use
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @post peripheral_gpio_close()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_gpio_open(
  int gpio_pin,
  ffi.Pointer<peripheral_gpio_h> gpio,
) =>
    tizenCapiSystemPeripheralIo.peripheral_gpio_open(
      gpio_pin,
      gpio,
    );

/// @platform
/// @brief Gets the current value of the GPIO pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter gpio The GPIO handle
/// Output parameter value The value to get
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_gpio_write()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_gpio_read(
  peripheral_gpio_h gpio,
  ffi.Pointer<ffi.Uint32> value,
) =>
    tizenCapiSystemPeripheralIo.peripheral_gpio_read(
      gpio,
      value,
    );

/// @platform
/// @brief Sets the GPIO direction.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks To set the direction to #PERIPHERAL_GPIO_DIRECTION_OUT_INITIALLY_HIGH or #PERIPHERAL_GPIO_DIRECTION_OUT_INITIALLY_LOW, the edge mode must be set to #PERIPHERAL_GPIO_EDGE_NONE.
///
/// Parameter gpio The GPIO handle
/// Parameter direction The direction of the GPIO pin
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_gpio_direction_e
/// @see peripheral_gpio_set_edge_mode()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_gpio_set_direction(
  peripheral_gpio_h gpio,
  int direction,
) =>
    tizenCapiSystemPeripheralIo.peripheral_gpio_set_direction(
      gpio,
      direction,
    );

/// @platform
/// @brief Sets the GPIO edge mode.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks To set the edge mode to #PERIPHERAL_GPIO_EDGE_RISING, #PERIPHERAL_GPIO_EDGE_FALLING, #PERIPHERAL_GPIO_EDGE_BOTH, the data direction must be set to the #PERIPHERAL_GPIO_DIRECTION_IN.
///
/// Parameter gpio The GPIO handle
/// Parameter edge The edge mode of the GPIO pin
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_gpio_edge_e
/// @see peripheral_gpio_set_direction()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_gpio_set_edge_mode(
  peripheral_gpio_h gpio,
  int edge,
) =>
    tizenCapiSystemPeripheralIo.peripheral_gpio_set_edge_mode(
      gpio,
      edge,
    );

/// @platform
/// @brief Sets the GPIO interrupted callback to be invoked when the GPIO interrupt is triggered.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks The interrupted callback is unset when called peripheral_gpio_unset_interrupted_cb() or callback receives an error value other than #PERIPHERAL_ERROR_NONE.
///
/// Parameter gpio The GPIO handle
/// Parameter callback The GPIO interrupted callback function to set
/// Parameter user_data The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
///
/// @post peripheral_gpio_unset_interrupted_cb()
/// @see peripheral_gpio_set_edge_mode()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_gpio_set_interrupted_cb(
  peripheral_gpio_h gpio,
  peripheral_gpio_interrupted_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemPeripheralIo.peripheral_gpio_set_interrupted_cb(
      gpio,
      callback,
      user_data,
    );

/// @platform
/// @brief Unsets the GPIO interrupted callback.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter gpio The GPIO handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
///
/// @pre peripheral_gpio_set_interrupted_cb()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_gpio_unset_interrupted_cb(
  peripheral_gpio_h gpio,
) =>
    tizenCapiSystemPeripheralIo.peripheral_gpio_unset_interrupted_cb(
      gpio,
    );

/// @platform
/// @brief Sets the value of the GPIO pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks To write binary data, the direction must be set to #PERIPHERAL_GPIO_DIRECTION_OUT_INITIALLY_HIGH or #PERIPHERAL_GPIO_DIRECTION_OUT_INITIALLY_LOW.
///
/// Parameter gpio The GPIO handle
/// Parameter value The value to set (must be 0 or 1)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_gpio_read()
/// @see peripheral_gpio_set_direction()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_gpio_write(
  peripheral_gpio_h gpio,
  int value,
) =>
    tizenCapiSystemPeripheralIo.peripheral_gpio_write(
      gpio,
      value,
    );

/// @platform
/// @brief Closes an I2C slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter i2c The I2C handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @pre peripheral_i2c_open()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_i2c_close(
  peripheral_i2c_h i2c,
) =>
    tizenCapiSystemPeripheralIo.peripheral_i2c_close(
      i2c,
    );

/// @platform
/// @brief Opens an I2C slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks @a i2c should be released with peripheral_i2c_close()
///
/// Parameter bus The I2C bus number that the slave device is connected
/// Parameter address The address of the slave device
/// Output parameter i2c The I2C handle is created on success
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_OUT_OF_MEMORY Memory allocation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_RESOURCE_BUSY Device is in use
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @post peripheral_i2c_close()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_i2c_open(
  int bus,
  int address,
  ffi.Pointer<peripheral_i2c_h> i2c,
) =>
    tizenCapiSystemPeripheralIo.peripheral_i2c_open(
      bus,
      address,
      i2c,
    );

/// @platform
/// @brief Reads the bytes data from the I2C slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter i2c The I2C handle
/// Output parameter data The data buffer to read
/// Parameter length The size of data buffer (in bytes)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_i2c_write()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_i2c_read(
  peripheral_i2c_h i2c,
  ffi.Pointer<ffi.Uint8> data,
  int length,
) =>
    tizenCapiSystemPeripheralIo.peripheral_i2c_read(
      i2c,
      data,
      length,
    );

/// @platform
/// @brief Reads single byte data from the register of the I2C slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter i2c The I2C handle
/// Parameter reg The register address of the I2C slave device to read
/// Output parameter data The single byte data to read
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_i2c_write_register_byte()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_i2c_read_register_byte(
  peripheral_i2c_h i2c,
  int reg,
  ffi.Pointer<ffi.Uint8> data,
) =>
    tizenCapiSystemPeripheralIo.peripheral_i2c_read_register_byte(
      i2c,
      reg,
      data,
    );

/// @platform
/// @brief Reads word data from the register of the I2C slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter i2c The I2C handle
/// Parameter reg The register address of the I2C slave device to read
/// Output parameter data The word(2 bytes) data to read
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_i2c_write_register_word()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_i2c_read_register_word(
  peripheral_i2c_h i2c,
  int reg,
  ffi.Pointer<ffi.Uint16> data,
) =>
    tizenCapiSystemPeripheralIo.peripheral_i2c_read_register_word(
      i2c,
      reg,
      data,
    );

/// @platform
/// @brief Writes the bytes data to the I2C slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter i2c The I2C handle
/// Parameter data The data buffer to write
/// Parameter length The size of data buffer (in bytes)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_i2c_read()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_i2c_write(
  peripheral_i2c_h i2c,
  ffi.Pointer<ffi.Uint8> data,
  int length,
) =>
    tizenCapiSystemPeripheralIo.peripheral_i2c_write(
      i2c,
      data,
      length,
    );

/// @platform
/// @brief Writes single byte data to the register of the I2C slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter i2c The I2C handle
/// Parameter reg The register address of the I2C slave device to write
/// Parameter data The single byte data to write
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_i2c_read_register_byte()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_i2c_write_register_byte(
  peripheral_i2c_h i2c,
  int reg,
  int data,
) =>
    tizenCapiSystemPeripheralIo.peripheral_i2c_write_register_byte(
      i2c,
      reg,
      data,
    );

/// @platform
/// @brief Writes word data to the register of the I2C slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter i2c The I2C handle
/// Parameter reg The register address of the I2C slave device to write
/// Parameter data The word(2 bytes) data to write
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_i2c_read_register_word()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_i2c_write_register_word(
  peripheral_i2c_h i2c,
  int reg,
  int data,
) =>
    tizenCapiSystemPeripheralIo.peripheral_i2c_write_register_word(
      i2c,
      reg,
      data,
    );

/// @platform
/// @brief Closes the PWM pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter pwm The PWM handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @pre peripheral_pwm_open()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_pwm_close(
  peripheral_pwm_h pwm,
) =>
    tizenCapiSystemPeripheralIo.peripheral_pwm_close(
      pwm,
    );

/// @platform
/// @brief Opens the PWM pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks @a pwm should be released with peripheral_pwm_close()
///
/// Parameter chip The PWM chip number
/// Parameter pin The PWM pin(channel) number to control
/// Output parameter pwm The PWM handle is created on success
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_OUT_OF_MEMORY Memory allocation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_RESOURCE_BUSY Device is in use
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @post peripheral_pwm_close()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_pwm_open(
  int chip,
  int pin,
  ffi.Pointer<peripheral_pwm_h> pwm,
) =>
    tizenCapiSystemPeripheralIo.peripheral_pwm_open(
      chip,
      pin,
      pwm,
    );

/// @platform
/// @brief Sets duty cycle of the PWM pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter pwm The PWM handle
/// Parameter duty_cycle_ns The duty cycle of the PWM pin (in nanoseconds)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_pwm_set_duty_cycle(
  peripheral_pwm_h pwm,
  int duty_cycle_ns,
) =>
    tizenCapiSystemPeripheralIo.peripheral_pwm_set_duty_cycle(
      pwm,
      duty_cycle_ns,
    );

/// @platform
/// @brief Enables the PWM pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter pwm The PWM handle
/// Parameter enabled Enable/disable the PWM pin
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_pwm_set_enabled(
  peripheral_pwm_h pwm,
  bool enabled,
) =>
    tizenCapiSystemPeripheralIo.peripheral_pwm_set_enabled(
      pwm,
      enabled,
    );

/// @platform
/// @brief Sets period of the PWM pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter pwm The PWM handle
/// Parameter period_ns The total period of the PWM pin (in nanoseconds)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_pwm_set_period(
  peripheral_pwm_h pwm,
  int period_ns,
) =>
    tizenCapiSystemPeripheralIo.peripheral_pwm_set_period(
      pwm,
      period_ns,
    );

/// @platform
/// @brief Sets polarity of the PWM pin.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter pwm The PWM handle
/// Parameter polarity The polarity of the PWM pin
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_pwm_polarity_e
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_pwm_set_polarity(
  peripheral_pwm_h pwm,
  int polarity,
) =>
    tizenCapiSystemPeripheralIo.peripheral_pwm_set_polarity(
      pwm,
      polarity,
    );

/// @platform
/// @brief Closes the SPI slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter spi The SPI slave device handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_spi_open()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_close(
  peripheral_spi_h spi,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_close(
      spi,
    );

/// @platform
/// @brief Opens a SPI slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks @a spi should be released with peripheral_spi_close()
///
/// Parameter bus The SPI bus number
/// Parameter cs The SPI chip select number
/// Output parameter spi The SPI slave device handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_OUT_OF_MEMORY Memory allocation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_RESOURCE_BUSY Device is in use
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @post peripheral_spi_close()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_open(
  int bus,
  int cs,
  ffi.Pointer<peripheral_spi_h> spi,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_open(
      bus,
      cs,
      spi,
    );

/// @platform
/// @brief Reads the bytes data from the SPI slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter spi The SPI slave device handle
/// Output parameter data The data buffer to read
/// Parameter length The size of data buffer (in bytes)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_spi_write()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_read(
  peripheral_spi_h spi,
  ffi.Pointer<ffi.Uint8> data,
  int length,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_read(
      spi,
      data,
      length,
    );

/// @platform
/// @brief Sets the SPI bit order.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks ARTIK530 and Raspberry Pi 3 do not support LSB first bit order.
///
/// Parameter spi The SPI slave device handle
/// Parameter bit_order The transfer bit order
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_spi_bit_order_e
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_set_bit_order(
  peripheral_spi_h spi,
  int bit_order,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_set_bit_order(
      spi,
      bit_order,
    );

/// @platform
/// @brief Sets the number of bits per word.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter spi The SPI slave device handle
/// Parameter bits The number of bits per word (in bits)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_set_bits_per_word(
  peripheral_spi_h spi,
  int bits,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_set_bits_per_word(
      spi,
      bits,
    );

/// @platform
/// @brief Sets the frequency of the SPI bus.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks The frequencies supported are board dependent.
///
/// Parameter spi The SPI slave device handle
/// Parameter freq_hz Frequency to set (in Hz)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_set_frequency(
  peripheral_spi_h spi,
  int freq_hz,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_set_frequency(
      spi,
      freq_hz,
    );

/// @platform
/// @brief Sets the SPI transfer mode.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter spi The SPI slave device handle
/// Parameter mode The SPI transfer mode
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_spi_mode_e
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_set_mode(
  peripheral_spi_h spi,
  int mode,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_set_mode(
      spi,
      mode,
    );

/// @platform
/// @brief Exchanges the bytes data to the SPI slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter spi The SPI slave device handle
/// Parameter txdata The data buffer to write
/// Output parameter rxdata The data buffer to read
/// Parameter length The size of txdata and rxdata buffer (in bytes)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_spi_read()
/// @see peripheral_spi_write()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_transfer(
  peripheral_spi_h spi,
  ffi.Pointer<ffi.Uint8> txdata,
  ffi.Pointer<ffi.Uint8> rxdata,
  int length,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_transfer(
      spi,
      txdata,
      rxdata,
      length,
    );

/// @platform
/// @brief Writes the bytes data to the SPI slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter spi The SPI slave device handle
/// Parameter data The data buffer to write
/// Parameter length The size of data buffer (in bytes)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_spi_read()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_spi_write(
  peripheral_spi_h spi,
  ffi.Pointer<ffi.Uint8> data,
  int length,
) =>
    tizenCapiSystemPeripheralIo.peripheral_spi_write(
      spi,
      data,
      length,
    );

/// @platform
/// @brief Closes the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter uart The UART handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @pre peripheral_uart_open()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_close(
  peripheral_uart_h uart,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_close(
      uart,
    );

/// @platform
/// @brief Opens the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
/// @remarks @a uart should be released with peripheral_uart_close()
///
/// Parameter port The UART port number that the slave device is connected
/// Output parameter uart The UART handle is created on success
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_OUT_OF_MEMORY Memory allocation failed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_RESOURCE_BUSY Device is in use
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @post peripheral_uart_close()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_open(
  int port,
  ffi.Pointer<peripheral_uart_h> uart,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_open(
      port,
      uart,
    );

/// @platform
/// @brief Reads data from the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter uart The UART handle
/// Output parameter data The buffer to read
/// Output parameter length The size of buffer (in bytes)
///
/// @return the number of bytes read on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_TRY_AGAIN Try again
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_uart_write()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_read(
  peripheral_uart_h uart,
  ffi.Pointer<ffi.Uint8> data,
  int length,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_read(
      uart,
      data,
      length,
    );

/// @platform
/// @brief Sets baud rate of the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter uart The UART handle
/// Parameter baud Baud rate of the UART slave device
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_uart_baud_rate_e
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_set_baud_rate(
  peripheral_uart_h uart,
  int baud,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_set_baud_rate(
      uart,
      baud,
    );

/// @platform
/// @brief Sets byte size of the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter uart The UART handle
/// Parameter byte_size Byte size of the UART slave device
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_uart_byte_size_e
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_set_byte_size(
  peripheral_uart_h uart,
  int byte_size,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_set_byte_size(
      uart,
      byte_size,
    );

/// @platform
/// @brief Sets flow control of the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter uart The UART handle
/// Parameter sw_flow_control Software flow control (Turns a transmitter on or off)
/// Parameter hw_flow_control Hardware flow control (Turns "Request to Send/Clear to Send" on or off)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_uart_software_flow_control_e
/// @see peripheral_uart_hardware_flow_control_e
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_set_flow_control(
  peripheral_uart_h uart,
  int sw_flow_control,
  int hw_flow_control,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_set_flow_control(
      uart,
      sw_flow_control,
      hw_flow_control,
    );

/// @platform
/// @brief Sets parity bit of the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter uart The UART handle
/// Parameter parity Parity bit of the UART slave device
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_uart_parity_e
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_set_parity(
  peripheral_uart_h uart,
  int parity,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_set_parity(
      uart,
      parity,
    );

/// @platform
/// @brief Sets stop bits of the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter uart The UART handle
/// Parameter stop_bits Stop bits of the UART slave device
///
/// @return 0 on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_NO_DEVICE Device does not exist or is removed
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_uart_stop_bits_e
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_set_stop_bits(
  peripheral_uart_h uart,
  int stop_bits,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_set_stop_bits(
      uart,
      stop_bits,
    );

/// @platform
/// @brief Writes data to the UART slave device.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege http://tizen.org/privilege/peripheralio
///
/// Parameter uart The UART handle
/// Parameter data The buffer to write
/// Parameter length The size of buffer (in bytes)
///
/// @return the number of bytes write on success, otherwise a negative error value
/// @retval #PERIPHERAL_ERROR_NONE Successful
/// @retval #PERIPHERAL_ERROR_IO_ERROR I/O operation failed
/// @retval #PERIPHERAL_ERROR_TRY_AGAIN Try again
/// @retval #PERIPHERAL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PERIPHERAL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PERIPHERAL_ERROR_NOT_SUPPORTED Not supported
/// @retval #PERIPHERAL_ERROR_UNKNOWN Unknown internal error
///
/// @see peripheral_uart_read()
///
/// Module getter: `tizenCapiSystemPeripheralIo`.
int peripheral_uart_write(
  peripheral_uart_h uart,
  ffi.Pointer<ffi.Uint8> data,
  int length,
) =>
    tizenCapiSystemPeripheralIo.peripheral_uart_write(
      uart,
      data,
      length,
    );

