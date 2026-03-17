// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenDlog`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libdlog.so.0`.
///
/// System / Dlog.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_dlog;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Sends log with priority and tag.
/// @details for application.
/// @if MOBILE @since_tizen 2.3 @elseif WEARABLE @since_tizen 2.3.1 @endif
/// Parameter prio priority level of type #log_priority
/// Parameter tag tag - a null-terminated string
/// Parameter fmt format string - same as printf
/// @return On success, the function returns the number of bytes written.
/// On error, a negative errno-style error code
/// @retval #DLOG_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DLOG_ERROR_NOT_PERMITTED Operation not permitted
/// @pre none
/// @post none
/// @see dlog_vprint
///
/// @code
/// #include<dlog.h>
/// int main(void)
/// {
/// int integer = 21;
/// char string[] = "test dlog";
///
/// dlog_print(DLOG_INFO, "USR_TAG", "test dlog");
/// dlog_print(DLOG_INFO, "USR_TAG", "%s, %d", string, integer);
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenDlog`.
int dlog_print(
  int prio,
  ffi.Pointer<ffi.Char> tag,
  ffi.Pointer<ffi.Char> fmt,
) =>
    tizenDlog.dlog_print(
      prio,
      tag,
      fmt,
    );

/// @brief Sends log with priority, tag, and va_list.
/// @details for application.
/// @if MOBILE @since_tizen 2.3 @elseif WEARABLE @since_tizen 2.3.1 @endif
/// Parameter prio priority level of type #log_priority
/// Parameter tag tag - a null-terminated string
/// Parameter fmt format string - same as printf
/// Parameter ap va_list
/// @return On success, the function returns the number of bytes written.
/// On error, a negative errno-style error code
/// @retval #DLOG_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DLOG_ERROR_NOT_PERMITTED Operation not permitted
/// @pre none
/// @post none
/// @see dlog_print
///
/// @code
/// #include<dlog.h>
/// void my_debug_print(char *format, ...)
/// {
/// va_list ap;
///
/// va_start(ap, format);
/// dlog_vprint(DLOG_INFO, "USR_TAG", format, ap);
/// va_end(ap);
/// }
///
/// int main(void)
/// {
/// my_debug_print("%s", "test dlog");
/// my_debug_print("%s, %d", "test dlog", 21);
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenDlog`.
int dlog_vprint(
  int prio,
  ffi.Pointer<ffi.Char> tag,
  ffi.Pointer<ffi.Char> fmt,
  va_list ap,
) =>
    tizenDlog.dlog_vprint(
      prio,
      tag,
      fmt,
      ap,
    );

