// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiSystemSensor`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-system-sensor.so.0`.
///
/// System / Sensor.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_system_sensor;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief    Registers the sensor provider.
/// @details  A sensor provider is created via sensor_create_provider(),
/// and the three callback functions sensor_provider_start_cb(), sensor_provider_stop_cb(),
/// and sensor_provider_set_interval_changed_cb() should be set in advance.
/// @since_tizen 4.0
///
/// Parameter   provider  The sensor provider handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_PERMISSION_DENIED    Permission denied
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_remove_provider()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_add_provider(
  sensor_provider_h provider,
) =>
    tizenCapiSystemSensor.sensor_add_provider(
      provider,
    );

/// @brief  Adds a callback function to be invoked when a new sensor is added.
/// @since_tizen 4.0
///
/// Parameter  callback   A callback function to be added
/// Parameter  user_data  A user data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_remove_sensor_added_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_add_sensor_added_cb(
  sensor_added_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSensor.sensor_add_sensor_added_cb(
      callback,
      user_data,
    );

/// @brief  Adds a callback function to be invoked when a sensor is removed.
/// @since_tizen 4.0
///
/// Parameter  callback   A callback function to be removed
/// Parameter  user_data  A user data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see   sensor_remove_sensor_removed_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_add_sensor_removed_cb(
  sensor_removed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSensor.sensor_add_sensor_removed_cb(
      callback,
      user_data,
    );

/// @brief   Creates a sensor listener.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a listener must be released using sensor_destroy_listener().
///
/// Parameter  sensor          A sensor handle
/// Output parameter listener        A listener handle of @a sensor
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @pre     The handle @a sensor needs to be initialized using
/// sensor_get_default_sensor() or sensor_get_sensor_list() in advance.
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_create_listener(
  sensor_h sensor,
  ffi.Pointer<sensor_listener_h> listener,
) =>
    tizenCapiSystemSensor.sensor_create_listener(
      sensor,
      listener,
    );

/// @brief   Creates a sensor provider.
/// @details This function creates a sensor provider handle with a given URI.
/// The URI should be in the valid form described in \ref CAPI_SYSTEM_SENSOR_LISTENER_MODULE_URI.
/// In addition, it is not allowed to set the vendor in the URI to @"tizen.org@",
/// as it is pre-assigned to the platform-defined sensors.\n
/// @since_tizen 4.0
///
/// @remarks If your application needs to publish health-related sensor data,
/// the URI category should be @"healthinfo@".
/// Then the applications without the privilege http://tizen.org/privilege/healthinfo
/// are not allowed to listen your application's health-related sensor.
///
/// @remarks The @a provider must be released using sensor_destroy_provider().
///
/// Parameter  uri             The URI of sensor to be created
/// Output parameter provider        The sensor provider handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_destroy_provider()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_create_provider(
  ffi.Pointer<ffi.Char> uri,
  ffi.Pointer<sensor_provider_h> provider,
) =>
    tizenCapiSystemSensor.sensor_create_provider(
      uri,
      provider,
    );

/// @brief   Releases all the resources allocated for a listener.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks If this function is called while the sensor is still running,
/// that is, sensor_listener_start() was called but sensor_listener_stop() was not,
/// then it is implicitly stopped.
///
/// Parameter listener  A listener handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @see     sensor_create_listener()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_destroy_listener(
  sensor_listener_h listener,
) =>
    tizenCapiSystemSensor.sensor_destroy_listener(
      listener,
    );

/// @brief   Releases all the resources allocated for the sensor provider.
/// @since_tizen 4.0
///
/// @remarks If this function is called before sensor_remove_provider() is called,
/// then the sensor provider will be implicitly unregistered.
///
/// Parameter  provider  The sensor provider handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @see     sensor_create_provider()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_destroy_provider(
  sensor_provider_h provider,
) =>
    tizenCapiSystemSensor.sensor_destroy_provider(
      provider,
    );

/// @brief   Gets the handle for the default sensor of a given type.
/// @details This function returns the handle for the sensor of a given type.
/// If the device has more than one sensor of the given type,
/// this function returns the default sensor of the given type,
/// which is designated by the device.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Some sensor types are privileged. An application should have the privilege
/// http://tizen.org/privilege/healthinfo to get handles for the following sensors:
/// #SENSOR_HRM, #SENSOR_HRM_LED_GREEN, #SENSOR_HRM_LED_IR, #SENSOR_HRM_LED_RED,
/// #SENSOR_HUMAN_PEDOMETER, #SENSOR_HUMAN_SLEEP_MONITOR, #SENSOR_HUMAN_SLEEP_DETECTOR,
/// and #SENSOR_HUMAN_STRESS_MONITOR.
///
/// Parameter  type     A sensor type to get the handle of its default sensor
/// Output parameter sensor   The sensor handle of the default sensor
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_NOT_SUPPORTED        The sensor type is not supported in the current device
/// @retval  #SENSOR_ERROR_PERMISSION_DENIED    Permission denied
///
/// @see     sensor_get_default_sensor_by_uri()
/// @see     sensor_get_sensor_list()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_default_sensor(
  int type,
  ffi.Pointer<sensor_h> sensor,
) =>
    tizenCapiSystemSensor.sensor_get_default_sensor(
      type,
      sensor,
    );

/// @brief   Gets the handle for the default sensor of a given sensor URI.
/// @details This function returns the handle for the sensor of a given URI.
/// If the device has more than one sensor of the given URI,
/// this function returns the default sensor of the URI, which is designated by the device.\n
/// See \ref CAPI_SYSTEM_SENSOR_LISTENER_MODULE_URI for more details about the URI format.
/// @since_tizen 4.0
///
/// @remarks Some sensor types are privileged. An application should have the privilege
/// http://tizen.org/privilege/healthinfo to get handles for the sensor URIs of @"healthinfo@" category.
/// See \ref CAPI_SYSTEM_SENSOR_LISTENER_MODULE_URI to find the @"healthinfo@" category sensor URIs.
///
/// Parameter    uri      A sensor or a sensor type URI to get the handle of its default sensor
/// Output parameter   sensor   The default sensor handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_NOT_SUPPORTED        The URI is not supported in the current device
/// @retval  #SENSOR_ERROR_PERMISSION_DENIED    Permission denied
///
/// @see     sensor_get_default_sensor()
/// @see     sensor_get_sensor_list_by_uri()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_default_sensor_by_uri(
  ffi.Pointer<ffi.Char> uri,
  ffi.Pointer<sensor_h> sensor,
) =>
    tizenCapiSystemSensor.sensor_get_default_sensor_by_uri(
      uri,
      sensor,
    );

/// @brief   Gets the size of the hardware FIFO of a sensor.
/// @details This function returns the size of the hardware FIFO that may be used by
/// a specific sensor to support batching.
/// However, regarding the underlying hardware configuration,
/// the returned count may not mean the maximum number of sensor data that can be batched.
/// See sensor_get_max_batch_count() for such purpose, finding out the
/// possible maximum number of batched data.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   sensor          A sensor handle
/// Output parameter  fifo_count      The FIFO count
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_fifo_count(
  sensor_h sensor,
  ffi.Pointer<ffi.Int> fifo_count,
) =>
    tizenCapiSystemSensor.sensor_get_fifo_count(
      sensor,
      fifo_count,
    );

/// @brief   Gets the maximum batch count of a sensor.
/// @details This function returns the maximum number of sensor data events
/// that can be possibly delivered when the batched data are flushed.
/// Therefore, this count can be used to check whether the sensor supports
/// batching or not.@n
/// If this returns a positive count, i.e., the sensor supports batching,
/// the count also can be used to guess the possible longest batch latency
/// of the sensor, with respect to the update interval to use.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   sensor          A sensor handle
/// Output parameter  max_batch_count If the sensor does not support batching, 0;
/// Otherwise a positive integer.
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_listener_set_max_batch_latency()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_max_batch_count(
  sensor_h sensor,
  ffi.Pointer<ffi.Int> max_batch_count,
) =>
    tizenCapiSystemSensor.sensor_get_max_batch_count(
      sensor,
      max_batch_count,
    );

/// @brief   Gets the upper bound of the sensor readings of a sensor.
/// @details This function returns the upper bound of the range of possible sensor values,
/// which are generated by the corresponding sensor denoted by a sensor handle.@n
/// If all sensor values are in the same unit, e.g., \f$\mbox{m/s}^2\f$ or degrees,
/// the upper bound of all sensor values is returned.
/// Otherwise, the upper bound of the representative sensor value, e.g.,
/// the step count of #SENSOR_HUMAN_PEDOMETER, is returned.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   sensor      A sensor handle
/// Output parameter  max_range   The upper bound
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_get_min_range()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_max_range(
  sensor_h sensor,
  ffi.Pointer<ffi.Float> max_range,
) =>
    tizenCapiSystemSensor.sensor_get_max_range(
      sensor,
      max_range,
    );

/// @brief   Gets the possible shorted update interval of a sensor.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   sensor          A sensor handle
/// Output parameter  min_interval    The shorted interval in milliseconds
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_min_interval(
  sensor_h sensor,
  ffi.Pointer<ffi.Int> min_interval,
) =>
    tizenCapiSystemSensor.sensor_get_min_interval(
      sensor,
      min_interval,
    );

/// @brief   Gets the lower bound of the sensor reading of a sensor.
/// @details This function returns the lower bound of the range of possible sensor values,
/// which are generated by the corresponding sensor denoted by a sensor handle.@n
/// If all sensor values are in the same unit, e.g., \f$\mbox{m/s}^2\f$ or degrees,
/// the lower bound of all sensor values is returned.
/// Otherwise, the lower bound of the representative sensor value, e.g.,
/// the step count of #SENSOR_HUMAN_PEDOMETER, is returned.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   sensor      A sensor handle
/// Output parameter  min_range   The lower bound
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_get_max_range()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_min_range(
  sensor_h sensor,
  ffi.Pointer<ffi.Float> min_range,
) =>
    tizenCapiSystemSensor.sensor_get_min_range(
      sensor,
      min_range,
    );

/// @brief   Gets the name of a sensor.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks  The @a name must be released using free(), if not being used anymore.
///
/// Parameter   sensor  A sensor handle
/// Output parameter  name    The name of the sensor
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_name(
  sensor_h sensor,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiSystemSensor.sensor_get_name(
      sensor,
      name,
    );

/// @brief   Gets the resolution of the sensor readings of a sensor.
/// @details This function returns the resolution of the sensor readings.
/// The resolution denotes the smallest difference between sensor readings,
/// each of which is in the range that can be verified by
/// sensor_get_min_range() and sensor_get_max_range().
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   sensor      A sensor handle
/// Output parameter  resolution  The resolution
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_resolution(
  sensor_h sensor,
  ffi.Pointer<ffi.Float> resolution,
) =>
    tizenCapiSystemSensor.sensor_get_resolution(
      sensor,
      resolution,
    );

/// @brief   Gets the handle list of the sensors of a given type.
/// @details A device may have more than one sensors of the given type.
/// In such case, this function can be used to get the handles of all sensors of the type.@n
/// The first element of the @a list denotes the default sensor,
/// which can be retrieved by sensor_get_default_sensor().
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Some sensor types are privileged. An application should have the privilege
/// http://tizen.org/privilege/healthinfo to get handles for the following sensors:
/// #SENSOR_HRM, #SENSOR_HRM_LED_GREEN, #SENSOR_HRM_LED_IR, #SENSOR_HRM_LED_RED,
/// #SENSOR_HUMAN_PEDOMETER, #SENSOR_HUMAN_SLEEP_MONITOR, #SENSOR_HUMAN_SLEEP_DETECTOR,
/// and #SENSOR_HUMAN_STRESS_MONITOR.@n
/// Instead of specifying a sensor type, by using #SENSOR_ALL,
/// applications can get the list of handles for all available sensors.@n
/// The @a list must be released using free(), if not being used anymore.@n
///
/// Parameter  type         A sensor type to get the list of sensor handles
/// Output parameter list         An array of the sensor handles
/// Output parameter sensor_count The number of handles contained in @a list
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_NOT_SUPPORTED        The sensor type is not supported in the current device
/// @retval  #SENSOR_ERROR_PERMISSION_DENIED    Permission denied
/// @retval  #SENSOR_ERROR_OUT_OF_MEMORY        Out of memory
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_sensor_list(
  int type,
  ffi.Pointer<ffi.Pointer<sensor_h>> list,
  ffi.Pointer<ffi.Int> sensor_count,
) =>
    tizenCapiSystemSensor.sensor_get_sensor_list(
      type,
      list,
      sensor_count,
    );

/// @brief   Gets the handle list of the sensors of a given URI.
/// @details A device may have more than one sensor of the given URI.
/// In such case, this function can be used to get the handles of all sensors of the given URI.\n
/// See \ref CAPI_SYSTEM_SENSOR_LISTENER_MODULE_URI for more details about the URI format.
/// @since_tizen 4.0
///
/// @remarks Some sensors require one or more privileges. An application should have the corresponding privilege
/// to get handles for such sensors.
/// See sensor_get_default_sensor_by_uri() for more details.@n
/// The @a list must be released using free(), if not being used anymore.
///
/// Parameter   uri            A sensor or a sensor type URI to get the list of sensor handles
/// Output parameter  list           An array of the sensor handles
/// Output parameter  sensor_count   The number of handles contained in @a list
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval  #SENSOR_ERROR_NOT_SUPPORTED       The URI is not supported in the current device
/// @retval  #SENSOR_ERROR_PERMISSION_DENIED   Permission denied
/// @retval  #SENSOR_ERROR_OUT_OF_MEMORY       Out of memory
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_sensor_list_by_uri(
  ffi.Pointer<ffi.Char> uri,
  ffi.Pointer<ffi.Pointer<sensor_h>> list,
  ffi.Pointer<ffi.Int> sensor_count,
) =>
    tizenCapiSystemSensor.sensor_get_sensor_list_by_uri(
      uri,
      list,
      sensor_count,
    );

/// @brief   Gets the type of a sensor, if it belongs to the known types defined in #sensor_type_e.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   sensor  A sensor handle
/// Output parameter  type    The type of the sensor
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_NO_DATA              No known sensor type for the given sensor
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_type(
  sensor_h sensor,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiSystemSensor.sensor_get_type(
      sensor,
      type,
    );

/// @brief   Gets the URI of a sensor.
/// @since_tizen 4.0
///
/// @remarks The @a uri must be released using free(), if not being used anymore.
///
/// Parameter   sensor   A sensor handle
/// Output parameter  uri      The URI of the sensor
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_uri(
  sensor_h sensor,
  ffi.Pointer<ffi.Pointer<ffi.Char>> uri,
) =>
    tizenCapiSystemSensor.sensor_get_uri(
      sensor,
      uri,
    );

/// @brief   Gets the vendor of a sensor.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks  The @a vendor must be released using free(), if not being used anymore.
///
/// Parameter   sensor  A sensor handle
/// Output parameter  vendor  The vendor of the sensor
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_get_vendor(
  sensor_h sensor,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vendor,
) =>
    tizenCapiSystemSensor.sensor_get_vendor(
      sensor,
      vendor,
    );

/// @brief   Checks whether a given sensor type is supported in the current device.
/// @details If the given sensor type is not supported, sensor_get_default_sensor() will return an error.
/// It is thus recommended to check the availability of the sensor before actually acquiring #sensor_h.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   type        A sensor type to check
/// Output parameter  supported   If supported, @c true; Otherwise @c false
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @see     sensor_is_supported_by_uri()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_is_supported(
  int type,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiSystemSensor.sensor_is_supported(
      type,
      supported,
    );

/// @brief   Checks whether a sensor corresponding to a given URI is supported in the current device.
/// @details To correctly check the availability of a sensor, a valid URI should be provided.
/// The valid form of URIs is explained in \ref CAPI_SYSTEM_SENSOR_LISTENER_MODULE_URI.\n
/// If a URI with the sensor's name is given, for example, %http://tizen.org/sensor/general/light/front,
/// the availability of the @"front@" light sensor is checked.
/// Otherwise, if a URI without the name, %http://tizen.org/sensor/general/light, is given,
/// this function checks the availability of any light sensor in the device.\n
/// It is recommended to check the availability of the sensors corresponding to the URI
/// before actually acquiring #sensor_h.
/// @since_tizen 4.0
///
/// Parameter   uri         A sensor or a sensor type URI to check
/// Output parameter  supported   If supported, @c true, otherwise @c false
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER   Invalid parameter
///
/// @see     sensor_is_supported()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_is_supported_by_uri(
  ffi.Pointer<ffi.Char> uri,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiSystemSensor.sensor_is_supported_by_uri(
      uri,
      supported,
    );

/// @brief   Checks whether a given sensor is a wake-up sensor or not.
/// @details If a sensor is a wake-up sensor, the sensor is able to wake-up the system
/// to report its sensor data even if the system is in sleep mode.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter   sensor  A sensor handle to check
/// Output parameter  wakeup  If the sensor is a wake-up sensor, @c true;
/// Otherwise @c false
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @pre     The handle @c sensor needs to be initialized using
/// sensor_get_default_sensor() or sensor_get_sensor_list() in advance.
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_is_wake_up(
  sensor_h sensor,
  ffi.Pointer<ffi.Bool> wakeup,
) =>
    tizenCapiSystemSensor.sensor_is_wake_up(
      sensor,
      wakeup,
    );

/// @brief   Flushes stored data of a sensor.
/// @details  Flushes all data of a sensor as if the max batch latency has expired.
/// Data is delivered in the usual way through the event callback function. @n
/// In case of non-batching sensors, this function does nothing and returns #SENSOR_ERROR_NONE.
/// @since_tizen 5.5
///
/// Parameter   listener        A listener handle
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_flush(
  sensor_listener_h listener,
) =>
    tizenCapiSystemSensor.sensor_listener_flush(
      listener,
    );

/// @deprecated Deprecated since 5.5. Use sensor_listener_read_data_list() instead.
/// @brief   Reads the current sensor data via a given sensor listener.
/// @details This function synchronously reads the sensor reading of the corresponding sensor, if available.
/// Otherwise, if the sensor is not ready to report its values, this function fails and returns
/// #SENSOR_ERROR_OPERATION_FAILED.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks  As a sensor usually works in an event-driven manner, it may not be able to read its data on demand.
/// Then this function tries to return the last known values.@n
/// To be able to read the current values or the last known values, the sensor needs to be
/// enabled in advance. As an application cannot be sure that the sensor is already enabled
/// by other applications, it is recommended to start the sensor explicitly by using sensor_listener_start().@n
/// But note that even if the sensor is started, on-demand reading can fail anyway,
/// thus it would be better to use the asynchronous callback approach.
///
/// Parameter   listener    A listener handle
/// Output parameter  event       The retrieved sensor data
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_read_data(
  sensor_listener_h listener,
  ffi.Pointer<sensor_event_s> event,
) =>
    tizenCapiSystemSensor.sensor_listener_read_data(
      listener,
      event,
    );

/// @brief   Reads the current sensor data list via a given sensor listener.
/// @details This function synchronously reads the sensor reading of the corresponding sensor, if available.
/// Otherwise, if the sensor is not ready to report its values, this function fails and returns
/// #SENSOR_ERROR_OPERATION_FAILED.
/// @since_tizen 5.5
///
/// @remarks  As a sensor usually works in an event-driven manner, it may not be able to read its data on demand.
/// In such cases this function tries to return the last known values.@n
/// When there are last known values that are caused by multi-event publishing, the @a count is greater than or equal to 1.@n
/// To be able to read the current values or the last known values, the sensor needs to be enabled in advance.
/// As an application cannot be sure that the sensor is already enabled by other applications,
/// it is recommended to start the sensor explicitly by using sensor_listener_start().@n
/// But note that even if the sensor is started, on-demand reading can fail anyway,
/// thus it would be better to use the asynchronous callback approach.
/// The @a events must be released using free(), if not being used anymore.@n
///
/// Parameter   listener    A listener handle
/// Output parameter  events      The retrieved sensor data list
/// Output parameter  count       The number of event contained in @a events
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_read_data_list(
  sensor_listener_h listener,
  ffi.Pointer<ffi.Pointer<sensor_event_s>> events,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiSystemSensor.sensor_listener_read_data_list(
      listener,
      events,
      count,
    );

/// @brief   Registers the callback function to be invoked when the accuracy of a sensor changes.
/// @details In addition to sensor_event_cb(), sensor_accuracy_changed_cb() also can be attached
/// to sensor listeners. With this accuracy callback function, applications can be notified
/// the changes of the corresponding sensors separately.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   listener    A listener handle
/// Parameter   callback    A callback function to attach with the @a listener handle
/// Parameter   data        A user data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @pre     The @a listener needs to be started to get the change callbacks.
/// @see     sensor_listener_unset_accuracy_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_set_accuracy_cb(
  sensor_listener_h listener,
  sensor_accuracy_changed_cb callback,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenCapiSystemSensor.sensor_listener_set_accuracy_cb(
      listener,
      callback,
      data,
    );

/// @brief   Sets an attribute to control the behavior of a sensor listener.
/// @details Applications can change the behavior of a sensor listener, for example,
/// what is the reference coordinate of the sensor values,
/// and when the system is allowed to turn off the sensor implicitly to reduce the power consumption.
/// See #sensor_attribute_e for more details about the available control parameters.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter   listener	A listener handle
/// Parameter   attribute	An attribute to change
/// Parameter   value		An attribute value
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_set_attribute_int(
  sensor_listener_h listener,
  int attribute,
  int value,
) =>
    tizenCapiSystemSensor.sensor_listener_set_attribute_int(
      listener,
      attribute,
      value,
    );

/// @deprecated Deprecated since 5.5. Use sensor_listener_set_events_cb() instead.
/// @brief   Registers the callback function to be invoked when sensor events are delivered via a sensor listener.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   listener    A listener handle
/// Parameter   interval_ms A desired update interval between sensor events in milliseconds.@n
/// If 0, it will be automatically set to the default interval of the corresponding sensor.@n
/// See sensor_listener_set_interval() for more details.
/// Parameter   callback    A callback function to attach with the @a listener handle
/// Parameter   data        A user data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see sensor_listener_unset_event_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_set_event_cb(
  sensor_listener_h listener,
  int interval_ms,
  sensor_event_cb callback,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenCapiSystemSensor.sensor_listener_set_event_cb(
      listener,
      interval_ms,
      callback,
      data,
    );

/// @brief   Sets the callback function to be invoked when sensor events are delivered via a sensor listener.
/// @since_tizen 5.5
///
/// Parameter   listener    A listener handle
/// Parameter   callback    A callback function to attach to the @a listener handle
/// Parameter   user_data   A user data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see sensor_listener_unset_events_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_set_events_cb(
  sensor_listener_h listener,
  sensor_events_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSensor.sensor_listener_set_events_cb(
      listener,
      callback,
      user_data,
    );

/// @brief   Changes the update interval of a sensor.
/// @details The specified interval is only a suggested interval between sensor measurements.
/// You will get at least one sensor measurement within the interval you specify,
/// but the actual interval between sensor measurements can be affected by other applications and the system.
/// To reduce the system overhead, it is recommended to set the longest interval that you can,
/// because the system usually chooses the shortest interval among all intervals specified.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Normally, a sensor's default update interval is 100 ms,
/// and you can use the default interval by setting the interval to 0.
/// However, please note that, the default interval varies with the sensor and the device.@n
/// In addition, a sensor has the lower and the upper bound of its update interval,
/// usually 10 and 1000 ms respectively.
/// These lower and upper bounds also can vary with the sensor and the device,
/// any invalid input values exceeding the bounds will be implicitly adjusted into the valid range.
///
/// Parameter   listener    A listener handle
/// Parameter   interval_ms A desired update interval between sensor events in milliseconds.
/// If 0, it will be automatically set to the default interval of the corresponding sensor.
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_get_min_interval()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_set_interval(
  sensor_listener_h listener,
  int interval_ms,
) =>
    tizenCapiSystemSensor.sensor_listener_set_interval(
      listener,
      interval_ms,
    );

/// @brief   Sets the desired max batch latency of a sensor.
/// @details Sensors that support batching may allow applications to change their maximum batch latencies.
/// For example, if you set the latency as 10,000 ms, the sensor may store its data
/// up to 10,000 ms, before delivering the data through the HAL.@n
/// In case of non-batching sensors, this function returns #SENSOR_ERROR_NONE,
/// but nothing is affected by the input latency value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Even if you set a batch latency, the sensor may not work as you intended,
/// as one sensor can be used by more than one listeners.
/// In addition, some batch sensors may already have fixed batching latency
/// or batching queue size, which cannot be altered by applications.
///
/// Parameter   listener           A listener handle
/// Parameter   max_batch_latency  A desired batch latency in milliseconds
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_set_max_batch_latency(
  sensor_listener_h listener,
  int max_batch_latency,
) =>
    tizenCapiSystemSensor.sensor_listener_set_max_batch_latency(
      listener,
      max_batch_latency,
    );

/// @brief   Changes the power-saving behavior of a sensor listener.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks  sensor_listener_set_attribute_int() with #SENSOR_ATTRIBUTE_PAUSE_POLICY replaces this function.
///
/// Parameter   listener        A listener handle
/// Parameter   option          A sensor option
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_set_option(
  sensor_listener_h listener,
  int option,
) =>
    tizenCapiSystemSensor.sensor_listener_set_option(
      listener,
      option,
    );

/// @brief   Starts observing the sensor events regarding a given sensor listener.
/// @details If a sensor listener is started, its event callback function starts to be called
/// whenever the corresponding sensor events occur.@n
/// For example, #SENSOR_ACCELEROMETER reports its sensor readings repeatedly,
/// with a specific update interval.
/// Note that, unlike the accelerometer, sensors like #SENSOR_PROXIMITY emit events
/// only if their states change.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   listener  A listener handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @pre     The @a listener needs to be created in advance, by using sensor_create_listener().
/// Then the callback function needs to be attached to the @a listener, by using
/// sensor_listener_set_event_cb().
/// @see     sensor_listener_stop()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_start(
  sensor_listener_h listener,
) =>
    tizenCapiSystemSensor.sensor_listener_start(
      listener,
    );

/// @brief   Stops observing the sensor events regarding a given sensor listener.
/// @details The listener's event callback function stops being called.
/// But the sensor itself may not be stopped if there are other listeners
/// that are using the same sensor.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   listener  A listener handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_listener_start()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_stop(
  sensor_listener_h listener,
) =>
    tizenCapiSystemSensor.sensor_listener_stop(
      listener,
    );

/// @brief   Unregisters the sensor accuracy change callback function attached to a given sensor listener.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   listener    A listener handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_listener_set_accuracy_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_unset_accuracy_cb(
  sensor_listener_h listener,
) =>
    tizenCapiSystemSensor.sensor_listener_unset_accuracy_cb(
      listener,
    );

/// @deprecated Deprecated since 5.5. Use sensor_listener_unset_events_cb() instead.
/// @brief   Unregisters the sensor event callback function attached to a given sensor listener.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter   listener    A listener handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_listener_set_event_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_unset_event_cb(
  sensor_listener_h listener,
) =>
    tizenCapiSystemSensor.sensor_listener_unset_event_cb(
      listener,
    );

/// @brief   Unsets the sensor events callback function attached to a given sensor listener.
/// @since_tizen 5.5
///
/// Parameter   listener    A listener handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_listener_set_events_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_listener_unset_events_cb(
  sensor_listener_h listener,
) =>
    tizenCapiSystemSensor.sensor_listener_unset_events_cb(
      listener,
    );

/// @deprecated Deprecated since 5.5. Use sensor_provider_publish_events() instead.
/// @brief   Publishes a sensor event through the declared sensor.
/// @details This function publishes a sensor's data to its listeners.
/// @since_tizen 4.0
///
/// Parameter   provider    The sensor provider handle
/// Parameter   event       The sensor event
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_publish(
  sensor_provider_h provider,
  sensor_event_s event,
) =>
    tizenCapiSystemSensor.sensor_provider_publish(
      provider,
      event,
    );

/// @brief   Publishes sensor events through the declared sensor.
/// @details This function publishes a sensor's data to its listeners.
/// @since_tizen 5.5
///
/// @remarks Both callbacks sensor_event_cb() (set with sensor_listener_set_event_cb())
/// and sensor_events_cb() (set with sensor_listener_set_events_cb()) are available.
/// Only one of the callbacks can be used at any given time.
/// A call to sensor_listener_set_event_cb() or sensor_listener_set_events_cb() sets the new callback
/// in place of the callback previously set by any of the callback setters.
/// If sensor_events_cb() is set and a single event is published with sensor_provider_publish(),
/// then the event will be delivered through this callback with events_count set to 1.
/// If sensor_event_cb() is set and multiple events are published with sensor_provider_publish_events(),
/// then only the first element of @a events will be delivered. This behavior is not guaranteed,
/// it's strongly recommended not to use sensor_provider_publish_events() with sensor_event_cb().
///
/// Parameter   provider    The sensor provider handle
/// Parameter   events      The sensor events
/// Parameter   count       The number of events
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_publish_events(
  sensor_provider_h provider,
  ffi.Pointer<sensor_event_s> events,
  int count,
) =>
    tizenCapiSystemSensor.sensor_provider_publish_events(
      provider,
      events,
      count,
    );

/// @brief   Registers the callback function to be invoked when the interval is changed.
/// @since_tizen 4.0
///
/// Parameter  provider    The sensor provider handle
/// Parameter  callback    The callback function to attach to the @a provider handle
/// Parameter  user_data   The user data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_set_interval_changed_cb(
  sensor_provider_h provider,
  sensor_provider_interval_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSensor.sensor_provider_set_interval_changed_cb(
      provider,
      callback,
      user_data,
    );

/// @brief   Sets the name to the sensor provider.
/// @since_tizen 4.0
///
/// Parameter  provider    The sensor provider handle
/// Parameter  name        The name of the sensor
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @pre     sensor_create_provider()
/// @see     sensor_provider_set_vendor()
/// sensor_provider_set_range()
/// sensor_provider_set_resolution()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_set_name(
  sensor_provider_h provider,
  ffi.Pointer<ffi.Char> name,
) =>
    tizenCapiSystemSensor.sensor_provider_set_name(
      provider,
      name,
    );

/// @brief   Sets the range of possible sensor values to the sensor provider.
/// @since_tizen 4.0
///
/// @remarks    If the application does not set the range, the default values are 0 and 1.
///
/// Parameter  provider    The sensor provider handle
/// Parameter  min_range   The lower bound
/// Parameter  max_range   The upper bound
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @pre     sensor_create_provider()
/// @see     sensor_provider_set_name()
/// sensor_provider_set_vendor()
/// sensor_provider_set_resolution()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_set_range(
  sensor_provider_h provider,
  double min_range,
  double max_range,
) =>
    tizenCapiSystemSensor.sensor_provider_set_range(
      provider,
      min_range,
      max_range,
    );

/// @brief   Sets the resolution of sensor values to the sensor provider.
/// @since_tizen 4.0
///
/// @remarks    If the application does not set the resolution, the default value is 1.
///
/// Parameter  provider    The sensor provider handle
/// Parameter  resolution  The resolution
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @pre     sensor_create_provider()
/// @see     sensor_provider_set_name()
/// sensor_provider_set_vendor()
/// sensor_provider_set_range()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_set_resolution(
  sensor_provider_h provider,
  double resolution,
) =>
    tizenCapiSystemSensor.sensor_provider_set_resolution(
      provider,
      resolution,
    );

/// @brief   Registers the callback function to be invoked when a listener starts the sensor provider.
/// @since_tizen 4.0
///
/// Parameter  provider    The provider handle
/// Parameter  callback    The callback function to attach to the @a provider handle
/// Parameter  user_data   The user data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_set_start_cb(
  sensor_provider_h provider,
  sensor_provider_start_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSensor.sensor_provider_set_start_cb(
      provider,
      callback,
      user_data,
    );

/// @brief   Registers the callback function to be invoked when a sensor listener stops the sensor provider.
/// @since_tizen 4.0
///
/// Parameter  provider    The sensor provider handle
/// Parameter  callback    The callback function to attach to the @a provider handle
/// Parameter  user_data   The user data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_set_stop_cb(
  sensor_provider_h provider,
  sensor_provider_stop_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSensor.sensor_provider_set_stop_cb(
      provider,
      callback,
      user_data,
    );

/// @brief   Sets the vendor to the sensor provider.
/// @since_tizen 4.0
///
/// Parameter  provider    The sensor provider handle
/// Parameter  vendor      The vendor of the sensor
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @pre     sensor_create_provider()
/// @see     sensor_provider_set_name()
/// sensor_provider_set_range()
/// sensor_provider_set_resolution()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_provider_set_vendor(
  sensor_provider_h provider,
  ffi.Pointer<ffi.Char> vendor,
) =>
    tizenCapiSystemSensor.sensor_provider_set_vendor(
      provider,
      vendor,
    );

/// @brief   Creates a recorder option handle.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// @remarks The @a option must be released using sensor_recorder_destroy_option().
///
/// Output parameter  option  Option handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_create_option(
  ffi.Pointer<sensor_recorder_option_h> option,
) =>
    tizenCapiSystemSensor.sensor_recorder_create_option(
      option,
    );

/// @brief   Creates a recorder query handle.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// @remarks The @a query must be released using sensor_recorder_destroy_query().
///
/// Output parameter  query  Query handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OUT_OF_MEMORY        Out of memory
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_create_query(
  ffi.Pointer<sensor_recorder_query_h> query,
) =>
    tizenCapiSystemSensor.sensor_recorder_create_query(
      query,
    );

/// @brief    Gets a double value from a record data.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  data        Record data handle
/// Parameter  key         Data attribute to retrieve
/// Output parameter value       Retrieved value
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
/// @retval  #SENSOR_ERROR_NO_DATA              No data retrieved
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_data_get_double(
  sensor_recorder_data_h data,
  int key,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenCapiSystemSensor.sensor_recorder_data_get_double(
      data,
      key,
      value,
    );

/// @brief    Gets an integer value from a record data.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  data        Record data handle
/// Parameter  key         Data attribute to retrieve
/// Output parameter value       Retrieved value
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
/// @retval  #SENSOR_ERROR_NO_DATA              No data retrieved
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_data_get_int(
  sensor_recorder_data_h data,
  int key,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiSystemSensor.sensor_recorder_data_get_int(
      data,
      key,
      value,
    );

/// @brief    Gets the start and the end time of the time period of a given record data.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  data        Record data handle
/// Output parameter start_time  Start time of the time period of the record
/// Output parameter end_time    End time of the time period of the record
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_data_get_time(
  sensor_recorder_data_h data,
  ffi.Pointer<time_t> start_time,
  ffi.Pointer<time_t> end_time,
) =>
    tizenCapiSystemSensor.sensor_recorder_data_get_time(
      data,
      start_time,
      end_time,
    );

/// @brief   Destroys a recorder option handle.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  option  Option handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_destroy_option(
  sensor_recorder_option_h option,
) =>
    tizenCapiSystemSensor.sensor_recorder_destroy_option(
      option,
    );

/// @brief   Destroys a recorder query handle.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  query  Query handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_destroy_query(
  sensor_recorder_query_h query,
) =>
    tizenCapiSystemSensor.sensor_recorder_destroy_query(
      query,
    );

/// @brief   Checks whether it is supported to record a given sensor type.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter   type        A sensor type to check
/// Output parameter  supported   If supported, @c true; Otherwise @c false
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_is_supported(
  int type,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiSystemSensor.sensor_recorder_is_supported(
      type,
      supported,
    );

/// @brief   Sets a recording option parameter.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  option      Option handle
/// Parameter  param       Option parameter
/// Parameter  value       Value
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_option_set_int(
  sensor_recorder_option_h option,
  int param,
  int value,
) =>
    tizenCapiSystemSensor.sensor_recorder_option_set_int(
      option,
      param,
      value,
    );

/// @brief   Sets an integer-type query parameter
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  query       Query handle
/// Parameter  param       Query parameter
/// Parameter  value       Value
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_query_set_int(
  sensor_recorder_query_h query,
  int param,
  int value,
) =>
    tizenCapiSystemSensor.sensor_recorder_query_set_int(
      query,
      param,
      value,
    );

/// @brief   Sets a time-type query parameter.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  query       Query handle
/// Parameter  param       Query parameter
/// Parameter  t           Time
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_query_set_time(
  sensor_recorder_query_h query,
  int param,
  int t,
) =>
    tizenCapiSystemSensor.sensor_recorder_query_set_time(
      query,
      param,
      t,
    );

/// @brief    Queries the recorded data asynchronously.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// @remarks Some sensor types are privileged. An application should have the privilege
/// http://tizen.org/privilege/healthinfo to get access to the following sensors:
/// #SENSOR_HRM, #SENSOR_HRM_LED_GREEN, #SENSOR_HRM_LED_IR, #SENSOR_HRM_LED_RED,
/// #SENSOR_HUMAN_PEDOMETER, #SENSOR_HUMAN_SLEEP_MONITOR, #SENSOR_HUMAN_SLEEP_DETECTOR,
/// and #SENSOR_HUMAN_STRESS_MONITOR.
///
/// Parameter  type        Sensor type
/// Parameter  query       Query handle
/// Parameter  cb          Callback function to receive the queried data
/// Parameter  user_data   User data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_NOT_SUPPORTED        Not supported to record the sensor type
/// @retval  #SENSOR_ERROR_PERMISSION_DENIED    Permission denied
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_recorder_read_sync()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_read(
  int type,
  sensor_recorder_query_h query,
  sensor_recorder_data_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSensor.sensor_recorder_read(
      type,
      query,
      cb,
      user_data,
    );

/// @brief    Queries the recorded data synchronously.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// @remarks Some sensor types are privileged. An application should have the privilege
/// http://tizen.org/privilege/healthinfo to get access to the following sensors:
/// #SENSOR_HRM, #SENSOR_HRM_LED_GREEN, #SENSOR_HRM_LED_IR, #SENSOR_HRM_LED_RED,
/// #SENSOR_HUMAN_PEDOMETER, #SENSOR_HUMAN_SLEEP_MONITOR, #SENSOR_HUMAN_SLEEP_DETECTOR,
/// and #SENSOR_HUMAN_STRESS_MONITOR.
///
/// Parameter  type        Sensor type
/// Parameter  query       Query handle
/// Parameter  cb          Callback function to receive the queried data
/// Parameter  user_data   User data to be passed to the callback function
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_NOT_SUPPORTED        Not supported to record the sensor type
/// @retval  #SENSOR_ERROR_PERMISSION_DENIED    Permission denied
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
/// @retval  #SENSOR_ERROR_NO_DATA              No data retrieved
///
/// @see     sensor_recorder_read()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_read_sync(
  int type,
  sensor_recorder_query_h query,
  sensor_recorder_data_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiSystemSensor.sensor_recorder_read_sync(
      type,
      query,
      cb,
      user_data,
    );

/// @brief   Starts to record a given sensor type.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// @remarks Some sensor types are privileged. An application should have the privilege
/// http://tizen.org/privilege/healthinfo to get access to the following sensors:
/// #SENSOR_HRM, #SENSOR_HRM_LED_GREEN, #SENSOR_HRM_LED_IR, #SENSOR_HRM_LED_RED,
/// #SENSOR_HUMAN_PEDOMETER, #SENSOR_HUMAN_SLEEP_MONITOR, #SENSOR_HUMAN_SLEEP_DETECTOR,
/// and #SENSOR_HUMAN_STRESS_MONITOR.
///
/// Parameter  type    A sensor type to be recorded
/// Parameter  option  Option
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_NOT_SUPPORTED        Not supported to record the sensor type
/// @retval  #SENSOR_ERROR_PERMISSION_DENIED    Permission denied
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
/// @retval  #SENSOR_ERROR_NOT_AVAILABLE        The sensor is already being recorded by the request of the current application
///
/// @see sensor_recorder_stop()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_start(
  int type,
  sensor_recorder_option_h option,
) =>
    tizenCapiSystemSensor.sensor_recorder_start(
      type,
      option,
    );

/// @brief   Stops recording a given sensor type.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
///
/// Parameter  type    A sensor type being recorded
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_NOT_SUPPORTED        The sensor type is not supported
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see sensor_recorder_start()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_recorder_stop(
  int type,
) =>
    tizenCapiSystemSensor.sensor_recorder_stop(
      type,
    );

/// @brief   Unregisters the sensor provider.
/// @since_tizen 4.0
///
/// Parameter  provider  The sensor provider handle
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_add_provider()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_remove_provider(
  sensor_provider_h provider,
) =>
    tizenCapiSystemSensor.sensor_remove_provider(
      provider,
    );

/// @brief  Removes a callback function added using sensor_add_sensor_added_cb().
/// @since_tizen 4.0
///
/// Parameter  callback  A callback function to be removed
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see     sensor_add_sensor_added_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_remove_sensor_added_cb(
  sensor_added_cb callback,
) =>
    tizenCapiSystemSensor.sensor_remove_sensor_added_cb(
      callback,
    );

/// @brief  Removes a callback function added using sensor_add_sensor_removed_cb().
/// @since_tizen 4.0
///
/// Parameter  callback  A callback function to be removed
///
/// @return  #SENSOR_ERROR_NONE on success, otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
/// @retval  #SENSOR_ERROR_OPERATION_FAILED     Operation failed
///
/// @see   sensor_add_sensor_removed_cb()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_remove_sensor_removed_cb(
  sensor_removed_cb callback,
) =>
    tizenCapiSystemSensor.sensor_remove_sensor_removed_cb(
      callback,
    );

/// @brief Gets the altitude from the atmospheric pressure, the pressure at sea level and temperature, in meters.
/// @since_tizen 4.0
///
/// Parameter  pressure           The atmospheric pressure (hPa)
/// Parameter  sea_level_pressure The sea level pressure (hPa) @n
/// If the sea level pressure is not known, you can use 1013.25 hPa, mean sea level pressure
/// Parameter  temperature        The temperature (degrees Celsius) @n
/// If the temperature is not known, you can use 15 degrees Celsius
/// Output parameter altitude           The altitude (meters)
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_util_get_altitude(
  double pressure,
  double sea_level_pressure,
  double temperature,
  ffi.Pointer<ffi.Float> altitude,
) =>
    tizenCapiSystemSensor.sensor_util_get_altitude(
      pressure,
      sea_level_pressure,
      temperature,
      altitude,
    );

/// @brief Computes the angle change between two rotation matrices.
///
/// @details Given a current rotation matrix (R) and a previous rotation matrix (prevR), it computes
/// the rotation around the x,y, and z axes which transforms prevR to R.
/// It outputs a 3 element vector containing the x,y, and z angle change at indexes 0, 1, and 2 respectively. \n
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Each input matrix is a 3x3 matrix like this form:
/// <pre>
/// { R[0], R[1], R[2],
/// R[3], R[4], R[5],
/// R[6], R[7], R[6] }
/// </pre>
///
/// Parameter R             The current rotation matrix
/// Parameter prevR         The previous rotation matrix
/// Output parameter angleChange  An array of floats in which the angle change is stored
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_util_get_angle_change(
  ffi.Pointer<ffi.Float> R,
  ffi.Pointer<ffi.Float> prevR,
  ffi.Pointer<ffi.Float> angleChange,
) =>
    tizenCapiSystemSensor.sensor_util_get_angle_change(
      R,
      prevR,
      angleChange,
    );

/// @brief Gets the declination of the horizontal component of the magnetic field from true north, in degrees.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  latitude     The latitude in geodetic coordinates
/// Parameter  longitude    The longitude in geodetic coordinates
/// Parameter  altitude     The altitude in geodetic coordinates
/// Output parameter declination  The declination of the horizontal component of the magnetic field in degrees
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_util_get_declination(
  double latitude,
  double longitude,
  double altitude,
  ffi.Pointer<ffi.Float> declination,
) =>
    tizenCapiSystemSensor.sensor_util_get_declination(
      latitude,
      longitude,
      altitude,
      declination,
    );

/// @brief Computes the geomagnetic inclination angle in radians from the inclination matrix I returned by sensor_util_get_rotation_matrix().
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  I            The inclination matrix from sensor_util_get_rotation_matrix()
/// Output parameter inclination  The geomagnetic inclination angle in radians
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @see sensor_util_get_rotation_matrix()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_util_get_inclination(
  ffi.Pointer<ffi.Float> I,
  ffi.Pointer<ffi.Float> inclination,
) =>
    tizenCapiSystemSensor.sensor_util_get_inclination(
      I,
      inclination,
    );

/// @brief Computes the device's orientation based on the rotation matrix.
///
/// @details When it returns, the array values are filled with the result:
/// - values[0]: azimuth, rotation around the Z axis.
/// - values[1]: pitch, rotation around the X axis.
/// - values[2]: roll, rotation around the Y axis.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Parameter R must be an array of 9 floats from sensor_util_get_rotation_matrix() \n
/// Returned values are always arrays of 3 floats.
///
/// Parameter  R         A 9 element rotation matrix in the array
/// Output parameter values    An array of 3 floats to hold the result
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// @see sensor_util_get_rotation_matrix()
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_util_get_orientation(
  ffi.Pointer<ffi.Float> R,
  ffi.Pointer<ffi.Float> values,
) =>
    tizenCapiSystemSensor.sensor_util_get_orientation(
      R,
      values,
    );

/// @brief   Gets the inclination matrix @"I@" and rotation matrix @"R@" transforming a vector from the device coordinate to the world's coordinate.
///
/// @details [0 0 g] = R * gravity (g = magnitude of gravity) \n
/// [0 m 0] = I * R * geomagnetic (m = magnitude of the geomagnetic field) \n
/// R is the identity matrix when the device is aligned with the world's coordinate system, that is, when the device's X axis points towards the East, the Y axis points to the North Pole and the device is facing the sky. \n
/// I is a rotation matrix transforming the geomagnetic vector into the same coordinate space as gravity (the world's coordinate space). I is a simple rotation around the X axis. \n
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Parameters Gx, Gy, and Gz can be obtained from the values returned by #SENSOR_GRAVITY. \n
/// Parameters Mx, My, and Mz can be obtained from the values returned by #SENSOR_MAGNETIC.
/// Output parameter R and I are always returned as a 3x3 matrix array of 9 floats like this form:
/// <pre>
/// { R[0], R[1], R[2],
/// R[3], R[4], R[5],
/// R[6], R[7], R[6] }
/// </pre>
///
///
/// Parameter  Gx   The X-axis gravity vector in the device's coordinate
/// Parameter  Gy   The Y-axis gravity vector in the device's coordinate
/// Parameter  Gz   The Z-axis gravity vector in the device's coordinate
/// Parameter  Mx   The X-axis geomagnetic vector in the device's coordinate
/// Parameter  My   The Y-axis geomagnetic vector in the device's coordinate
/// Parameter  Mz   The Z-axis geomagnetic vector in the device's coordinate
/// Output parameter R    The array of 9 floats that represent the rotation matrix @"R@" \n
/// It can be null.
/// Output parameter I    The array of 9 floats that represent the inclination matrix @"I@" \n
/// It can be null.
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_util_get_rotation_matrix(
  double Gx,
  double Gy,
  double Gz,
  double Mx,
  double My,
  double Mz,
  ffi.Pointer<ffi.Float> R,
  ffi.Pointer<ffi.Float> I,
) =>
    tizenCapiSystemSensor.sensor_util_get_rotation_matrix(
      Gx,
      Gy,
      Gz,
      Mx,
      My,
      Mz,
      R,
      I,
    );

/// @brief Converts a rotation vector to a rotation matrix.
///
/// @details Rotation vectors (Vx, Vy, Vz) can be obtained from #SENSOR_ROTATION_VECTOR.
/// It returns a 9 element rotation matrix in the array R. R must have length as 9.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter  Vx   The X-axis rotation vector
/// Parameter  Vy   The Y-axis rotation vector
/// Parameter  Vz   The Z-axis rotation vector
/// Output parameter R    A 9 element rotation matrix in the array R that must have length as 9
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_util_get_rotation_matrix_from_vector(
  double Vx,
  double Vy,
  double Vz,
  ffi.Pointer<ffi.Float> R,
) =>
    tizenCapiSystemSensor.sensor_util_get_rotation_matrix_from_vector(
      Vx,
      Vy,
      Vz,
      R,
    );

/// @brief Rotates the supplied rotation matrix so that it is expressed in a different coordinate system.
///
/// @details This is typically used when an application needs to compute the three orientation angles of the device in a different coordinate system.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks inR and outR can be the same array, but this is not recommended for performance reasons.
/// This returns an error when X and Y define the same axis.
///
/// Parameter  inR  The rotation matrix (3x3) to be transformed
/// Parameter  x    The world axis and direction on which the X axis of the device is mapped
/// Parameter  y    The world axis and direction on which the Y axis of the device is mapped
/// Output parameter outR The transformed rotation matrix (3x3)
///
/// @return  #SENSOR_ERROR_NONE on success; Otherwise a negative error value
/// @retval  #SENSOR_ERROR_NONE                 Successful
/// @retval  #SENSOR_ERROR_INVALID_PARAMETER    Invalid parameter
///
/// Module getter: `tizenCapiSystemSensor`.
int sensor_util_remap_coordinate_system(
  ffi.Pointer<ffi.Float> inR,
  int x,
  int y,
  ffi.Pointer<ffi.Float> outR,
) =>
    tizenCapiSystemSensor.sensor_util_remap_coordinate_system(
      inR,
      x,
      y,
      outR,
    );

