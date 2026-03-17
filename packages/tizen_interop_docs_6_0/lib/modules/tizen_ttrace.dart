// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenTtrace`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libttrace.so.1`.
///
/// System / T-trace.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_ttrace;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Writes a trace event to indicate that an asynchronous event has begun.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 2.3.2 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter cookie An unique identifier for distinguishing simultaneous events
/// Parameter name The name of event (optionally containing format specifiers)
/// @exception #TRACE_ERROR_NONE	Success
/// @exception #TRACE_ERROR_IO_ERROR	I/O error
/// @see trace_async_end()
///
/// Module getter: `tizenTtrace`.
void trace_async_begin(
  int cookie,
  ffi.Pointer<ffi.Char> name,
) =>
    tizenTtrace.trace_async_begin(
      cookie,
      name,
    );

/// @brief Writes a trace event to indicate that the asynchronous event has ended.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 2.3.2 @endif
/// @remarks trace_async_end() ends matched trace_async_begin() which has same cookie and name.
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter cookie An unique identifier for distinguishing simultaneous events
/// Parameter name The name of event (optionally containing format specifiers)
/// @exception #TRACE_ERROR_NONE  Success
/// @exception #TRACE_ERROR_IO_ERROR      I/O error
/// @see trace_async_begin()
///
/// Module getter: `tizenTtrace`.
void trace_async_end(
  int cookie,
  ffi.Pointer<ffi.Char> name,
) =>
    tizenTtrace.trace_async_end(
      cookie,
      name,
    );

/// @brief Writes a trace event to indicate that a synchronous event has begun.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 2.3.2 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter name The name of event (optionally containing format specifiers)
/// @exception #TRACE_ERROR_NONE	Success
/// @exception #TRACE_ERROR_IO_ERROR	I/O error
/// @see trace_end()
///
/// Module getter: `tizenTtrace`.
void trace_begin(
  ffi.Pointer<ffi.Char> name,
) =>
    tizenTtrace.trace_begin(
      name,
    );

/// @brief Writes a trace event to indicate that the synchronous event has ended.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 2.3.2 @endif
/// @remarks trace_end() ends the most recently called trace_begin().
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// @exception #TRACE_ERROR_NONE  Success
/// @exception #TRACE_ERROR_IO_ERROR      I/O error
/// @see trace_begin()
///
/// Module getter: `tizenTtrace`.
void trace_end() =>
    tizenTtrace.trace_end();

/// @brief Writes a trace event to track change of integer counter.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 2.3.2 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter value The counter value
/// Parameter name The name of event (optionally containing format specifiers)
/// @exception #TRACE_ERROR_NONE  Success
/// @exception #TRACE_ERROR_IO_ERROR      I/O error
///
/// Module getter: `tizenTtrace`.
void trace_update_counter(
  int value,
  ffi.Pointer<ffi.Char> name,
) =>
    tizenTtrace.trace_update_counter(
      value,
      name,
    );

