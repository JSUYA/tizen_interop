// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenDataControl`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libdata-control.so.0`.
///
/// Application Framework / Data Control.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_data_control;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Asynchronously adds a data changed callback, which is called whenever the provider's data is changed.
/// @details The function attempts to add the callback asynchronously and calls result_callback to inform about the result of the attempt. \n
/// If the function is successful, result_callback will be called. \n
/// The provider will call any filters which were added for the callback addition process.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
/// @remarks If you want to use this function, you must add privileges.
/// Parameter provider  Target provider handle
/// Parameter callback  The callback function to be called when consumer receives data change notification
/// Parameter user_data The user data to be passed to the callback function
/// Parameter result_callback The callback function to be called when consumer receives add data change callback process result
/// Parameter result_cb_user_data The user data to be passed to the result_callback function
/// Output parameter callback_id Added callback ID, it can be used to remove the callback
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_data_change_cb()
/// @see data_control_add_callback_result_cb()
/// @see data_control_provider_add_data_change_consumer_filter_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_add_data_change_cb(
  data_control_h provider,
  data_control_data_change_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  data_control_add_callback_result_cb result_callback,
  ffi.Pointer<ffi.Void> result_cb_user_data,
  ffi.Pointer<ffi.Int> callback_id,
) =>
    tizenDataControl.data_control_add_data_change_cb(
      provider,
      callback,
      user_data,
      result_callback,
      result_cb_user_data,
      callback_id,
    );

/// @brief Adds a bundle to bulk data.
/// @since_tizen 3.0
/// @remarks The order in which bundles are added is preserved. Bundle indexes start from 0.
/// Parameter bulk_data The bulk data handle
/// Parameter data The bundle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_data_add(
  data_control_bulk_data_h bulk_data,
  ffi.Pointer<bundle> data,
) =>
    tizenDataControl.data_control_bulk_data_add(
      bulk_data,
      data,
    );

/// @brief Creates bulk data.
/// @since_tizen 3.0
/// @remarks The @a bulk_data should be released using data_control_bulk_data_destroy().
/// Output parameter bulk_data The bulk data handle
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_data_create(
  ffi.Pointer<data_control_bulk_data_h> bulk_data,
) =>
    tizenDataControl.data_control_bulk_data_create(
      bulk_data,
    );

/// @brief Destroys bulk data.
/// @since_tizen 3.0
/// Parameter bulk_data The bulk data handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_data_destroy(
  data_control_bulk_data_h bulk_data,
) =>
    tizenDataControl.data_control_bulk_data_destroy(
      bulk_data,
    );

/// @brief Gets the bulk data bundle count.
/// @since_tizen 3.0
/// Parameter bulk_data The bulk data handle
/// Output parameter count The bundle count
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_data_get_count(
  data_control_bulk_data_h bulk_data,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenDataControl.data_control_bulk_data_get_count(
      bulk_data,
      count,
    );

/// @brief Gets the n-th bundle from bulk data.
/// @since_tizen 3.0
/// @remarks The @a data should not be released. \n
/// It will be released when data_control_bulk_data_destroy() is called.
/// Parameter bulk_data The bulk data handle
/// Parameter idx The bundle index. Index starts at 0
/// Output parameter data The n-th bundle.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_bulk_data_add()
/// @see data_control_bulk_data_destroy()
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_data_get_data(
  data_control_bulk_data_h bulk_data,
  int idx,
  ffi.Pointer<ffi.Pointer<bundle>> data,
) =>
    tizenDataControl.data_control_bulk_data_get_data(
      bulk_data,
      idx,
      data,
    );

/// @brief Adds bulk data.
/// @since_tizen 3.0
/// @remarks The order in which bundles are added is preserved. Bundle indexes start from 0.
/// Parameter result_data The bulk result data handle
/// Parameter data The bundle
/// Parameter result Bulk operation result. Possible values and their meaning are defined by the developer.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_bulk_result_data_get_result_data()
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_result_data_add(
  data_control_bulk_result_data_h result_data,
  ffi.Pointer<bundle> data,
  int result,
) =>
    tizenDataControl.data_control_bulk_result_data_add(
      result_data,
      data,
      result,
    );

/// @brief Creates bulk result data.
/// @since_tizen 3.0
/// @remarks The @a result_data should be released using data_control_bulk_result_data_destroy().
/// Output parameter result_data The bulk result data handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_result_data_create(
  ffi.Pointer<data_control_bulk_result_data_h> result_data,
) =>
    tizenDataControl.data_control_bulk_result_data_create(
      result_data,
    );

/// @brief Destroys bulk result data.
/// @since_tizen 3.0
/// Parameter result_data The bulk result data handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_result_data_destroy(
  data_control_bulk_result_data_h result_data,
) =>
    tizenDataControl.data_control_bulk_result_data_destroy(
      result_data,
    );

/// @brief Gets the bulk result data bundle count.
/// @since_tizen 3.0
/// Parameter result_data The bulk result data handle
/// Output parameter count The bundle count
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_result_data_get_count(
  data_control_bulk_result_data_h result_data,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenDataControl.data_control_bulk_result_data_get_count(
      result_data,
      count,
    );

/// @brief Gets the n-th bundle from bulk result data.
/// @since_tizen 3.0
/// @remarks The @a data should not be released. \n
/// It will be released when data_control_bulk_result_data_destroy() is called.
/// Parameter result_data The bulk result data handle
/// Parameter idx The bundle index. Index starts at 0
/// Output parameter data The n-th bundle
/// Output parameter result Bulk operation result. Possible values and their meaning are defined by the developer.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_bulk_result_data_add()
/// @see data_control_bulk_result_data_destroy()
///
/// Module getter: `tizenDataControl`.
int data_control_bulk_result_data_get_result_data(
  data_control_bulk_result_data_h result_data,
  int idx,
  ffi.Pointer<ffi.Pointer<bundle>> data,
  ffi.Pointer<ffi.Int> result,
) =>
    tizenDataControl.data_control_bulk_result_data_get_result_data(
      result_data,
      idx,
      data,
      result,
    );

/// @brief Adds the @a value associated with the specified @a key to the key-values map owned by the key-value structured data control provider.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
/// @remarks If you want to use this function, you must add privileges.
/// @remarks The following example demonstrates how to use the data_control_map_add() method.
///
/// @code
///
/// void
/// map_add_response_cb(int request_id, data_control_h provider, bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The add operation is successful");
/// else
/// LOGI("The add operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_map_response_cb map_callback;
///
/// {
/// int result = 0;
/// int req_id = 0;
/// const char *key = "key";
/// const char *value = "value";
///
/// map_callback.add_cb = map_add_response_cb;
/// result = data_control_map_register_response_cb(provider, &map_callback, NULL);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_map_add(provider, key, value, &req_id);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Adding %s-%s pair is failed with error: %d", key, value, result);
/// else
/// LOGI("req_id is %d", req_id);
///
/// return result;
/// }
///
/// @endcode
///
/// Parameter provider The provider handle
/// Parameter key The key of the value to add
/// Parameter value The value to add
/// Output parameter request_id The request ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
///
/// Module getter: `tizenDataControl`.
int data_control_map_add(
  data_control_h provider,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> value,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_map_add(
      provider,
      key,
      value,
      request_id,
    );

/// @brief Adds multiple key-value pairs in one request.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
/// @remarks If you want to use this function, you must add privileges.
/// @remarks The following example demonstrates how to use the data_control_map_add_bulk_data() method.
///
/// @code
///
/// void
/// map_bulk_add_response_cb(int request_id, data_control_h provider, data_control_bulk_result_data_h bulk_results,
/// bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The add operation is successful");
/// else
/// LOGI("The add operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_map_response_cb map_callback;
/// {
/// data_control_bulk_data_h bulk_data;
/// int req_id;
/// bundle *b1;
/// bundle *b2;
/// int result = 0;
/// int req_id = 0;
/// int count;
///
/// result = data_control_map_register_add_bulk_data_response_cb(provider, map_bulk_add_response_cb, user_data);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
/// return result;
/// }
///
/// b1 = bundle_create();
/// bundle_add_str(b1, "key", "test key");
/// bundle_add_str(b1, "value", "test value");
/// b2 = bundle_create();
/// bundle_add_str(b2, "key", "test key2");
/// bundle_add_str(b2, "value", "test value2");
///
/// data_control_bulk_data_create(&bulk_data);
/// data_control_bulk_data_add(bulk_data, b1);
/// data_control_bulk_data_add(bulk_data, b2);
///
/// data_control_bulk_data_get_count(bulk_data, &count);
/// dlog_print(DLOG_INFO, LOG_TAG, "bulk add count %d ", count);
///
/// data_control_map_add_bulk_data(provider, bulk_data, &req_id);
/// data_control_bulk_data_destroy(bulk_data);
///
/// bundle_free(b1);
/// bundle_free(b2);
/// return result;
/// }
///
/// @endcode
///
/// Parameter provider The provider handle
/// Parameter bulk_data The bulk data handle
/// Output parameter request_id The request ID
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument. Bulk data total length cannot exceed 1MB
///
/// Module getter: `tizenDataControl`.
int data_control_map_add_bulk_data(
  data_control_h provider,
  data_control_bulk_data_h bulk_data,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_map_add_bulk_data(
      provider,
      bulk_data,
      request_id,
    );

/// @brief Binds the add bulk data callback to the map data control response.
/// @details This function is very similar to
/// data_control_map_register_add_bulk_data_response_cb(), which can
/// register a callback for a given provider id. Calling
/// data_control_map_register_add_bulk_data_response_cb() again
/// overwrites the callback previously set for the provider id, which
/// means that only one callback can be set for a given id.
/// data_control_map_bind_add_bulk_data_response_cb() binds a
/// callback to the handle of a provider, which allows registering
/// multiple callbacks for a given provider id. To do that, you can
/// create new #data_control_h for the same provider id and register
/// callback for the #data_control_h.
///
/// @since_tizen 4.0
/// @remarks If you call this function multiple times for the same handle,
/// any previously set callback will be overwritten.
///
/// Parameter provider  The provider handle
/// Parameter callback  The callback function to be called
/// when a response is received
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_register_add_bulk_data_response_cb()
/// @see data_control_map_unbind_add_bulk_data_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_map_bind_add_bulk_data_response_cb(
  data_control_h provider,
  data_control_bulk_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_map_bind_add_bulk_data_response_cb(
      provider,
      callback,
      user_data,
    );

/// @brief Binds a response callback function to a data control provider handle.
/// The application is notified when a data control response is received
/// from the @a provider.
/// @details This function is very similar to
/// data_control_map_register_response_cb(), which can register a
/// callback for a given provider id. Calling
/// data_control_map_register_response_cb() again overwrites the
/// callback previously set for the provider id, which means that only
/// one callback can be set for a given id.
/// data_control_map_bind_response_cb() binds a callback to the handle
/// of a provider, which allows registering multiple callbacks for a
/// given provider id. To do that, you can create new #data_control_h
/// for the same provider id and register callback for the
/// #data_control_h.
///
/// @since_tizen 4.0
///
/// @remarks If you call this function multiple times for the same handle, any
/// previously set callback will be overwritten.
///
/// Parameter provider  The provider handle
/// Parameter callback  The callback function to be called
/// when a response is received
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_register_response_cb()
/// @see data_control_map_unbind_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_map_bind_response_cb(
  data_control_h provider,
  ffi.Pointer<data_control_map_response_cb> callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_map_bind_response_cb(
      provider,
      callback,
      user_data,
    );

/// @brief Creates a provider handle.
/// @since_tizen 2.3
/// @remarks @a provider should be destroyed with data_control_map_destroy().
/// The following example demonstrates how to use the data_control_map_create() method.
///
/// @code
///
/// {
/// const char *provider_id = "http://tizen.org/datacontrol/provider/example";
/// const char *data_id = "table";
/// data_control_h provider;
/// int result = 0;
///
/// result = data_control_map_create(&provider);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Creating data control provider is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_map_set_provider_id(provider, provider_id);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Setting providerID is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_map_set_data_id(provider, data_id);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Setting dataID is failed with error: %d", result);
///
/// return result;
/// }
///
/// // Executes some operations
///
/// result = data_control_map_destroy(provider);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Destroying data control provider is failed with error: %d", result);
///
/// return result;
/// }
///
/// @endcode
///
/// Output parameter provider The provider handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_destroy()
///
/// Module getter: `tizenDataControl`.
int data_control_map_create(
  ffi.Pointer<data_control_h> provider,
) =>
    tizenDataControl.data_control_map_create(
      provider,
    );

/// @brief Destroys the provider handle and releases all its resources.
/// @since_tizen 2.3
/// @remarks When operations of data control are finished, this function must be called to prevent memory leak.
/// Parameter provider The provider handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_map_create()
///
/// Module getter: `tizenDataControl`.
int data_control_map_destroy(
  data_control_h provider,
) =>
    tizenDataControl.data_control_map_destroy(
      provider,
    );

/// @brief Gets the value list associated with the specified @a key from the key-values map owned by the key-value structured data control provider.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
/// @remarks If you want to use this function, you must add privileges.
/// @remarks If the length of value list associated with the @a key is larger than 20, this function only returns the first 20 values.
/// @remarks The following example demonstrates how to use the data_control_map_get() method.
///
/// @code
///
/// void
/// map_get_response_cb(int request_id, data_control_h provider, char **result_value_list,
/// int ret_value_count, bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The get operation is successful");
/// else
/// LOGI("The get operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_map_response_cb map_callback;
///
/// {
/// int result = 0;
/// int req_id = 0;
/// char *key = "key";
///
/// map_callback.get_cb = map_get_response_cb;
/// result = data_control_map_register_response_cb(provider, &map_callback, NULL);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_map_get(provider, key, &req_id);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Getting the value list of the key(%s) is failed with error: %d", key, result);
/// else
/// LOGI("req_id is %d", req_id);
///
/// return result;
/// }
///
/// @endcode
///
/// Parameter provider The provider handle
/// Parameter key The key of the value list to obtain
/// Output parameter request_id The request ID
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
/// @see data_control_map_get_with_page()
///
/// Module getter: `tizenDataControl`.
int data_control_map_get(
  data_control_h provider,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_map_get(
      provider,
      key,
      request_id,
    );

/// @brief Gets the data ID.
/// @since_tizen 2.3
/// @remarks You must release @a data_id using free() after it is used.
/// Parameter provider The provider handle
/// Output parameter data_id A string for identifying a specific table to operate \n
/// The string consists of one or more components separated by a slash('/').
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_set_data_id()
///
/// Module getter: `tizenDataControl`.
int data_control_map_get_data_id(
  data_control_h provider,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data_id,
) =>
    tizenDataControl.data_control_map_get_data_id(
      provider,
      data_id,
    );

/// @brief Gets the handle ID for @a provider.
/// @since_tizen 4.0
///
/// @remarks @a handle_id is generated internally and it is unique for each
/// handle. This function can be used in callbacks to know for which
/// handle the callback was called.
///
/// Parameter  provider  The provider handle
/// Output parameter handle_id The handle ID for @a provider
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_map_get_handle_id(
  data_control_h provider,
  ffi.Pointer<ffi.Int> handle_id,
) =>
    tizenDataControl.data_control_map_get_handle_id(
      provider,
      handle_id,
    );

/// @brief Gets the Provider ID.
/// @since_tizen 2.3
/// @remarks You must release @a provider_id using free() after it is used.
/// Parameter provider The provider handle
/// Output parameter provider_id The data control provider ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_set_provider_id()
///
/// Module getter: `tizenDataControl`.
int data_control_map_get_provider_id(
  data_control_h provider,
  ffi.Pointer<ffi.Pointer<ffi.Char>> provider_id,
) =>
    tizenDataControl.data_control_map_get_provider_id(
      provider,
      provider_id,
    );

/// @brief Gets the value list associated with the specified @a key from the key-values map owned by the key-value structured data control provider, with partition into pages.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
///
/// @remarks If you want to use this function, you must add privileges.
/// Parameter provider The provider handle
/// Parameter key The key of the value list to obtain
/// Output parameter request_id The request ID
/// Parameter page_number The page number of the value set \n
/// It starts from @c 1.
/// Parameter count_per_page The desired maximum count of the data items per page
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
/// @see data_control_map_get()
///
/// Module getter: `tizenDataControl`.
int data_control_map_get_with_page(
  data_control_h provider,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> request_id,
  int page_number,
  int count_per_page,
) =>
    tizenDataControl.data_control_map_get_with_page(
      provider,
      key,
      request_id,
      page_number,
      count_per_page,
    );

/// @brief Registers an add bulk data callback for the MAP data control response.
/// The application is notified when a data control response is received
/// from the @a provider.
/// @since_tizen 3.0
///
/// @remarks Only one callback can be registered for each provider id with this
/// function. If you call this function multiple times for the same
/// provider id, any previously set callback will be overwritten.
/// Parameter provider The provider handle
/// Parameter callback The callback function to be called when a response is received
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_unregister_add_bulk_data_response_cb()
/// @see data_control_map_bind_add_bulk_data_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_map_register_add_bulk_data_response_cb(
  data_control_h provider,
  data_control_bulk_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_map_register_add_bulk_data_response_cb(
      provider,
      callback,
      user_data,
    );

/// @brief Registers a callback function for the key-value structured data control response.
/// The application is notified when a data control response is received from the @a provider.
/// @since_tizen 2.3
///
/// @remarks The application is notified when a data control response is received from the @a provider.
/// @remarks Only one callback can be registered for each provider id with this function.
/// @remarks If you register multiple callback for same provider id, it will be overwritten by latest one.
///
/// Parameter provider The provider handle
/// Parameter callback The callback function to be called when a response is received
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_unregister_response_cb()
/// @see data_control_map_bind_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_map_register_response_cb(
  data_control_h provider,
  ffi.Pointer<data_control_map_response_cb> callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_map_register_response_cb(
      provider,
      callback,
      user_data,
    );

/// @brief Removes the @a value associated with the specified @a key from the key-values map owned by the key-value structured data control provider.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
/// @remarks If you want to use this function, you must add privileges.
/// @remarks The following example demonstrates how to use the data_control_map_remove() method.
///
/// @code
///
/// void
/// map_remove_response_cb(int request_id, data_control_h provider, bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The remove operation is successful");
/// else
/// LOGI("The remove operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_map_response_cb map_callback;
///
/// {
/// int result = 0;
/// int req_id = 0;
/// const char *key = "key";
/// const char *value = "value";
///
/// map_callback.remove_cb = map_remove_response_cb;
/// result = data_control_map_register_response_cb(provider, &map_callback, NULL);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_map_remove(provider, key, value, &req_id);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Removing %s-%s pair is failed with error: %d", key, value, result);
/// else
/// LOGI("req_id is %d", req_id);
///
/// return result;
/// }
///
/// @endcode
///
/// Parameter provider The provider handle
/// Parameter key The key of the value to remove
/// Parameter value The value to remove
/// Output parameter request_id The request ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
///
/// Module getter: `tizenDataControl`.
int data_control_map_remove(
  data_control_h provider,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> value,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_map_remove(
      provider,
      key,
      value,
      request_id,
    );

/// @brief Sets the value associated with the specified @a key to a new value.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
/// @remarks If you want to use this function, you must add privileges.
/// @remarks The following example demonstrates how to use the data_control_map_set() method.
///
/// @code
///
/// void
/// map_set_response_cb(int request_id, data_control_h provider, bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The set operation is successful");
/// else
/// LOGI("The set operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_map_response_cb map_callback;
///
/// {
/// int result = 0;
/// int req_id = 0;
/// char *key = "key";
/// char *old_value = "old value";
/// char *new_value = "new value";
///
/// map_callback.set_cb = map_set_response_cb;
/// result = data_control_map_register_response_cb(provider, &map_callback, NULL);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_map_set(provider, key, old_value, new_value, &req_id);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Replacing old_value(%s) with new_value(%s) is failed with error: %d", old_value, new_value, result);
/// else
/// LOGI("req_id is %d", req_id);
///
/// return result;
/// }
///
/// @endcode
///
/// Parameter provider The provider handle
/// Parameter key The key of the value to replace
/// Parameter old_value The value to replace
/// Parameter new_value The new value that replaces the existing value
/// Output parameter request_id The request ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
///
/// Module getter: `tizenDataControl`.
int data_control_map_set(
  data_control_h provider,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> old_value,
  ffi.Pointer<ffi.Char> new_value,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_map_set(
      provider,
      key,
      old_value,
      new_value,
      request_id,
    );

/// @brief Sets the Data ID.
/// @since_tizen 2.3
/// Parameter provider The provider handle
/// Parameter data_id A string for identifying a specific table to operate \n
/// The string consists of one or more components separated by a slash('/').
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_get_data_id()
///
/// Module getter: `tizenDataControl`.
int data_control_map_set_data_id(
  data_control_h provider,
  ffi.Pointer<ffi.Char> data_id,
) =>
    tizenDataControl.data_control_map_set_data_id(
      provider,
      data_id,
    );

/// @brief Sets the Provider ID.
/// @since_tizen 2.3
/// Parameter provider The provider handle
/// Parameter provider_id The data control provider ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_map_get_provider_id()
///
/// Module getter: `tizenDataControl`.
int data_control_map_set_provider_id(
  data_control_h provider,
  ffi.Pointer<ffi.Char> provider_id,
) =>
    tizenDataControl.data_control_map_set_provider_id(
      provider,
      provider_id,
    );

/// @brief Unbinds the add bulk data callback in the @a provider.
/// @since_tizen 4.0
///
/// Parameter provider The provider handle
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_map_bind_add_bulk_data_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_map_unbind_add_bulk_data_response_cb(
  data_control_h provider,
) =>
    tizenDataControl.data_control_map_unbind_add_bulk_data_response_cb(
      provider,
    );

/// @brief Unbinds the callback function in the @a provider.
/// @since_tizen 4.0
///
/// Parameter provider The provider handle
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_map_bind_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_map_unbind_response_cb(
  data_control_h provider,
) =>
    tizenDataControl.data_control_map_unbind_response_cb(
      provider,
    );

/// @brief Unregisters the add bulk data callback.
/// @since_tizen 3.0
/// Parameter provider The provider handle
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_map_register_add_bulk_data_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_map_unregister_add_bulk_data_response_cb(
  data_control_h provider,
) =>
    tizenDataControl.data_control_map_unregister_add_bulk_data_response_cb(
      provider,
    );

/// @brief Unregisters the callback function in the @a provider.
/// @since_tizen 2.3
/// Parameter provider The provider handle
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_map_register_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_map_unregister_response_cb(
  data_control_h provider,
) =>
    tizenDataControl.data_control_map_unregister_response_cb(
      provider,
    );

/// @brief Adds a consumer filter for the data changed callback addition process.
/// @since_tizen 3.0
/// @remarks If the provider does not add any filters by calling this function, all requests to add a data change callback will be granted. \n
/// If filters are added, and at least one filter returns false for a consumer application, the application will not be able to add data change callbacks.
///
/// Parameter callback Consumer filter callback, filtering consumers which try to add data changed callback
/// Parameter user_data The user data to be passed to the list_cb function
/// Output parameter callback_id Added callback ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_provider_data_change_consumer_filter_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_provider_add_data_change_consumer_filter_cb(
  data_control_provider_data_change_consumer_filter_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> callback_id,
) =>
    tizenDataControl.data_control_provider_add_data_change_consumer_filter_cb(
      callback,
      user_data,
      callback_id,
    );

/// @brief Creates SQL DELETE statement.
///
/// @since_tizen 2.3
///
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter provider The provider handle
/// Parameter where A filter to select the desired rows to delete \n
/// Pass @c NULL if all rows need to be deleted
///
/// @return The SQL DELETE statement on success,
/// otherwise NULL
/// @exception #DATA_CONTROL_ERROR_NONE Success
/// @exception #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
ffi.Pointer<ffi.Char> data_control_provider_create_delete_statement(
  data_control_h provider,
  ffi.Pointer<ffi.Char> where,
) =>
    tizenDataControl.data_control_provider_create_delete_statement(
      provider,
      where,
    );

/// @brief Creates SQL INSERT statement.
///
/// @since_tizen 2.3
///
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter provider The provider handle
/// Parameter insert_map The column-value pairs to insert
///
/// @return The SQL INSERT statement on success,
/// otherwise NULL
/// @exception #DATA_CONTROL_ERROR_NONE Success
/// @exception #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
ffi.Pointer<ffi.Char> data_control_provider_create_insert_statement(
  data_control_h provider,
  ffi.Pointer<bundle> insert_map,
) =>
    tizenDataControl.data_control_provider_create_insert_statement(
      provider,
      insert_map,
    );

/// @brief Creates SQL SELECT statement.
///
/// @since_tizen 2.3
///
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter provider The provider handle
/// Parameter column_list The column names to query \n
/// Pass @c NULL if all columns need to be selected
/// Parameter column_count The total number of columns to be queried
/// Parameter where A filter to select the desired rows
/// Parameter order The sorting order of rows to query
///
/// @return The SQL SELECT statement on success,
/// otherwise NULL
/// @exception #DATA_CONTROL_ERROR_NONE Success
/// @exception #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
ffi.Pointer<ffi.Char> data_control_provider_create_select_statement(
  data_control_h provider,
  ffi.Pointer<ffi.Pointer<ffi.Char>> column_list,
  int column_count,
  ffi.Pointer<ffi.Char> where,
  ffi.Pointer<ffi.Char> order,
) =>
    tizenDataControl.data_control_provider_create_select_statement(
      provider,
      column_list,
      column_count,
      where,
      order,
    );

/// @brief Creates SQL UPDATE statement.
///
/// @since_tizen 2.3
///
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter provider The provider handle
/// Parameter update_map The column-value pairs to update
/// Parameter where A filter to select the desired rows to update
///
/// @return The SQL UPDATE statement on success,
/// otherwise NULL
/// @exception #DATA_CONTROL_ERROR_NONE Success
/// @exception #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
ffi.Pointer<ffi.Char> data_control_provider_create_update_statement(
  data_control_h provider,
  ffi.Pointer<bundle> update_map,
  ffi.Pointer<ffi.Char> where,
) =>
    tizenDataControl.data_control_provider_create_update_statement(
      provider,
      update_map,
      where,
    );

/// @brief Retrieves ids of all applications which receive data change notifications from a given provider.
/// @details This function calls data_control_provider_data_change_consumer_cb() once for each provider's notification target consumer id. \n
/// If the data_control_provider_data_change_consumer_cb() callback function returns @c false, then iteration will be finished.
/// @since_tizen 3.0
///
/// Parameter provider Target provider handle
/// Parameter list_cb The iteration callback function
/// Parameter user_data The user data to be passed to the list_cb function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @post This function invokes data_control_provider_data_change_consumer_cb().
/// @see data_control_provider_data_change_consumer_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_provider_foreach_data_change_consumer(
  data_control_h provider,
  data_control_provider_data_change_consumer_cb list_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_provider_foreach_data_change_consumer(
      provider,
      list_cb,
      user_data,
    );

/// @brief Gets the application ID which sends the data control request.
/// @since_tizen 2.3
///
/// @remarks You must release @a appid using free() after it is used.
///
/// Parameter request_id The request ID
/// Output parameter appid The application ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_get_client_appid(
  int request_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> appid,
) =>
    tizenDataControl.data_control_provider_get_client_appid(
      request_id,
      appid,
    );

/// @brief Registers a callback for the MAP bulk data request.
/// @details The provider is notified when a data control request is received from the client applications.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing
///
/// Parameter  callback  The callback function to be called when a data control request is received
/// Parameter  user_data The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE              Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_provider_map_register_add_bulk_data_request_cb(
  data_control_provider_bulk_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_provider_map_register_add_bulk_data_request_cb(
      callback,
      user_data,
    );

/// @brief Registers a callback function for the map data control request.
/// The provider is notified when a data control request is received from the client applications.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing
///
/// Parameter callback The callback function to be called when a data control request is received
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_provider_map_register_cb(
  ffi.Pointer<data_control_provider_map_cb> callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_provider_map_register_cb(
      callback,
      user_data,
    );

/// @brief Unregisters the callback for the MAP bulk data request.
/// @since_tizen 3.0
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @see data_control_provider_map_register_add_bulk_data_request_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_provider_map_unregister_add_bulk_data_request_cb() =>
    tizenDataControl.data_control_provider_map_unregister_add_bulk_data_request_cb();

/// @brief Unregisters the map data control request callback functions.
/// @since_tizen 2.3
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
///
/// Module getter: `tizenDataControl`.
int data_control_provider_map_unregister_cb() =>
    tizenDataControl.data_control_provider_map_unregister_cb();

/// @brief Checks whether the given data ID matches the provider handle's data ID.
///
/// @since_tizen 2.3
///
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter provider The provider handle
/// Parameter data_id The data ID to be compared with handle's data ID
///
/// @return @c true if the @a data_id matches,
/// otherwise @c false if it does not match
/// @exception #DATA_CONTROL_ERROR_NONE Success
/// @exception #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
bool data_control_provider_match_data_id(
  data_control_h provider,
  ffi.Pointer<ffi.Char> data_id,
) =>
    tizenDataControl.data_control_provider_match_data_id(
      provider,
      data_id,
    );

/// @brief Checks whether the given provider ID matches the provider handle's provider ID.
///
/// @since_tizen 2.3
///
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter provider The provider handle
/// Parameter provider_id The provider ID to be compared with handle's provider ID
///
/// @return @c true if the provider_id matches,
/// otherwise @c false if it does not match
/// @exception #DATA_CONTROL_ERROR_NONE Success
/// @exception #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
bool data_control_provider_match_provider_id(
  data_control_h provider,
  ffi.Pointer<ffi.Char> provider_id,
) =>
    tizenDataControl.data_control_provider_match_provider_id(
      provider,
      provider_id,
    );

/// @brief Removes a consumer filter for the data changed callback addition process.
/// @since_tizen 3.0
///
/// Parameter callback_id Target callback ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_provider_remove_data_change_consumer_filter_cb(
  int callback_id,
) =>
    tizenDataControl.data_control_provider_remove_data_change_consumer_filter_cb(
      callback_id,
    );

/// @brief Sends the result of the bulk insert request to the client application.
/// @since_tizen 3.0
///
/// Parameter request_id The request ID
/// Parameter bulk_results The bulk add result for each data
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_bulk_insert_result(
  int request_id,
  data_control_bulk_result_data_h bulk_results,
) =>
    tizenDataControl.data_control_provider_send_bulk_insert_result(
      request_id,
      bulk_results,
    );

/// @brief Sends a data change notification to consumer applications which have successfully added a data change callback.
/// @details If the function is successful, data_control_data_change_cb() callback will be called under certain conditions.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing
///
/// Parameter provider Target provider handle
/// Parameter type Changed data type
/// Parameter data Customized information about changed data
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// @pre The consumer should call data_control_add_data_change_cb() to receive data change notifications
/// @see data_control_data_change_cb()
/// @see data_control_add_data_change_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_data_change_noti(
  data_control_h provider,
  int type,
  ffi.Pointer<bundle> data,
) =>
    tizenDataControl.data_control_provider_send_data_change_noti(
      provider,
      type,
      data,
    );

/// @brief Sends the success result of the delete request to the client application.
/// @since_tizen 2.3
///
/// Parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_delete_result(
  int request_id,
) =>
    tizenDataControl.data_control_provider_send_delete_result(
      request_id,
    );

/// @brief Sends the provider error message to the client application.
/// @since_tizen 2.3
///
/// Parameter request_id The request ID
/// Parameter error The provider-defined error message
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_error(
  int request_id,
  ffi.Pointer<ffi.Char> error,
) =>
    tizenDataControl.data_control_provider_send_error(
      request_id,
      error,
    );

/// @brief Sends the success result of the insert request and the last inserted row ID to the client application.
/// @since_tizen 2.3
///
/// Parameter request_id The request ID
/// Parameter row_id The row ID of the database changed by the insert request
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_insert_result(
  int request_id,
  int row_id,
) =>
    tizenDataControl.data_control_provider_send_insert_result(
      request_id,
      row_id,
    );

/// @brief Sends the result of the bulk add request to the client application.
/// @since_tizen 3.0
///
/// Parameter request_id The request ID
/// Parameter bulk_results The bulk add result for each data
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_map_bulk_add_result(
  int request_id,
  data_control_bulk_result_data_h bulk_results,
) =>
    tizenDataControl.data_control_provider_send_map_bulk_add_result(
      request_id,
      bulk_results,
    );

/// @brief Sends the success result of the request for getting the value list to the client application.
/// @since_tizen 2.3
///
/// Parameter request_id The request ID
/// Parameter value_list The result value list
/// Parameter value_count The number of the values
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_map_get_value_result(
  int request_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value_list,
  int value_count,
) =>
    tizenDataControl.data_control_provider_send_map_get_value_result(
      request_id,
      value_list,
      value_count,
    );

/// @brief Sends the success result of the request for setting, adding, and removing the key-value structured data to the client application.
/// @since_tizen 2.3
///
/// Parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_map_result(
  int request_id,
) =>
    tizenDataControl.data_control_provider_send_map_result(
      request_id,
    );

/// @brief Sends the success result and the result set of the select request to the client application.
/// @since_tizen 2.3
///
/// Parameter request_id The request ID
/// Parameter db_handle The result DB handle for the result set
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_select_result(
  int request_id,
  ffi.Pointer<ffi.Void> db_handle,
) =>
    tizenDataControl.data_control_provider_send_select_result(
      request_id,
      db_handle,
    );

/// @brief Sends the success result of the update request to the client application.
/// @since_tizen 2.3
///
/// Parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_provider_send_update_result(
  int request_id,
) =>
    tizenDataControl.data_control_provider_send_update_result(
      request_id,
    );

/// @brief Registers a callback function for the SQL data control request.
/// The provider is notified when a data control request is received from the client applications.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing
///
/// Parameter callback The callback function to be called when a data control request is received
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_provider_sql_register_cb(
  ffi.Pointer<data_control_provider_sql_cb> callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_provider_sql_register_cb(
      callback,
      user_data,
    );

/// @brief Registers a callback for the SQL bulk data request.
/// @details The provider is notified when a data control request is received from the client applications.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing
///
/// Parameter callback  The callback function to be called when a data control request is received
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_provider_sql_register_insert_bulk_data_request_cb(
  data_control_provider_bulk_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_provider_sql_register_insert_bulk_data_request_cb(
      callback,
      user_data,
    );

/// @brief Unregisters the SQL data control request callback functions.
/// @since_tizen 2.3
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
///
/// Module getter: `tizenDataControl`.
int data_control_provider_sql_unregister_cb() =>
    tizenDataControl.data_control_provider_sql_unregister_cb();

/// @brief Unregisters the callback for the SQL bulk data request.
/// @since_tizen 3.0
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @see data_control_provider_sql_register_insert_bulk_data_request_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_provider_sql_unregister_insert_bulk_data_request_cb() =>
    tizenDataControl.data_control_provider_sql_unregister_insert_bulk_data_request_cb();

/// @brief Removes data change callback function.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
/// @remarks If you want to use this function, you must add privileges.
/// Parameter provider Target provider handle
/// Parameter callback_id Target callback ID
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_remove_data_change_cb(
  data_control_h provider,
  int callback_id,
) =>
    tizenDataControl.data_control_remove_data_change_cb(
      provider,
      callback_id,
    );

/// @brief Binds the insert bulk data callback to the SQL data control response.
/// @details This function is very similar to
/// data_control_sql_register_insert_bulk_data_response_cb(), which can
/// register a callback for a given provider id. Calling
/// data_control_sql_register_insert_bulk_data_response_cb() again
/// overwrites the callback previously set for the provider id, which
/// means that only one callback can be set for a given id.
/// data_control_sql_bind_insert_bulk_data_response_cb() binds a
/// callback to the handle of a provider, which allows registering
/// multiple callbacks for a given provider id. To do that, you can
/// create new #data_control_h for the same provider id and register
/// callback for the #data_control_h.
///
/// @since_tizen 4.0
/// @remarks You can bind a callback function to @a provider. If you call this
/// function multiple times for the same handle, any previously set
/// callback will be overwritten.
///
/// Parameter provider  The provider handle
/// Parameter callback  The callback function to be called
/// when a response is received
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see  data_control_sql_register_insert_bulk_data_response_cb()
/// @see  data_control_sql_unbind_insert_bulk_data_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_bind_insert_bulk_data_response_cb(
  data_control_h provider,
  data_control_bulk_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_sql_bind_insert_bulk_data_response_cb(
      provider,
      callback,
      user_data,
    );

/// @brief Binds a callback function to the SQL data control response.
/// @details This function is very similar to
/// data_control_sql_register_response_cb(), which can register a
/// callback for a given provider id. Calling
/// data_control_sql_register_response_cb() again overwrites the
/// callback previously set for the provider id, which means that only
/// one callback can be set for a given id.
/// data_control_sql_bind_response_cb() binds a callback to the handle
/// of a provider, which allows registering multiple callbacks for a
/// given provider id. To do that, you can create new #data_control_h
/// for the same provider id and register callback for the
/// #data_control_h.
///
/// @since_tizen 4.0
/// @remarks You can bind a callback function to @a provider. If you call this
/// function multiple times for the same handle, any previously set
/// callback will be overwritten.
///
/// Parameter provider  The provider handle
/// Parameter callback  The callback function to be called
/// when a response is received
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_sql_register_response_cb()
/// @see data_control_sql_unbind_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_bind_response_cb(
  data_control_h provider,
  ffi.Pointer<data_control_sql_response_cb> callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_sql_bind_response_cb(
      provider,
      callback,
      user_data,
    );

/// @brief Creates a provider handle.
/// @since_tizen 2.3
///
/// @remarks @a provider should be destroyed with data_control_sql_destroy().
/// The following example demonstrates how to use the data_control_sql_create() method:
///
/// @code
///
/// {
/// const char *provider_id = "http://tizen.org/datacontrol/provider/example";
/// const char *data_id = "table";
/// data_control_h provider;
/// int result = 0;
///
/// result = data_control_sql_create(&provider);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Creating data control provider is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_sql_set_provider_id(provider, provider_id);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Setting providerID is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_sql_set_data_id(provider, data_id);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Setting dataID is failed with error: %d", result);
///
/// return result;
/// }
///
/// // Executes some operations
///
/// result = data_control_sql_destroy(provider);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Destroying data control provider is failed with error: %d", result);
///
/// return result;
/// }
///
/// @endcode
///
/// Output parameter provider The provider handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see data_control_sql_destroy()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_create(
  ffi.Pointer<data_control_h> provider,
) =>
    tizenDataControl.data_control_sql_create(
      provider,
    );

/// @brief Deletes rows of a table owned by the SQL-type data control provider.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
///
/// @remarks If you want to use this function, you must add privileges.
/// @remarks If the value is a string, then the value must be wrapped in single quotes, else it does not need to be wrapped in single quotes.
/// @remarks The following example demonstrates how to use the data_control_sql_delete() method:
///
/// @code
///
/// void
/// sql_delete_response_cb(int request_id, data_control_h provider, bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI(The delete operation is successful");
/// else
/// LOGI("The delete operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_sql_response_cb sql_callback;
///
/// {
/// const char *where = "group = 'friend'";
/// int result = 0;
/// int req_id = 0;
///
/// sql_callback.delete_cb = sql_delete_response_cb;
/// result = data_control_sql_register_response_cb(provider, &sql_callback, void *user_data);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_sql_delete(provider, where, &req_id);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Deleting is failed with error: %d", result);
/// else
/// LOGI("req_id is %d", req_id);
///
/// return result;
/// }
///
/// @endcode
///
/// Parameter provider The provider handle
/// Parameter where A filter to select the desired rows to delete \n
/// It is an SQL 'WHERE' clause excluding the 'WHERE' itself such as column1 = 'stringValue' and column2 = numericValue
/// Output parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_sql_delete(
  data_control_h provider,
  ffi.Pointer<ffi.Char> where,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_sql_delete(
      provider,
      where,
      request_id,
    );

/// @brief Destroys the provider handle and releases all its resources.
/// @since_tizen 2.3
///
/// @remarks When operations of data control are finished, this function must be called to prevent the memory leak.
///
/// Parameter provider The provider handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_sql_create()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_destroy(
  data_control_h provider,
) =>
    tizenDataControl.data_control_sql_destroy(
      provider,
    );

/// @brief Gets a blob data from the column indicated by the specified index.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// Parameter column_index The index of the destination column
/// Output parameter data The blob value obtained from the column
/// Output parameter size The size of the data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_blob_data(
  result_set_cursor cursor,
  int column_index,
  ffi.Pointer<ffi.Void> data,
  int size,
) =>
    tizenDataControl.data_control_sql_get_blob_data(
      cursor,
      column_index,
      data,
      size,
    );

/// @brief Gets the number of columns for this cursor.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// @return The number of columns in the calling cursor
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_column_count(
  result_set_cursor cursor,
) =>
    tizenDataControl.data_control_sql_get_column_count(
      cursor,
    );

/// @brief Gets the size of the data in the column indicated by the specified index.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// Parameter column_index The index of the destination column
/// @return The size of data in the column indicated by the specified index \n
/// If an error is occurred, then a negative value is returned
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_column_item_size(
  result_set_cursor cursor,
  int column_index,
) =>
    tizenDataControl.data_control_sql_get_column_item_size(
      cursor,
      column_index,
    );

/// @brief Gets the type of the column indicated by the specified index.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// Parameter column_index The index of the destination column
/// Output parameter type The type of the destination column
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_column_item_type(
  result_set_cursor cursor,
  int column_index,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenDataControl.data_control_sql_get_column_item_type(
      cursor,
      column_index,
      type,
    );

/// @brief Gets the name of the column indicated by the specified index.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// Parameter column_index The index of the destination column
/// Output parameter name The name of the destination column. You should provide a buffer for the column name. The limit of column name length is 4096 bytes
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_column_name(
  result_set_cursor cursor,
  int column_index,
  ffi.Pointer<ffi.Char> name,
) =>
    tizenDataControl.data_control_sql_get_column_name(
      cursor,
      column_index,
      name,
    );

/// @brief Gets the data ID.
/// @since_tizen 2.3
///
/// @remarks You must release @a data_id using free() after it is used.
///
/// Parameter provider The provider handle
/// Output parameter data_id A string for identifying a specific table to operate \n
/// The string consists of one or more components separated by a slash('/')
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see data_control_sql_set_data_id()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_data_id(
  data_control_h provider,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data_id,
) =>
    tizenDataControl.data_control_sql_get_data_id(
      provider,
      data_id,
    );

/// @brief Gets a double value from the column indicated by the specified index.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// Parameter column_index The index of the destination column
/// Output parameter data The value obtained from the column as double
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_double_data(
  result_set_cursor cursor,
  int column_index,
  ffi.Pointer<ffi.Double> data,
) =>
    tizenDataControl.data_control_sql_get_double_data(
      cursor,
      column_index,
      data,
    );

/// @brief Gets the handle ID for @a provider.
/// @since_tizen 4.0
///
/// @remarks @a handle_id is generated internally and it is unique for each
/// handle. This function can be used in callbacks to know for which
/// handle the callback was called.
///
/// Parameter  provider  The provider handle
/// Output parameter handle_id The handle ID for @a provider
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_handle_id(
  data_control_h provider,
  ffi.Pointer<ffi.Int> handle_id,
) =>
    tizenDataControl.data_control_sql_get_handle_id(
      provider,
      handle_id,
    );

/// @brief Gets a long long value from the column indicated by the specified index.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// Parameter column_index The index of the destination column
/// Output parameter data The 64-bit integer value obtained from the column
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_int64_data(
  result_set_cursor cursor,
  int column_index,
  ffi.Pointer<ffi.LongLong> data,
) =>
    tizenDataControl.data_control_sql_get_int64_data(
      cursor,
      column_index,
      data,
    );

/// @brief Gets an int value from the column indicated by the specified index.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// Parameter column_index The index of the destination column
/// Output parameter data The integer value obtained from the column
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_int_data(
  result_set_cursor cursor,
  int column_index,
  ffi.Pointer<ffi.Int> data,
) =>
    tizenDataControl.data_control_sql_get_int_data(
      cursor,
      column_index,
      data,
    );

/// @brief Gets the Provider ID.
/// @since_tizen 2.3
///
/// @remarks You must release @a provider_id using free() after it is used.
///
/// Parameter provider The provider handle
/// Output parameter provider_id The data control provider ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see data_control_sql_set_provider_id()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_provider_id(
  data_control_h provider,
  ffi.Pointer<ffi.Pointer<ffi.Char>> provider_id,
) =>
    tizenDataControl.data_control_sql_get_provider_id(
      provider,
      provider_id,
    );

/// @brief Gets a text value from the column indicated by the specified index.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// Parameter column_index The index of the destination column
/// Output parameter data The value obtained from the column as text. You should provide a buffer for the data. You can get the size of data via data_control_sql_get_column_item_size()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_sql_get_text_data(
  result_set_cursor cursor,
  int column_index,
  ffi.Pointer<ffi.Char> data,
) =>
    tizenDataControl.data_control_sql_get_text_data(
      cursor,
      column_index,
      data,
    );

/// @brief Inserts new rows in a table owned by the SQL-type data control provider.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
///
/// @remarks If you want to use this function, you must add privileges.
/// The following example demonstrates how to use the data_control_sql_insert() method:
///
/// @code
///
/// void
/// sql_insert_response_cb(int request_id, data_control_h provider, long long inserted_row_id,
/// bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The insert operation is successful");
/// else
/// LOGI("The insert operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_sql_response_cb sql_callback;
///
/// {
/// int result = 0;
/// int req_id = 0;
/// bundle *b = NULL;
///
/// sql_callback.insert_cb = sql_insert_response_cb;
/// result = data_control_sql_register_response_cb(provider, &sql_callback, void *user_data);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// b = bundle_create();
/// bundle_add(b, "WORD", "test");
/// bundle_add(b, "WORD_DESC", "test description");
///
/// result = data_control_sql_insert(provider, b, &req_id);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Inserting is failed with error: %d", result);
/// else
/// LOGI("req_id is %d", req_id);
///
/// bundle_free(b);
///
/// return result;
/// }
///
/// @endcode
///
/// Parameter provider The provider handle
/// Parameter insert_data The column-value pairs to insert \n
/// If the value is a string, then the value must be wrapped in single quotes,
/// else it does not need to be wrapped in single quotes
/// Output parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
///
/// Module getter: `tizenDataControl`.
int data_control_sql_insert(
  data_control_h provider,
  ffi.Pointer<bundle> insert_data,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_sql_insert(
      provider,
      insert_data,
      request_id,
    );

/// @brief Inserts multiple rows in one request.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
///
/// @remarks If you want to use this function, you must add privileges.
/// @remarks The following example demonstrates how to use the data_control_sql_insert_bulk_data() method:
///
/// @code
///
/// void
/// sql_bulk_insert_response_cb(int request_id, data_control_h provider, data_control_bulk_result_data_h bulk_results,
/// bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The bulk insert operation is successful");
/// else
/// LOGI("The bulk insert operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_sql_response_cb sql_callback;
///
/// {
/// data_control_bulk_data_h bulk_data;
/// int req_id;
/// bundle *b1;
/// bundle *b2;
/// int result = 0;
/// int req_id = 0;
/// int bulk_count = 0;
///
/// result = data_control_sql_register_insert_bulk_data_response_cb(provider, sql_bulk_insert_response_cb, user_data);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// b1 = bundle_create();
/// bundle_add_str(b1, "WORD", "'test'");
/// bundle_add_str(b1, "WORD_DESC", "'test description'");
/// b2 = bundle_create();
/// bundle_add_str(b2, "WORD", "'test2'");
/// bundle_add_str(b2, "WORD_DESC", "'test2 description'");
///
/// data_control_bulk_data_create(&bulk_data);
/// data_control_bulk_data_add(bulk_data, b1);
/// data_control_bulk_data_add(bulk_data, b2);
/// data_control_bulk_data_get_count(bulk_data, &bulk_count);
///
/// dlog_print(DLOG_INFO, LOG_TAG, "bulk insert count %d ", bulk_count);
///
/// data_control_sql_insert_bulk_data(provider, bulk_data, &req_id);
/// data_control_bulk_data_destroy(bulk_data);
///
/// bundle_free(b1);
/// bundle_free(b2);
///
/// return result;
/// }
///
/// @endcode
///
/// Parameter provider The provider handle
/// Parameter bulk_data The bulk data handle
/// Output parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
///
/// Module getter: `tizenDataControl`.
int data_control_sql_insert_bulk_data(
  data_control_h provider,
  data_control_bulk_data_h bulk_data,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_sql_insert_bulk_data(
      provider,
      bulk_data,
      request_id,
    );

/// @brief Registers an insert bulk data callback for the SQL data control response.
/// The application is notified when a data control response is
/// received from the @a provider.
/// @since_tizen 3.0
///
/// @remarks Only one callback can be registered for each provider id with this
/// function. If you call this function multiple times for the same
/// provider id, any previously set callback will be overwritten.
///
/// Parameter provider The provider handle
/// Parameter callback The callback function to be called when a response is received
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see  data_control_sql_unregister_insert_bulk_data_response_cb()
/// @see  data_control_sql_bind_insert_bulk_data_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_register_insert_bulk_data_response_cb(
  data_control_h provider,
  data_control_bulk_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_sql_register_insert_bulk_data_response_cb(
      provider,
      callback,
      user_data,
    );

/// @brief Registers a callback function for the SQL data control response.
/// @since_tizen 2.3
///
/// @remarks The application is notified when a data control response is received from the @a provider.
/// @remarks Only one callback can be registered for each provider id with this function.
/// @remarks If you register multiple callback for same provider id, it will be overwritten by latest one.
///
///
/// Parameter provider The provider handle
/// Parameter callback The callback function to be called when a response is received
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see data_control_sql_unregister_response_cb()
/// @see data_control_sql_bind_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_register_response_cb(
  data_control_h provider,
  ffi.Pointer<data_control_sql_response_cb> callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDataControl.data_control_sql_register_response_cb(
      provider,
      callback,
      user_data,
    );

/// @brief Selects the specified columns to be queried.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
///
/// @remarks If you want to use this function, you must add privileges.
/// @remarks The following example demonstrates how to use the data_control_sql_select() method:
///
/// @code
///
/// void
/// sql_select_response_cb(int request_id, data_control_h provider, result_set_cursor *enumerator,
/// bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The select operation is successful");
/// else
/// LOGI("The select operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_sql_response_cb sql_callback;
///
/// {
/// int result = 0;
/// int req_id = 0;
/// char *column_list[2];
/// column_list[0] = "WORD";
/// column_list[1] = "WORD_DESC";
/// const char *where = "WORD = 'test'";
/// const char *order = "WORD ASC";
///
/// sql_callback.select_cb = sql_select_response_cb;
/// result = data_control_sql_register_response_cb(provider, &sql_callback, void *user_data);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// result = data_control_sql_select(provider, column_list, 2, where, order, &req_id);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Selecting is failed with error: %d", result);
/// else
/// LOGI("req_id is %d", req_id);
///
/// return result;
/// }
///
/// @endcode
///
///
/// Parameter provider The provider handle
/// Parameter column_list The column list to query
/// Parameter column_count The total number of columns to be queried
/// Parameter where A filter to select the desired rows \n
/// It is an SQL 'WHERE' clause excluding the 'WHERE' itself such as column1 = 'stringValue' and column2 = numericValue
/// Parameter order The sorting order of the rows to query \n
/// It is an SQL 'ORDER BY' clause excluding the 'ORDER BY' itself.
/// Output parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenDataControl`.
int data_control_sql_select(
  data_control_h provider,
  ffi.Pointer<ffi.Pointer<ffi.Char>> column_list,
  int column_count,
  ffi.Pointer<ffi.Char> where,
  ffi.Pointer<ffi.Char> order,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_sql_select(
      provider,
      column_list,
      column_count,
      where,
      order,
      request_id,
    );

/// @brief Selects the specified columns to be queried, with partition into pages.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
///
/// @remarks If you want to use this function, you must add privileges.
///
/// Parameter provider The provider handle
/// Parameter column_list The column list to query
/// Parameter column_count The total number of columns to be queried
/// Parameter where A filter to select the desired rows \n
/// It is an SQL 'WHERE' clause excluding the 'WHERE' itself such as column1 = 'stringValue' and column2 = numericValue
/// Parameter order The sorting order of the rows to query \n
/// It is an SQL 'ORDER BY' clause excluding the 'ORDER BY' itself
/// Parameter page_number The page number of the result set \n
/// It starts from @c 1
/// Parameter count_per_page The desired maximum count of rows on a page
/// Output parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @see data_control_sql_select()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_select_with_page(
  data_control_h provider,
  ffi.Pointer<ffi.Pointer<ffi.Char>> column_list,
  int column_count,
  ffi.Pointer<ffi.Char> where,
  ffi.Pointer<ffi.Char> order,
  int page_number,
  int count_per_page,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_sql_select_with_page(
      provider,
      column_list,
      column_count,
      where,
      order,
      page_number,
      count_per_page,
      request_id,
    );

/// @brief Sets the data ID.
/// @since_tizen 2.3
///
/// Parameter provider The provider handle
/// Parameter data_id A string for identifying a specific table to operate \n
/// The string consists of one or more components separated by a slash('/')
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see data_control_sql_get_data_id()
///
/// @code
///
/// {
/// bundle *b;
/// int ret;
///
/// // Insert data to Note table
/// ret = data_control_sql_set_data_id(ad->provider_h, "Note");
/// if (ret != DATA_CONTROL_ERROR_NONE)
/// dlog_print(DLOG_ERROR, LOG_TAG, "setting data id failed with error: %d", ret);
///
/// b = bundle_create();
/// bundle_add_str(b, ""TITLE"", "test");
/// bundle_add_str(b, "CONTENTS", "test contents");
/// data_control_sql_insert(ad->provider_h, b, &req_id);
/// bundle_free(b);
///
/// // Insert data to Dictionary table
/// ret = data_control_sql_set_data_id(ad->provider_h, "Dictionary");
/// if (ret != DATA_CONTROL_ERROR_NONE)
/// dlog_print(DLOG_ERROR, LOG_TAG, "setting data id failed with error: %d", ret);
///
/// b = bundle_create();
/// bundle_add_str(b, "WORD", "test");
/// bundle_add_str(b, "WORD_DESC", "test desc");
/// data_control_sql_insert(ad->provider_h, b, &req_id);
/// bundle_free(b);
/// }
///
/// @endcode
///
/// Module getter: `tizenDataControl`.
int data_control_sql_set_data_id(
  data_control_h provider,
  ffi.Pointer<ffi.Char> data_id,
) =>
    tizenDataControl.data_control_sql_set_data_id(
      provider,
      data_id,
    );

/// @brief Sets the Provider ID.
/// @since_tizen 2.3
///
/// Parameter provider The provider handle
/// Parameter provider_id The data control provider ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see data_control_sql_get_provider_id()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_set_provider_id(
  data_control_h provider,
  ffi.Pointer<ffi.Char> provider_id,
) =>
    tizenDataControl.data_control_sql_set_provider_id(
      provider,
      provider_id,
    );

/// @brief Moves the cursor to the first position.
/// @since_tizen 2.3
/// @remarks The following example demonstrates how to use the data_control_sql_step_first() method:
///
/// @code
///
/// void
/// sql_select_response_cb(int request_id, data_control_h provider, result_set_cursor cursor,
/// bool provider_result, const char *error)
/// {
/// char person_name[32] = {0,};
/// long long person_number = -1;
///
/// data_control_sql_step_first(cursor);
/// data_control_sql_get_text_data(cursor, 0, person_name);
/// data_control_sql_get_int64_data(cursor, 1, &person_number);
/// printf("The person %s has the number %l", person_name, person_number);
/// }
///
/// @endcode
///
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_sql_step_first(
  result_set_cursor cursor,
) =>
    tizenDataControl.data_control_sql_step_first(
      cursor,
    );

/// @brief Moves the cursor to the last position.
/// @since_tizen 2.3
/// @remarks The following example demonstrates how to use the data_control_sql_step_last() method:
///
/// @code
///
/// void
/// sql_select_response_cb(int request_id, data_control_h provider, result_set_cursor cursor,
/// bool provider_result, const char *error)
/// {
/// char person_name[32] = {0,};
/// long long person_number = -1;
///
/// data_control_sql_step_last(cursor);
/// data_control_sql_get_text_data(cursor, 0, person_name);
/// data_control_sql_get_int64_data(cursor, 1, &person_number);
/// printf("The person %s has the number %l", person_name, person_number);
/// }
///
/// @endcode
///
/// Parameter cursor The cursor that navigates the result of data control select request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_sql_step_last(
  result_set_cursor cursor,
) =>
    tizenDataControl.data_control_sql_step_last(
      cursor,
    );

/// @brief Moves the cursor to the next position.
/// @since_tizen 2.3
/// @remarks The following example demonstrates how to use the data_control_sql_step_next() method:
///
/// @code
///
/// void
/// sql_select_response_cb(int request_id, data_control_h provider, result_set_cursor cursor,
/// bool provider_result, const char *error)
/// {
/// char person_name[32] = {0,};
/// long long person_number = -1;
/// while (data_control_sql_step_next(cursor) == DATA_CONTROL_ERROR_NONE) {
/// data_control_sql_get_text_data(cursor, 0, person_name);
/// data_control_sql_get_int64_data(cursor, 1, &person_number);
/// printf("The person %s has the number %l", person_name, person_number);
/// }
/// }
///
/// @endcode
///
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenDataControl`.
int data_control_sql_step_next(
  result_set_cursor cursor,
) =>
    tizenDataControl.data_control_sql_step_next(
      cursor,
    );

/// @brief Moves the cursor to the previous position.
/// @since_tizen 2.3
/// Parameter cursor The cursor that navigates the result of the request for the select operation
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenDataControl`.
int data_control_sql_step_previous(
  result_set_cursor cursor,
) =>
    tizenDataControl.data_control_sql_step_previous(
      cursor,
    );

/// @brief Unbinds the insert bulk data callback in the @a provider.
/// @since_tizen 4.0
///
/// Parameter provider The provider handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see  data_control_sql_bind_insert_bulk_data_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_unbind_insert_bulk_data_response_cb(
  data_control_h provider,
) =>
    tizenDataControl.data_control_sql_unbind_insert_bulk_data_response_cb(
      provider,
    );

/// @brief Unbinds the callback function in the @a provider.
/// @since_tizen 4.0
///
/// Parameter provider The provider handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @see data_control_sql_bind_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_unbind_response_cb(
  data_control_h provider,
) =>
    tizenDataControl.data_control_sql_unbind_response_cb(
      provider,
    );

/// @brief Unregisters the insert bulk data callback.
/// @since_tizen 3.0
///
/// Parameter provider The provider handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see  data_control_sql_register_insert_bulk_data_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_unregister_insert_bulk_data_response_cb(
  data_control_h provider,
) =>
    tizenDataControl.data_control_sql_unregister_insert_bulk_data_response_cb(
      provider,
    );

/// @brief Unregisters the callback function in the @a provider.
/// @since_tizen 2.3
///
/// Parameter provider The provider handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see data_control_sql_register_response_cb()
///
/// Module getter: `tizenDataControl`.
int data_control_sql_unregister_response_cb(
  data_control_h provider,
) =>
    tizenDataControl.data_control_sql_unregister_response_cb(
      provider,
    );

/// @brief Updates values of a table owned by the SQL-type data control provider.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/datasharing \n
/// %http://tizen.org/privilege/appmanager.launch
///
/// @remarks If you want to use this function, you must add privileges.
/// The following example demonstrates how to use the data_control_sql_update() method:
///
/// @code
///
/// void
/// sql_update_response_cb(int request_id, data_control_h provider, bool provider_result, const char *error, void *user_data)
/// {
/// if (provider_result)
/// LOGI("The update operation is successful");
/// else
/// LOGI("The update operation for the request %d is failed. error message: %s", request_id, error);
/// }
///
/// data_control_sql_response_cb sql_callback;
///
/// {
/// int result = 0;
/// int req_id = 0;
/// const char *where = "WORD = 'test'";
/// bundle *b = NULL;
///
/// sql_callback.update_cb = sql_update_response_cb;
/// result = data_control_sql_register_response_cb(provider, &sql_callback, void *user_data);
/// if (result != DATA_CONTROL_ERROR_NONE) {
/// LOGE("Registering the callback function is failed with error: %d", result);
///
/// return result;
/// }
///
/// b = bundle_create();
/// bundle_add(b, "WORD", "test_new");
///
/// result = data_control_sql_update(provider, b, where, &req_id);
/// if (result != DATA_CONTROL_ERROR_NONE)
/// LOGE("Updating is failed with error: %d", result);
/// else
/// LOGI("req_id is %d", req_id);
///
/// bundle_free(b);
///
/// return result;
/// }
///
/// @endcode
///
///
/// Parameter provider The provider handle
/// Parameter update_data The column-value pairs to update \n
/// If the value is a string, the value must be wrapped in single quotes,
/// else it does not need to be wrapped in single quotes
/// Parameter where A filter to select the desired rows to update \n
/// It is an SQL 'WHERE' clause excluding the 'WHERE' itself such as column1 = 'stringValue' and column2 = numericValue
/// Output parameter request_id The request ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DATA_CONTROL_ERROR_NONE Successful
/// @retval #DATA_CONTROL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DATA_CONTROL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DATA_CONTROL_ERROR_IO_ERROR I/O error
/// @retval #DATA_CONTROL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #DATA_CONTROL_ERROR_MAX_EXCEEDED Too long argument
///
/// Module getter: `tizenDataControl`.
int data_control_sql_update(
  data_control_h provider,
  ffi.Pointer<bundle> update_data,
  ffi.Pointer<ffi.Char> where,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenDataControl.data_control_sql_update(
      provider,
      update_data,
      where,
      request_id,
    );

