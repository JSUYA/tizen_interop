// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenBadge`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libbadge.so.0`.
///
/// Application Framework / Badge.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_badge;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates a badge for the application specified by the badge_app_id.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// @remarks Creating and updating a badge of the other application is allowed only when both applications are signed with the same certificate.
/// Parameter badge_app_id The id of the application for which the badge will be created. This parameter can be null when creating a badge for itself.
/// @return #BADGE_ERROR_NONE If success, other value if failure
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_FROM_DB Error from DB
/// @retval #BADGE_ERROR_ALREADY_EXIST Already exist
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @retval #BADGE_ERROR_INVALID_PACKAGE The caller application is not signed with the certificate of the badge_app_id
/// @see #badge_error_e
/// @par Sample code:
/// @code
/// #include <badge.h>
///
/// {
/// int err = BADGE_ERROR_NONE;
///
/// err = badge_add("org.tizen.email");
/// if (err != BADGE_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenBadge`.
int badge_add(
  ffi.Pointer<ffi.Char> badge_app_id,
) =>
    tizenBadge.badge_add(
      badge_app_id,
    );

/// @brief Retrieves all existing badges.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter callback The callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_FROM_DB Error form DB
/// @retval #BADGE_ERROR_NOT_EXIST Not exist
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @see #badge_error_e
/// @see badge_foreach_cb()
///
/// Module getter: `tizenBadge`.
int badge_foreach(
  badge_foreach_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenBadge.badge_foreach(
      callback,
      user_data,
    );

/// @brief Gets badge count for the designated application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter app_id The name of the designated application
/// Output parameter count The count of the badge
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_FROM_DB Error from DB
/// @retval #BADGE_ERROR_NOT_EXIST Not exist
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @see #badge_error_e
/// @see badge_add()
/// @see badge_set_count()
/// @par Sample code:
/// @code
/// #include <badge.h>
///
/// {
/// int err = BADGE_ERROR_NONE;
/// int count = 0;
///
/// err = badge_get_count(app_id, &count);
/// if (err != BADGE_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenBadge`.
int badge_get_count(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.UnsignedInt> count,
) =>
    tizenBadge.badge_get_count(
      app_id,
      count,
    );

/// @brief Gets the display option for the designated application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter app_id The name of the designated application
/// Output parameter  is_display The display option (1 = display, 0 = not display)
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_FROM_DB Error from DB
/// @retval #BADGE_ERROR_NOT_EXIST Not exist
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @see #badge_error_e
/// @see badge_add()
/// @see badge_set_count()
/// @par Sample code:
/// @code
/// #include <badge.h>
///
/// {
/// int is_display = 0;
/// int err = BADGE_ERROR_NONE;
///
/// err = badge_get_display(app_id, &is_display);
/// if (err != BADGE_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenBadge`.
int badge_get_display(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.UnsignedInt> is_display,
) =>
    tizenBadge.badge_get_display(
      app_id,
      is_display,
    );

/// @deprecated Deprecated since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif. Use badge_add() instead.
/// @brief Creates a badge for the application itself.
/// @details Creates new badge to display.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter writable_app_id The id of application which is authorized to change the badge
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @see #badge_error_e
/// @par Sample code:
/// @code
/// #include <badge.h>
///
/// {
/// int err = BADGE_ERROR_NONE;
///
/// err = badge_new(app_id);
/// if (err != BADGE_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenBadge`.
int badge_new(
  ffi.Pointer<ffi.Char> writable_app_id,
) =>
    tizenBadge.badge_new(
      writable_app_id,
    );

/// @brief Registers a callback function to receive badge change event.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// @remarks Should be used in the homescreen.\n
/// Prospective Clients : Homescreen.
/// Parameter callback The callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @see #badge_error_e
/// @see badge_add()
/// @see badge_remove()
/// @see badge_set_count()
///
/// Module getter: `tizenBadge`.
int badge_register_changed_cb(
  badge_change_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenBadge.badge_register_changed_cb(
      callback,
      user_data,
    );

/// @brief Removes the badge for the designated application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter app_id The name of the designated application
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_FROM_DB Error from DB
/// @retval #BADGE_ERROR_NOT_EXIST Not exist
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @see #badge_error_e
/// @par Sample code:
/// @code
/// #include <badge.h>
///
/// {
/// int err = BADGE_ERROR_NONE;
///
/// err = badge_remove(app_id);
/// if (err != BADGE_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenBadge`.
int badge_remove(
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenBadge.badge_remove(
      app_id,
    );

/// @brief Sets badge count for the designated application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter app_id The name of the designated application
/// Parameter count The count of the badge
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_FROM_DB Error from DB
/// @retval #BADGE_ERROR_NOT_EXIST Not exist
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @see #badge_error_e
/// @see badge_add()
/// @par Sample code:
/// @code
/// #include <badge.h>
///
/// {
/// int err = BADGE_ERROR_NONE;
///
/// err = badge_set_count(app_id, 1);
/// if (err != BADGE_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenBadge`.
int badge_set_count(
  ffi.Pointer<ffi.Char> app_id,
  int count,
) =>
    tizenBadge.badge_set_count(
      app_id,
      count,
    );

/// @brief Sets the display option for the designated application.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter app_id The name of the designated application
/// Parameter is_display The display option (1 = display, 0 = not display)
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BADGE_ERROR_IO_ERROR Error from I/O
/// @retval #BADGE_ERROR_FROM_DB Error from DB
/// @retval #BADGE_ERROR_NOT_EXIST Not exist
/// @retval #BADGE_ERROR_SERVICE_NOT_READY Service is not ready
/// @see #badge_error_e
/// @see badge_add()
/// @par Sample code:
/// @code
/// #include <badge.h>
///
/// {
/// int err = BADGE_ERROR_NONE;
///
/// err = badge_set_display(app_id, 1);
/// if (err != BADGE_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenBadge`.
int badge_set_display(
  ffi.Pointer<ffi.Char> app_id,
  int is_display,
) =>
    tizenBadge.badge_set_display(
      app_id,
      is_display,
    );

/// @brief Unregisters a callback function to receive badge change event.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter callback The callback function
/// @return #BADGE_ERROR_NONE if success, other value if failure
/// @retval #BADGE_ERROR_NONE Success
/// @retval #BADGE_ERROR_NOT_SUPPORTED Not supported
/// @retval #BADGE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #BADGE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BADGE_ERROR_NOT_EXIST Not exist
/// @see #badge_error_e
/// @see badge_register_changed_cb()
///
/// Module getter: `tizenBadge`.
int badge_unregister_changed_cb(
  badge_change_cb callback,
) =>
    tizenBadge.badge_unregister_changed_cb(
      callback,
    );

