// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenIotcon`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libiotcon.so.0`.
///
/// Network / IoTCon.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_iotcon;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds callback to show pin number which is generated automatically.
/// @details When a provisioning tool tries to register this device using random pin based \n
/// ownership transfer method, it makes pin number which is generated automatically be shown.
/// @since_tizen 3.0
/// Parameter cb The callback function to invoke
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED  Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_ALREADY Already done
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @pre iotcon_initialize() should be called to initialize.
/// @post When the device is registered by provisioning tool, iotcon_generated_pin_cb() will be called.
/// @see iotcon_remove_generated_pin_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_add_generated_pin_cb(
  iotcon_generated_pin_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_add_generated_pin_cb(
      cb,
      user_data,
    );

/// @brief Adds callback to a server to receive presence events.
/// @details Request to receive presence to an interested server's resource with @a resource_type. \n
/// If succeeded to subscribe, iotcon_presence_cb() will be invoked when the server sends presence. \n
/// A server sends presence events when adds/removes/alters a resource or start/stop presence. \n
/// @a host_address could be #IOTCON_MULTICAST_ADDRESS for IPv4 multicast.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks The length of @a resource_type should be less than or equal to 61.\n
/// The @a resource_type must start with a lowercase alphabetic character, followed by a sequence
/// of lowercase alphabetic, numeric, ".", or "-" characters, and contains no white space.\n
/// You must destroy @a presence by calling iotcon_unsubscribe_presence()
/// if @a presence is no longer needed.
/// Parameter host_address The address or addressable name of the server
/// Parameter connectivity_type The connectivity type
/// Parameter resource_type A resource type that a client is interested in
/// Parameter cb The callback function to invoke
/// Parameter user_data The user data to pass to the function
/// Output parameter presence_handle The generated presence handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_IOTIVITY IoTivity errors
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post When the resource receive presence, iotcon_presence_cb() will be called.
/// @see iotcon_start_presence()
/// @see iotcon_stop_presence()
/// @see iotcon_remove_presence_cb()
/// @see iotcon_presence_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_add_presence_cb(
  ffi.Pointer<ffi.Char> host_address,
  int connectivity_type,
  ffi.Pointer<ffi.Char> resource_type,
  iotcon_presence_cb cb,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<iotcon_presence_h> presence_handle,
) =>
    tizenIotcon.iotcon_add_presence_cb(
      host_address,
      connectivity_type,
      resource_type,
      cb,
      user_data,
      presence_handle,
    );

/// @brief Adds a new key and attributes value into the attributes.
/// @details If @a key already exists, current attributes will be replaced with new @a src.
/// @since_tizen 3.0
/// Parameter dest The attributes handle
/// Parameter key The key
/// Parameter src The attributes handle to set newly
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_add_attributes(
  iotcon_attributes_h dest,
  ffi.Pointer<ffi.Char> key,
  iotcon_attributes_h src,
) =>
    tizenIotcon.iotcon_attributes_add_attributes(
      dest,
      key,
      src,
    );

/// @brief Adds a new key and boolean value into the attributes.
/// @details If @a key is already exists, current value will be replaced with new @a val.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Parameter val The value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_add_bool(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  bool val,
) =>
    tizenIotcon.iotcon_attributes_add_bool(
      attributes,
      key,
      val,
    );

/// @brief Adds a new key and byte string value into the attributes.
/// @details If @a key is already exists, current value will be replaced with new @a val.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Parameter val The value
/// Parameter len The length of @a val
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_add_byte_str(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.UnsignedChar> val,
  int len,
) =>
    tizenIotcon.iotcon_attributes_add_byte_str(
      attributes,
      key,
      val,
      len,
    );

/// @brief Adds a new key and double value into the attributes.
/// @details If @a key is already exists, current value will be replaced with new @a val.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Parameter val The value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_add_double(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  double val,
) =>
    tizenIotcon.iotcon_attributes_add_double(
      attributes,
      key,
      val,
    );

/// @brief Adds a new key and integer value into the attributes.
/// @details If @a key is already exists, current value will be replaced with new @a val.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Parameter val The value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_add_int(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  int val,
) =>
    tizenIotcon.iotcon_attributes_add_int(
      attributes,
      key,
      val,
    );

/// @brief Adds a new key and list value into the attributes.
/// @details If @a key already exists, current list will be replaced with new @a list.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Parameter list The value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_add_list(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  iotcon_list_h list,
) =>
    tizenIotcon.iotcon_attributes_add_list(
      attributes,
      key,
      list,
    );

/// @brief Adds a new key with NULL value into the attributes.
/// @details If @a key already exists, current value will be replaced with NULL.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key to be set NULL
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_add_null(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenIotcon.iotcon_attributes_add_null(
      attributes,
      key,
    );

/// @brief Adds a new key and string value into the attributes.
/// @details If @a key is already exists, current value will be replaced with new @a val.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Parameter val The value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_add_str(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> val,
) =>
    tizenIotcon.iotcon_attributes_add_str(
      attributes,
      key,
      val,
    );

/// @brief Clones the attributes handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a attributes_clone by calling iotcon_attributes_destroy() if @a attributes_clone is no longer needed.
/// Parameter attributes The attributes handle
/// Output parameter attributes_clone The cloned attributes handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_attributes_create()
/// @see iotcon_attributes_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_clone(
  iotcon_attributes_h attributes,
  ffi.Pointer<iotcon_attributes_h> attributes_clone,
) =>
    tizenIotcon.iotcon_attributes_clone(
      attributes,
      attributes_clone,
    );

/// @brief Creates a new attributes handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a attributes by calling iotcon_attributes_destroy() if @a attributes is no longer needed.
/// Output parameter attributes A newly allocated attributes handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_attributes_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_create(
  ffi.Pointer<iotcon_attributes_h> attributes,
) =>
    tizenIotcon.iotcon_attributes_create(
      attributes,
    );

/// @brief Destroys the attributes.
/// @details Releases @a attributes and its internal data.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle to free
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_attributes_create()
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_destroy(
  iotcon_attributes_h attributes,
) =>
    tizenIotcon.iotcon_attributes_destroy(
      attributes,
    );

/// @brief Calls a function for each element of attributes.
/// @details iotcon_attributes_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter cb The callback function to invoke
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_attributes_cb() will be called for each child.
/// @see iotcon_attributes_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_foreach(
  iotcon_attributes_h attributes,
  iotcon_attributes_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_attributes_foreach(
      attributes,
      cb,
      user_data,
    );

/// @brief Gets the attributes value from the given key.
/// @since_tizen 3.0
/// @remarks @a attributes must not be released using iotcon_attributes_destroy().
/// Parameter src The attributes handle
/// Parameter key The key
/// Output parameter dest The attributes value at the key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_attributes(
  iotcon_attributes_h src,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<iotcon_attributes_h> dest,
) =>
    tizenIotcon.iotcon_attributes_get_attributes(
      src,
      key,
      dest,
    );

/// @brief Gets the boolean value from the given key.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Output parameter val The boolean value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_bool(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Bool> val,
) =>
    tizenIotcon.iotcon_attributes_get_bool(
      attributes,
      key,
      val,
    );

/// @brief Gets the byte string value from the given key.
/// @since_tizen 3.0
/// @remarks @a val must not be released using free().
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Output parameter val The byte string value
/// Output parameter len The length of @a val
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_byte_str(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> val,
  ffi.Pointer<ffi.Int> len,
) =>
    tizenIotcon.iotcon_attributes_get_byte_str(
      attributes,
      key,
      val,
      len,
    );

/// @brief Gets the double value from the given key.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Output parameter val The double value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_double(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Double> val,
) =>
    tizenIotcon.iotcon_attributes_get_double(
      attributes,
      key,
      val,
    );

/// @brief Gets the integer value from the given key.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Output parameter val The integer value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_int(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenIotcon.iotcon_attributes_get_int(
      attributes,
      key,
      val,
    );

/// @brief Gets the number of keys in the attributes.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Output parameter count The number of keys
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_keys_count(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.UnsignedInt> count,
) =>
    tizenIotcon.iotcon_attributes_get_keys_count(
      attributes,
      count,
    );

/// @brief Gets the list value from the given key.
/// @since_tizen 3.0
/// @remarks @a list must not be released using iotcon_list_destroy().
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Output parameter list The list value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_list(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<iotcon_list_h> list,
) =>
    tizenIotcon.iotcon_attributes_get_list(
      attributes,
      key,
      list,
    );

/// @brief Gets the string value from the given key.
/// @since_tizen 3.0
/// @remarks @a val must not be released using free().
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Output parameter val The string value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_str(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> val,
) =>
    tizenIotcon.iotcon_attributes_get_str(
      attributes,
      key,
      val,
    );

/// @brief Gets the type of a value at the given key.
/// @details It gets the data type of value related to the @a key in @a attributes.
/// The data type could be one of #iotcon_type_e.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Output parameter type The data type of value related to the key in attributes handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_get_type(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenIotcon.iotcon_attributes_get_type(
      attributes,
      key,
      type,
    );

/// @brief Checks whether the value of given key is NULL or not.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// Output parameter is_null true if the type of the given key is null,
/// otherwise false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_is_null(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Bool> is_null,
) =>
    tizenIotcon.iotcon_attributes_is_null(
      attributes,
      key,
      is_null,
    );

/// @brief Removes the key and its associated value from the attributes.
/// @since_tizen 3.0
/// Parameter attributes The attributes handle
/// Parameter key The key
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
///
/// Module getter: `tizenIotcon`.
int iotcon_attributes_remove(
  iotcon_attributes_h attributes,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenIotcon.iotcon_attributes_remove(
      attributes,
      key,
    );

/// @brief Deinitializes IoTCon.
/// @details Frees the resources allocated to IoTCon.
/// @since_tizen 3.0
/// @remarks This function must be called if IoTCon API is no longer needed.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_initialize()
///
/// Module getter: `tizenIotcon`.
int iotcon_deinitialize() =>
    tizenIotcon.iotcon_deinitialize();

/// @brief Gets device properties from the device information handle.
/// @since_tizen 3.0
/// @remarks @a value must not be released using free().
/// Parameter device_info The handle of the device information
/// Parameter property The properties of the device information
/// Output parameter value The value of the property
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_set_device_name()
/// @see iotcon_device_info_cb()
/// @see iotcon_find_device_info()
///
/// Module getter: `tizenIotcon`.
int iotcon_device_info_get_property(
  iotcon_device_info_h device_info,
  int property,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenIotcon.iotcon_device_info_get_property(
      device_info,
      property,
      value,
    );

/// @brief Finds the device information of remote server asynchronously.
/// @details Request device information to server and pass the information by calling iotcon_device_info_cb(). \n
/// @a host_address could be #IOTCON_MULTICAST_ADDRESS for multicast. \n
/// If succeeded in getting device information, iotcon_device_info_cb() will be invoked with information.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks @a host_address should be in the format coap://address:port. \n
/// (ex. coap://[fe80::ae5a:14ff:fe24:b8fe]:12345, or coap://192.168.1.10:12345) \n
/// @a connectivity_type can be set with extra options.
/// If @a connectivity_type is set without IOTCON_CONNECTIVITY_IPV4_ONLY
/// and IOTCON_CONNECTIVITY_IPV6_ONLY, device informations are discovered by default setting
/// of IoTivity(IPv6 is preferred over IPv4). \n
/// If there are no preference options(PREFER_XXX), it will reply using UDP.
/// Parameter host_address The host address of remote server
/// Parameter connectivity_type The connectivity type
/// Parameter query The query specified as a filter for the device information
/// Parameter cb The callback function to invoke
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post iotcon_device_info_cb() will be invoked.
/// @see iotcon_set_device_name()
/// @see iotcon_device_info_cb()
/// @see iotcon_device_info_get_property()
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_find_device_info(
  ffi.Pointer<ffi.Char> host_address,
  int connectivity_type,
  iotcon_query_h query,
  iotcon_device_info_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_find_device_info(
      host_address,
      connectivity_type,
      query,
      cb,
      user_data,
    );

/// @brief Finds the platform information of remote server asynchronously.
/// @details Request platform information to server and pass the information by calling iotcon_platform_info_cb(). \n
/// @a host_address could be #IOTCON_MULTICAST_ADDRESS for multicast. \n
/// If succeeded in getting platform information, iotcon_platform_info_cb() will be invoked with information.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks @a host_address should be in the format coap://address:port. \n
/// (ex. coap://[fe80::ae5a:14ff:fe24:b8fe]:12345, or coap://192.168.1.10:12345) \n
/// @a connectivity_type can be set with extra options.
/// If @a connectivity_type is set without IOTCON_CONNECTIVITY_IPV4_ONLY
/// and IOTCON_CONNECTIVITY_IPV6_ONLY, platform informations are discovered by default setting
/// of IoTivity(IPv6 is preferred over IPv4). \n
/// If there are no preference options(PREFER_XXX), it will reply using UDP.
/// Parameter host_address The host address of remote server
/// Parameter connectivity_type The connectivity type
/// Parameter query The query specified as a filter for the platform information
/// Parameter cb The callback function to invoke
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post iotcon_platform_info_cb() will be invoked.
/// @see iotcon_platform_info_cb()
/// @see iotcon_platform_info_get_property()
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_find_platform_info(
  ffi.Pointer<ffi.Char> host_address,
  int connectivity_type,
  iotcon_query_h query,
  iotcon_platform_info_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_find_platform_info(
      host_address,
      connectivity_type,
      query,
      cb,
      user_data,
    );

/// @brief Finds resources asynchronously.
/// @details Request to find a resource of @a host_address server with @a query.\n
/// @a host_address could be #IOTCON_MULTICAST_ADDRESS for multicast.\n
/// If succeeded to find the resource, iotcon_found_resource_cb() will be invoked with information of the resource.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks @a host_address should be in the format coap://address:port. \n
/// (ex. coaps://[fe80::ae5a:14ff:fe24:b8fe]:12345, or coaps://192.168.1.10:12345)\n
/// @a connectivity_type can be set with extra options.
/// If @a connectivity_type is set without IOTCON_CONNECTIVITY_IPV4_ONLY
/// and IOTCON_CONNECTIVITY_IPV6_ONLY, the resources are discovered by default setting
/// of IoTivity(IPv6 is preferred over IPv4). \n
/// If there are no preference options(PREFER_XXX), resources will reply using each of
/// opened protocol(TCP/UDP).
/// Therefore, you can get remote resource handles which include different host address,
/// but indicates same resource. \n
/// (coaps://192.168.0.2:1234/res/light, coaps+tcp://192.168.0.2/1235/res/light)
/// @a query can be set using specific resource types, or resource interfaces.
/// If @a query is NULL, every resource discovered is listed.
/// Parameter host_address The address or addressable name of server
/// Parameter connectivity_type The connectivity type
/// Parameter query The query specified as a filter for the resource
/// Parameter cb The callback function to invoke
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post iotcon_found_resource_cb() will be invoked.
/// @see iotcon_found_resource_cb()
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_find_resource(
  ffi.Pointer<ffi.Char> host_address,
  int connectivity_type,
  iotcon_query_h query,
  iotcon_found_resource_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_find_resource(
      host_address,
      connectivity_type,
      query,
      cb,
      user_data,
    );

/// @brief Gets the timeout seconds of asynchronous API.
/// @details This API get the timeout of iotcon_find_device_info(),
/// iotcon_find_platform_info(), iotcon_find_resource(),
/// iotcon_remote_resource_get(), iotcon_remote_resource_put(),
/// iotcon_remote_resource_post() and iotcon_remote_resource_delete().
/// @since_tizen 3.0
/// Output parameter timeout_seconds Seconds for timeout
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_get_timeout(
  ffi.Pointer<ffi.Int> timeout_seconds,
) =>
    tizenIotcon.iotcon_get_timeout(
      timeout_seconds,
    );

/// @brief Initializes IoTCon.
/// @details Calls this function to start IoTCon.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/network.get
/// @privilege %http://tizen.org/privilege/internet
/// @remarks The @a file_path point to a file for handling secure virtual resources.
/// The file that is CBOR(Concise Binary Object Representation)-format must already exist in @a file_path.
/// We recommend to use application-local file for @a file_path. \n
/// You must call iotcon_deinitialize() if IoTCon API is no longer needed.
/// Parameter file_path The path of SVR(Secure Virtual Resources) DB
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @see iotcon_deinitialize()
///
/// Module getter: `tizenIotcon`.
int iotcon_initialize(
  ffi.Pointer<ffi.Char> file_path,
) =>
    tizenIotcon.iotcon_initialize(
      file_path,
    );

/// @brief Adds a new element attributes value into the list at the given position.
/// @details If @a pos is negative, or is larger than the number of elements in the list, the new value is added on to the end of the list.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter val The new attributes value
/// Parameter pos The position to insert value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_list_add_attributes(
  iotcon_list_h list,
  iotcon_attributes_h val,
  int pos,
) =>
    tizenIotcon.iotcon_list_add_attributes(
      list,
      val,
      pos,
    );

/// @brief Adds a new element boolean value into the list at the given position.
/// @details If @a pos is negative, or is larger than the number of elements in the list, the new value is added on to the end of the list.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter val The new boolean value
/// Parameter pos The position to insert value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_list_add_bool(
  iotcon_list_h list,
  bool val,
  int pos,
) =>
    tizenIotcon.iotcon_list_add_bool(
      list,
      val,
      pos,
    );

/// @brief Adds a new element byte string value into the list at the given position.
/// @details If @a pos is negative, or is larger than the number of elements in the list, the new value is added on to the end of the list.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter val The new byte string value
/// Parameter len The length of @a val
/// Parameter pos The position to insert value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_list_add_byte_str(
  iotcon_list_h list,
  ffi.Pointer<ffi.UnsignedChar> val,
  int len,
  int pos,
) =>
    tizenIotcon.iotcon_list_add_byte_str(
      list,
      val,
      len,
      pos,
    );

/// @brief Adds a new element double value into the list at the given position.
/// @details If @a pos is negative, or is larger than the number of elements in the list, the new value is added on to the end of the list.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter val The new double value
/// Parameter pos The position to insert value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_list_add_double(
  iotcon_list_h list,
  double val,
  int pos,
) =>
    tizenIotcon.iotcon_list_add_double(
      list,
      val,
      pos,
    );

/// @brief Adds a new element integer value into the list at the given position.
/// @details If @a pos is negative, or is larger than the number of elements in the list, the new value is added on to the end of the list.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter val The new integer value
/// Parameter pos The position to insert value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_list_add_int(
  iotcon_list_h list,
  int val,
  int pos,
) =>
    tizenIotcon.iotcon_list_add_int(
      list,
      val,
      pos,
    );

/// @brief Adds a new element list into the list at the given position.
/// @details If @a pos is negative, or is larger than the number of elements in the list, the new value is added on to the end of the list.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter val The new list value
/// Parameter pos The position to insert value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_list_add_list(
  iotcon_list_h list,
  iotcon_list_h val,
  int pos,
) =>
    tizenIotcon.iotcon_list_add_list(
      list,
      val,
      pos,
    );

/// @brief Adds a new element string value into the list at the given position.
/// @details If @a pos is negative, or is larger than the number of elements in the list, the new value is added on to the end of the list.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter val The new char value
/// Parameter pos The position to insert value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_list_add_str(
  iotcon_list_h list,
  ffi.Pointer<ffi.Char> val,
  int pos,
) =>
    tizenIotcon.iotcon_list_add_str(
      list,
      val,
      pos,
    );

/// @brief Creates a new list handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a list by calling iotcon_list_destroy() if @a list is no longer needed.
/// Parameter type The type of list
/// Output parameter list A newly allocated list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_INVALID_TYPE Invalid type
///
/// Module getter: `tizenIotcon`.
int iotcon_list_create(
  int type,
  ffi.Pointer<iotcon_list_h> list,
) =>
    tizenIotcon.iotcon_list_create(
      type,
      list,
    );

/// @brief Destroys a list handle.
/// @details Releases a @a list and its internal data.
/// @since_tizen 3.0
/// Parameter list The handle to the list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_list_destroy(
  iotcon_list_h list,
) =>
    tizenIotcon.iotcon_list_destroy(
      list,
    );

/// @brief Gets all attributes of the given list by invoking the callback function.
/// @details iotcon_list_attributes_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter list The handle to the list
/// Parameter cb The callback function to get each attributes
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_list_attributes_cb() will be called for each item.
/// @see iotcon_list_attributes_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_list_foreach_attributes(
  iotcon_list_h list,
  iotcon_list_attributes_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_list_foreach_attributes(
      list,
      cb,
      user_data,
    );

/// @brief Gets all boolean values of the given list by invoking the callback function.
/// @details iotcon_list_bool_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter list The handle to the list
/// Parameter cb The callback function to get each boolean value
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_list_bool_cb() will be called for each item.
/// @see iotcon_list_bool_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_list_foreach_bool(
  iotcon_list_h list,
  iotcon_list_bool_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_list_foreach_bool(
      list,
      cb,
      user_data,
    );

/// @brief Gets all string values of the given list by invoking the callback function.
/// @details iotcon_list_byte_str_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter list The handle to the list
/// Parameter cb The callback function to get each string value
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_list_byte_str_cb() will be called for each item.
/// @see iotcon_list_byte_str_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_list_foreach_byte_str(
  iotcon_list_h list,
  iotcon_list_byte_str_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_list_foreach_byte_str(
      list,
      cb,
      user_data,
    );

/// @brief Gets all double values of the given list by invoking the callback function.
/// @details iotcon_list_double_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter list The handle to the list
/// Parameter cb The callback function to get each double value
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_list_double_cb() will be called for each item.
/// @see iotcon_list_double_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_list_foreach_double(
  iotcon_list_h list,
  iotcon_list_double_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_list_foreach_double(
      list,
      cb,
      user_data,
    );

/// @brief Gets all integer values of the given list by invoking the callback function.
/// @details iotcon_list_int_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter list The handle to the list
/// Parameter cb The callback function to get each integer value
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_list_int_cb() will be called for each item.
/// @see iotcon_list_int_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_list_foreach_int(
  iotcon_list_h list,
  iotcon_list_int_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_list_foreach_int(
      list,
      cb,
      user_data,
    );

/// @brief Gets all sub lists of the given list by invoking the callback function.
/// @details iotcon_list_list_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter list The handle to the origin list
/// Parameter cb The callback function to get each sub list
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_list_list_cb() will be called for each item.
/// @see iotcon_list_list_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_list_foreach_list(
  iotcon_list_h list,
  iotcon_list_list_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_list_foreach_list(
      list,
      cb,
      user_data,
    );

/// @brief Gets all string values of the given list by invoking the callback function.
/// @details iotcon_list_str_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter list The handle to the list
/// Parameter cb The callback function to get each string value
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_list_str_cb() will be called for each item.
/// @see iotcon_list_str_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_list_foreach_str(
  iotcon_list_h list,
  iotcon_list_str_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_list_foreach_str(
      list,
      cb,
      user_data,
    );

/// @brief Gets the number of elements in a list.
/// @since_tizen 3.0
/// Parameter list The handle to the list
/// Output parameter length The length of list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_length(
  iotcon_list_h list,
  ffi.Pointer<ffi.UnsignedInt> length,
) =>
    tizenIotcon.iotcon_list_get_length(
      list,
      length,
    );

/// @brief Gets the attributes value at the given position.
/// @details Iterates over the list until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// @remarks @a attributes must not be released using iotcon_attributes_destroy().
/// Parameter list The list handle
/// Parameter pos The position
/// Output parameter attributes The attributes value to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_REPRESENTATION Representation errors
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_nth_attributes(
  iotcon_list_h list,
  int pos,
  ffi.Pointer<iotcon_attributes_h> attributes,
) =>
    tizenIotcon.iotcon_list_get_nth_attributes(
      list,
      pos,
      attributes,
    );

/// @brief Gets the boolean value at the given position.
/// @details Iterates over the list until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter pos The position
/// Output parameter val The boolean value to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_REPRESENTATION Representation errors
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_nth_bool(
  iotcon_list_h list,
  int pos,
  ffi.Pointer<ffi.Bool> val,
) =>
    tizenIotcon.iotcon_list_get_nth_bool(
      list,
      pos,
      val,
    );

/// @brief Gets the string value at the given position.
/// @details Iterates over the list until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// @remarks @a val must not be released using free().
/// Parameter list The list handle
/// Parameter pos The position
/// Output parameter val The byte string value to get
/// Output parameter len The length of the @a val
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_REPRESENTATION Representation errors
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_nth_byte_str(
  iotcon_list_h list,
  int pos,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> val,
  ffi.Pointer<ffi.Int> len,
) =>
    tizenIotcon.iotcon_list_get_nth_byte_str(
      list,
      pos,
      val,
      len,
    );

/// @brief Gets the double value at the given position.
/// @details Iterates over the list until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter pos The position
/// Output parameter val The double value to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_REPRESENTATION Representation errors
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_nth_double(
  iotcon_list_h list,
  int pos,
  ffi.Pointer<ffi.Double> val,
) =>
    tizenIotcon.iotcon_list_get_nth_double(
      list,
      pos,
      val,
    );

/// @brief Gets the integer value at the given position.
/// @details Iterates over the list until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter pos The position
/// Output parameter val The integer value to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_REPRESENTATION Representation errors
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_nth_int(
  iotcon_list_h list,
  int pos,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenIotcon.iotcon_list_get_nth_int(
      list,
      pos,
      val,
    );

/// @brief Gets the list value at the given position.
/// @details Iterates over the list until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// @remarks @a dest must not be released using iotcon_list_destroy().
/// Parameter src The list handle
/// Parameter pos The position
/// Output parameter dest The list value to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_REPRESENTATION Representation errors
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_nth_list(
  iotcon_list_h src,
  int pos,
  ffi.Pointer<iotcon_list_h> dest,
) =>
    tizenIotcon.iotcon_list_get_nth_list(
      src,
      pos,
      dest,
    );

/// @brief Gets the string value at the given position.
/// @details Iterates over the list until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// @remarks @a val must not be released using free().
/// Parameter list The list handle
/// Parameter pos The position
/// Output parameter val The string value to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_REPRESENTATION Representation errors
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_nth_str(
  iotcon_list_h list,
  int pos,
  ffi.Pointer<ffi.Pointer<ffi.Char>> val,
) =>
    tizenIotcon.iotcon_list_get_nth_str(
      list,
      pos,
      val,
    );

/// @brief Gets the type of the list.
/// @details It gets the data type of value related to the @a key in @a attributes.
/// The data type could be one of #iotcon_type_e.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Output parameter type The data type of list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_list_get_type(
  iotcon_list_h list,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenIotcon.iotcon_list_get_type(
      list,
      type,
    );

/// @brief Removes the value at the given position.
/// @details Iterates over the list until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// Parameter list The list handle
/// Parameter pos The position to delete
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
///
/// Module getter: `tizenIotcon`.
int iotcon_list_remove_nth(
  iotcon_list_h list,
  int pos,
) =>
    tizenIotcon.iotcon_list_remove_nth(
      list,
      pos,
    );

/// @brief Creates a lite resource handle and registers the resource in server.
/// @details Registers a resource specified by @a uri_path, @a res_types, @a attributes which have @a properties in IoTCon server. \n
/// When client requests some operations, it send a response to client, automatically.\n
/// The @a policies can contain multiple policies like #IOTCON_RESOURCE_DISCOVERABLE | #IOTCON_RESOURCE_OBSERVABLE.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks @a uri_path length must be less than 128. \n
/// You must destroy @a resource_handle by calling iotcon_lite_resource_destroy() if @a remote_handle is no longer needed.
/// Parameter uri_path The URI path of the resource
/// Parameter res_types The list of type of the resource
/// Parameter policies The policies of the resource \n
/// Set of #iotcon_resource_policy_e
/// Parameter attributes The attributes handle to set
/// Parameter cb The callback function to add into callback list
/// Parameter user_data The user data to pass to the callback function
/// Output parameter resource_handle The handle of the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_IOTIVITY IoTivity errors
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_lite_resource_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_lite_resource_create(
  ffi.Pointer<ffi.Char> uri_path,
  iotcon_resource_types_h res_types,
  int policies,
  iotcon_attributes_h attributes,
  iotcon_lite_resource_post_request_cb cb,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<iotcon_lite_resource_h> resource_handle,
) =>
    tizenIotcon.iotcon_lite_resource_create(
      uri_path,
      res_types,
      policies,
      attributes,
      cb,
      user_data,
      resource_handle,
    );

/// @brief Destroys the resource and releases its data.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks When a normal variable is used, there is only permission denied error.
/// If the errors of this API are not handled, then you must check an application having the privileges for the API.
/// Parameter resource The handle of the lite resource to be unregistered
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_lite_resource_create()
///
/// Module getter: `tizenIotcon`.
int iotcon_lite_resource_destroy(
  iotcon_lite_resource_h resource,
) =>
    tizenIotcon.iotcon_lite_resource_destroy(
      resource,
    );

/// @brief Gets attributes from the lite resource handle.
/// @since_tizen 3.0
/// @remarks @a attributes must not be released using iotcon_attributes_destroy().
/// Parameter resource The handle of the lite resource
/// Output parameter attributes The attributes handle of the lite resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_lite_resource_update_attributes()
///
/// Module getter: `tizenIotcon`.
int iotcon_lite_resource_get_attributes(
  iotcon_lite_resource_h resource,
  ffi.Pointer<iotcon_attributes_h> attributes,
) =>
    tizenIotcon.iotcon_lite_resource_get_attributes(
      resource,
      attributes,
    );

/// @brief Updates attributes into the lite resource handle.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the lite resource
/// Parameter attributes The attributes handle to update
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_lite_resource_get_attributes()
///
/// Module getter: `tizenIotcon`.
int iotcon_lite_resource_update_attributes(
  iotcon_lite_resource_h resource,
  iotcon_attributes_h attributes,
) =>
    tizenIotcon.iotcon_lite_resource_update_attributes(
      resource,
      attributes,
    );

/// @brief Adds an observers ID into the observers handle.
/// @since_tizen 3.0
/// Parameter observers The handle of the observers
/// Parameter obs_id The ID to be appended to observers
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_observers_create()
/// @see iotcon_observers_destroy()
/// @see iotcon_observers_remove()
///
/// Module getter: `tizenIotcon`.
int iotcon_observers_add(
  iotcon_observers_h observers,
  int obs_id,
) =>
    tizenIotcon.iotcon_observers_add(
      observers,
      obs_id,
    );

/// @brief Creates a new observers handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a observers by calling iotcon_observers_destroy() if @a observers is no longer needed.
/// Output parameter observers A newly allocated list of observers handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @see iotcon_observers_destroy()
/// @see iotcon_observers_add()
/// @see iotcon_observers_remove()
///
/// Module getter: `tizenIotcon`.
int iotcon_observers_create(
  ffi.Pointer<iotcon_observers_h> observers,
) =>
    tizenIotcon.iotcon_observers_create(
      observers,
    );

/// @brief Destroys a observers handle.
/// @since_tizen 3.0
/// Parameter observers The handle of the observers
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_observers_create()
/// @see iotcon_observers_add()
/// @see iotcon_observers_remove()
///
/// Module getter: `tizenIotcon`.
int iotcon_observers_destroy(
  iotcon_observers_h observers,
) =>
    tizenIotcon.iotcon_observers_destroy(
      observers,
    );

/// @brief Removes ID from the observers.
/// @since_tizen 3.0
/// Parameter observers observers The handle of the observers
/// Parameter obs_id The ID to be removed from observers
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_observers_create()
/// @see iotcon_observers_destroy()
/// @see iotcon_observers_add()
///
/// Module getter: `tizenIotcon`.
int iotcon_observers_remove(
  iotcon_observers_h observers,
  int obs_id,
) =>
    tizenIotcon.iotcon_observers_remove(
      observers,
      obs_id,
    );

/// @brief Adds a new ID and a corresponding data into the options.
/// @since_tizen 3.0
/// @remarks iotcon_options_h can have up to 2 options. \n
/// Option ID is always situated between 2048 and 3000. \n
/// Length of option data is less than or equal to 15.
/// Parameter options The handle of the options
/// Parameter id The ID of the option to insert
/// Parameter data The string data to insert into the options
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_options_create()
/// @see iotcon_options_destroy()
/// @see iotcon_options_remove()
/// @see iotcon_options_lookup()
///
/// Module getter: `tizenIotcon`.
int iotcon_options_add(
  iotcon_options_h options,
  int id,
  ffi.Pointer<ffi.Char> data,
) =>
    tizenIotcon.iotcon_options_add(
      options,
      id,
      data,
    );

/// @brief Creates a new option handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a options by calling iotcon_options_destroy() if @a options is no longer needed.
/// Output parameter options A newly allocated option handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_options_destroy()
/// @see iotcon_options_add()
/// @see iotcon_options_remove()
/// @see iotcon_options_lookup()
///
/// Module getter: `tizenIotcon`.
int iotcon_options_create(
  ffi.Pointer<iotcon_options_h> options,
) =>
    tizenIotcon.iotcon_options_create(
      options,
    );

/// @brief Destroys an option handle.
/// @since_tizen 3.0
/// Parameter options The handle of the options
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_options_create()
/// @see iotcon_options_add()
/// @see iotcon_options_remove()
/// @see iotcon_options_lookup()
///
/// Module getter: `tizenIotcon`.
int iotcon_options_destroy(
  iotcon_options_h options,
) =>
    tizenIotcon.iotcon_options_destroy(
      options,
    );

/// @brief Gets all data of the options by invoking the callback function.
/// @details iotcon_options_foreach_cb() will be called for each option. \n
/// If iotcon_options_foreach_cb() returns false, iteration will be stopped.
/// @since_tizen 3.0
/// Parameter options The handle of the options
/// Parameter cb The callback function to get data
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_options_foreach_cb() will be called for each option.
/// @see iotcon_options_foreach_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_options_foreach(
  iotcon_options_h options,
  iotcon_options_foreach_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_options_foreach(
      options,
      cb,
      user_data,
    );

/// @brief Looks up data at the given ID from the options.
/// @since_tizen 3.0
/// @remarks @a data must not be released using free().
/// Parameter options The handle of the options
/// Parameter id The ID of the option to lookup
/// Output parameter data Found data from options
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_options_create()
/// @see iotcon_options_destroy()
/// @see iotcon_options_add()
/// @see iotcon_options_remove()
///
/// Module getter: `tizenIotcon`.
int iotcon_options_lookup(
  iotcon_options_h options,
  int id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data,
) =>
    tizenIotcon.iotcon_options_lookup(
      options,
      id,
      data,
    );

/// @brief Removes the ID and its associated data from the options.
/// @since_tizen 3.0
/// Parameter options The handle of the options
/// Parameter id The ID of the option to delete
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_options_create()
/// @see iotcon_options_destroy()
/// @see iotcon_options_add()
/// @see iotcon_options_lookup()
///
/// Module getter: `tizenIotcon`.
int iotcon_options_remove(
  iotcon_options_h options,
  int id,
) =>
    tizenIotcon.iotcon_options_remove(
      options,
      id,
    );

/// @brief Gets platform properties from the platform information handle.
/// @since_tizen 3.0
/// @remarks @a value must not be released using free().
/// Parameter platform_info The handle of the platform information
/// Parameter property The properties of the platform information
/// Output parameter value The value of the property
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_platform_info_cb()
/// @see iotcon_find_platform_info()
///
/// Module getter: `tizenIotcon`.
int iotcon_platform_info_get_property(
  iotcon_platform_info_h platform_info,
  int property,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenIotcon.iotcon_platform_info_get_property(
      platform_info,
      property,
      value,
    );

/// @brief Gets the polling interval(milliseconds) of IoTCon.
/// @details This API gets the polling interval of IoTCon.
/// Default polling interval is 100 milliseconds.
/// @since_tizen 3.0
/// Output parameter interval Milliseconds for polling interval
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_polling_get_interval(
  ffi.Pointer<ffi.Int> interval,
) =>
    tizenIotcon.iotcon_polling_get_interval(
      interval,
    );

/// @brief Invokes a next message from a queue for receiving messages from others immediately.
/// @details This API invokes a next message from a queue for receiving messages from others immediately. \n
/// After calling the API, it continues the polling with existing interval.
/// @since_tizen 3.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @pre iotcon_initialize() should be called to initialize.
///
/// Module getter: `tizenIotcon`.
int iotcon_polling_invoke() =>
    tizenIotcon.iotcon_polling_invoke();

/// @brief Sets the polling interval(milliseconds) of IoTCon.
/// @details This API sets the polling interval of IoTCon.
/// The closer to 0, the faster it operates. It is invoked immediately for changing the interval.
/// Default polling interval is 100 milliseconds. If you want the faster operation,
/// we recommend you set 10 milliseconds for polling interval.
/// @since_tizen 3.0
/// Parameter interval Milliseconds for polling interval (must be in range from 1 to 999)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_polling_get_interval()
///
/// Module getter: `tizenIotcon`.
int iotcon_polling_set_interval(
  int interval,
) =>
    tizenIotcon.iotcon_polling_set_interval(
      interval,
    );

/// @brief Gets connectivity type from the presence handle.
/// @details The @a connectivity_type could be one of #iotcon_connectivity_type_e.
/// @since_tizen 3.0
/// Parameter presence The handle of the presence
/// Output parameter connectivity_type The connectivity type of the presence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_presence_get_host_address()
/// @see iotcon_presence_get_resource_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_presence_get_connectivity_type(
  iotcon_presence_h presence,
  ffi.Pointer<ffi.Int32> connectivity_type,
) =>
    tizenIotcon.iotcon_presence_get_connectivity_type(
      presence,
      connectivity_type,
    );

/// @brief Gets host address from the presence handle.
/// @since_tizen 3.0
/// @remarks @a host_address must not be released using free().
/// Parameter presence The handle of the presence
/// Output parameter host_address The host address of the presence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_presence_get_connectivity_type()
/// @see iotcon_presence_get_resource_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_presence_get_host_address(
  iotcon_presence_h presence,
  ffi.Pointer<ffi.Pointer<ffi.Char>> host_address,
) =>
    tizenIotcon.iotcon_presence_get_host_address(
      presence,
      host_address,
    );

/// @brief Gets resource type from the presence handle.
/// @since_tizen 3.0
/// @remarks @a resource_type must not be released using free().
/// Parameter presence The handle of the presence
/// Output parameter resource_type The resource type of the presence
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_presence_get_host_address()
/// @see iotcon_presence_get_connectivity_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_presence_get_resource_type(
  iotcon_presence_h presence,
  ffi.Pointer<ffi.Pointer<ffi.Char>> resource_type,
) =>
    tizenIotcon.iotcon_presence_get_resource_type(
      presence,
      resource_type,
    );

/// @brief Gets connectivity type from the presence response handle.
/// @details The @a connectivity_type could be one of #iotcon_connectivity_type_e.
/// @since_tizen 3.0
/// Parameter response The handle of the presence response
/// Output parameter connectivity_type The connectivity type of the presence response
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_presence_response_get_result()
/// @see iotcon_presence_response_get_trigger()
/// @see iotcon_presence_response_get_host_address()
/// @see iotcon_presence_response_get_resource_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_presence_response_get_connectivity_type(
  iotcon_presence_response_h response,
  ffi.Pointer<ffi.Int32> connectivity_type,
) =>
    tizenIotcon.iotcon_presence_response_get_connectivity_type(
      response,
      connectivity_type,
    );

/// @brief Gets host address from the presence response handle.
/// @since_tizen 3.0
/// @remarks @a host_address must not be released using free().
/// Parameter response The handle of the presence response
/// Output parameter host_address The host address of the presence response
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see iotcon_presence_response_get_result()
/// @see iotcon_presence_response_get_trigger()
/// @see iotcon_presence_response_get_connectivity_type()
/// @see iotcon_presence_response_get_resource_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_presence_response_get_host_address(
  iotcon_presence_response_h response,
  ffi.Pointer<ffi.Pointer<ffi.Char>> host_address,
) =>
    tizenIotcon.iotcon_presence_response_get_host_address(
      response,
      host_address,
    );

/// @brief Gets resource type from the presence response handle.
/// @since_tizen 3.0
/// @remarks @a resource_type must not be released using free().
/// Parameter response The handle of the presence response
/// Output parameter resource_type The resource type of the presence response
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_presence_response_get_result()
/// @see iotcon_presence_response_get_trigger()
/// @see iotcon_presence_response_get_host_address()
/// @see iotcon_presence_response_get_connectivity_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_presence_response_get_resource_type(
  iotcon_presence_response_h response,
  ffi.Pointer<ffi.Pointer<ffi.Char>> resource_type,
) =>
    tizenIotcon.iotcon_presence_response_get_resource_type(
      response,
      resource_type,
    );

/// @brief Gets result from the presence response handle.
/// @details The @a result could be one of #iotcon_presence_result_e.
/// @since_tizen 3.0
/// Parameter response The handle of the presence response
/// Output parameter result The result code
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_presence_response_get_trigger()
/// @see iotcon_presence_response_get_host_address()
/// @see iotcon_presence_response_get_connectivity_type()
/// @see iotcon_presence_response_get_resource_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_presence_response_get_result(
  iotcon_presence_response_h response,
  ffi.Pointer<ffi.Int32> result,
) =>
    tizenIotcon.iotcon_presence_response_get_result(
      response,
      result,
    );

/// @brief Gets trigger from the presence response handle.
/// @details The @a trigger could be one of #iotcon_presence_trigger_e.
/// It is set only if a response result is IOTCON_PRESENCE_OK.
/// @since_tizen 3.0
/// Parameter response The handle of the presence response
/// Output parameter trigger The presence trigger value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_presence_response_get_result()
/// @see iotcon_presence_response_get_host_address()
/// @see iotcon_presence_response_get_connectivity_type()
/// @see iotcon_presence_response_get_resource_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_presence_response_get_trigger(
  iotcon_presence_response_h response,
  ffi.Pointer<ffi.Int32> trigger,
) =>
    tizenIotcon.iotcon_presence_response_get_trigger(
      response,
      trigger,
    );

/// @brief Adds a new key and corresponding value into the query.
/// @since_tizen 3.0
/// @remarks The full length of query should be less than or equal to 64.
/// Parameter query The handle of the query
/// Parameter key The key of the query to insert
/// Parameter value The string data to insert into the query
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_query_create()
/// @see iotcon_query_destroy()
/// @see iotcon_query_remove()
/// @see iotcon_query_lookup()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_add(
  iotcon_query_h query,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenIotcon.iotcon_query_add(
      query,
      key,
      value,
    );

/// @brief Creates a new query handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a query by calling iotcon_query_destroy() if @a query is no longer needed.
/// Output parameter query A newly allocated query handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_query_destroy()
/// @see iotcon_query_add()
/// @see iotcon_query_remove()
/// @see iotcon_query_lookup()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_create(
  ffi.Pointer<iotcon_query_h> query,
) =>
    tizenIotcon.iotcon_query_create(
      query,
    );

/// @brief Destroys a query handle.
/// @since_tizen 3.0
/// Parameter query The handle of the query
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_query_create()
/// @see iotcon_query_add()
/// @see iotcon_query_remove()
/// @see iotcon_query_lookup()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_destroy(
  iotcon_query_h query,
) =>
    tizenIotcon.iotcon_query_destroy(
      query,
    );

/// @brief Gets all data of the query by invoking the callback function.
/// @details iotcon_query_foreach_cb() will be called for each query. \n
/// If iotcon_query_foreach_cb() returns false, iteration will be stopped.
/// @since_tizen 3.0
/// Parameter query The handle of the query
/// Parameter cb The callback function to get data
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_query_foreach_cb() will be called for each query.
/// @see iotcon_query_foreach_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_foreach(
  iotcon_query_h query,
  iotcon_query_foreach_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_query_foreach(
      query,
      cb,
      user_data,
    );

/// @brief Gets resource interface from the query.
/// @since_tizen 3.0
/// @remarks @a resource_iface could be a value such as #IOTCON_INTERFACE_DEFAULT.
/// @remarks @a resource_iface must not be released using free().
/// Parameter query The handle of the query
/// Output parameter resource_iface Found resource interface from query
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @see iotcon_query_create()
/// @see iotcon_query_destroy()
/// @see iotcon_query_add()
/// @see iotcon_query_remove()
/// @see iotcon_query_set_interface()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_get_interface(
  iotcon_query_h query,
  ffi.Pointer<ffi.Pointer<ffi.Char>> resource_iface,
) =>
    tizenIotcon.iotcon_query_get_interface(
      query,
      resource_iface,
    );

/// @brief Gets resource type from the query.
/// @since_tizen 3.0
/// @remarks @a resource_type must not be released using free().
/// @a resource_type must start with a lowercase alphabetic character, followed by a sequence
/// of lowercase alphabetic, numeric, ".", or "-" characters, and contains no white space.
/// Parameter query The handle of the query
/// Output parameter resource_type Found resource type from query
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @see iotcon_query_create()
/// @see iotcon_query_destroy()
/// @see iotcon_query_add()
/// @see iotcon_query_remove()
/// @see iotcon_query_set_resource_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_get_resource_type(
  iotcon_query_h query,
  ffi.Pointer<ffi.Pointer<ffi.Char>> resource_type,
) =>
    tizenIotcon.iotcon_query_get_resource_type(
      query,
      resource_type,
    );

/// @brief Looks up data at the given key from the query.
/// @since_tizen 3.0
/// @remarks @a data must not be released using free().
/// Parameter query The handle of the query
/// Parameter key The key of the query to lookup
/// Output parameter data Found data from query
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_query_create()
/// @see iotcon_query_destroy()
/// @see iotcon_query_add()
/// @see iotcon_query_remove()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_lookup(
  iotcon_query_h query,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data,
) =>
    tizenIotcon.iotcon_query_lookup(
      query,
      key,
      data,
    );

/// @brief Removes the key and its associated value from the query.
/// @since_tizen 3.0
/// Parameter query The handle of the query
/// Parameter key The key of the option to delete
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_query_create()
/// @see iotcon_query_destroy()
/// @see iotcon_query_add()
/// @see iotcon_query_lookup()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_remove(
  iotcon_query_h query,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenIotcon.iotcon_query_remove(
      query,
      key,
    );

/// @brief Sets the resource interface into the query.
/// @since_tizen 3.0
/// @remarks @a resource_iface could be a value such as #IOTCON_INTERFACE_DEFAULT.
/// Parameter query The handle of the query
/// Parameter resource_iface The resource interface to add into the query
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_query_create()
/// @see iotcon_query_destroy()
/// @see iotcon_query_add()
/// @see iotcon_query_remove()
/// @see iotcon_query_lookup()
/// @see iotcon_query_get_interface()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_set_interface(
  iotcon_query_h query,
  ffi.Pointer<ffi.Char> resource_iface,
) =>
    tizenIotcon.iotcon_query_set_interface(
      query,
      resource_iface,
    );

/// @brief Sets the resource type into the query.
/// @since_tizen 3.0
/// Parameter query The handle of the query
/// Parameter resource_type The resource type to set into the query
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_query_create()
/// @see iotcon_query_destroy()
/// @see iotcon_query_add()
/// @see iotcon_query_remove()
/// @see iotcon_query_lookup()
/// @see iotcon_query_get_resource_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_query_set_resource_type(
  iotcon_query_h query,
  ffi.Pointer<ffi.Char> resource_type,
) =>
    tizenIotcon.iotcon_query_set_resource_type(
      query,
      resource_type,
    );

/// @brief Clones a clone of a remote resource.
/// @since_tizen 3.0
/// @remarks You must destroy @a dest by calling iotcon_remote_resource_destroy() if @a dest is no longer needed.
/// Parameter src The Source of resource
/// Output parameter dest The cloned resource handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_create()
/// @see iotcon_remote_resource_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_clone(
  iotcon_remote_resource_h src,
  ffi.Pointer<iotcon_remote_resource_h> dest,
) =>
    tizenIotcon.iotcon_remote_resource_clone(
      src,
      dest,
    );

/// @brief Creates a new resource handle.
/// @details Creates a resource proxy object so that iotcon_remote_resource_get(),
/// iotcon_remote_resource_put(), iotcon_remote_resource_post(),
/// iotcon_remote_resource_delete(), iotcon_remote_resource_observe_register(),
/// iotcon_remote_resource_start_caching() and iotcon_remote_resource_start_monitoring()
/// API can be used without discovering the object in advance.\n
/// To use this API, you should provide all of the details required to correctly contact and observe the object.\n
/// If not, you should discover the resource object manually.\n
/// The @a policies can contain multiple policies like #IOTCON_RESOURCE_DISCOVERABLE | #IOTCON_RESOURCE_OBSERVABLE.
/// @since_tizen 3.0
/// @remarks You must destroy @a remote_resource by calling iotcon_remote_resource_destroy() if @a remote_resource is no longer needed.
/// Parameter host_address The host address of the resource
/// Parameter connectivity_type The connectivity type. Can not use @a IOTCON_CONNECTIVITY_ALL. \n
/// Connectivity type of specific remote resource(It has specific host address, not @a IOTCON_MULTICAST_ADDRESS) is already decided. \n
/// Use specific connectivity type of the remote resource. \n
/// You can refer to the @a iotcon_remote_resource_get_connectivity_type().
/// Parameter uri_path The URI path of the resource
/// Parameter policies The policies of the resource \n
/// Set of #iotcon_resource_policy_e
/// Parameter resource_types The resource types of the resource. For example, "core.light"
/// Parameter resource_ifaces The resource interfaces of the resource
/// Output parameter remote_resource Generated resource handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_IOTIVITY IoTivity errors
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @see iotcon_remote_resource_destroy()
/// @see iotcon_remote_resource_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_create(
  ffi.Pointer<ffi.Char> host_address,
  int connectivity_type,
  ffi.Pointer<ffi.Char> uri_path,
  int policies,
  iotcon_resource_types_h resource_types,
  iotcon_resource_interfaces_h resource_ifaces,
  ffi.Pointer<iotcon_remote_resource_h> remote_resource,
) =>
    tizenIotcon.iotcon_remote_resource_create(
      host_address,
      connectivity_type,
      uri_path,
      policies,
      resource_types,
      resource_ifaces,
      remote_resource,
    );

/// @brief Deletes a resource asynchronously.
/// @details When server sends response on delete request, iotcon_remote_resource_response_cb() will be called.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the resource
/// Parameter cb The callback function
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post When the client receive delete response, iotcon_remote_resource_response_cb() will be called.
/// @see iotcon_remote_resource_response_cb()
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_delete(
  iotcon_remote_resource_h resource,
  iotcon_remote_resource_response_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_remote_resource_delete(
      resource,
      cb,
      user_data,
    );

/// @brief Destroys a resource handle.
/// @since_tizen 3.0
/// Parameter resource The handle of the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_create()
/// @see iotcon_remote_resource_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_destroy(
  iotcon_remote_resource_h resource,
) =>
    tizenIotcon.iotcon_remote_resource_destroy(
      resource,
    );

/// @brief Gets the attributes of a resource asynchronously.
/// @details When server sends response on get request, iotcon_remote_resource_response_cb() will be called.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the resource
/// Parameter query The query to send to server
/// Parameter cb The callback function
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post When the client receive get response, iotcon_remote_resource_response_cb() will be called.
/// @see iotcon_remote_resource_response_cb()
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get(
  iotcon_remote_resource_h resource,
  iotcon_query_h query,
  iotcon_remote_resource_response_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_remote_resource_get(
      resource,
      query,
      cb,
      user_data,
    );

/// @brief Gets cached representation from the remote resource.
/// @since_tizen 3.0
/// @remarks @a representation must not be released using iotcon_representation_destroy().
/// Parameter resource The handle of the remote resource
/// Output parameter representation The handle of the representation
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_cached_representation(
  iotcon_remote_resource_h resource,
  ffi.Pointer<iotcon_representation_h> representation,
) =>
    tizenIotcon.iotcon_remote_resource_get_cached_representation(
      resource,
      representation,
    );

/// @brief Gets the checking interval which is using on the monitoring & caching of remote resource.
/// @details This API get the checking interval which is using in the process of monitoring and caching() of remote resource. \n
/// The monitoring and caching will operate "GET method" with the checking interval.
/// Default checking interval is 10 seconds.
/// @since_tizen 3.0
/// Parameter resource The handle of the remote resource
/// Output parameter interval Seconds for time interval
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_set_checking_interval()
/// @see iotcon_remote_resource_start_monitoring()
/// @see iotcon_remote_resource_start_caching()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_checking_interval(
  iotcon_remote_resource_h resource,
  ffi.Pointer<ffi.Int> interval,
) =>
    tizenIotcon.iotcon_remote_resource_get_checking_interval(
      resource,
      interval,
    );

/// @brief Gets a connectivity type of the remote resource.
/// @since_tizen 3.0
/// Parameter resource The handle of the remote resource
/// Output parameter connectivity_type The connectivity type of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_get_policies()
/// @see iotcon_remote_resource_set_options()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_connectivity_type(
  iotcon_remote_resource_h resource,
  ffi.Pointer<ffi.Int32> connectivity_type,
) =>
    tizenIotcon.iotcon_remote_resource_get_connectivity_type(
      resource,
      connectivity_type,
    );

/// @brief Gets a device ID of the remote resource.
/// @since_tizen 3.0
/// @remarks @a device_id must not be released using free().\n
/// If @a resource is created by calling iotcon_remote_resource_create(), you cannot get @a device_id.
/// In this case, the return value of this function is #IOTCON_ERROR_NO_DATA.
/// Parameter resource The handle of the remote resource
/// Output parameter device_id The device ID of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_get_policies()
/// @see iotcon_remote_resource_set_options()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_device_id(
  iotcon_remote_resource_h resource,
  ffi.Pointer<ffi.Pointer<ffi.Char>> device_id,
) =>
    tizenIotcon.iotcon_remote_resource_get_device_id(
      resource,
      device_id,
    );

/// @brief Gets the device name of the remote resource.
/// @since_tizen 3.0
/// @remarks @a device_name must not be released using free().\n
/// If @a resource is created by calling iotcon_remote_resource_create(), you cannot get @a device_name.
/// In this case, the return value of this function is #IOTCON_ERROR_NO_DATA.
/// Parameter resource The handle of the remote resource
/// Output parameter device_name The device name of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @see iotcon_set_device_name()
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_set_options()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_device_name(
  iotcon_remote_resource_h resource,
  ffi.Pointer<ffi.Pointer<ffi.Char>> device_name,
) =>
    tizenIotcon.iotcon_remote_resource_get_device_name(
      resource,
      device_name,
    );

/// @brief Gets a host address of the remote resource.
/// @since_tizen 3.0
/// @remarks @a host_address must not be released using free().
/// Parameter resource The handle of the remote resource
/// Output parameter host_address The host address of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_get_policies()
/// @see iotcon_remote_resource_set_options()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_host_address(
  iotcon_remote_resource_h resource,
  ffi.Pointer<ffi.Pointer<ffi.Char>> host_address,
) =>
    tizenIotcon.iotcon_remote_resource_get_host_address(
      resource,
      host_address,
    );

/// @brief Gets resource interfaces of the remote resource.
/// @since_tizen 3.0
/// @remarks @a ifaces must not be released using iotcon_resource_interfaces_destroy().
/// Parameter resource The handle of the remote resource
/// Output parameter ifaces The resource interfaces of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_policies()
/// @see iotcon_remote_resource_set_options()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_interfaces(
  iotcon_remote_resource_h resource,
  ffi.Pointer<iotcon_resource_interfaces_h> ifaces,
) =>
    tizenIotcon.iotcon_remote_resource_get_interfaces(
      resource,
      ifaces,
    );

/// @brief Gets options of the remote resource.
/// @since_tizen 3.0
/// @remarks @a options must not be released using iotcon_options_destroy().
/// Parameter resource The handle of the remote resource
/// Output parameter options The handle of the header options
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_set_options()
/// @see iotcon_remote_resource_get_policies()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_options(
  iotcon_remote_resource_h resource,
  ffi.Pointer<iotcon_options_h> options,
) =>
    tizenIotcon.iotcon_remote_resource_get_options(
      resource,
      options,
    );

/// @brief Checks whether the remote resource is observable or not.
/// @details The @a policies can contain multiple policies like #IOTCON_RESOURCE_DISCOVERABLE | #IOTCON_RESOURCE_OBSERVABLE.
/// @since_tizen 3.0
/// Parameter resource The handle of the resource
/// Output parameter policies The policies of the resource \n
/// Set of #iotcon_resource_policy_e
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_set_options()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_policies(
  iotcon_remote_resource_h resource,
  ffi.Pointer<ffi.Uint8> policies,
) =>
    tizenIotcon.iotcon_remote_resource_get_policies(
      resource,
      policies,
    );

/// @brief Gets resource types of the remote resource.
/// @since_tizen 3.0
/// @remarks @a types must not be released using iotcon_resource_types_destroy().
/// Parameter resource The handle of the remote resource
/// Output parameter types The resource types of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_get_policies()
/// @see iotcon_remote_resource_set_options()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_types(
  iotcon_remote_resource_h resource,
  ffi.Pointer<iotcon_resource_types_h> types,
) =>
    tizenIotcon.iotcon_remote_resource_get_types(
      resource,
      types,
    );

/// @brief Gets an URI path of the remote resource.
/// @since_tizen 3.0
/// @remarks @a uri_path must not be released using free().
/// Parameter resource The handle of the remote resource
/// Output parameter uri_path The URI path of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_get_policies()
/// @see iotcon_remote_resource_set_options()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_get_uri_path(
  iotcon_remote_resource_h resource,
  ffi.Pointer<ffi.Pointer<ffi.Char>> uri_path,
) =>
    tizenIotcon.iotcon_remote_resource_get_uri_path(
      resource,
      uri_path,
    );

/// @brief Deregisters observe callback on the resource.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_remote_resource_observe_cb()
/// @see iotcon_remote_resource_observe_register()
/// @see iotcon_resource_notify()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_observe_deregister(
  iotcon_remote_resource_h resource,
) =>
    tizenIotcon.iotcon_remote_resource_observe_deregister(
      resource,
    );

/// @brief Registers observe callback on the resource.
/// @details When server sends notification message, iotcon_remote_resource_observe_cb() will be called.
/// The @a observe_policy could be one of #iotcon_observe_policy_e.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the resource
/// Parameter observe_policy The type to specify how client wants to observe
/// Parameter query The query to send to server
/// Parameter cb The callback function to get notifications from server
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_IOTIVITY IoTivity errors
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post When the @a resource receive notification message, iotcon_remote_resource_observe_cb() will be called.
/// @see iotcon_remote_resource_observe_cb()
/// @see iotcon_remote_resource_observe_deregister()
/// @see iotcon_resource_notify()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_observe_register(
  iotcon_remote_resource_h resource,
  int observe_policy,
  iotcon_query_h query,
  iotcon_remote_resource_observe_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_remote_resource_observe_register(
      resource,
      observe_policy,
      query,
      cb,
      user_data,
    );

/// @brief Posts on a resource asynchronously.
/// @details When server sends response on post request, iotcon_remote_resource_response_cb() will be called.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the resource
/// Parameter repr The handle of the representation
/// Parameter query The query to send to server
/// Parameter cb The callback function
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post When the client receive post response, iotcon_remote_resource_response_cb() will be called.
/// @see iotcon_remote_resource_response_cb()
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_post(
  iotcon_remote_resource_h resource,
  iotcon_representation_h repr,
  iotcon_query_h query,
  iotcon_remote_resource_response_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_remote_resource_post(
      resource,
      repr,
      query,
      cb,
      user_data,
    );

/// @brief Puts the representation of a resource asynchronously.
/// @details When server sends response on put request, iotcon_remote_resource_response_cb() will be called.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the resource
/// Parameter repr The handle of the representation
/// Parameter query The query to send to server
/// Parameter cb The callback function
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post When the client receive put response, iotcon_remote_resource_response_cb() will be called.
/// @see iotcon_remote_resource_response_cb()
/// @see iotcon_set_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_put(
  iotcon_remote_resource_h resource,
  iotcon_representation_h repr,
  iotcon_query_h query,
  iotcon_remote_resource_response_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_remote_resource_put(
      resource,
      repr,
      query,
      cb,
      user_data,
    );

/// @brief Sets the checking interval which is using on the monitoring & caching of remote resource.
/// @details This API set the checking interval which is using in the process of monitoring and caching() of remote resource. \n
/// The monitoring and caching will operate "GET method" with the checking interval changed by this function.
/// Default checking interval is 10 seconds.
/// @since_tizen 3.0
/// Parameter resource The handle of the remote resource
/// Parameter interval Seconds for time interval (must be in range from 1 to 3600)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_checking_interval()
/// @see iotcon_remote_resource_start_monitoring()
/// @see iotcon_remote_resource_start_caching()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_set_checking_interval(
  iotcon_remote_resource_h resource,
  int interval,
) =>
    tizenIotcon.iotcon_remote_resource_set_checking_interval(
      resource,
      interval,
    );

/// @brief Sets options into the remote resource.
/// @since_tizen 3.0
/// Parameter resource The handle of the remote resource
/// Parameter options The handle of the header options
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_remote_resource_get_uri_path()
/// @see iotcon_remote_resource_get_host_address()
/// @see iotcon_remote_resource_get_connectivity_type()
/// @see iotcon_remote_resource_get_device_id()
/// @see iotcon_remote_resource_get_device_name()
/// @see iotcon_remote_resource_get_types()
/// @see iotcon_remote_resource_get_interfaces()
/// @see iotcon_remote_resource_get_options()
/// @see iotcon_remote_resource_get_policies()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_set_options(
  iotcon_remote_resource_h resource,
  iotcon_options_h options,
) =>
    tizenIotcon.iotcon_remote_resource_set_options(
      resource,
      options,
    );

/// @brief Starts caching of a remote resource.
/// @details Use this function to start caching the resource's attribute. \n
/// Although, remote resource is not observable, it keeps the representation up-to-date.
/// Because it checks whether representation is changed periodically. \n
/// Therefore, you can get the cached representation even when the remote resource is off-line.
/// The default checking interval is 10 seconds.
/// It can be changed by iotcon_remote_resource_set_checking_interval().
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the remote resource to be cached
/// Parameter cb The callback function to add into callback list
/// Parameter user_data The user data to pass to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_ALREADY Already done
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_remote_resource_stop_caching()
/// @see iotcon_remote_resource_cached_representation_changed_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_start_caching(
  iotcon_remote_resource_h resource,
  iotcon_remote_resource_cached_representation_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_remote_resource_start_caching(
      resource,
      cb,
      user_data,
    );

/// @brief Starts monitoring of a remote resource.
/// @details When remote resource's state is changed, registered callbacks will be called in turn.
/// Although, remote resource does not call iotcon_start_presence(), it knows the state of resource.
/// Because it checks the state of resource, periodically. \n
/// The default checking interval is 10 seconds.
/// It can be changed by iotcon_remote_resource_set_checking_interval().
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the remote resource
/// Parameter cb The callback function to add into callback list
/// Parameter user_data The user data to pass to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_ALREADY Already done
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_remote_resource_stop_monitoring()
/// @see iotcon_remote_resource_state_changed_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_start_monitoring(
  iotcon_remote_resource_h resource,
  iotcon_remote_resource_state_changed_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_remote_resource_start_monitoring(
      resource,
      cb,
      user_data,
    );

/// @brief Stops caching of a remote resource.
/// @details Use this function to stop caching the resource's attribute.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_remote_resource_start_caching()
/// @see iotcon_remote_resource_cached_representation_changed_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_stop_caching(
  iotcon_remote_resource_h resource,
) =>
    tizenIotcon.iotcon_remote_resource_stop_caching(
      resource,
    );

/// @brief Stops monitoring of a remote resource.
/// @details Use this function to stop monitoring the remote resource.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the remote resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_remote_resource_start_monitoring()
/// @see iotcon_remote_resource_state_changed_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_remote_resource_stop_monitoring(
  iotcon_remote_resource_h resource,
) =>
    tizenIotcon.iotcon_remote_resource_stop_monitoring(
      resource,
    );

/// @brief Removes callback to show pin number which is generated automatically.
/// @details If this function is called, @a cb will be not called anymore. \n
/// For removing @a cb that is used at iotcon_add_generated_pin_cb() should be used.
/// @since_tizen 3.0
/// Parameter cb The callback function to invoke
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED  Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_add_generated_pin_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_remove_generated_pin_cb(
  iotcon_generated_pin_cb cb,
) =>
    tizenIotcon.iotcon_remove_generated_pin_cb(
      cb,
    );

/// @brief Removes callback to a server's presence events.
/// @details Request not to receive server's presence any more.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter presence_handle The presence handle to be unsubscribed
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_start_presence()
/// @see iotcon_stop_presence()
/// @see iotcon_add_presence_cb()
/// @see iotcon_presence_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_remove_presence_cb(
  iotcon_presence_h presence_handle,
) =>
    tizenIotcon.iotcon_remove_presence_cb(
      presence_handle,
    );

/// @brief Adds a new child Representation on to the end of the parent Representation.
/// @details Duplicated child Representation is allowed to append.
/// @since_tizen 3.0
/// Parameter parent The parent Representation handle
/// Parameter child The child Representation handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_add_child(
  iotcon_representation_h parent,
  iotcon_representation_h child,
) =>
    tizenIotcon.iotcon_representation_add_child(
      parent,
      child,
    );

/// @brief Clones from the source Representation.
/// @details Makes a deep copy of a source Representation.
/// @since_tizen 3.0
/// @remarks You must destroy @a dest by calling iotcon_representation_destroy() if @a dest is no longer needed.
/// Parameter src Source of Representation to be copied
/// Output parameter dest Clone of a source Representation
/// @return Clone of a source Representation,
/// otherwise NULL on failure
/// @retval iotcon_representation_h Success
/// @retval NULL Failure
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_clone(
  iotcon_representation_h src,
  ffi.Pointer<iotcon_representation_h> dest,
) =>
    tizenIotcon.iotcon_representation_clone(
      src,
      dest,
    );

/// @brief Creates a new Representation handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a repr by calling iotcon_representation_destroy() if @a repr is no longer needed.
/// Output parameter repr A newly allocated Representation handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_representation_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_create(
  ffi.Pointer<iotcon_representation_h> repr,
) =>
    tizenIotcon.iotcon_representation_create(
      repr,
    );

/// @brief Destroys a Representation.
/// @details Releases @a Representation and its internal data.
/// @since_tizen 3.0
/// Parameter repr The representation handle to free
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_representation_create()
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_destroy(
  iotcon_representation_h repr,
) =>
    tizenIotcon.iotcon_representation_destroy(
      repr,
    );

/// @brief Calls a function for each child Representation of parent.
/// @details iotcon_children_cb() will be called for each child.
/// @since_tizen 3.0
/// Parameter parent The parent Representation handle
/// Parameter cb The callback function to invoke
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_children_cb() will be called for each child.
/// @see iotcon_children_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_foreach_children(
  iotcon_representation_h parent,
  iotcon_children_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_representation_foreach_children(
      parent,
      cb,
      user_data,
    );

/// @brief Gets the attributes handle in the Representation.
/// @since_tizen 3.0
/// @remarks @a attributes must not be released using iotcon_attributes_destroy().
/// Parameter repr The Representation handle
/// Parameter attributes The attributes handle to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_get_attributes(
  iotcon_representation_h repr,
  ffi.Pointer<iotcon_attributes_h> attributes,
) =>
    tizenIotcon.iotcon_representation_get_attributes(
      repr,
      attributes,
    );

/// @brief Gets the number of child Representations in the parent Representation.
/// @since_tizen 3.0
/// Parameter parent The parent Representation handle
/// Output parameter count The number of child Representations
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_get_child_count(
  iotcon_representation_h parent,
  ffi.Pointer<ffi.UnsignedInt> count,
) =>
    tizenIotcon.iotcon_representation_get_child_count(
      parent,
      count,
    );

/// @brief Gets the child Representation at the given position.
/// @details Iterates over the parent until it reaches the @a pos-1 position.
/// @since_tizen 3.0
/// @remarks @a child must not be released using iotcon_representation_destroy().
/// Parameter parent The parent Representation handle
/// Parameter pos The position of the child Representation
/// Output parameter child The handle to the child Representation
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA  No data available
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_get_nth_child(
  iotcon_representation_h parent,
  int pos,
  ffi.Pointer<iotcon_representation_h> child,
) =>
    tizenIotcon.iotcon_representation_get_nth_child(
      parent,
      pos,
      child,
    );

/// @brief Gets list of resource interfaces from the Representation.
/// @since_tizen 3.0
/// @remarks @a ifaces must not be released using iotcon_resource_interfaces_destroy().
/// Parameter repr The Representation handle
/// Output parameter ifaces The list of resource interfaces to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_get_resource_interfaces(
  iotcon_representation_h repr,
  ffi.Pointer<iotcon_resource_interfaces_h> ifaces,
) =>
    tizenIotcon.iotcon_representation_get_resource_interfaces(
      repr,
      ifaces,
    );

/// @brief Gets list of resource type from the Representation.
/// @since_tizen 3.0
/// @remarks @a types must not be released using iotcon_resource_types_destroy().
/// Parameter repr The Representation handle
/// Output parameter types The list of resource types to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_get_resource_types(
  iotcon_representation_h repr,
  ffi.Pointer<iotcon_resource_types_h> types,
) =>
    tizenIotcon.iotcon_representation_get_resource_types(
      repr,
      types,
    );

/// @brief Gets a URI path from the Representation.
/// @since_tizen 3.0
/// @remarks @a uri_path must not be released using free().
/// Parameter repr The Representation handle
/// Output parameter uri_path The URI path to get
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_get_uri_path(
  iotcon_representation_h repr,
  ffi.Pointer<ffi.Pointer<ffi.Char>> uri_path,
) =>
    tizenIotcon.iotcon_representation_get_uri_path(
      repr,
      uri_path,
    );

/// @brief Removes a child Representation from parent Representation without freeing.
/// @since_tizen 3.0
/// Parameter parent The parent Representation handle
/// Parameter child The child Representation handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_remove_child(
  iotcon_representation_h parent,
  iotcon_representation_h child,
) =>
    tizenIotcon.iotcon_representation_remove_child(
      parent,
      child,
    );

/// @brief Sets a new attributes handle into the Representation.
/// @since_tizen 3.0
/// Parameter repr The Representation handle
/// Parameter attributes The attributes handle to be set newly
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_set_attributes(
  iotcon_representation_h repr,
  iotcon_attributes_h attributes,
) =>
    tizenIotcon.iotcon_representation_set_attributes(
      repr,
      attributes,
    );

/// @brief Sets list of resource interfaces to the Representation.
/// @since_tizen 3.0
/// @remarks Stored list is replaced with @a ifaces. If @a ifaces is NULL, stored list is set to NULL.
/// Parameter repr The Representation handle
/// Parameter ifaces The list of resource interfaces
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_set_resource_interfaces(
  iotcon_representation_h repr,
  iotcon_resource_interfaces_h ifaces,
) =>
    tizenIotcon.iotcon_representation_set_resource_interfaces(
      repr,
      ifaces,
    );

/// @brief Sets resource type list to the Representation.
/// @since_tizen 3.0
/// @remarks Stored list is replaced with @a types. If @a types is NULL, stored list is set to NULL.
/// Parameter repr The handle to the Representation
/// Parameter types The resource type list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_set_resource_types(
  iotcon_representation_h repr,
  iotcon_resource_types_h types,
) =>
    tizenIotcon.iotcon_representation_set_resource_types(
      repr,
      types,
    );

/// @brief Appends resource type name.
/// @since_tizen 3.0
/// @remarks Stored string is replaced with @a uri_path. If @a uri_path is NULL, stored string is set to NULL.
/// Parameter repr The handle to the Representation
/// Parameter uri_path The URI of resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenIotcon`.
int iotcon_representation_set_uri_path(
  iotcon_representation_h repr,
  ffi.Pointer<ffi.Char> uri_path,
) =>
    tizenIotcon.iotcon_representation_set_uri_path(
      repr,
      uri_path,
    );

/// @brief Gets connectivity type of the request.
/// @since_tizen 3.0
/// Parameter request The handle of the request
/// Output parameter connectivity_type The connectivity type of the request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_request_get_host_address()
/// @see iotcon_request_get_representation()
/// @see iotcon_request_get_request_type()
/// @see iotcon_request_get_options()
/// @see iotcon_request_get_query()
/// @see iotcon_request_get_observe_type()
/// @see iotcon_request_get_observe_id()
///
/// Module getter: `tizenIotcon`.
int iotcon_request_get_connectivity_type(
  iotcon_request_h request,
  ffi.Pointer<ffi.Int32> connectivity_type,
) =>
    tizenIotcon.iotcon_request_get_connectivity_type(
      request,
      connectivity_type,
    );

/// @brief Gets host address of the request.
/// @since_tizen 3.0
/// @remarks @a host_address must not be released using free().
/// Parameter request The handle of the request
/// Output parameter host_address The host address of the request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_request_get_connectivity_type()
/// @see iotcon_request_get_representation()
/// @see iotcon_request_get_request_type()
/// @see iotcon_request_get_options()
/// @see iotcon_request_get_query()
/// @see iotcon_request_get_observe_type()
/// @see iotcon_request_get_observe_id()
///
/// Module getter: `tizenIotcon`.
int iotcon_request_get_host_address(
  iotcon_request_h request,
  ffi.Pointer<ffi.Pointer<ffi.Char>> host_address,
) =>
    tizenIotcon.iotcon_request_get_host_address(
      request,
      host_address,
    );

/// @brief Gets observation ID of the request.
/// @since_tizen 3.0
/// Parameter request The handle of the request
/// Output parameter observe_id The ID of the observer
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_request_get_host_address()
/// @see iotcon_request_get_connectivity_type()
/// @see iotcon_request_get_representation()
/// @see iotcon_request_get_request_type()
/// @see iotcon_request_get_options()
/// @see iotcon_request_get_query()
/// @see iotcon_request_get_observe_type()
///
/// Module getter: `tizenIotcon`.
int iotcon_request_get_observe_id(
  iotcon_request_h request,
  ffi.Pointer<ffi.Int> observe_id,
) =>
    tizenIotcon.iotcon_request_get_observe_id(
      request,
      observe_id,
    );

/// @brief Gets observation action of the request.
/// @details The @a observe_type could be one of #iotcon_observe_type_e.
/// @since_tizen 3.0
/// Parameter request The handle of the request
/// Output parameter observe_type The observation type of the request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_request_get_host_address()
/// @see iotcon_request_get_connectivity_type()
/// @see iotcon_request_get_representation()
/// @see iotcon_request_get_request_type()
/// @see iotcon_request_get_options()
/// @see iotcon_request_get_query()
/// @see iotcon_request_get_observe_id()
///
/// Module getter: `tizenIotcon`.
int iotcon_request_get_observe_type(
  iotcon_request_h request,
  ffi.Pointer<ffi.Int32> observe_type,
) =>
    tizenIotcon.iotcon_request_get_observe_type(
      request,
      observe_type,
    );

/// @brief Gets options of the request.
/// @since_tizen 3.0
/// @remarks @a options must not be released using iotcon_options_destroy().
/// Parameter request The handle of the request
/// Output parameter options The options of the request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_request_get_host_address()
/// @see iotcon_request_get_connectivity_type()
/// @see iotcon_request_get_representation()
/// @see iotcon_request_get_request_type()
/// @see iotcon_request_get_query()
/// @see iotcon_request_get_observe_type()
/// @see iotcon_request_get_observe_id()
///
/// Module getter: `tizenIotcon`.
int iotcon_request_get_options(
  iotcon_request_h request,
  ffi.Pointer<iotcon_options_h> options,
) =>
    tizenIotcon.iotcon_request_get_options(
      request,
      options,
    );

/// @brief Gets query of the request.
/// @since_tizen 3.0
/// @remarks @a query must not be released using iotcon_query_destroy().
/// Parameter request The handle of the request
/// Output parameter query The query of the request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_request_get_host_address()
/// @see iotcon_request_get_connectivity_type()
/// @see iotcon_request_get_representation()
/// @see iotcon_request_get_request_type()
/// @see iotcon_request_get_options()
/// @see iotcon_request_get_observe_type()
/// @see iotcon_request_get_observe_id()
///
/// Module getter: `tizenIotcon`.
int iotcon_request_get_query(
  iotcon_request_h request,
  ffi.Pointer<iotcon_query_h> query,
) =>
    tizenIotcon.iotcon_request_get_query(
      request,
      query,
    );

/// @brief Gets a representation of the request.
/// @since_tizen 3.0
/// @remarks @a repr must not be released using iotcon_representation_destroy().
/// Parameter request The handle of the request
/// Output parameter repr The representation of the request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_request_get_host_address()
/// @see iotcon_request_get_connectivity_type()
/// @see iotcon_request_get_request_type()
/// @see iotcon_request_get_options()
/// @see iotcon_request_get_query()
/// @see iotcon_request_get_observe_type()
/// @see iotcon_request_get_observe_id()
///
/// Module getter: `tizenIotcon`.
int iotcon_request_get_representation(
  iotcon_request_h request,
  ffi.Pointer<iotcon_representation_h> repr,
) =>
    tizenIotcon.iotcon_request_get_representation(
      request,
      repr,
    );

/// @brief Gets type of the request.
/// @details @a type could be one of the #iotcon_request_type_e.
/// @since_tizen 3.0
/// Parameter request The handle of the request
/// Output parameter type The types of the request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_request_get_host_address()
/// @see iotcon_request_get_connectivity_type()
/// @see iotcon_request_get_representation()
/// @see iotcon_request_get_options()
/// @see iotcon_request_get_query()
/// @see iotcon_request_get_observe_type()
/// @see iotcon_request_get_observe_id()
///
/// Module getter: `tizenIotcon`.
int iotcon_request_get_request_type(
  iotcon_request_h request,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenIotcon.iotcon_request_get_request_type(
      request,
      type,
    );

/// @brief Binds a child resource into the parent resource.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter parent The handle of the parent resource
/// Parameter child The handle of the child resource to be added to the parent resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_ALREADY Already done
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_resource_create()
/// @see iotcon_resource_destroy()
/// @see iotcon_resource_bind_interface()
/// @see iotcon_resource_bind_type()
/// @see iotcon_resource_set_request_handler()
/// @see iotcon_resource_unbind_child_resource()
/// @see iotcon_request_handler_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_bind_child_resource(
  iotcon_resource_h parent,
  iotcon_resource_h child,
) =>
    tizenIotcon.iotcon_resource_bind_child_resource(
      parent,
      child,
    );

/// @brief Binds an interface to the resource.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks @a iface could be a value such as #IOTCON_INTERFACE_DEFAULT.
/// Parameter resource The handle of the resource
/// Parameter iface The interface to be bound to the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @retval #IOTCON_ERROR_ALREADY Already done
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_resource_create()
/// @see iotcon_resource_destroy()
/// @see iotcon_resource_bind_type()
/// @see iotcon_resource_set_request_handler()
/// @see iotcon_resource_bind_child_resource()
/// @see iotcon_resource_unbind_child_resource()
/// @see iotcon_request_handler_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_bind_interface(
  iotcon_resource_h resource,
  ffi.Pointer<ffi.Char> iface,
) =>
    tizenIotcon.iotcon_resource_bind_interface(
      resource,
      iface,
    );

/// @brief Binds a type to the resource.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks The length of @a resource_type should be less than or equal to 61.\n
/// The @a resource_type must start with a lowercase alphabetic character, followed by a sequence
/// of lowercase alphabetic, numeric, ".", or "-" characters, and contains no white space.
/// Parameter resource_handle The handle of the resource
/// Parameter resource_type The type to be bound to the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @retval #IOTCON_ERROR_ALREADY Already done
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_resource_create()
/// @see iotcon_resource_destroy()
/// @see iotcon_resource_bind_interface()
/// @see iotcon_resource_set_request_handler()
/// @see iotcon_resource_bind_child_resource()
/// @see iotcon_resource_unbind_child_resource()
/// @see iotcon_request_handler_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_bind_type(
  iotcon_resource_h resource_handle,
  ffi.Pointer<ffi.Char> resource_type,
) =>
    tizenIotcon.iotcon_resource_bind_type(
      resource_handle,
      resource_type,
    );

/// @brief Creates a resource handle and registers the resource in server.
/// @details Registers a resource specified by @a uri_path, @a res_types, @a ifaces which has @a properties in IoTCon server. \n
/// When client finds the registered resource, iotcon_request_handler_cb() will be called automatically. \n
/// @a uri_path format would be relative URI path like '/a/light' \n
/// @a res_types is a list of resource types. Create a iotcon_resource_types_h handle and add types string to it. \n
/// @a ifaces is a list of resource interfaces. Create a iotcon_resource_interfaces_h handle and add interfaces string to it. \n
/// @a policies also can contain multiple policies like #IOTCON_RESOURCE_DISCOVERABLE | #IOTCON_RESOURCE_OBSERVABLE. \n
/// iotcon_request_handler_cb() will be called when receive CRUD request to the registered resource.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks @a uri_path length must be less than 128. \n
/// You must destroy @a resource by calling iotcon_resource_destroy() if @a resource is no longer needed.
/// Parameter uri_path The URI path of the resource
/// Parameter res_types The list of type of the resource
/// Parameter ifaces The list of interface of the resource
/// Parameter policies The policies of the resource \n
/// Set of #iotcon_resource_policy_e
/// Parameter cb The request handler callback function
/// Parameter user_data The user data to pass to the callback function
/// Output parameter resource_handle The handle of the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_IOTIVITY IoTivity errors
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @post When the resource receive CRUD request, iotcon_request_handler_cb() will be called.
/// @see iotcon_resource_destroy()
/// @see iotcon_resource_bind_interface()
/// @see iotcon_resource_bind_type()
/// @see iotcon_resource_set_request_handler()
/// @see iotcon_resource_bind_child_resource()
/// @see iotcon_resource_unbind_child_resource()
/// @see iotcon_request_handler_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_create(
  ffi.Pointer<ffi.Char> uri_path,
  iotcon_resource_types_h res_types,
  iotcon_resource_interfaces_h ifaces,
  int policies,
  iotcon_request_handler_cb cb,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<iotcon_resource_h> resource_handle,
) =>
    tizenIotcon.iotcon_resource_create(
      uri_path,
      res_types,
      ifaces,
      policies,
      cb,
      user_data,
      resource_handle,
    );

/// @brief Destroys the resource and releases its data.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks When a normal variable is used, there is only permission denied error.
/// If the errors of this API are not handled, then you must check an application has the privileges for the API.
/// Parameter resource_handle The handle of the resource to be unregistered
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_resource_create()
/// @see iotcon_resource_bind_interface()
/// @see iotcon_resource_bind_type()
/// @see iotcon_resource_set_request_handler()
/// @see iotcon_resource_bind_child_resource()
/// @see iotcon_resource_unbind_child_resource()
/// @see iotcon_request_handler_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_destroy(
  iotcon_resource_h resource_handle,
) =>
    tizenIotcon.iotcon_resource_destroy(
      resource_handle,
    );

/// @brief Gets the number of child resources of the resource.
/// @since_tizen 3.0
/// Parameter resource The handle of the resource
/// Output parameter count The number of child resources
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_get_nth_child()
/// @see iotcon_resource_get_uri_path()
/// @see iotcon_resource_get_types()
/// @see iotcon_resource_get_interfaces()
/// @see iotcon_resource_get_policies()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_get_child_count(
  iotcon_resource_h resource,
  ffi.Pointer<ffi.UnsignedInt> count,
) =>
    tizenIotcon.iotcon_resource_get_child_count(
      resource,
      count,
    );

/// @brief Gets the interfaces of the resource.
/// @since_tizen 3.0
/// @remarks @a ifaces must not be released using iotcon_resource_interfaces_destroy().
/// Parameter resource The handle of the resource
/// Output parameter ifaces The interfaces of the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_get_child_count()
/// @see iotcon_resource_get_nth_child()
/// @see iotcon_resource_get_uri_path()
/// @see iotcon_resource_get_types()
/// @see iotcon_resource_get_policies()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_get_interfaces(
  iotcon_resource_h resource,
  ffi.Pointer<iotcon_resource_interfaces_h> ifaces,
) =>
    tizenIotcon.iotcon_resource_get_interfaces(
      resource,
      ifaces,
    );

/// @brief Gets the child resource at the given index in the parent resource.
/// @since_tizen 3.0
/// @remarks @a child must not be released using iotcon_resource_destroy().
/// Parameter parent The handle of the parent resource
/// Parameter index The index of the child resource
/// Output parameter child The child resource at the index
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @see iotcon_resource_get_child_count()
/// @see iotcon_resource_get_uri_path()
/// @see iotcon_resource_get_types()
/// @see iotcon_resource_get_interfaces()
/// @see iotcon_resource_get_policies()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_get_nth_child(
  iotcon_resource_h parent,
  int index,
  ffi.Pointer<iotcon_resource_h> child,
) =>
    tizenIotcon.iotcon_resource_get_nth_child(
      parent,
      index,
      child,
    );

/// @brief Gets the policies in the resource.
/// @details @a policies can contain multiple policies like #IOTCON_RESOURCE_DISCOVERABLE | #IOTCON_RESOURCE_OBSERVABLE.
/// @since_tizen 3.0
/// Parameter resource The handle of the resource
/// Output parameter policies The policies of resource \n
/// Set of #iotcon_resource_policy_e
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_get_child_count()
/// @see iotcon_resource_get_nth_child()
/// @see iotcon_resource_get_uri_path()
/// @see iotcon_resource_get_types()
/// @see iotcon_resource_get_interfaces()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_get_policies(
  iotcon_resource_h resource,
  ffi.Pointer<ffi.Uint8> policies,
) =>
    tizenIotcon.iotcon_resource_get_policies(
      resource,
      policies,
    );

/// @brief Gets the list of types in the resource.
/// @since_tizen 3.0
/// @remarks @a types must not be released using iotcon_resource_types_destroy().
/// Parameter resource The handle of the resource
/// Output parameter types The types of the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_get_child_count()
/// @see iotcon_resource_get_nth_child()
/// @see iotcon_resource_get_uri_path()
/// @see iotcon_resource_get_interfaces()
/// @see iotcon_resource_get_policies()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_get_types(
  iotcon_resource_h resource,
  ffi.Pointer<iotcon_resource_types_h> types,
) =>
    tizenIotcon.iotcon_resource_get_types(
      resource,
      types,
    );

/// @brief Gets an URI path of the resource.
/// @since_tizen 3.0
/// @remarks @a uri_path must not be released using free().
/// Parameter resource The handle of the resource
/// Output parameter uri_path The URI path of the resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_get_child_count()
/// @see iotcon_resource_get_nth_child()
/// @see iotcon_resource_get_types()
/// @see iotcon_resource_get_interfaces()
/// @see iotcon_resource_get_policies()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_get_uri_path(
  iotcon_resource_h resource,
  ffi.Pointer<ffi.Pointer<ffi.Char>> uri_path,
) =>
    tizenIotcon.iotcon_resource_get_uri_path(
      resource,
      uri_path,
    );

/// @brief Inserts a resource iface into the list.
/// @since_tizen 3.0
/// @remarks @a iface could be a value such as #IOTCON_INTERFACE_DEFAULT.
/// Parameter ifaces The handle of the resource ifaces
/// Parameter iface The string data to insert into the resource ifaces
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_ALREADY Already done
/// @see iotcon_resource_interfaces_create()
/// @see iotcon_resource_interfaces_destroy()
/// @see iotcon_resource_interfaces_remove()
/// @see iotcon_resource_interfaces_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_interfaces_add(
  iotcon_resource_interfaces_h ifaces,
  ffi.Pointer<ffi.Char> iface,
) =>
    tizenIotcon.iotcon_resource_interfaces_add(
      ifaces,
      iface,
    );

/// @brief Clones the resource ifaces handle.
/// @details Makes a deep copy of a source list of resource ifaces.
/// @since_tizen 3.0
/// @remarks You must @a destroy dest by calling iotcon_resource_interfaces_destroy() if @a dest is no longer needed.
/// Parameter src The origin handle of the resource ifaces
/// Output parameter dest Clone of a source list of resource ifaces
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_interfaces_create()
/// @see iotcon_resource_interfaces_destroy()
/// @see iotcon_resource_interfaces_add()
/// @see iotcon_resource_interfaces_remove()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_interfaces_clone(
  iotcon_resource_interfaces_h src,
  ffi.Pointer<iotcon_resource_interfaces_h> dest,
) =>
    tizenIotcon.iotcon_resource_interfaces_clone(
      src,
      dest,
    );

/// @brief Creates a new resource interfaces handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a ifaces by calling iotcon_resource_interfaces_destroy() if @a ifaces is no longer needed.
/// Output parameter ifaces A newly allocated list of resource ifaces handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_interfaces_destroy()
/// @see iotcon_resource_interfaces_add()
/// @see iotcon_resource_interfaces_remove()
/// @see iotcon_resource_interfaces_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_interfaces_create(
  ffi.Pointer<iotcon_resource_interfaces_h> ifaces,
) =>
    tizenIotcon.iotcon_resource_interfaces_create(
      ifaces,
    );

/// @brief Destroys a resource ifaces handle.
/// @since_tizen 3.0
/// Parameter ifaces The handle of the resource ifaces
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_interfaces_create()
/// @see iotcon_resource_interfaces_add()
/// @see iotcon_resource_interfaces_remove()
/// @see iotcon_resource_interfaces_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_interfaces_destroy(
  iotcon_resource_interfaces_h ifaces,
) =>
    tizenIotcon.iotcon_resource_interfaces_destroy(
      ifaces,
    );

/// @brief Gets all of the resource ifaces of the list by invoking the callback function.
/// @details iotcon_resource_interfaces_foreach_cb() will be called for each iface. \n
/// If iotcon_resource_interfaces_foreach_cb() returns false, iteration will be stopped.
/// @since_tizen 3.0
/// Parameter ifaces The handle of resource ifaces
/// Parameter cb The callback function to get data
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_resource_interfaces_foreach() will be called for each iface.
/// @see iotcon_resource_interfaces_foreach_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_interfaces_foreach(
  iotcon_resource_interfaces_h ifaces,
  iotcon_resource_interfaces_foreach_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_resource_interfaces_foreach(
      ifaces,
      cb,
      user_data,
    );

/// @brief Deletes a resource iface from the list.
/// @since_tizen 3.0
/// @remarks @a iface could be a value such as #IOTCON_INTERFACE_DEFAULT.
/// Parameter ifaces The handle of the resource ifaces
/// Parameter iface The string data to delete from the resource ifaces
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @see iotcon_resource_interfaces_create()
/// @see iotcon_resource_interfaces_destroy()
/// @see iotcon_resource_interfaces_add()
/// @see iotcon_resource_interfaces_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_interfaces_remove(
  iotcon_resource_interfaces_h ifaces,
  ffi.Pointer<ffi.Char> iface,
) =>
    tizenIotcon.iotcon_resource_interfaces_remove(
      ifaces,
      iface,
    );

/// @brief Notifies specific clients that resource's attributes have changed.
/// @details If @a observers is @c NULL, the @a msg will notify to all observers.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resource The handle of the resource
/// Parameter repr The handle of the representation
/// Parameter observers The handle of the observers
/// Parameter qos The quality of service for message transfer
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_REPRESENTATION Representation error
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_remote_resource_observe_cb()
/// @see iotcon_remote_resource_observe_register()
/// @see iotcon_remote_resource_observe_deregister()
/// @see iotcon_observers_create()
/// @see iotcon_observers_destroy()
/// @see iotcon_observers_add()
/// @see iotcon_observers_remove()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_notify(
  iotcon_resource_h resource,
  iotcon_representation_h repr,
  iotcon_observers_h observers,
  int qos,
) =>
    tizenIotcon.iotcon_resource_notify(
      resource,
      repr,
      observers,
      qos,
    );

/// @brief Sets a request handler to the resource.
/// @details When the resource receive CRUD request, iotcon_request_handler_cb() will be called.
/// @since_tizen 3.0
/// @remarks Registered callback function will be replaced with the new @a cb.
/// Parameter resource The handle of the resource
/// Parameter cb The request handler to be bound to the resource
/// Parameter user_data The user data to pass to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_create()
/// @see iotcon_resource_destroy()
/// @see iotcon_resource_bind_interface()
/// @see iotcon_resource_bind_type()
/// @see iotcon_resource_bind_child_resource()
/// @see iotcon_resource_unbind_child_resource()
/// @see iotcon_request_handler_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_set_request_handler(
  iotcon_resource_h resource,
  iotcon_request_handler_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_resource_set_request_handler(
      resource,
      cb,
      user_data,
    );

/// @brief Inserts a resource types into the list.
/// @since_tizen 3.0
/// @remarks The length of @a type should be less than or equal to 61.\n
/// The @a type must start with a lowercase alphabetic character, followed by a sequence
/// of lowercase alphabetic, numeric, ".", or "-" characters, and contains no white space.\n
/// Duplicate strings are not allowed.
/// Parameter types The handle of the resource types
/// Parameter type The string data to insert into the resource types (e.g. "org.tizen.light")
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_ALREADY Already done
/// @see iotcon_resource_types_create()
/// @see iotcon_resource_types_destroy()
/// @see iotcon_resource_types_remove()
/// @see iotcon_resource_types_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_types_add(
  iotcon_resource_types_h types,
  ffi.Pointer<ffi.Char> type,
) =>
    tizenIotcon.iotcon_resource_types_add(
      types,
      type,
    );

/// @brief Clones the resource types handle.
/// @details Makes a deep copy of a source list of resource types.
/// @since_tizen 3.0
/// @remarks You must @a destroy dest by calling iotcon_resource_types_destroy() if @a dest is no longer needed.
/// Parameter src The origin handle of the resource types
/// Output parameter dest Clone of a source list of resource types
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_types_create()
/// @see iotcon_resource_types_destroy()
/// @see iotcon_resource_types_add()
/// @see iotcon_resource_types_remove()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_types_clone(
  iotcon_resource_types_h src,
  ffi.Pointer<iotcon_resource_types_h> dest,
) =>
    tizenIotcon.iotcon_resource_types_clone(
      src,
      dest,
    );

/// @brief Creates a new resource types handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a types by calling iotcon_resource_types_destroy() if @a types is no longer needed.
/// Output parameter types A newly allocated list of resource types handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_types_destroy()
/// @see iotcon_resource_types_add()
/// @see iotcon_resource_types_remove()
/// @see iotcon_resource_types_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_types_create(
  ffi.Pointer<iotcon_resource_types_h> types,
) =>
    tizenIotcon.iotcon_resource_types_create(
      types,
    );

/// @brief Destroys a resource types handle.
/// @since_tizen 3.0
/// Parameter types The handle of the resource types
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_resource_types_create()
/// @see iotcon_resource_types_add()
/// @see iotcon_resource_types_remove()
/// @see iotcon_resource_types_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_types_destroy(
  iotcon_resource_types_h types,
) =>
    tizenIotcon.iotcon_resource_types_destroy(
      types,
    );

/// @brief Gets all of the resource types of the list by invoking the callback function.
/// @details iotcon_resource_types_foreach_cb() will be called for each type. \n
/// If iotcon_resource_types_foreach_cb() returns false, iteration will be stopped.
/// @since_tizen 3.0
/// Parameter types The handle of resource types
/// Parameter cb The callback function to get data
/// Parameter user_data The user data to pass to the function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @post iotcon_resource_types_foreach() will be called for each type.
/// @see iotcon_resource_types_foreach_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_types_foreach(
  iotcon_resource_types_h types,
  iotcon_resource_types_foreach_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenIotcon.iotcon_resource_types_foreach(
      types,
      cb,
      user_data,
    );

/// @brief Deletes a resource types from the list.
/// @since_tizen 3.0
/// Parameter types The handle of the resource types
/// Parameter type The string data to delete from the resource types
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @see iotcon_resource_types_create()
/// @see iotcon_resource_types_destroy()
/// @see iotcon_resource_types_add()
/// @see iotcon_resource_types_clone()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_types_remove(
  iotcon_resource_types_h types,
  ffi.Pointer<ffi.Char> type,
) =>
    tizenIotcon.iotcon_resource_types_remove(
      types,
      type,
    );

/// @brief Unbinds a child resource from the parent resource.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter parent The handle of the parent resource
/// Parameter child The handle of the child resource to be unbound from the parent resource
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @retval #IOTCON_ERROR_NO_DATA No data available
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_resource_create()
/// @see iotcon_resource_destroy()
/// @see iotcon_resource_bind_interface()
/// @see iotcon_resource_bind_type()
/// @see iotcon_resource_set_request_handler()
/// @see iotcon_resource_bind_child_resource()
/// @see iotcon_request_handler_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_resource_unbind_child_resource(
  iotcon_resource_h parent,
  iotcon_resource_h child,
) =>
    tizenIotcon.iotcon_resource_unbind_child_resource(
      parent,
      child,
    );

/// @brief Creates a response handle.
/// @since_tizen 3.0
/// @remarks You must destroy @a response by calling iotcon_response_destroy() if @a response is no longer needed.
/// Parameter request The handle of received request handle
/// Output parameter response Generated response handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @see iotcon_response_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_response_create(
  iotcon_request_h request,
  ffi.Pointer<iotcon_response_h> response,
) =>
    tizenIotcon.iotcon_response_create(
      request,
      response,
    );

/// @brief Destroys a response handle.
/// @since_tizen 3.0
/// Parameter resp The handle of the response
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_response_create()
///
/// Module getter: `tizenIotcon`.
int iotcon_response_destroy(
  iotcon_response_h resp,
) =>
    tizenIotcon.iotcon_response_destroy(
      resp,
    );

/// @brief Gets header options of the response.
/// @since_tizen 3.0
/// @remarks @a options must not be released using iotcon_options_destroy().
/// Parameter resp The handle of the response
/// Output parameter options The handle of the header options
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_response_get_representation()
/// @see iotcon_response_get_result()
///
/// Module getter: `tizenIotcon`.
int iotcon_response_get_options(
  iotcon_response_h resp,
  ffi.Pointer<iotcon_options_h> options,
) =>
    tizenIotcon.iotcon_response_get_options(
      resp,
      options,
    );

/// @brief Gets representation of the response.
/// @since_tizen 3.0
/// @remarks @a repr must not be released using iotcon_representation_destroy().
/// Parameter resp The handle of the response
/// Output parameter repr The handle of the representation
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_NO_DATA No data
/// @see iotcon_response_get_options()
/// @see iotcon_response_get_result()
///
/// Module getter: `tizenIotcon`.
int iotcon_response_get_representation(
  iotcon_response_h resp,
  ffi.Pointer<iotcon_representation_h> repr,
) =>
    tizenIotcon.iotcon_response_get_representation(
      resp,
      repr,
    );

/// @brief Gets result of the response.
/// @since_tizen 3.0
/// Parameter resp The handle of the response
/// Output parameter result The result of the response
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @see iotcon_response_get_options()
/// @see iotcon_response_get_representation()
///
/// Module getter: `tizenIotcon`.
int iotcon_response_get_result(
  iotcon_response_h resp,
  ffi.Pointer<ffi.Int32> result,
) =>
    tizenIotcon.iotcon_response_get_result(
      resp,
      result,
    );

/// @brief Sends response for incoming request.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// Parameter resp The handle of the response to send
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
///
/// Module getter: `tizenIotcon`.
int iotcon_response_send(
  iotcon_response_h resp,
) =>
    tizenIotcon.iotcon_response_send(
      resp,
    );

/// @brief Sets header options into the response.
/// @since_tizen 3.0
/// Parameter resp The handle of the response
/// Parameter options The header options of the response
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @see iotcon_response_create()
/// @see iotcon_response_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_response_set_options(
  iotcon_response_h resp,
  iotcon_options_h options,
) =>
    tizenIotcon.iotcon_response_set_options(
      resp,
      options,
    );

/// @brief Sets representation into the response.
/// @since_tizen 3.0
/// Parameter resp The handle of the response
/// Parameter repr The representation of the response
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @see iotcon_response_create()
/// @see iotcon_response_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_response_set_representation(
  iotcon_response_h resp,
  iotcon_representation_h repr,
) =>
    tizenIotcon.iotcon_response_set_representation(
      resp,
      repr,
    );

/// @brief Sets result into the response.
/// @details The @a result could be one of #iotcon_response_result_e.
/// @since_tizen 3.0
/// Parameter resp The handle of the response
/// Parameter result The result to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @see iotcon_response_create()
/// @see iotcon_response_destroy()
///
/// Module getter: `tizenIotcon`.
int iotcon_response_set_result(
  iotcon_response_h resp,
  int result,
) =>
    tizenIotcon.iotcon_response_set_result(
      resp,
      result,
    );

/// @brief Sets the device name.
/// @details The function sets the name of the local device (the device calling the function).
/// If the device name is set, clients can get the name using iotcon_device_info_get_property() or iotcon_remote_resource_get_device_name().
/// @since_tizen 3.0
/// @remarks @a device_name may not be an empty string.
/// Parameter device_name The device name
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IOTCON_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IOTCON_ERROR_IOTIVITY Iotivity errors
/// @see iotcon_device_info_get_property()
/// @see iotcon_remote_resource_get_device_name()
///
/// Module getter: `tizenIotcon`.
int iotcon_set_device_name(
  ffi.Pointer<ffi.Char> device_name,
) =>
    tizenIotcon.iotcon_set_device_name(
      device_name,
    );

/// @brief Sets the timeout seconds of asynchronous APIs.
/// @details This API set the timeout of iotcon_find_device_info(),
/// iotcon_find_platform_info(), iotcon_find_resource(),
/// iotcon_remote_resource_get(), iotcon_remote_resource_put(),
/// iotcon_remote_resource_post() and iotcon_remote_resource_delete().\n
/// Default timeout interval value is 30.
/// @since_tizen 3.0
/// Parameter timeout_seconds Seconds for timeout (must be in range from 1 to 3600)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_get_timeout()
///
/// Module getter: `tizenIotcon`.
int iotcon_set_timeout(
  int timeout_seconds,
) =>
    tizenIotcon.iotcon_set_timeout(
      timeout_seconds,
    );

/// @brief Starts presence of a server.
/// @details Use this function to send server's announcements to clients. \n
/// Server can call this function when online for the first time or come back from offline to online.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @remarks If @a time_to_live is 0, server will set default value as 60 seconds. \n
/// If @a time_to_live is very big, server will set maximum value as (60 * 60 * 24) seconds (24 hours).
/// Parameter time_to_live The interval of announcing presence in seconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_stop_presence()
/// @see iotcon_add_presence_cb()
/// @see iotcon_remove_presence_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_start_presence(
  int time_to_live,
) =>
    tizenIotcon.iotcon_start_presence(
      time_to_live,
    );

/// @brief Stops presence of a server.
/// @details Use this function to stop sending server's announcements to clients.
/// Server can call this function when terminating, entering to offline or out of network.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/internet
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #IOTCON_ERROR_NONE Successful
/// @retval #IOTCON_ERROR_NOT_SUPPORTED Not supported
/// @retval #IOTCON_ERROR_SYSTEM System error
/// @retval #IOTCON_ERROR_PERMISSION_DENIED Permission denied
/// @pre iotcon_initialize() should be called to initialize.
/// @see iotcon_start_presence()
/// @see iotcon_add_presence_cb()
/// @see iotcon_remove_presence_cb()
///
/// Module getter: `tizenIotcon`.
int iotcon_stop_presence() =>
    tizenIotcon.iotcon_stop_presence();

