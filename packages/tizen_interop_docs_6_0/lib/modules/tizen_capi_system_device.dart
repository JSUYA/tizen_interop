// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiSystemDevice`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-system-device.so.0`.
///
/// System / Device.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_system_device;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a callback to the observing device state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The following feature should be supported for #DEVICE_CALLBACK_DISPLAY_STATE: %http://tizen.org/feature/display. Otherwise #DEVICE_ERROR_NOT_SUPPORTED is returned.
/// Parameter type The device type to monitor
/// Parameter callback The callback function to add
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_ALREADY_IN_PROGRESS Operation already
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_add_callback(
  int type,
  device_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemDevice.device_add_callback(
      type,
      callback,
      user_data,
    );

/// @brief Gets the battery health information.
/// @since_tizen 3.0
/// Output parameter health The battery health information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_battery_get_health(
  ffi.Pointer<ffi.Int32> health,
) =>
    tizenCapiSystemDevice.device_battery_get_health(
      health,
    );

/// @brief Gets the battery level status.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Output parameter status The battery level status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_battery_level_e
/// @see device_add_callback
/// @see device_remove_callback
/// @see #DEVICE_CALLBACK_BATTERY_LEVEL
///
/// Module getter: `tizenCapiSystemDevice`.
int device_battery_get_level_status(
  ffi.Pointer<ffi.Int32> status,
) =>
    tizenCapiSystemDevice.device_battery_get_level_status(
      status,
    );

/// @brief Gets the battery charge percentage.
/// @details It returns an integer value from @c 0 to @c 100 that indicates remaining battery charge
/// as a percentage of the maximum level.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks In order to be notified when the battery state changes, use system_info_set_changed_cb().
/// Output parameter percent The remaining battery charge percentage (@c 0 ~ @c 100)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_battery_get_percent(
  ffi.Pointer<ffi.Int> percent,
) =>
    tizenCapiSystemDevice.device_battery_get_percent(
      percent,
    );

/// @brief Gets the battery power source information.
/// @since_tizen 3.0
/// Output parameter source The battery power source information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_battery_get_power_source(
  ffi.Pointer<ffi.Int32> source,
) =>
    tizenCapiSystemDevice.device_battery_get_power_source(
      source,
    );

/// @brief Gets the battery properties.
/// @since_tizen 3.0
/// Parameter property The property type
/// Output parameter value The battery information for the property given
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_battery_get_property(
  int property,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiSystemDevice.device_battery_get_property(
      property,
      value,
    );

/// @brief Gets the battery status information.
/// @since_tizen 3.0
/// Output parameter status The battery status information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_battery_get_status(
  ffi.Pointer<ffi.Int32> status,
) =>
    tizenCapiSystemDevice.device_battery_get_status(
      status,
    );

/// @brief Gets the charging state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Output parameter charging The battery charging state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_add_callback
/// @see device_remove_callback
/// @see #DEVICE_CALLBACK_BATTERY_CHARGING
///
/// Module getter: `tizenCapiSystemDevice`.
int device_battery_is_charging(
  ffi.Pointer<ffi.Bool> charging,
) =>
    tizenCapiSystemDevice.device_battery_is_charging(
      charging,
    );

/// @brief Changes the display state by force.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/display
/// @remarks This API triggers display change process and then updates the status when it completes. While the operation is on-going, the device_display_get_state() function returns previous display state.
/// @remarks #DEVICE_ERROR_NOT_SUPPORTED is returned, when the following feature is not supported: %http://tizen.org/feature/display.state.
/// Parameter state The display state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_power_request_lock()
/// @see device_power_release_lock()
/// @see device_add_callback
/// @see device_remove_callback
/// @see #DEVICE_CALLBACK_DISPLAY_STATE
///
/// @par Example
/// @code
/// ...
/// result = device_display_change_state(DISPLAY_STATE_SCREEN_OFF);
/// if (result < 0)
/// dlog_print(DLOG_ERROR, LOG_TAG, "[ERROR] return value result =%d, \n",result);
/// else
/// dlog_print(DLOG_DEBUG, LOG_TAG, "[SUCCESS] return value result =%d \n",result);
/// ...
/// @endcode
///
/// Module getter: `tizenCapiSystemDevice`.
int device_display_change_state(
  int state,
) =>
    tizenCapiSystemDevice.device_display_change_state(
      state,
    );

/// @brief Gets the display brightness value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/display
/// @remarks #DEVICE_ERROR_NOT_SUPPORTED is returned, when the following feature is not supported: %http://tizen.org/feature/display
/// Parameter display_index The index of the display \n
/// It can be greater than or equal to @c 0 and less than the number of displays returned by device_display_get_numbers(). \n
/// The index zero is always assigned to the main display
/// Output parameter brightness The current brightness value of the display
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_display_get_numbers()
/// @see device_display_set_brightness()
/// @see device_display_get_max_brightness()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_display_get_brightness(
  int display_index,
  ffi.Pointer<ffi.Int> brightness,
) =>
    tizenCapiSystemDevice.device_display_get_brightness(
      display_index,
      brightness,
    );

/// @brief Gets the maximum brightness value that can be set.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/display
/// @remarks #DEVICE_ERROR_NOT_SUPPORTED is returned, when the following feature is not supported: %http://tizen.org/feature/display
/// Parameter display_index The index of the display \n
/// It can be greater than or equal to @c 0 and less than the number of displays returned by device_display_get_numbers(). \n
/// The index zero is always assigned to the main display
/// Output parameter max_brightness The maximum brightness value of the display
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_display_get_numbers()
/// @see device_display_set_brightness()
/// @see device_display_get_brightness()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_display_get_max_brightness(
  int display_index,
  ffi.Pointer<ffi.Int> max_brightness,
) =>
    tizenCapiSystemDevice.device_display_get_max_brightness(
      display_index,
      max_brightness,
    );

/// @brief Gets the number of display devices.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/display
/// @remarks #DEVICE_ERROR_NOT_SUPPORTED is returned, when the following feature is not supported: %http://tizen.org/feature/display
/// Output parameter device_number The total number of displays
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_display_get_brightness()
/// @see device_display_set_brightness()
/// @see device_display_get_max_brightness()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_display_get_numbers(
  ffi.Pointer<ffi.Int> device_number,
) =>
    tizenCapiSystemDevice.device_display_get_numbers(
      device_number,
    );

/// @brief Gets the current display state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks #DEVICE_ERROR_NOT_SUPPORTED is returned, when the following feature is not supported: %http://tizen.org/feature/display
/// Output parameter state The display state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_add_callback
/// @see device_remove_callback
/// @see #DEVICE_CALLBACK_DISPLAY_STATE
///
/// Module getter: `tizenCapiSystemDevice`.
int device_display_get_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiSystemDevice.device_display_get_state(
      state,
    );

/// @brief Sets the display brightness value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/display
/// @remarks #DEVICE_ERROR_NOT_SUPPORTED is returned, when the following feature is not supported: %http://tizen.org/feature/display
/// Parameter display_index The index of the display \n
/// It can be greater than or equal to @c 0 and less than the number of displays returned by device_display_get_numbers(). \n
/// The index zero is always assigned to the main display
/// Parameter brightness The new brightness value to set \n
/// The maximum value can be represented by device_display_get_max_brightness()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_display_get_numbers()
/// @see device_display_get_max_brightness()
/// @see device_display_get_brightness()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_display_set_brightness(
  int display_index,
  int brightness,
) =>
    tizenCapiSystemDevice.device_display_set_brightness(
      display_index,
      brightness,
    );

/// @brief Gets the brightness value of a LED that is located next to the camera.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/led
/// @remarks This API is related to the following feature: %http://tizen.org/feature/camera.back.flash
/// Output parameter brightness The brightness value of LED (@c 0 ~ MAX)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_flash_get_brightness(
  ffi.Pointer<ffi.Int> brightness,
) =>
    tizenCapiSystemDevice.device_flash_get_brightness(
      brightness,
    );

/// @brief Gets the max brightness value of a LED that is located next to the camera.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/led
/// @remarks This API is related to the following feature: %http://tizen.org/feature/camera.back.flash
/// Output parameter max_brightness The max brightness value of the LED
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_flash_get_max_brightness(
  ffi.Pointer<ffi.Int> max_brightness,
) =>
    tizenCapiSystemDevice.device_flash_get_max_brightness(
      max_brightness,
    );

/// @brief Sets the brightness value of a LED that is located next to the camera.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/led
/// @remarks Since @if Mobile 2.4 @elseif WEARABLE 3.0 @endif, this API check camera flash status whether camera API preempted flash or not, so it could be failed if flash was preempted by camera API. In this case, API will return #DEVICE_ERROR_RESOURCE_BUSY error.
/// This API is related to the following feature: %http://tizen.org/feature/camera.back.flash
/// Parameter brightness The brightness value of LED (@c 0 ~ MAX)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @retval #DEVICE_ERROR_RESOURCE_BUSY Device or resource busy
///
/// Module getter: `tizenCapiSystemDevice`.
int device_flash_set_brightness(
  int brightness,
) =>
    tizenCapiSystemDevice.device_flash_set_brightness(
      brightness,
    );

/// @brief Closes a haptic-vibration device.
/// @details Internally, it disconnects the connection to the vibrator.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/haptic
/// Parameter device_handle The device handle from device_haptic_open()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_haptic_open()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_haptic_close(
  haptic_device_h device_handle,
) =>
    tizenCapiSystemDevice.device_haptic_close(
      device_handle,
    );

/// @brief Gets the number of vibrators.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/haptic
/// Parameter device_number The number of vibrators
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_haptic_get_count(
  ffi.Pointer<ffi.Int> device_number,
) =>
    tizenCapiSystemDevice.device_haptic_get_count(
      device_number,
    );

/// @brief Opens a haptic-vibration device.
/// @details Internally, it makes a connection to the vibrator.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/haptic
/// @remarks You must close the Haptic API using device_haptic_close().
/// Parameter device_index The index of device what you want to vibrate \n
/// The index starts from @c 0
/// Output parameter device_handle The handle of vibrator
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_haptic_close()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_haptic_open(
  int device_index,
  ffi.Pointer<haptic_device_h> device_handle,
) =>
    tizenCapiSystemDevice.device_haptic_open(
      device_index,
      device_handle,
    );

/// @brief Stops all vibration effects which are being played.
/// @details This function can be used to stop all effects started by device_haptic_vibrate().
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/haptic
/// Parameter device_handle The device handle from device_haptic_open()
/// Parameter effect_handle The effect handle from device_haptic_vibrate()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_haptic_vibrate()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_haptic_stop(
  haptic_device_h device_handle,
  haptic_effect_h effect_handle,
) =>
    tizenCapiSystemDevice.device_haptic_stop(
      device_handle,
      effect_handle,
    );

/// @brief Vibrates during the specified time with a constant intensity.
/// @details This function can be used to start monotonous vibration for the specified time.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/haptic
/// @remarks @a feedback level is reserved for auto changing to save variable in the settings.
/// @remarks @a effect_handle effect_handle value can be @c 0(zero).
/// @remarks To prevent unexpected sleep (suspend) during vibration, please use @ref CAPI_SYSTEM_DEVICE_POWER_MODULE.
/// Parameter device_handle The device handle from device_haptic_open()
/// Parameter duration The play duration in milliseconds
/// Parameter feedback The amount of the intensity variation (@c 0 ~ @c 100)
/// Output parameter effect_handle The pointer to the variable that will receive a handle to the playing effect
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @see device_haptic_stop()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_haptic_vibrate(
  haptic_device_h device_handle,
  int duration,
  int feedback,
  ffi.Pointer<haptic_effect_h> effect_handle,
) =>
    tizenCapiSystemDevice.device_haptic_vibrate(
      device_handle,
      duration,
      feedback,
      effect_handle,
    );

/// @brief Gets the information whether IR module is available.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/use_ir
/// Output parameter available The information whether IR is available
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_ir_is_available(
  ffi.Pointer<ffi.Bool> available,
) =>
    tizenCapiSystemDevice.device_ir_is_available(
      available,
    );

/// @brief Transmits IR command.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/use_ir
/// Parameter carrier_frequency Carrier frequency to transmit IR command (Hertz)
/// Parameter pattern Integer array of IR command
/// Parameter size Size of IR command pattern
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_ir_transmit(
  int carrier_frequency,
  ffi.Pointer<ffi.Int> pattern,
  int size,
) =>
    tizenCapiSystemDevice.device_ir_transmit(
      carrier_frequency,
      pattern,
      size,
    );

/// @brief Plays the custom effect of the service LED that is located to the front of a device.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/led
/// @remarks This API is related to the following feature: %http://tizen.org/feature/led
/// Parameter on Turn on time in milliseconds
/// Parameter off Turn off time in milliseconds
/// Parameter color The Color value \n
/// The first byte means opaque and the other 3 bytes are RGB values
/// Parameter flags The combination of enum #led_custom_flags
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_led_play_custom(
  int on1,
  int off,
  int color,
  int flags,
) =>
    tizenCapiSystemDevice.device_led_play_custom(
      on1,
      off,
      color,
      flags,
    );

/// @brief Stops the custom effect of the service LED that is located to the front of a device.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/led
/// @remarks This API is related to the following feature: %http://tizen.org/feature/led
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_led_stop_custom() =>
    tizenCapiSystemDevice.device_led_stop_custom();

/// @platform
/// @brief Reboots the device.
/// @details Will not return if the reboot is successful. \n
/// It operates asynchronously.
/// @since_tizen 2.3.1
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/reboot
/// Parameter reason Pass to the platform and kernel to request special reboot reason, or null
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
///
/// Module getter: `tizenCapiSystemDevice`.
int device_power_reboot(
  ffi.Pointer<ffi.Char> reason,
) =>
    tizenCapiSystemDevice.device_power_reboot(
      reason,
    );

/// @brief Releases the given lock state which was locked before.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/display
/// Parameter type The power type to release lock
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @see device_power_request_lock()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_power_release_lock(
  int type,
) =>
    tizenCapiSystemDevice.device_power_release_lock(
      type,
    );

/// @brief Locks the given lock state for a specified time.
/// @details After the given @a timeout_ms (in milliseconds), unlock the given lock state automatically.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/display
/// @remarks If the process dies, then every lock will be removed.
/// Parameter type The power type to request lock
/// Parameter timeout_ms The positive number in milliseconds or @c 0 for permanent lock \n
/// So you must release the permanent lock of power state with #device_power_release_lock() if @a timeout_ms is zero
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @see device_power_release_lock()
///
/// Module getter: `tizenCapiSystemDevice`.
int device_power_request_lock(
  int type,
  int timeout_ms,
) =>
    tizenCapiSystemDevice.device_power_request_lock(
      type,
      timeout_ms,
    );

/// @deprecated Deprecated Since @if WEARABLE 3.0 @else 2.4 @endif
/// @brief Changes the current power state to the normal/dim state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/display
/// @remarks This API triggers turn on process and then updates the status when it completes. While the operation is on-going, the device_display_get_state() function returns previous display state.
/// @remarks #DEVICE_ERROR_NOT_SUPPORTED is returned, when the following feature is not supported: %http://tizen.org/feature/display.state.
/// Parameter dim Set @c true to set the dim state,
/// otherwise set @c false to not set the dim state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @post The device will be in #DISPLAY_STATE_NORMAL state.
///
/// Module getter: `tizenCapiSystemDevice`.
int device_power_wakeup(
  bool dim,
) =>
    tizenCapiSystemDevice.device_power_wakeup(
      dim,
    );

/// @brief Removes a device callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The following feature should be supported for #DEVICE_CALLBACK_DISPLAY_STATE: %http://tizen.org/feature/display. Otherwise #DEVICE_ERROR_NOT_SUPPORTED is returned.
/// Parameter type The device type to monitor
/// Parameter callback The callback function to remove
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
///
/// Module getter: `tizenCapiSystemDevice`.
int device_remove_callback(
  int type,
  device_changed_cb callback,
) =>
    tizenCapiSystemDevice.device_remove_callback(
      type,
      callback,
    );

/// @brief Gets the temperature value.
/// @since_tizen 5.5
/// Parameter type The index of the device
/// Output parameter temp The temperature value in degrees Celsius
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DEVICE_ERROR_NONE Successful
/// @retval #DEVICE_ERROR_NOT_SUPPORTED Not supported device
/// @retval #DEVICE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DEVICE_ERROR_OPERATION_FAILED Operation failed
///
/// Module getter: `tizenCapiSystemDevice`.
int device_thermal_get_temperature(
  int type,
  ffi.Pointer<ffi.Int> temp,
) =>
    tizenCapiSystemDevice.device_thermal_get_temperature(
      type,
      temp,
    );

