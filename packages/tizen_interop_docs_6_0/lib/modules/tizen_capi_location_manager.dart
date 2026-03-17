// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiLocationManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-location-manager.so.0`.
///
/// Location / Location Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_location_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Invokes the callback function for each last satellite which is recorded.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks This function is valid only for location managers with the #LOCATIONS_METHOD_GPS method.
/// Parameter manager The location manager handle
/// Parameter callback The iteration callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
/// @pre The gps_status_satellite_updated_cb must be set with gps_status_set_satellite_updated_cb().
/// @post It invokes gps_status_get_satellites_cb().
/// @see gps_status_get_last_satellite()
/// @see gps_status_get_satellites_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int gps_status_foreach_last_satellites_in_view(
  location_manager_h manager,
  gps_status_get_satellites_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.gps_status_foreach_last_satellites_in_view(
      manager,
      callback,
      user_data,
    );

/// @brief Invokes the callback function for each satellite.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks This function is valid only for location managers with the #LOCATIONS_METHOD_GPS method.
/// Parameter manager The location manager handle
/// Parameter callback The iteration callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
/// @pre The gps_status_satellite_updated_cb must be set with gps_status_set_satellite_updated_cb().
/// @post It invokes gps_status_get_satellites_cb().
/// @see gps_status_get_satellite()
/// @see gps_status_get_satellites_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int gps_status_foreach_satellites_in_view(
  location_manager_h manager,
  gps_status_get_satellites_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.gps_status_foreach_satellites_in_view(
      manager,
      callback,
      user_data,
    );

/// @brief Gets the last information of satellites.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks This call is valid only for location managers with #LOCATIONS_METHOD_GPS method.
/// Parameter manager The location manager handle
/// Output parameter num_of_active The last number of active satellites
/// Output parameter num_of_inview The last number of satellites in view
/// Output parameter timestamp The last timestamp (time when last measurement took place or @c 0 if valid)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
/// @pre The gps_status_satellite_updated_cb must be set with gps_status_set_satellite_updated_cb().
/// @see gps_status_foreach_satellites_in_view()
///
/// Module getter: `tizenCapiLocationManager`.
int gps_status_get_last_satellite(
  location_manager_h manager,
  ffi.Pointer<ffi.Int> num_of_active,
  ffi.Pointer<ffi.Int> num_of_inview,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiLocationManager.gps_status_get_last_satellite(
      manager,
      num_of_active,
      num_of_inview,
      timestamp,
    );

/// @brief Gets the GPS NMEA data.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This call is valid only for location managers with #LOCATIONS_METHOD_GPS method.
/// You must release @a nmea using @c free().
/// Parameter manager The location manager handle
/// Output parameter nmea The NMEA data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
/// @see location_manager_start()
///
/// Module getter: `tizenCapiLocationManager`.
int gps_status_get_nmea(
  location_manager_h manager,
  ffi.Pointer<ffi.Pointer<ffi.Char>> nmea,
) =>
    tizenCapiLocationManager.gps_status_get_nmea(
      manager,
      nmea,
    );

/// @brief Gets the information of satellites.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks This call is valid only for location managers with #LOCATIONS_METHOD_GPS method.
/// Parameter manager The location manager handle
/// Output parameter num_of_active The number of active satellites
/// Output parameter num_of_inview The number of satellites in view
/// Output parameter timestamp The timestamp (time when measurement took place or @c 0 if valid)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
/// @pre The gps_status_satellite_updated_cb must be set with gps_status_set_satellite_updated_cb().
/// @see gps_status_foreach_satellites_in_view()
///
/// Module getter: `tizenCapiLocationManager`.
int gps_status_get_satellite(
  location_manager_h manager,
  ffi.Pointer<ffi.Int> num_of_active,
  ffi.Pointer<ffi.Int> num_of_inview,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiLocationManager.gps_status_get_satellite(
      manager,
      num_of_active,
      num_of_inview,
      timestamp,
    );

/// @brief Registers a callback function to be invoked at defined interval with updated satellite information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Parameter callback The callback function to register
/// Parameter interval The interval [1 ~ 120] (seconds)
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post gps_status_satellite_updated_cb() will be invoked.
/// @see gps_status_unset_satellite_updated_cb()
/// @see gps_status_satellite_updated_cb()
/// @see gps_status_get_satellite()
/// @see gps_status_foreach_satellites_in_view()
/// @see gps_status_get_last_satellite()
/// @see gps_status_foreach_last_satellites_in_view()
///
/// Module getter: `tizenCapiLocationManager`.
int gps_status_set_satellite_updated_cb(
  location_manager_h manager,
  gps_status_satellite_updated_cb callback,
  int interval,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.gps_status_set_satellite_updated_cb(
      manager,
      callback,
      interval,
      user_data,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see gps_status_set_satellite_updated_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int gps_status_unset_satellite_updated_cb(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.gps_status_unset_satellite_updated_cb(
      manager,
    );

/// @brief Checks whether the bounds contains the specified coordinates.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter bounds The location bounds handle
/// Parameter coords The coordinates
/// @return @c true if the bounds contains the specified coordinates,
/// otherwise else @c false
/// @exception #LOCATION_BOUNDS_ERROR_NONE Successful
/// @exception #LOCATION_BOUNDS_ERROR_OUT_OF_MEMORY Out of memory
/// @exception #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED Not supported
/// @see location_bounds_create_rect()
/// @see location_bounds_create_circle()
/// @see location_bounds_create_polygon()
///
/// Module getter: `tizenCapiLocationManager`.
bool location_bounds_contains_coordinates(
  location_bounds_h bounds,
  location_coords_s coords,
) =>
    tizenCapiLocationManager.location_bounds_contains_coordinates(
      bounds,
      coords,
    );

/// @brief Checks whether the edges of the bounds contain the specified coordinates within tolerance.
/// @since_tizen 6.0
/// Parameter bounds The location bounds handle
/// Parameter coords The coordinates
/// Parameter tolerance tolerance in metres
/// @return @c true if the distance between edges of @a bounds and point at @a coords are not farther than @a tolerance
/// otherwise @c false
/// @exception #LOCATION_BOUNDS_ERROR_NONE Successful
/// @exception #LOCATION_BOUNDS_ERROR_OUT_OF_MEMORY Out of memory
/// @exception #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED Not supported
/// @see location_bounds_create_rect()
/// @see location_bounds_create_circle()
/// @see location_bounds_create_polygon()
///
/// Module getter: `tizenCapiLocationManager`.
bool location_bounds_contains_coordinates_on_edge(
  location_bounds_h bounds,
  location_coords_s coords,
  double tolerance,
) =>
    tizenCapiLocationManager.location_bounds_contains_coordinates_on_edge(
      bounds,
      coords,
      tolerance,
    );

/// @brief Creates a circle type of new location bounds.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a bounds using location_bounds_destroy().
/// Parameter center The center position
/// Parameter radius The radius of a circle (meters)
/// Output parameter bounds The location bounds handle that is newly created
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @see location_bounds_get_circle_coords()
/// @see location_bounds_destroy()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_create_circle(
  location_coords_s center,
  double radius,
  ffi.Pointer<location_bounds_h> bounds,
) =>
    tizenCapiLocationManager.location_bounds_create_circle(
      center,
      radius,
      bounds,
    );

/// @brief Creates a polygon type of new location bounds.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a bounds using location_bounds_destroy().
/// @remarks @a length should be more than @c 3 to represent polygon.
/// Parameter coords_list The list of coordinates
/// Parameter length The length of the coordinates list
/// Output parameter bounds The location bounds handle that is newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @see location_bounds_foreach_polygon_coords()
/// @see location_bounds_destroy()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_create_polygon(
  ffi.Pointer<location_coords_s> coords_list,
  int length,
  ffi.Pointer<location_bounds_h> bounds,
) =>
    tizenCapiLocationManager.location_bounds_create_polygon(
      coords_list,
      length,
      bounds,
    );

/// @brief Creates a rect type of new location bounds.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a bounds using location_bounds_destroy().
/// Parameter top_left The top left position
/// Parameter bottom_right The bottom right position
/// Output parameter bounds The location bounds handle that is newly created
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @see location_bounds_get_rect_coords()
/// @see location_bounds_destroy()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_create_rect(
  location_coords_s top_left,
  location_coords_s bottom_right,
  ffi.Pointer<location_bounds_h> bounds,
) =>
    tizenCapiLocationManager.location_bounds_create_rect(
      top_left,
      bottom_right,
      bounds,
    );

/// @brief Releases the location bounds.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter bounds The location bounds handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @see location_bounds_create_rect()
/// @see location_bounds_create_circle()
/// @see location_bounds_create_polygon()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_destroy(
  location_bounds_h bounds,
) =>
    tizenCapiLocationManager.location_bounds_destroy(
      bounds,
    );

/// @brief Get the coordinates of a polygon.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter bounds The location bounds handle
/// Parameter callback The iteration callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @retval #LOCATION_BOUNDS_ERROR_INCORRECT_TYPE Incorrect bounds type
/// @post It invokes polygon_coords_cb() to get coordinates of polygon.
/// @see polygon_coords_cb()
/// @see location_bounds_create_polygon()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_foreach_polygon_coords(
  location_bounds_h bounds,
  polygon_coords_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_bounds_foreach_polygon_coords(
      bounds,
      callback,
      user_data,
    );

/// @brief Gets the center position and radius of circle bounds.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter bounds The location bounds handle
/// Output parameter center The center position of the circle
/// Output parameter radius The radius of the circle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @retval #LOCATION_BOUNDS_ERROR_INCORRECT_TYPE Incorrect bounds type
/// @see location_bounds_create_circle()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_get_circle_coords(
  location_bounds_h bounds,
  ffi.Pointer<location_coords_s> center,
  ffi.Pointer<ffi.Double> radius,
) =>
    tizenCapiLocationManager.location_bounds_get_circle_coords(
      bounds,
      center,
      radius,
    );

/// @brief Gets the center position and radius of circle bounds.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter bounds The location bounds handle
/// Output parameter top_left The top left position
/// Output parameter bottom_right The bottom right position
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @retval #LOCATION_BOUNDS_ERROR_INCORRECT_TYPE Incorrect bounds type
/// @see location_bounds_create_rect()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_get_rect_coords(
  location_bounds_h bounds,
  ffi.Pointer<location_coords_s> top_left,
  ffi.Pointer<location_coords_s> bottom_right,
) =>
    tizenCapiLocationManager.location_bounds_get_rect_coords(
      bounds,
      top_left,
      bottom_right,
    );

/// @brief Gets the type of location bounds.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter bounds The location bounds handle
/// Output parameter type The type of location bounds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @see location_bounds_create_rect()
/// @see location_bounds_create_circle()
/// @see location_bounds_create_polygon()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_get_type(
  location_bounds_h bounds,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiLocationManager.location_bounds_get_type(
      bounds,
      type,
    );

/// @brief Registers a callback function to be invoked when the boundary area is entered or exited.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter bounds The location bounds handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @post location_bounds_state_changed_cb() will be invoked.
/// @see location_bounds_unset_state_changed_cb()
/// @see location_bounds_state_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_set_state_changed_cb(
  location_bounds_h bounds,
  location_bounds_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_bounds_set_state_changed_cb(
      bounds,
      callback,
      user_data,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter bounds The location bounds handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATION_BOUNDS_ERROR_NONE Successful
/// @retval #LOCATION_BOUNDS_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #LOCATION_BOUNDS_ERROR_NOT_SUPPORTED	Not supported
/// @see location_bounds_set_state_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_bounds_unset_state_changed_cb(
  location_bounds_h bounds,
) =>
    tizenCapiLocationManager.location_bounds_unset_state_changed_cb(
      bounds,
    );

/// @brief Adds bounds for a given location manager.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// Parameter bounds The location bounds handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post It invokes location_manager_set_zone_changed_cb() when a boundary is entered or exited, if you set a callback with location_manager_set_zone_changed_cb().
/// @see location_manager_remove_boundary()
/// @see location_manager_set_zone_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_add_boundary(
  location_manager_h manager,
  location_bounds_h bounds,
) =>
    tizenCapiLocationManager.location_manager_add_boundary(
      manager,
      bounds,
    );

/// @brief Clears a mock location.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_SETTING_OFF MOCK location is not enabled
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_create()
/// @see location_manager_is_enabled_mock_location()
/// @see location_manager_enable_mock_location()
/// @see location_manager_set_mock_location()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_clear_mock_location(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_clear_mock_location(
      manager,
    );

/// @brief Creates a new location manager.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a manager using location_manager_destroy().
/// Parameter method The location method
/// Output parameter manager The location manager handle that is newly created
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_destroy()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_create(
  int method,
  ffi.Pointer<location_manager_h> manager,
) =>
    tizenCapiLocationManager.location_manager_create(
      method,
      manager,
    );

/// @brief Releases the location manager.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_create()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_destroy(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_destroy(
      manager,
    );

/// @platform
/// @brief Enables the given location method.
/// @since_tizen 2.3.1
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/location.enable
/// Parameter method The location method to be checked
/// Parameter enable The value to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED Permission denied
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_is_enabled_method()
/// @see location_manager_create()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_enable_method(
  int method,
  bool enable,
) =>
    tizenCapiLocationManager.location_manager_enable_method(
      method,
      enable,
    );

/// @brief Enables mock location.
/// @details The mock location is a testing function to make location API and callback deliver a mock location
/// set by location_manager_set_mock_location() instead of real positioning data even in the other applications.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks The mock location can only be enabled if developer mode is enabled.
/// Parameter enable The value to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_SETTING_OFF	MOCK location is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED Permission denied
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_is_enabled_mock_location()
/// @see location_manager_set_mock_location()
/// @see location_manager_clear_mock_location()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_enable_mock_location(
  bool enable,
) =>
    tizenCapiLocationManager.location_manager_enable_mock_location(
      enable,
    );

/// @brief Retrieves all location bounds by invoking a specific callback for each location bounds
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// Parameter callback The iteration callback
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post location_bounds_cb() will be invoked.
/// @see location_manager_add_boundary()
/// @see location_manager_remove_boundary()
/// @see location_bounds_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_foreach_boundary(
  location_manager_h manager,
  location_bounds_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_foreach_boundary(
      manager,
      callback,
      user_data,
    );

/// @brief Retrieves all location information by invoking a specific callback for each location data.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Parameter callback The iteration callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre location_manager_foreach_location_batch() is available after location_batch_cb() is invoked.
/// @post location_batch_get_location_cb() will be invoked.
/// @see location_manager_start_batch()
/// @see location_batch_cb()
/// @see location_batch_get_location_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_foreach_location_batch(
  location_manager_h manager,
  location_batch_get_location_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_foreach_location_batch(
      manager,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 3.0
/// @brief Gets the current application's location accessibility status.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Output parameter state The current location service accessibility status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_accessibility_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiLocationManager.location_manager_get_accessibility_state(
      state,
    );

/// @brief Gets the current accuracy information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter level The accuracy level
/// Output parameter horizontal The horizontal accuracy (meters)
/// Output parameter vertical The vertical accuracy (meters)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_GPS_SETTING_OFF GPS is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_accuracy(
  location_manager_h manager,
  ffi.Pointer<ffi.Int32> level,
  ffi.Pointer<ffi.Double> horizontal,
  ffi.Pointer<ffi.Double> vertical,
) =>
    tizenCapiLocationManager.location_manager_get_accuracy(
      manager,
      level,
      horizontal,
      vertical,
    );

/// @brief Gets the distance in meters between two locations.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter start_latitude The starting latitude [-90.0 ~ 90.0] (degrees)
/// Parameter start_longitude The starting longitude [-180.0 ~ 180.0] (degrees)
/// Parameter end_latitude The ending latitude [-90.0 ~ 90.0] (degrees)
/// Parameter end_longitude The ending longitude [-180.0 ~ 180.0] (degrees)
/// Output parameter distance The distance between two locations (meters)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_distance(
  double start_latitude,
  double start_longitude,
  double end_latitude,
  double end_longitude,
  ffi.Pointer<ffi.Double> distance,
) =>
    tizenCapiLocationManager.location_manager_get_distance(
      start_latitude,
      start_longitude,
      end_latitude,
      end_longitude,
      distance,
    );

/// @brief Gets the last accuracy information which is recorded.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter level The last accuracy level
/// Output parameter horizontal The last horizontal accuracy (meters)
/// Output parameter vertical The last vertical accuracy (meters)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location manager handle must be created by location_manager_create().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_last_accuracy(
  location_manager_h manager,
  ffi.Pointer<ffi.Int32> level,
  ffi.Pointer<ffi.Double> horizontal,
  ffi.Pointer<ffi.Double> vertical,
) =>
    tizenCapiLocationManager.location_manager_get_last_accuracy(
      manager,
      level,
      horizontal,
      vertical,
    );

/// @brief Gets the last location information.
/// @details The @a altitude, @a latitude, @a longitude, @a climb, @a direction, @a speed, and @c timestamp values should be 0, if there is no record of any previous position information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter altitude The current altitude (meters)
/// Output parameter latitude The current latitude [-90.0 ~ 90.0] (degrees)
/// Output parameter longitude The current longitude [-180.0 ~ 180.0] (degrees)
/// Output parameter climb The climb (km/h)
/// Output parameter direction The direction, degrees from the north
/// Output parameter speed The speed (km/h)
/// Output parameter level The accuracy level
/// Output parameter horizontal The horizontal accuracy (meters)
/// Output parameter vertical The vertical accuracy (meters)
/// Output parameter timestamp The timestamp (time when measurement took place or @c 0 if valid)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location manager handle must be created by location_manager_create().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_last_location(
  location_manager_h manager,
  ffi.Pointer<ffi.Double> altitude,
  ffi.Pointer<ffi.Double> latitude,
  ffi.Pointer<ffi.Double> longitude,
  ffi.Pointer<ffi.Double> climb,
  ffi.Pointer<ffi.Double> direction,
  ffi.Pointer<ffi.Double> speed,
  ffi.Pointer<ffi.Int32> level,
  ffi.Pointer<ffi.Double> horizontal,
  ffi.Pointer<ffi.Double> vertical,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiLocationManager.location_manager_get_last_location(
      manager,
      altitude,
      latitude,
      longitude,
      climb,
      direction,
      speed,
      level,
      horizontal,
      vertical,
      timestamp,
    );

/// @brief Gets the last position information which is recorded.
/// @details The @a altitude, @a latitude, @a longitude, and @c timestamp values should be 0, if there is no record of any previous position information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter altitude The last altitude (meters)
/// Output parameter latitude The last latitude [-90.0 ~ 90.0] (degrees)
/// Output parameter longitude The last longitude [-180.0 ~ 180.0] (degrees)
/// Output parameter timestamp The timestamp (time when measurement took place or @c 0 if valid)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location manager handle must be created by location_manager_create().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_last_position(
  location_manager_h manager,
  ffi.Pointer<ffi.Double> altitude,
  ffi.Pointer<ffi.Double> latitude,
  ffi.Pointer<ffi.Double> longitude,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiLocationManager.location_manager_get_last_position(
      manager,
      altitude,
      latitude,
      longitude,
      timestamp,
    );

/// @brief Gets the last velocity information which is recorded.
/// @details The @a climb, @a direction, and @a speed values should be @c 0, if there is no record of any previous velocity information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter climb The last climb (km/h)
/// Output parameter direction The last direction, degrees from the north
/// Output parameter speed The last speed (km/h)
/// Output parameter timestamp The timestamp (time when measurement took place or @c 0 if valid)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location manager handle must be created by location_manager_create().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_last_velocity(
  location_manager_h manager,
  ffi.Pointer<ffi.Double> climb,
  ffi.Pointer<ffi.Double> direction,
  ffi.Pointer<ffi.Double> speed,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiLocationManager.location_manager_get_last_velocity(
      manager,
      climb,
      direction,
      speed,
      timestamp,
    );

/// @brief Gets the current position information.
/// @details The result contains the current altitude, latitude, longitude, climb, direction, speed, level, horizontal, and vertical with a measurement timestamp.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter altitude The current altitude (meters)
/// Output parameter latitude The current latitude [-90.0 ~ 90.0] (degrees)
/// Output parameter longitude The current longitude [-180.0 ~ 180.0] (degrees)
/// Output parameter climb The climb (km/h)
/// Output parameter direction The direction, degrees from the north
/// Output parameter speed The speed (km/h)
/// Output parameter level The accuracy level
/// Output parameter horizontal The horizontal accuracy (meters)
/// Output parameter vertical The vertical accuracy (meters)
/// Output parameter timestamp The timestamp (time when measurement took place or @c 0 if valid)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_GPS_SETTING_OFF GPS is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_location(
  location_manager_h manager,
  ffi.Pointer<ffi.Double> altitude,
  ffi.Pointer<ffi.Double> latitude,
  ffi.Pointer<ffi.Double> longitude,
  ffi.Pointer<ffi.Double> climb,
  ffi.Pointer<ffi.Double> direction,
  ffi.Pointer<ffi.Double> speed,
  ffi.Pointer<ffi.Int32> level,
  ffi.Pointer<ffi.Double> horizontal,
  ffi.Pointer<ffi.Double> vertical,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiLocationManager.location_manager_get_location(
      manager,
      altitude,
      latitude,
      longitude,
      climb,
      direction,
      speed,
      level,
      horizontal,
      vertical,
      timestamp,
    );

/// @brief Gets the given location manager's method.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// Output parameter method The location method
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_create()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_method(
  location_manager_h manager,
  ffi.Pointer<ffi.Int32> method,
) =>
    tizenCapiLocationManager.location_manager_get_method(
      manager,
      method,
    );

/// @brief Gets the current position information.
/// @details The result contains the current altitude, latitude, and longitude with a measurement timestamp.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter altitude The current altitude (meters)
/// Output parameter latitude The current latitude [-90.0 ~ 90.0] (degrees)
/// Output parameter longitude The current longitude [-180.0 ~ 180.0] (degrees)
/// Output parameter timestamp The timestamp (time when measurement took place or @c 0 if valid)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_GPS_SETTING_OFF GPS is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_position(
  location_manager_h manager,
  ffi.Pointer<ffi.Double> altitude,
  ffi.Pointer<ffi.Double> latitude,
  ffi.Pointer<ffi.Double> longitude,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiLocationManager.location_manager_get_position(
      manager,
      altitude,
      latitude,
      longitude,
      timestamp,
    );

/// @brief Gets the current velocity information.
/// @details The result contains the current climb, direction, and speed with a measurement timestamp.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter climb The climb (km/h)
/// Output parameter direction The direction, degrees from the north
/// Output parameter speed The speed (km/h)
/// Output parameter timestamp The timestamp (time when measurement took place or @c 0 if valid)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_GPS_SETTING_OFF GPS is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_velocity(
  location_manager_h manager,
  ffi.Pointer<ffi.Double> climb,
  ffi.Pointer<ffi.Double> direction,
  ffi.Pointer<ffi.Double> speed,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCapiLocationManager.location_manager_get_velocity(
      manager,
      climb,
      direction,
      speed,
      timestamp,
    );

/// @brief Gets the current velocity accuracy information.
/// @since_tizen @6.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Output parameter velocity_accuracy The velocity accuracy (m/s)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_GPS_SETTING_OFF GPS is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre The location service state must be #LOCATIONS_SERVICE_ENABLED with location_manager_start().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_get_velocity_accuracy(
  location_manager_h manager,
  ffi.Pointer<ffi.Double> velocity_accuracy,
) =>
    tizenCapiLocationManager.location_manager_get_velocity_accuracy(
      manager,
      velocity_accuracy,
    );

/// @brief Checks whether the given location method is enabled or not on setting.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter method The location method to be checked
/// Output parameter enable The result value of checking the given location method
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_create()
/// @see location_manager_set_setting_changed_cb()
/// @see location_manager_unset_setting_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_is_enabled_method(
  int method,
  ffi.Pointer<ffi.Bool> enable,
) =>
    tizenCapiLocationManager.location_manager_is_enabled_method(
      method,
      enable,
    );

/// @brief Checks whether the mock location is enabled.
/// @since_tizen 3.0
/// Output parameter enabled Indicates whether the mock location is enabled
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_enable_mock_location()
/// @see location_manager_set_mock_location()
/// @see location_manager_clear_mock_location()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_is_enabled_mock_location(
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiLocationManager.location_manager_is_enabled_mock_location(
      enabled,
    );

/// @brief Checks whether the given location method is available.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remark The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter method The location method to be checked
/// @return @c true if the specified location method is supported,
/// otherwise @c false if it is not available
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @see	location_manager_create()
/// @see location_manager_get_method()
///
/// Module getter: `tizenCapiLocationManager`.
bool location_manager_is_supported_method(
  int method,
) =>
    tizenCapiLocationManager.location_manager_is_supported_method(
      method,
    );

/// @brief Deletes bounds for a given location manager.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// Parameter bounds The location bounds handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_add_boundary()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_remove_boundary(
  location_manager_h manager,
  location_bounds_h bounds,
) =>
    tizenCapiLocationManager.location_manager_remove_boundary(
      manager,
      bounds,
    );

/// @brief Requests to update current location once.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks Do not request to start the location service using the same manager handler.
/// Calling this function invokes a location service event. When the location service is updated, location_updated_cb.
/// Parameter manager The location manager handle
/// Parameter timeout Timeout to stop requesting single location after
/// Parameter callback The location callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_NETWORK_FAILED Network failed
/// @retval #LOCATIONS_ERROR_GPS_SETTING_OFF GPS is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post It invokes location_updated_cb().
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_request_single_location(
  location_manager_h manager,
  int timeout,
  location_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_request_single_location(
      manager,
      timeout,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked at minimum interval or minimum distance with updated position information.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter manager The location manager handle
/// Parameter callback The callback function to register
/// Parameter interval The minimum interval between position updates [1 ~ 120] (seconds)
/// Parameter distance The minimum distance between position updates [1 ~ 120] (meters)
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post location_changed_cb() will be invoked.
/// @see location_manager_unset_distance_based_location_changed_cb()
/// @see location_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_distance_based_location_changed_cb(
  location_manager_h manager,
  location_changed_cb callback,
  int interval,
  double distance,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_set_distance_based_location_changed_cb(
      manager,
      callback,
      interval,
      distance,
      user_data,
    );

/// @brief	Changes behavior of the location source selection in the fused location method.
/// @since_tizen 4.0
/// Parameter manager		The location manager handle
/// Parameter mode			The fused mode.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE					Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER		Invalid parameter
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD		Incorrect method
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE	The service is not available
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED			Not supported
/// @see location_manager_create()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_fused_mode(
  location_manager_h manager,
  int mode,
) =>
    tizenCapiLocationManager.location_manager_set_fused_mode(
      manager,
      mode,
    );

/// @brief Registers a callback function to be invoked when batch_period is expired.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks The batch_period should be greater than or equal to the batch_interval.
/// In addition, sometimes the period may not work as you intended, the maximum permissible value for batch_period is device specific.
/// Parameter manager The location manager handle
/// Parameter callback The callback function to register
/// Parameter batch_interval The batch sampling interval [1 ~ 255] (seconds)
/// Parameter batch_period The batch period [1 ~ 60000] (seconds)
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post location_batch_cb() will be invoked.
/// @see location_manager_start_batch()
/// @see location_batch_cb()
/// @see location_manager_unset_location_batch_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_location_batch_cb(
  location_manager_h manager,
  location_batch_cb callback,
  int batch_interval,
  int batch_period,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_set_location_batch_cb(
      manager,
      callback,
      batch_interval,
      batch_period,
      user_data,
    );

/// @brief Registers a callback function to be invoked at defined interval with updated location information.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter manager The location manager handle
/// Parameter callback The callback function to register
/// Parameter interval The interval [1 ~ 120] (seconds)
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post location_changed_cb() will be invoked.
/// @see location_manager_unset_location_changed_cb()
/// @see location_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_location_changed_cb(
  location_manager_h manager,
  location_changed_cb callback,
  int interval,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_set_location_changed_cb(
      manager,
      callback,
      interval,
      user_data,
    );

/// @brief Sets a mock location for the given location method.
/// @details The location sets the given altitude, latitude, longitude, climb, direction, speed, level, horizontal, and vertical accuracy.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The location manager handle
/// Parameter latitude The current latitude [-90.0 ~ 90.0] (degrees)
/// Parameter longitude The current longitude [-180.0 ~ 180.0] (degrees)
/// Parameter altitude The current altitude (meters)
/// Parameter speed The speed (km/h)
/// Parameter direction The direction, degrees from the north [0.0 ~ 360.0]
/// Parameter accuracy The horizontal accuracy (meters)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid argument
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_SETTING_OFF MOCK location is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_create()
/// @see location_manager_is_enabled_mock_location()
/// @see location_manager_enable_mock_location()
/// @see location_manager_clear_mock_location()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_mock_location(
  location_manager_h manager,
  double latitude,
  double longitude,
  double altitude,
  double speed,
  double direction,
  double accuracy,
) =>
    tizenCapiLocationManager.location_manager_set_mock_location(
      manager,
      latitude,
      longitude,
      altitude,
      speed,
      direction,
      accuracy,
    );

/// @brief Registers a callback function to be invoked at defined interval with updated position information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// Parameter callback The callback function to register
/// Parameter interval The interval [1 ~ 120] (seconds)
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post location_position_updated_cb() will be invoked.
/// @see location_manager_unset_position_updated_cb()
/// @see location_position_updated_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_position_updated_cb(
  location_manager_h manager,
  location_position_updated_cb callback,
  int interval,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_set_position_updated_cb(
      manager,
      callback,
      interval,
      user_data,
    );

/// @brief Registers a callback function to be invoked when the location service state is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post location_service_state_changed_cb() will be invoked.
/// @see location_manager_unset_service_state_changed_cb()
/// @see location_service_state_changed_cb()
/// @see location_manager_start()
/// @see location_manager_stop()
/// @see #location_service_state_e
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_service_state_changed_cb(
  location_manager_h manager,
  location_service_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_set_service_state_changed_cb(
      manager,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked when the location setting is changed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter method The method to observe
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post location_setting_changed_cb() will be invoked.
/// @see location_manager_unset_setting_changed_cb()
/// @see location_setting_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_setting_changed_cb(
  int method,
  location_setting_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_set_setting_changed_cb(
      method,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked at defined interval with updated velocity information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// Parameter callback The callback function to register
/// Parameter interval The interval [1 ~ 120] (seconds)
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post location_velocity_updated_cb() will be invoked.
/// @see location_manager_unset_velocity_updated_cb()
/// @see location_velocity_updated_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_velocity_updated_cb(
  location_manager_h manager,
  location_velocity_updated_cb callback,
  int interval,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_set_velocity_updated_cb(
      manager,
      callback,
      interval,
      user_data,
    );

/// @brief Registers a callback function to be invoked when the previously set boundary area is entered or left.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre location_manager_add_boundary() is called before.
/// @post location_zone_changed_cb() will be invoked.
/// @see location_manager_unset_zone_changed_cb()
/// @see location_zone_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_set_zone_changed_cb(
  location_manager_h manager,
  location_zone_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiLocationManager.location_manager_set_zone_changed_cb(
      manager,
      callback,
      user_data,
    );

/// @brief Starts the location service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks There is no limit on number of location managers for which this function was called.
/// @remarks Calling this function invokes a location service event. When the location service is enabled, the service state change callback
/// (set using location_manager_set_service_state_changed_cb()) notifies the user with #LOCATIONS_SERVICE_ENABLED as
/// the first argument, and the service starts.
/// @remarks The started service is a requirement for calling these functions:
/// location_manager_get_position(), location_manager_get_velocity(), location_manager_get_accuracy(),
/// gps_status_get_nmea(), gps_status_get_satellite(), gps_status_foreach_satellites_in_view().
/// @remarks Once you stop the service using location_manager_stop(), you can no longer call the functions listed above.
/// @remarks Starting and stopping the service is in the scope of the given location manager only (if there is more than one manager,
/// starting and stopping should be executed for each of them separately).
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_NETWORK_FAILED Network failed
/// @retval #LOCATIONS_ERROR_GPS_SETTING_OFF GPS is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @post It invokes location_position_updated_cb(), location_velocity_updated_cb(), location_zone_changed_cb(), and location_service_state_changed_cb().
/// @see location_manager_stop()
/// @see location_manager_get_position()
/// @see location_manager_get_velocity()
/// @see location_manager_get_accuracy()
/// @see location_manager_set_service_state_changed_cb()
/// @see location_manager_set_position_updated_cb()
/// @see location_position_updated_cb()
/// @see location_manager_set_velocity_updated_cb()
/// @see location_velocity_updated_cb()
/// @see location_manager_set_zone_changed_cb()
/// @see location_zone_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_start(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_start(
      manager,
    );

/// @brief Starts the location batch service.
/// @details Calling this function starts location batch service, location_batch_cb() will be invoked every @a batch_period seconds.
/// After that, you can obtain all locations with location_manager_foreach_location_batch().
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks Calling this function invokes a location service event. When the location service is enabled, the service state change callback
/// (set using location_manager_set_service_state_changed_cb()) notifies the user with #LOCATIONS_SERVICE_ENABLED as the first argument, and the service starts.
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_NETWORK_FAILED Network failed
/// @retval #LOCATIONS_ERROR_GPS_SETTING_OFF GPS is not enabled
/// @retval #LOCATIONS_ERROR_ACCESSIBILITY_NOT_ALLOWED The application does not have the privilege to call this method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @pre location_manager_set_location_batch_cb()
/// @see location_manager_set_service_state_changed_cb()
/// @see location_service_state_changed_cb()
/// @see location_manager_foreach_location_batch()
/// @see location_manager_stop_batch()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_start_batch(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_start_batch(
      manager,
    );

/// @brief Stops the location service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks This function initiates the process of stopping the service. When the process is finished, callback set using
/// #location_manager_set_service_state_changed_cb() will be called, with #LOCATIONS_SERVICE_DISABLED as first argument.
/// When that happens, the service is stopped and the user is notified.
/// @remarks You can stop and start the location manager as needed.
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_NETWORK_FAILED Network failed
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_start()
/// @see location_manager_set_service_state_changed_cb()
/// @see location_service_state_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_stop(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_stop(
      manager,
    );

/// @brief Stops the location batch service.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks This function initiates the process of stopping the service. When the process is finished, callback set using
/// #location_manager_set_service_state_changed_cb() will be called, with #LOCATIONS_SERVICE_DISABLED as the first argument.
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_SERVICE_NOT_AVAILABLE Service not available
/// @retval #LOCATIONS_ERROR_NETWORK_FAILED Network failed
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_start_batch()
/// @see location_manager_set_service_state_changed_cb()
/// @see location_service_state_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_stop_batch(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_stop_batch(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_set_distance_based_location_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_unset_distance_based_location_changed_cb(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_unset_distance_based_location_changed_cb(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_set_location_batch_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_unset_location_batch_cb(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_unset_location_batch_cb(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_set_location_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_unset_location_changed_cb(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_unset_location_changed_cb(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_set_position_updated_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_unset_position_updated_cb(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_unset_position_updated_cb(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_set_service_state_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_unset_service_state_changed_cb(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_unset_service_state_changed_cb(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter method The method to observe
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_INCORRECT_METHOD Incorrect method
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_set_setting_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_unset_setting_changed_cb(
  int method,
) =>
    tizenCapiLocationManager.location_manager_unset_setting_changed_cb(
      method,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_set_velocity_updated_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_unset_velocity_updated_cb(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_unset_velocity_updated_cb(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The location manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #LOCATIONS_ERROR_NONE Successful
/// @retval #LOCATIONS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #LOCATIONS_ERROR_NOT_SUPPORTED Not supported
/// @see location_manager_set_zone_changed_cb()
///
/// Module getter: `tizenCapiLocationManager`.
int location_manager_unset_zone_changed_cb(
  location_manager_h manager,
) =>
    tizenCapiLocationManager.location_manager_unset_zone_changed_cb(
      manager,
    );

