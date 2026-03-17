// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiGeofenceManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-geofence-manager.so.0`.
///
/// Location / Geofence Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_geofence_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates a bluetooth type of new geofence.
/// @since_tizen 2.4
/// @remarks The fence must be released using geofence_destroy().\n
/// Since 3.0, http://tizen.org/privilege/location privilege is not required.
/// Parameter place_id The current place ID
/// Parameter bssid Specifies the value of BSSID of BT MAC address
/// Parameter ssid Specifies the value of SSID of BT Device
/// Output parameter fence A geofence handle to be newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @retval #GEOFENCE_MANAGER_ERROR_PLACE_ACCESS_DENIED Access to specified place is denied
/// @see geofence_create_geopoint()
/// @see geofence_create_wifi()
/// @see geofence_destroy()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_create_bluetooth(
  int place_id,
  ffi.Pointer<ffi.Char> bssid,
  ffi.Pointer<ffi.Char> ssid,
  ffi.Pointer<geofence_h> fence,
) =>
    tizenCapiGeofenceManager.geofence_create_bluetooth(
      place_id,
      bssid,
      ssid,
      fence,
    );

/// @brief Creates a geopoint type of new geofence.
/// @since_tizen 2.4
/// @remarks The fence must be released using geofence_destroy().\n
/// Since 3.0, http://tizen.org/privilege/location privilege is not required.
/// Parameter place_id The current place ID
/// Parameter latitude Specifies the value of latitude of geofence [-90.0 ~ 90.0] (degrees)
/// Parameter longitude Specifies the value of longitude of geofence [-180.0 ~ 180.0] (degrees)
/// Parameter radius Specifies the value of radius of geofence [100 ~ 500](meter)
/// Parameter address Specifies the value of address
/// Output parameter fence A geofence handle to be newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @retval #GEOFENCE_MANAGER_ERROR_PLACE_ACCESS_DENIED Access to specified place is denied
/// @see geofence_create_bluetooth()
/// @see geofence_create_wifi()
/// @see geofence_destroy()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_create_geopoint(
  int place_id,
  double latitude,
  double longitude,
  int radius,
  ffi.Pointer<ffi.Char> address,
  ffi.Pointer<geofence_h> fence,
) =>
    tizenCapiGeofenceManager.geofence_create_geopoint(
      place_id,
      latitude,
      longitude,
      radius,
      address,
      fence,
    );

/// @brief Creates a Wi-Fi type of new geofence.
/// @since_tizen 2.4
/// @remarks The fence must be released using geofence_destroy().\n
/// Since 3.0, http://tizen.org/privilege/location privilege is not required.
/// Parameter place_id The current place ID
/// Parameter bssid Specifies the value of BSSID of Wi-Fi MAC address
/// Parameter ssid Specifies the value of SSID of Wi-Fi Device
/// Output parameter fence A geofence handle to be newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @retval #GEOFENCE_MANAGER_ERROR_PLACE_ACCESS_DENIED Access to specified place is denied
/// @see geofence_create_geopoint()
/// @see geofence_create_bluetooth()
/// @see geofence_destroy()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_create_wifi(
  int place_id,
  ffi.Pointer<ffi.Char> bssid,
  ffi.Pointer<ffi.Char> ssid,
  ffi.Pointer<geofence_h> fence,
) =>
    tizenCapiGeofenceManager.geofence_create_wifi(
      place_id,
      bssid,
      ssid,
      fence,
    );

/// @brief Releases the geofence.
/// @since_tizen 2.4
/// @remarks Since 3.0, http://tizen.org/privilege/location privilege is not required.
/// Parameter fence The geofence handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @see geofence_create_geopoint()
/// @see geofence_create_bluetooth()
/// @see geofence_create_wifi()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_destroy(
  geofence_h fence,
) =>
    tizenCapiGeofenceManager.geofence_destroy(
      fence,
    );

/// @brief Gets the address of geofence
/// @since_tizen 2.4
/// @remarks The geofence has address only when geofence_type_e is GEOFENCE_TYPE_GEOPOINT. The address must be released using free().
/// Parameter fence The geofence handle
/// Output parameter address Specifies the value of address
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_get_latitude()
/// @see geofence_get_longitude()
/// @see geofence_get_radius()
/// @see geofence_get_type()
/// @see geofence_create_geopoint()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_get_address(
  geofence_h fence,
  ffi.Pointer<ffi.Pointer<ffi.Char>> address,
) =>
    tizenCapiGeofenceManager.geofence_get_address(
      fence,
      address,
    );

/// @brief Gets the bssid of geofence
/// @since_tizen 2.4
/// @remarks The geofence has bssid only when geofence_type_e is GEOFENCE_TYPE_BLUETOOTH or GEOFENCE_TYPE_WIFI. The bssid must be released using free().
/// Parameter fence The geofence handle
/// Output parameter bssid The bssid of geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_get_type()
/// @see geofence_create_bluetooth()
/// @see geofence_create_wifi()
/// @see geofence_get_ssid()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_get_bssid(
  geofence_h fence,
  ffi.Pointer<ffi.Pointer<ffi.Char>> bssid,
) =>
    tizenCapiGeofenceManager.geofence_get_bssid(
      fence,
      bssid,
    );

/// @brief Gets the latitude of geofence.
/// @since_tizen 2.4
/// @remarks The geofence has latitude only when geofence_type_e is GEOFENCE_TYPE_GEOPOINT.
/// Parameter fence The geofence handle
/// Output parameter latitude The latitude of geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument.
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_get_longitude()
/// @see geofence_get_radius()
/// @see geofence_get_address()
/// @see geofence_get_type()
/// @see geofence_create_geopoint()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_get_latitude(
  geofence_h fence,
  ffi.Pointer<ffi.Double> latitude,
) =>
    tizenCapiGeofenceManager.geofence_get_latitude(
      fence,
      latitude,
    );

/// @brief Gets the longitude of geofence.
/// @since_tizen 2.4
/// @remarks The geofence has longitude only when geofence_type_e is GEOFENCE_TYPE_GEOPOINT.
/// Parameter fence The geofence handle
/// Output parameter longitude The longitude of geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_get_latitude()
/// @see geofence_get_radius()
/// @see geofence_get_address()
/// @see geofence_get_type()
/// @see geofence_create_geopoint()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_get_longitude(
  geofence_h fence,
  ffi.Pointer<ffi.Double> longitude,
) =>
    tizenCapiGeofenceManager.geofence_get_longitude(
      fence,
      longitude,
    );

/// @brief Gets the ID of place.
/// @since_tizen 2.4
/// Parameter fence The geofence handle
/// Output parameter place_id The ID of the place
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_create_geopoint()
/// @see geofence_create_bluetooth()
/// @see geofence_create_wifi()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_get_place_id(
  geofence_h fence,
  ffi.Pointer<ffi.Int> place_id,
) =>
    tizenCapiGeofenceManager.geofence_get_place_id(
      fence,
      place_id,
    );

/// @brief Gets the radius of geofence.
/// @since_tizen 2.4
/// @remarks The geofence has radius only when geofence_type_e is GEOFENCE_TYPE_GEOPOINT.
/// Parameter fence The geofence handle
/// Output parameter radius The radius of geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_get_latitude()
/// @see geofence_get_longitude()
/// @see geofence_get_address()
/// @see geofence_get_type()
/// @see geofence_create_geopoint()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_get_radius(
  geofence_h fence,
  ffi.Pointer<ffi.Int> radius,
) =>
    tizenCapiGeofenceManager.geofence_get_radius(
      fence,
      radius,
    );

/// @brief Gets the ssid of geofence
/// @since_tizen 2.4
/// @remarks The geofence has ssid only when geofence_type_e is GEOFENCE_TYPE_BLUETOOTH or GEOFENCE_TYPE_WIFI. The ssid must be released using free().
/// Parameter fence The geofence handle
/// Output parameter ssid The ssid of geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_get_type()
/// @see geofence_create_bluetooth()
/// @see geofence_create_wifi()
/// @see geofence_get_bssid()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_get_ssid(
  geofence_h fence,
  ffi.Pointer<ffi.Pointer<ffi.Char>> ssid,
) =>
    tizenCapiGeofenceManager.geofence_get_ssid(
      fence,
      ssid,
    );

/// @brief Gets the type of geofence.
/// @since_tizen 2.4
/// Parameter fence The geofence handle
/// Output parameter type The type of geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_get_geopoint()
/// @see geofence_get_radius()
/// @see geofence_get_bssid()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_get_type(
  geofence_h fence,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiGeofenceManager.geofence_get_type(
      fence,
      type,
    );

/// @brief Adds a geofence for a given geofence manager.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The geofence manager handle
/// Parameter fence The geofence handle
/// Output parameter geofence_id The geofence ID handle to be newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_INITIALIZED Not initialized
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @see geofence_manager_remove_fence()
/// @see geofence_create_geopoint()
/// @see geofence_create_bluetooth()
/// @see geofence_create_wifi()
/// @see geofence_manager_start()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_add_fence(
  geofence_manager_h manager,
  geofence_h fence,
  ffi.Pointer<ffi.Int> geofence_id,
) =>
    tizenCapiGeofenceManager.geofence_manager_add_fence(
      manager,
      fence,
      geofence_id,
    );

/// @brief Creates a new place for geofencing service.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The geofence manager handle
/// Parameter place_name A place name to be created
/// Output parameter place_id The place ID to be newly created on success
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_INITIALIZED Not initialized
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @see geofence_manager_update_place()
/// @see geofence_manager_remove_place()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_add_place(
  geofence_manager_h manager,
  ffi.Pointer<ffi.Char> place_name,
  ffi.Pointer<ffi.Int> place_id,
) =>
    tizenCapiGeofenceManager.geofence_manager_add_place(
      manager,
      place_name,
      place_id,
    );

/// @brief Creates a new geofence manager.
/// @since_tizen 2.4
/// @remarks The manager must be released using geofence_manager_destroy().\n
/// Since 3.0, http://tizen.org/privilege/location privilege is not required.
/// Output parameter manager A geofence manager handle to be newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_INITIALIZED Not initialized
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @see geofence_manager_destroy()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_create(
  ffi.Pointer<geofence_manager_h> manager,
) =>
    tizenCapiGeofenceManager.geofence_manager_create(
      manager,
    );

/// @brief Releases the geofence manager.
/// @since_tizen 2.4
/// @remarks Since 3.0, http://tizen.org/privilege/location privilege is not required.
/// Parameter manager The geofence manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @pre geofence_manager_stop() is called before.
/// @see geofence_manager_create()
/// @see geofence_manager_stop()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_destroy(
  geofence_manager_h manager,
) =>
    tizenCapiGeofenceManager.geofence_manager_destroy(
      manager,
    );

/// @brief Retrieves a list of fences registered in the specified geofence manager.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The geofence manager handle
/// Parameter callback The callback function to deliver each fence
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_DATABASE Database error
/// @post This function invokes geofence_manager_fence_cb().
/// @see geofence_manager_fence_cb()
/// @see geofence_manager_add_fence()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_foreach_geofence_list(
  geofence_manager_h manager,
  geofence_manager_fence_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiGeofenceManager.geofence_manager_foreach_geofence_list(
      manager,
      callback,
      user_data,
    );

/// @brief Retrieves a list of fences registered in the specified place.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The geofence manager handle
/// Parameter place_id The place ID
/// Parameter callback The callback function to deliver each fence of the specified place
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_DATABASE Database error
/// @retval #GEOFENCE_MANAGER_ERROR_PLACE_ACCESS_DENIED Access to specified place is denied
/// @post This function invokes geofence_manager_fence_cb().
/// @see geofence_manager_fence_cb()
/// @see geofence_manager_add_place()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_foreach_place_geofence_list(
  geofence_manager_h manager,
  int place_id,
  geofence_manager_fence_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiGeofenceManager.geofence_manager_foreach_place_geofence_list(
      manager,
      place_id,
      callback,
      user_data,
    );

/// @brief Retrieves a list of places registered in the specified geofence manager.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The geofence manager handle
/// Parameter callback The callback function to deliver each place of the specified geofence manager
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_DATABASE Database error
/// @post This function invokes geofence_manager_place_cb().
/// @see geofence_manager_place_cb()
/// @see geofence_manager_add_place()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_foreach_place_list(
  geofence_manager_h manager,
  geofence_manager_place_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiGeofenceManager.geofence_manager_foreach_place_list(
      manager,
      callback,
      user_data,
    );

/// @brief Gets the name of place.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks The place_name must be released using free().
/// Parameter manager The geofence manager handle
/// Parameter place_id The place ID
/// Output parameter place_name The name of the place
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_ID Invalid geofence ID
/// @retval #GEOFENCE_MANAGER_ERROR_DATABASE Database error
/// @retval #GEOFENCE_MANAGER_ERROR_PLACE_ACCESS_DENIED Access to specified place is denied
/// @see geofence_manager_add_place()
/// @see geofence_manager_update_place()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_get_place_name(
  geofence_manager_h manager,
  int place_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> place_name,
) =>
    tizenCapiGeofenceManager.geofence_manager_get_place_name(
      manager,
      place_id,
      place_name,
    );

/// @brief Checks whether the geofence manager is available or not.
/// @since_tizen 2.4
/// Output parameter supported @c true if geofence service is supported,
/// otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_manager_create()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_is_supported(
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiGeofenceManager.geofence_manager_is_supported(
      supported,
    );

/// @brief Removes a geofence with a given geofence ID
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The geofence manager handle
/// Parameter geofence_id The specified geofence ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_INITIALIZED Not initialized
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @retval #GEOFENCE_MANAGER_ERROR_GEOFENCE_ACCESS_DENIED Access to specified geofence is denied
/// @pre geofence_manager_stop() is called before.
/// @see geofence_manager_add_fence()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_remove_fence(
  geofence_manager_h manager,
  int geofence_id,
) =>
    tizenCapiGeofenceManager.geofence_manager_remove_fence(
      manager,
      geofence_id,
    );

/// @brief Removes the specific place for geofencing service.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks The place must have no geofences.
/// Parameter manager The geofence manager handle
/// Parameter place_id The specified place ID
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_INITIALIZED Not initialized
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @retval #GEOFENCE_MANAGER_ERROR_PLACE_ACCESS_DENIED Access to specified place is denied
/// @pre geofence_manager_remove_fence() in all geofence is called before.
/// @see geofence_manager_add_place()
/// @see geofence_manager_update_place()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_remove_place(
  geofence_manager_h manager,
  int place_id,
) =>
    tizenCapiGeofenceManager.geofence_manager_remove_place(
      manager,
      place_id,
    );

/// @brief Registers a callback function to be invoked when a response comes.
/// @since_tizen 2.4
/// Parameter manager The geofence manager handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @post This function invokes geofence_event_cb().
/// @see geofence_manager_unset_geofence_event_cb()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_set_geofence_event_cb(
  geofence_manager_h manager,
  geofence_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiGeofenceManager.geofence_manager_set_geofence_event_cb(
      manager,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked when a proximity state of device is changed.
/// @details The proximity state is measured from registered position regardless of the geofence boundary.
/// @since_tizen 3.0
/// Parameter manager The geofence manager handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @post This function invokes geofence_proximity_state_changed_cb().
/// @see geofence_manager_unset_geofence_proximity_state_changed_cb()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_set_geofence_proximity_state_changed_cb(
  geofence_manager_h manager,
  geofence_proximity_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiGeofenceManager.geofence_manager_set_geofence_proximity_state_changed_cb(
      manager,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked when a device enters or exits the specific geofence.
/// @since_tizen 2.4
/// Parameter manager The geofence manager handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @post This function invokes geofence_state_changed_cb().
/// @see geofence_manager_unset_geofence_state_changed_cb()
/// @see geofence_state_changed_cb()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_set_geofence_state_changed_cb(
  geofence_manager_h manager,
  geofence_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiGeofenceManager.geofence_manager_set_geofence_state_changed_cb(
      manager,
      callback,
      user_data,
    );

/// @brief Starts the geofencing service.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks There is no limit on number of geofence managers for which this function called
/// Calling this function invokes a location service event. When the location service is enabled, the service state change callback
/// (set using #geofence_manager_set_geofence_state_changed_cb()) notifies the user with geofence ID as the 1st argument,
/// geofence zone state(#GEOFENCE_STATE_IN and #GEOFENCE_STATE_OUT) as the 2nd argument, and the service starts.
/// Parameter manager The geofence manager handle
/// Parameter geofence_id The specified geofence ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @retval #GEOFENCE_MANAGER_ERROR_GEOFENCE_ACCESS_DENIED Access to specified geofence is denied
/// @see geofence_manager_stop()
/// @see geofence_manager_add_fence()
/// @see geofence_manager_set_geofence_state_changed_cb()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_start(
  geofence_manager_h manager,
  int geofence_id,
) =>
    tizenCapiGeofenceManager.geofence_manager_start(
      manager,
      geofence_id,
    );

/// @brief Stops the geofencing service.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// @remarks This function initiates the process of stopping the service.
/// You can stop and start the geofence manager as needed.
/// Parameter manager The geofence manager handle
/// Parameter geofence_id The specified geofence ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_INITIALIZED Not initialized
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @retval #GEOFENCE_MANAGER_ERROR_GEOFENCE_ACCESS_DENIED Access to specified geofence is denied
/// @see geofence_manager_start()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_stop(
  geofence_manager_h manager,
  int geofence_id,
) =>
    tizenCapiGeofenceManager.geofence_manager_stop(
      manager,
      geofence_id,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 2.4
/// Parameter manager The geofence manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_event_cb()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_unset_geofence_event_cb(
  geofence_manager_h manager,
) =>
    tizenCapiGeofenceManager.geofence_manager_unset_geofence_event_cb(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 3.0
/// Parameter manager The geofence manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_manager_set_geofence_proximity_state_changed_cb()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_unset_geofence_proximity_state_changed_cb(
  geofence_manager_h manager,
) =>
    tizenCapiGeofenceManager.geofence_manager_unset_geofence_proximity_state_changed_cb(
      manager,
    );

/// @brief Unregisters the callback function.
/// @since_tizen 2.4
/// Parameter manager The geofence manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_state_changed_cb()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_unset_geofence_state_changed_cb(
  geofence_manager_h manager,
) =>
    tizenCapiGeofenceManager.geofence_manager_unset_geofence_state_changed_cb(
      manager,
    );

/// @brief Updates the place name of a given place ID.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/location
/// Parameter manager The geofence manager handle
/// Parameter place_id The specified place ID
/// Parameter place_name A new place name of the place ID
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_INITIALIZED Not initialized
/// @retval #GEOFENCE_MANAGER_ERROR_EXCEPTION Exception occurred
/// @retval #GEOFENCE_MANAGER_ERROR_PLACE_ACCESS_DENIED Access to specified place is denied
/// @see geofence_manager_add_place()
/// @see geofence_manager_remove_place()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_manager_update_place(
  geofence_manager_h manager,
  int place_id,
  ffi.Pointer<ffi.Char> place_name,
) =>
    tizenCapiGeofenceManager.geofence_manager_update_place(
      manager,
      place_id,
      place_name,
    );

/// @brief Returns The geofence status of specified geofence.
/// @since_tizen 2.4
/// @remarks A status must be released using geofence_status_destroy()
/// Parameter geofence_id The geofence ID
/// Output parameter status The status handle of a specified geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #GEOFENCE_MANAGER_ERROR_GEOFENCE_ACCESS_DENIED Access to specified geofence is denied
/// @see geofence_status_destroy()
/// @see geofence_manager_start()
/// @see geofence_manager_stop()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_status_create(
  int geofence_id,
  ffi.Pointer<geofence_status_h> status,
) =>
    tizenCapiGeofenceManager.geofence_status_create(
      geofence_id,
      status,
    );

/// @brief Releases the memory, used by the status data.
/// @since_tizen 2.4
/// Parameter status The status handle of a specified geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_status_create()
/// @see geofence_status_get_state()
/// @see geofence_status_get_duration()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_status_destroy(
  geofence_status_h status,
) =>
    tizenCapiGeofenceManager.geofence_status_destroy(
      status,
    );

/// @brief Gets the amount of seconds geofence is in the current state.
/// @since_tizen 2.4
/// Parameter status The geofence status handle
/// Output parameter seconds The amount of seconds geofence is in the current state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_status_get_state()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_status_get_duration(
  geofence_status_h status,
  ffi.Pointer<ffi.Int> seconds,
) =>
    tizenCapiGeofenceManager.geofence_status_get_duration(
      status,
      seconds,
    );

/// @brief Gets the state of geofence.
/// @since_tizen 2.4
/// Parameter status The geofence status handle
/// Output parameter state The state of geofence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #GEOFENCE_MANAGER_ERROR_NONE Successful
/// @retval #GEOFENCE_MANAGER_ERROR_INVALID_PARAMETER Illegal argument
/// @retval #GEOFENCE_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @see geofence_status_get_duration()
///
/// Module getter: `tizenCapiGeofenceManager`.
int geofence_status_get_state(
  geofence_status_h status,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiGeofenceManager.geofence_status_get_state(
      status,
      state,
    );

