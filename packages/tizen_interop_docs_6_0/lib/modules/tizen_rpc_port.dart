// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenRpcPort`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `librpc-port.so.1`.
///
/// Application Framework / RPC Port.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_rpc_port;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Reads bytes from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter buf The array buffer to read
/// Parameter size Bytes to read
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_bool()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_burst_read(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.UnsignedChar> buf,
  int size,
) =>
    tizenRpcPort.rpc_port_parcel_burst_read(
      h,
      buf,
      size,
    );

/// @brief Writes bytes to rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter buf The array buffer to write
/// Parameter size Bytes to write
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_bool()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_burst_write(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.UnsignedChar> buf,
  int size,
) =>
    tizenRpcPort.rpc_port_parcel_burst_write(
      h,
      buf,
      size,
    );

/// @brief Creates a rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks You must release @a h using rpc_port_parcel_destroy().
/// Output parameter h The rpc port parcel handle that is newly created
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER Invalid parameter
/// @see rpc_port_parcel_destroy()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_create(
  ffi.Pointer<rpc_port_parcel_h> h,
) =>
    tizenRpcPort.rpc_port_parcel_create(
      h,
    );

/// @brief Creates a rpc port parcel handle from port.
/// @details Creates a rpc port parcel handle using read data from the port.
/// It calls rpc_port_read() internally.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks You must release @a h using rpc_port_parcel_destroy().
/// Output parameter h The rpc port parcel handle that is newly created
/// Parameter port The rpc port handle for creating handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a port is NULL
/// @retval #RPC_PORT_ERROR_IO_ERROR Internal I/O error
/// @see rpc_port_parcel_destroy()
/// @see rpc_port_parcel_send()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_create_from_port(
  ffi.Pointer<rpc_port_parcel_h> h,
  rpc_port_h port,
) =>
    tizenRpcPort.rpc_port_parcel_create_from_port(
      h,
      port,
    );

/// @brief Destroys a rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_create()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_destroy(
  rpc_port_parcel_h h,
) =>
    tizenRpcPort.rpc_port_parcel_destroy(
      h,
    );

/// @brief Reads a parcel from the data using @a parcelable.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter parcelable The interface to get data from parcel handle
/// Parameter data Data which get from parcel
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read(
  rpc_port_parcel_h h,
  ffi.Pointer<rpc_port_parcelable_t> parcelable,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenRpcPort.rpc_port_parcel_read(
      h,
      parcelable,
      data,
    );

/// @brief Reads a count for array from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter count Array count
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_array_count()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_array_count(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenRpcPort.rpc_port_parcel_read_array_count(
      h,
      count,
    );

/// @brief Reads a boolean value from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter b boolean data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_bool()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_bool(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Bool> b,
) =>
    tizenRpcPort.rpc_port_parcel_read_bool(
      h,
      b,
    );

/// @brief Reads a bundle data from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks The @a b should be released using bundle_free().
/// Parameter h The rpc port parcel handle
/// Output parameter b Bundle data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_bundle()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_bundle(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Pointer<bundle>> b,
) =>
    tizenRpcPort.rpc_port_parcel_read_bundle(
      h,
      b,
    );

/// @brief Reads a byte value from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter b Byte data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_byte()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_byte(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Char> b,
) =>
    tizenRpcPort.rpc_port_parcel_read_byte(
      h,
      b,
    );

/// @brief Reads a double precision floating point value from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter d double data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_double()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_double(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Double> d,
) =>
    tizenRpcPort.rpc_port_parcel_read_double(
      h,
      d,
    );

/// @brief Reads a floating point value from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter f float data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_float()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_float(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Float> f,
) =>
    tizenRpcPort.rpc_port_parcel_read_float(
      h,
      f,
    );

/// @brief Reads a short value from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter i short data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_int16()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_int16(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Short> i,
) =>
    tizenRpcPort.rpc_port_parcel_read_int16(
      h,
      i,
    );

/// @brief Reads a integer value from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter i int data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_int32()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_int32(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Int> i,
) =>
    tizenRpcPort.rpc_port_parcel_read_int32(
      h,
      i,
    );

/// @brief Reads a long long integer value from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Output parameter i long long data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_int64()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_int64(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.LongLong> i,
) =>
    tizenRpcPort.rpc_port_parcel_read_int64(
      h,
      i,
    );

/// @brief Reads a string value from rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks The @a str should be released using free().
/// Parameter h The rpc port parcel handle
/// Output parameter str string data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_write_string()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_read_string(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Pointer<ffi.Char>> str,
) =>
    tizenRpcPort.rpc_port_parcel_read_string(
      h,
      str,
    );

/// @brief Sends parcel data through the port.
/// @details Sends parcel data through the port. It calls rpc_port_write()
/// internally.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle that is newly created
/// Parameter port The rpc port handle for writing data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @retval #RPC_PORT_ERROR_IO_ERROR Internal I/O error
/// @see rpc_port_parcel_create_from_port()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_send(
  rpc_port_parcel_h h,
  rpc_port_h port,
) =>
    tizenRpcPort.rpc_port_parcel_send(
      h,
      port,
    );

/// @brief Writes the data into parcel handle using @a parcelable.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter parcelable The interface to write the data into parcel handle
/// Parameter data Data which write into parcel
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write(
  rpc_port_parcel_h h,
  ffi.Pointer<rpc_port_parcelable_t> parcelable,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenRpcPort.rpc_port_parcel_write(
      h,
      parcelable,
      data,
    );

/// @brief Writes a count for array into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter count Array count
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_array_count()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_array_count(
  rpc_port_parcel_h h,
  int count,
) =>
    tizenRpcPort.rpc_port_parcel_write_array_count(
      h,
      count,
    );

/// @brief Writes a boolean value into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter b boolean data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_bool()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_bool(
  rpc_port_parcel_h h,
  bool b,
) =>
    tizenRpcPort.rpc_port_parcel_write_bool(
      h,
      b,
    );

/// @brief Writes a bundle data into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter b Bundle data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_bundle()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_bundle(
  rpc_port_parcel_h h,
  ffi.Pointer<bundle> b,
) =>
    tizenRpcPort.rpc_port_parcel_write_bundle(
      h,
      b,
    );

/// @brief Writes a byte value into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter b Byte data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_byte()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_byte(
  rpc_port_parcel_h h,
  int b,
) =>
    tizenRpcPort.rpc_port_parcel_write_byte(
      h,
      b,
    );

/// @brief Writes a double precision floating point value into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter d double data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_double()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_double(
  rpc_port_parcel_h h,
  double d,
) =>
    tizenRpcPort.rpc_port_parcel_write_double(
      h,
      d,
    );

/// @brief Writes a floating point value into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter f float data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_float()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_float(
  rpc_port_parcel_h h,
  double f,
) =>
    tizenRpcPort.rpc_port_parcel_write_float(
      h,
      f,
    );

/// @brief Writes a short value into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter i short data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_int16()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_int16(
  rpc_port_parcel_h h,
  int i,
) =>
    tizenRpcPort.rpc_port_parcel_write_int16(
      h,
      i,
    );

/// @brief Writes a integer value into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter i int data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_int32()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_int32(
  rpc_port_parcel_h h,
  int i,
) =>
    tizenRpcPort.rpc_port_parcel_write_int32(
      h,
      i,
    );

/// @brief Writes a long long integer value into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter i long long data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_int64()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_int64(
  rpc_port_parcel_h h,
  int i,
) =>
    tizenRpcPort.rpc_port_parcel_write_int64(
      h,
      i,
    );

/// @brief Writes a string value into rpc port parcel handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port parcel handle
/// Parameter str string data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_parcel_read_string()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_parcel_write_string(
  rpc_port_parcel_h h,
  ffi.Pointer<ffi.Char> str,
) =>
    tizenRpcPort.rpc_port_parcel_write_string(
      h,
      str,
    );

/// @brief Adds a proxy connected callback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port proxy handle
/// Parameter cb The callback function to be called when proxy is connected
/// Parameter user_data The user data to be passed to
/// the rpc_port_proxy_connected_event_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_add_connected_event_cb(
  rpc_port_proxy_h h,
  rpc_port_proxy_connected_event_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenRpcPort.rpc_port_proxy_add_connected_event_cb(
      h,
      cb,
      user_data,
    );

/// @brief Adds a proxy disconnected callback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port proxy handle
/// Parameter cb The callback function to be called when proxy is disconnected
/// Parameter user_data The user data to be passed to
/// the rpc_port_proxy_disconnected_event_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_add_disconnected_event_cb(
  rpc_port_proxy_h h,
  rpc_port_proxy_disconnected_event_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenRpcPort.rpc_port_proxy_add_disconnected_event_cb(
      h,
      cb,
      user_data,
    );

/// @brief Adds a proxy received callback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port proxy handle
/// Parameter cb The callback function to be called when proxy received data
/// Parameter user_data The user data to be passed to
/// the rpc_port_proxy_received_event_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_add_received_event_cb(
  rpc_port_proxy_h h,
  rpc_port_proxy_received_event_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenRpcPort.rpc_port_proxy_add_received_event_cb(
      h,
      cb,
      user_data,
    );

/// @brief Adds a proxy rejected callback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port proxy handle
/// Parameter cb The callback function to be called when proxy is rejected
/// Parameter user_data The user data to be passed to
/// the rpc_port_proxy_rejected_event_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_add_rejected_event_cb(
  rpc_port_proxy_h h,
  rpc_port_proxy_rejected_event_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenRpcPort.rpc_port_proxy_add_rejected_event_cb(
      h,
      cb,
      user_data,
    );

/// @brief Connects to @a port of @a appid.
/// @details To send and receive data, the proxy should connect to port of stub
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/appmanager.launch \n
/// %http://tizen.org/privilege/datasharing
/// @remarks If you want to use this function, you must add privileges.
/// Parameter h The rpc port proxy handle
/// Parameter appid The target stub appid
/// Parameter port The name of rpc port
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @retval #RPC_PORT_ERROR_IO_ERROR Internal I/O error
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_connect(
  rpc_port_proxy_h h,
  ffi.Pointer<ffi.Char> appid,
  ffi.Pointer<ffi.Char> port,
) =>
    tizenRpcPort.rpc_port_proxy_connect(
      h,
      appid,
      port,
    );

/// @brief Connects to @a port_name of @a appid synchronously.
/// @details To send and receive data, the proxy should connect to port of stub.
/// @since_tizen 6.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/appmanager.launch \n
/// %http://tizen.org/privilege/datasharing
/// Parameter h The rpc port proxy handle
/// Parameter appid The application ID of the target stub
/// Parameter port_name The name of rpc port
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RPC_PORT_ERROR_IO_ERROR I/O error
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_connect_sync(
  rpc_port_proxy_h h,
  ffi.Pointer<ffi.Char> appid,
  ffi.Pointer<ffi.Char> port_name,
) =>
    tizenRpcPort.rpc_port_proxy_connect_sync(
      h,
      appid,
      port_name,
    );

/// @brief Creates a rpc port proxy handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks You must release @a h using rpc_port_proxy_destroy().
/// Output parameter h The rpc port proxy handle that is newly created
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_proxy_destroy()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_create(
  ffi.Pointer<rpc_port_proxy_h> h,
) =>
    tizenRpcPort.rpc_port_proxy_create(
      h,
    );

/// @brief Destroys a rpc port proxy handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port proxy handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_proxy_create()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_destroy(
  rpc_port_proxy_h h,
) =>
    tizenRpcPort.rpc_port_proxy_destroy(
      h,
    );

/// @brief Gets a port from proxy handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks This handle @a port will not be valid if the proxy was disconnected or destroyed.
/// Parameter h The rpc port proxy handle
/// Parameter type The type of port
/// Output parameter port The port to communicate
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @retval #RPC_PORT_ERROR_IO_ERROR No available ports
/// @see rpc_port_write()
/// @see rpc_port_read()
/// @see rpc_port_parcel_create_from_port()
/// @see rpc_port_parcel_send();
///
/// Module getter: `tizenRpcPort`.
int rpc_port_proxy_get_port(
  rpc_port_proxy_h h,
  int type,
  ffi.Pointer<rpc_port_h> port,
) =>
    tizenRpcPort.rpc_port_proxy_get_port(
      h,
      type,
      port,
    );

/// @brief Reads data from an RPC port.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter h The rpc port handle
/// Output parameter buf Buffer for reading data
/// Parameter size Size for reading data
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @retval #RPC_PORT_ERROR_IO_ERROR Internal I/O error
/// @see rpc_port_write()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_read(
  rpc_port_h h,
  ffi.Pointer<ffi.Void> buf,
  int size,
) =>
    tizenRpcPort.rpc_port_read(
      h,
      buf,
      size,
    );

/// @brief Sets the path of the private sharing file.
/// @details See the description of rpc_port_set_private_sharing_array() for details.
/// @since_tizen 6.0
/// Parameter port The rpc port handle
/// Parameter path The path of the file
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RPC_PORT_ERROR_IO_ERROR I/O error
///
/// @see rpc_port_set_private_sharing_array()
/// @see rpc_port_unset_private_sharing()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_set_private_sharing(
  rpc_port_h port,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenRpcPort.rpc_port_set_private_sharing(
      port,
      path,
    );

/// @brief Sets the paths of private sharing files.
/// @details If all added paths are under the caller application's data path which can be obtained by calling app_get_data_path() function,
/// those will be shared to the target application. Platform will grant a temporary permission to the target application for those files and revoke it when the target application is terminated or rpc_port_unset_private_sharing() is called.
/// Paths should be regular files. The target application can just read them.
/// Note that the target application doesn't have read permission of the directory that is obtained by caller's app_get_data_path(),
/// You should open the file path with read only mode directly. For example, access() call to the file path will return error because access() needs the read permission of the directory.
/// The target application can call open() with O_RDONLY mode for the passed file path, because platform grants read permission to the passed file path.
/// @since_tizen 6.0
/// Parameter port The rpc port handle
/// Parameter paths The array of paths of files
/// Parameter size The size of the array of the paths
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RPC_PORT_ERROR_IO_ERROR I/O error
///
/// @see rpc_port_unset_private_sharing()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_set_private_sharing_array(
  rpc_port_h port,
  ffi.Pointer<ffi.Pointer<ffi.Char>> paths,
  int size,
) =>
    tizenRpcPort.rpc_port_set_private_sharing_array(
      port,
      paths,
      size,
    );

/// @brief Adds a stub connected callback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc stub stub handle
/// Parameter cb The callback function to be called when proxy is connected
/// with the stub
/// Parameter user_data The user data to be passed to
/// the rpc_port_stub_connected_event_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_add_connected_event_cb(
  rpc_port_stub_h h,
  rpc_port_stub_connected_event_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenRpcPort.rpc_port_stub_add_connected_event_cb(
      h,
      cb,
      user_data,
    );

/// @brief Adds a stub disconnected callback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port stub handle
/// Parameter cb The callback function to be called when proxy is disconnected
/// with the stub
/// Parameter user_data The user data to be passed to
/// the rpc_port_stub_disconnected_event_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_add_disconnected_event_cb(
  rpc_port_stub_h h,
  rpc_port_stub_disconnected_event_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenRpcPort.rpc_port_stub_add_disconnected_event_cb(
      h,
      cb,
      user_data,
    );

/// @brief Adds a privilege to the stub.
/// @details The stub can control access to the port using tizen privilege.
/// It allows connections only if the proxy which have the privileges.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port stub handle
/// Parameter privilege The privilege to access this stub
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_add_privilege(
  rpc_port_stub_h h,
  ffi.Pointer<ffi.Char> privilege,
) =>
    tizenRpcPort.rpc_port_stub_add_privilege(
      h,
      privilege,
    );

/// @brief Adds a stub received callback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port stub handle
/// Parameter cb The callback function to be called when stub received data
/// Parameter user_data The user data to be passed to
/// the rpc_port_stub_received_event_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_add_received_event_cb(
  rpc_port_stub_h h,
  rpc_port_stub_received_event_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenRpcPort.rpc_port_stub_add_received_event_cb(
      h,
      cb,
      user_data,
    );

/// @brief Creates a rpc port stub handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks You must release @a h using rpc_port_stub_destroy().
/// Output parameter h The rpc port stub handle that is newly created
/// Parameter port_name The name of the port which want to listen
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_stub_destroy()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_create(
  ffi.Pointer<rpc_port_stub_h> h,
  ffi.Pointer<ffi.Char> port_name,
) =>
    tizenRpcPort.rpc_port_stub_create(
      h,
      port_name,
    );

/// @brief Destroys a rpc port stub handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port stub handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @see rpc_port_stub_create()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_destroy(
  rpc_port_stub_h h,
) =>
    tizenRpcPort.rpc_port_stub_destroy(
      h,
    );

/// @brief Gets a port from stub handle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks This handle @a port will not be valid if the instance of the stub was disconnected or destroyed.
/// Parameter h The rpc port stub handle
/// Parameter type The type of port
/// Parameter instance The ID of the instance which is connected
/// Output parameter port The port to communicate
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @retval #RPC_PORT_ERROR_IO_ERROR No available ports
/// @see rpc_port_write()
/// @see rpc_port_read()
/// @see rpc_port_parcel_create_from_port()
/// @see rpc_port_parcel_send();
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_get_port(
  rpc_port_stub_h h,
  int type,
  ffi.Pointer<ffi.Char> instance,
  ffi.Pointer<rpc_port_h> port,
) =>
    tizenRpcPort.rpc_port_stub_get_port(
      h,
      type,
      instance,
      port,
    );

/// @brief Listens to the requests for connections.
/// @details The stub listens requests to connect by port
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port stub handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @retval #RPC_PORT_ERROR_IO_ERROR Internal I/O error
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_listen(
  rpc_port_stub_h h,
) =>
    tizenRpcPort.rpc_port_stub_listen(
      h,
    );

/// @brief Sets trusted to the stub.
/// @details The stub can control access to the port using tizen certificate.
/// It allows connections only if the proxy is signed with the same
/// certificate.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter h The rpc port stub handle
/// Parameter trusted Whether stub allows only trusted proxy or not
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
///
/// Module getter: `tizenRpcPort`.
int rpc_port_stub_set_trusted(
  rpc_port_stub_h h,
  bool trusted,
) =>
    tizenRpcPort.rpc_port_stub_set_trusted(
      h,
      trusted,
    );

/// @brief Unsets the private sharing.
/// @since_tizen 6.0
/// Parameter port The rpc port handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #RPC_PORT_ERROR_IO_ERROR I/O error
///
/// @see rpc_port_set_private_sharing_array()
/// @see rpc_port_set_private_sharing()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_unset_private_sharing(
  rpc_port_h port,
) =>
    tizenRpcPort.rpc_port_unset_private_sharing(
      port,
    );

/// @brief Writes data to an RPC port.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter h The rpc port handle
/// Parameter buf Buffer for writing data
/// Parameter size Size for writing data
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #RPC_PORT_ERROR_NONE Successful
/// @retval #RPC_PORT_ERROR_INVALID_PARAMETER The specified @a h is NULL
/// @retval #RPC_PORT_ERROR_IO_ERROR Internal I/O error
/// @see rpc_port_read()
///
/// Module getter: `tizenRpcPort`.
int rpc_port_write(
  rpc_port_h h,
  ffi.Pointer<ffi.Void> buf,
  int size,
) =>
    tizenRpcPort.rpc_port_write(
      h,
      buf,
      size,
    );

