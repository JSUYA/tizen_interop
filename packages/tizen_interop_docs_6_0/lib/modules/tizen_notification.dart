// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenNotification`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libnotification.so.0`.
///
/// Application Framework / Notification.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_notification;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a button on the notification.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter noti Notification handle
/// Parameter button_index Button index
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// char *pkgname = NULL;
///
/// // Do something
///
/// noti_err = notification_add_button(noti, NOTIFICATION_BUTTON_1);
///
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_add_button(
  notification_h noti,
  int button_index,
) =>
    tizenNotification.notification_add_button(
      noti,
      button_index,
    );

/// @brief Creates a notification clone.
/// @details Newly created notification handle is returned.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks This cloned notification handle should be freed using notification_free().
/// Parameter noti The notification handle
/// Output parameter clone The newly created notification handle that has same with input @a noti
/// @return #NOTIFICATION_ERROR_NONE if success,
/// otherwise any other value if failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #notification_type_e
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// notification_h clone = NULL;
///
/// notification_clone(noti, &clone);
///
/// // Do something
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_clone(
  notification_h noti,
  ffi.Pointer<notification_h> clone,
) =>
    tizenNotification.notification_clone(
      noti,
      clone,
    );

/// @brief Creates internal structure data and returns a notification handle.
/// @details Available type is #NOTIFICATION_TYPE_NOTI and #NOTIFICATION_TYPE_ONGOING.
/// #NOTIFICATION_TYPE_NOTI is remaining notification data even if device is restarted.
/// #NOTIFICATION_TYPE_ONGOING can display progress on a notification with #NOTIFICATION_LY_ONGOING_PROGRESS layout.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// The returned value should be released using notification_free().
/// Parameter type The notification type
/// @return Notification handle(#notification_h) on success,
/// otherwise @c NULL on failure
/// @exception #NOTIFICATION_ERROR_NONE Success
/// @exception #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @exception #NOTIFICATION_ERROR_OUT_OF_MEMORY Out of memory
/// @exception #NOTIFICATION_ERROR_IO_ERROR I/O error
/// @see #notification_type_e
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// // Do something
///
/// notification_free(noti);
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
notification_h notification_create(
  int type,
) =>
    tizenNotification.notification_create(
      type,
    );

/// @brief Loads a notification template from the notification database.
/// @details An application can load a saved template and post it.
/// An application can load only templates that it has saved.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// @remarks The returned handle should be destroyed using notification_free().
/// The specific error code can be obtained using get_last_result().
/// Error codes are described in the Exception section.
/// If an invalid template name is given, the result will be set to #NOTIFICATION_ERROR_FROM_DB.
/// Parameter template_name Template name
/// @return Notification handle on success, NULL on failure
/// @exception #NOTIFICATION_ERROR_NONE Success
/// @exception #NOTIFICATION_ERROR_PERMISSION_DENIED The Permission denied
/// @exception #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @exception #NOTIFICATION_ERROR_OUT_OF_MEMORY Out of memory
/// @exception #NOTIFICATION_ERROR_FROM_DB Error from DB query
/// @see #notification_h
/// @see notification_save_as_template()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
///
/// noti = notification_create_from_template("CALL_ACCEPT");
/// if (noti == NULL)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
notification_h notification_create_from_template(
  ffi.Pointer<ffi.Char> template_name,
) =>
    tizenNotification.notification_create_from_template(
      template_name,
    );

/// @brief Deletes a notification with the given handle.
/// @details notification_delete() removes notification data from database and notification_free() releases memory of notification data.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter noti The notification handle
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_PERMISSION_DENIED The Permission denied
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// // Do something
///
/// noti_err = notification_delete(noti);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_delete(
  notification_h noti,
) =>
    tizenNotification.notification_delete(
      noti,
    );

/// @brief Deletes all notifications of the given type.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter type Notification type
/// @return #NOTIFICATION_ERROR_NONE if success,
/// other value if failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_PERMISSION_DENIED The Permission denied
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_delete_all(NOTIFICATION_TYPE_NOTI);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_delete_all(
  int type,
) =>
    tizenNotification.notification_delete_all(
      type,
    );

/// @brief Frees the internal structure data of a notification handle.
/// @details Internal data of a notification handle is released. Data of the inserted notification is not deleted.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Notification handle should be created by notification_create().
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// // Do something
///
/// noti_err = notification_free(noti);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_free(
  notification_h noti,
) =>
    tizenNotification.notification_free(
      noti,
    );

/// @brief Gets the 'auto remove' option of the active notification.
/// @details The 'auto remove' option lets the active notification be removed several seconds after it shows. Default value is true.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter noti Notification handle
/// Output parameter auto_remove Auto remove option
/// @return #NOTIFICATION_ERROR_NONE On success, other value on failure
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #notification_h
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// bool auto_remove;
///
/// // Do something
///
/// noti_err = notification_get_auto_remove(noti, &auto_remove);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_auto_remove(
  notification_h noti,
  ffi.Pointer<ffi.Bool> auto_remove,
) =>
    tizenNotification.notification_get_auto_remove(
      noti,
      auto_remove,
    );

/// @brief Gets the application list displaying the notification from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter applist The display application list
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// int applist = 0;
///
/// noti_err = notification_get_display_applist(noti, &applist);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_display_applist(
  notification_h noti,
  ffi.Pointer<ffi.Int> applist,
) =>
    tizenNotification.notification_get_display_applist(
      noti,
      applist,
    );

/// @brief Gets the event handler of a specific event.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a event_handler using app_control_destroy().
/// Parameter noti The notification handle
/// Parameter event_type Launching option type
/// Output parameter event_handler The handler of App Control
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #notification_event_type_e
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// app_control_h app_control = NULL;
///
/// // Do something
///
/// noti_err = notification_get_event_handler(noti, NOTIFICATION_EVENT_TYPE_CLICK_ON_BUTTON_1, &app_control);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
///
/// app_control_destroy(app_control);
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_event_handler(
  notification_h noti,
  int event_type,
  ffi.Pointer<app_control_h> event_handler,
) =>
    tizenNotification.notification_get_event_handler(
      noti,
      event_type,
      event_handler,
    );

/// @brief Gets the image height for the extended notification.
/// @since_tizen 4.0
/// Parameter noti The notification handle
/// Output parameter height The image height
/// @return #NOTIFICATION_ERROR_NONE On success, otherwise a negative error value
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see notification_set_extension_image_size()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// int height;
///
/// // Do something
///
/// noti_err = notification_get_extension_image_size(noti, &height);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_extension_image_size(
  notification_h noti,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenNotification.notification_get_extension_image_size(
      noti,
      height,
    );

/// @brief Gets the absolute path of an image file.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks Do not free @a image_path. It will be freed when notification_free() is called.
/// Parameter noti Notification handle
/// Parameter type Notification image type
/// Output parameter image_path Image file full path
/// @return #NOTIFICATION_ERROR_NONE on success,
/// other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Notification handle should be created by notification_create().
/// @see #notification_image_type_e
/// @see notification_create()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// char *image_path = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_get_image(noti, NOTIFICATION_IMAGE_TYPE_ICON, &image_path);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_image(
  notification_h noti,
  int type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> image_path,
) =>
    tizenNotification.notification_get_image(
      noti,
      type,
      image_path,
    );

/// @brief Gets an insertion timestamp of the notification.
/// @details If ret_time is @c 0, this notification data is not inserted before.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter ret_time The return time value
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// time_t ret_time;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_get_insert_time(noti, &ret_time);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_insert_time(
  notification_h noti,
  ffi.Pointer<time_t> ret_time,
) =>
    tizenNotification.notification_get_insert_time(
      noti,
      ret_time,
    );

/// @brief Gets the launch option from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks You must release @a option using app_control_destroy().
/// Parameter noti The notification handle
/// Parameter type Launching option type
/// Output parameter option The pointer of App Control handler
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// app_control_h app_control = NULL;
///
/// noti_err = notification_get_launch_option(noti, NOTIFICATION_LAUNCH_OPTION_APP_CONTROL, (void *)&app_control);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// // Do something
///
/// app_control_destroy(app_control);
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_launch_option(
  notification_h noti,
  int type,
  ffi.Pointer<ffi.Void> option,
) =>
    tizenNotification.notification_get_launch_option(
      noti,
      type,
      option,
    );

/// @brief Gets the layout of the notification view from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter layout The type of layout
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @see #notification_ly_type_e
///
/// Module getter: `tizenNotification`.
int notification_get_layout(
  notification_h noti,
  ffi.Pointer<ffi.Int32> layout,
) =>
    tizenNotification.notification_get_layout(
      noti,
      layout,
    );

/// @brief Gets the LED displaying option from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter operation The LED notification operation
/// Output parameter led_argb The notification LED color
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// notification_led_op_e type;
///
/// noti_err = notification_get_led(noti, &type, NULL);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_led(
  notification_h noti,
  ffi.Pointer<ffi.Int32> operation,
  ffi.Pointer<ffi.Int> led_argb,
) =>
    tizenNotification.notification_get_led(
      noti,
      operation,
      led_argb,
    );

/// @brief Gets the time period of flashing the LED from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter on_ms The time for turning on the LED
/// Output parameter off_ms The time for turning on the LED
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// int led_on_ms = 0;
/// int led_off_ms = 0;
///
/// noti_err = notification_get_led_time_period(noti, &led_on_ms, &led_off_ms);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_led_time_period(
  notification_h noti,
  ffi.Pointer<ffi.Int> on_ms,
  ffi.Pointer<ffi.Int> off_ms,
) =>
    tizenNotification.notification_get_led_time_period(
      noti,
      on_ms,
      off_ms,
    );

/// @brief Gets notification block state.
/// @details The user can set the notification block state in settings.
/// The block state indicates whether or not notifications can be posted.
/// Additionally only notifications to the notification panel are
/// allowed in "Do not disturb mode". Sound, Vibrate and
/// Active/Instant notifications are blocked.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Output parameter state Notification block state
/// @return #NOTIFICATION_ERROR_NONE On success, other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_PERMISSION_DENIED The Permission denied
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTIFICATION_ERROR_OUT_OF_MEMORY out of memory
/// @retval #NOTIFICATION_ERROR_IO_ERROR I/O Error
/// @retval #NOTIFICATION_ERROR_SERVICE_NOT_READY No response from notification service
/// @see #notification_block_state_e
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// notification_block_state_e state;
///
/// // Do something
///
/// noti_err = notification_get_noti_block_state(&state);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_noti_block_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenNotification.notification_get_noti_block_state(
      state,
    );

/// @brief Gets the package name of the notification.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks Do not free @a pkgname. It will be freed when notification_free() is called.
/// Parameter noti Notification handle
/// Output parameter pkgname The package name of the notification
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// char *pkgname = NULL;
///
/// // Do something
///
/// noti_err = notification_get_pkgname(noti, &pkgname);
///
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_pkgname(
  notification_h noti,
  ffi.Pointer<ffi.Pointer<ffi.Char>> pkgname,
) =>
    tizenNotification.notification_get_pkgname(
      noti,
      pkgname,
    );

/// @brief Gets the progress from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks At the end of the operation, the progress should be @c 1.0.
/// Parameter noti The notification handle
/// Output parameter percentage The progress percentage
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// double percentage = 0.0;
///
/// noti_err = notification_get_progress(noti, &percentage);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_progress(
  notification_h noti,
  ffi.Pointer<ffi.Double> percentage,
) =>
    tizenNotification.notification_get_progress(
      noti,
      percentage,
    );

/// @brief Gets the property of the notification from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter flags The notification property
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// int flags = 0;
///
/// noti_err = notification_get_property(noti, &flags);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_property(
  notification_h noti,
  ffi.Pointer<ffi.Int> flags,
) =>
    tizenNotification.notification_get_property(
      noti,
      flags,
    );

/// @brief Gets the progress size.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter size The progress size
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// double size = 0.0;
///
/// noti_err = notification_get_size(noti, &size);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_size(
  notification_h noti,
  ffi.Pointer<ffi.Double> size,
) =>
    tizenNotification.notification_get_size(
      noti,
      size,
    );

/// @brief Gets the sound type from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks Do not free @a path. It will be freed when notification_free() is called.
/// Parameter noti The notification handle
/// Output parameter type The notification sound type
/// Output parameter path The user sound file path
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// notification_sound_type_e type = NOTIFICATION_SOUND_TYPE_NONE;
///
/// noti_err = notification_get_sound(noti, &type, NULL);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_sound(
  notification_h noti,
  ffi.Pointer<ffi.Int32> type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenNotification.notification_get_sound(
      noti,
      type,
      path,
    );

/// @brief Gets the tag of the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks Do not free @a tag. It will be freed when notification_free() is called.
/// Parameter noti Notification handle
/// Output parameter tag Tag for loading notification handle
/// @return #NOTIFICATION_ERROR_NONE on success,
/// other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see notification_set_tag()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// const char *tag = NULL;
///
/// // Do something
///
/// noti_err = notification_get_tag(noti, &tag);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_tag(
  notification_h noti,
  ffi.Pointer<ffi.Pointer<ffi.Char>> tag,
) =>
    tizenNotification.notification_get_tag(
      noti,
      tag,
    );

/// @brief Gets the text from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks Do not free @a text. It will be freed when notification_free() is called.
/// Parameter noti The notification handle
/// Parameter type The notification text type
/// Output parameter text The notification text
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// char *text = NULL;
///
/// noti_err = notification_get_text(noti, NOTIFICATION_TEXT_TYPE_TITLE, &text);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_text(
  notification_h noti,
  int type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> text,
) =>
    tizenNotification.notification_get_text(
      noti,
      type,
      text,
    );

/// @brief Gets a timestamp.
/// @details If ret_time is @c 0, time information is not set before.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter ret_time The return time value
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Notification handle should be created by notification_create().
/// @see notification_create()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// time_t ret_time;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_get_time(noti, &ret_time);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_time(
  notification_h noti,
  ffi.Pointer<time_t> ret_time,
) =>
    tizenNotification.notification_get_time(
      noti,
      ret_time,
    );

/// @brief Gets the timestamp from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter type The notification text type
/// Parameter time The pointer of time stamp
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Notification handle should be created by notification_create().
///
/// Module getter: `tizenNotification`.
int notification_get_time_from_text(
  notification_h noti,
  int type,
  ffi.Pointer<time_t> time,
) =>
    tizenNotification.notification_get_time_from_text(
      noti,
      type,
      time,
    );

/// @brief Gets the type of a notification.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Output parameter type The notification type
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// notification_type_e type;
///
/// noti_err = notification_get_type(noti, &type);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_type(
  notification_h noti,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenNotification.notification_get_type(
      noti,
      type,
    );

/// @brief Gets the vibrate type from the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @remarks Do not free @a path. It will be freed when notification_free() is called.
/// Parameter noti The notification handle
/// Output parameter type The notification sound type
/// Output parameter path The user vibration file path
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err;
/// notification_vibration_type_e type;
/// char *path;
///
/// noti_err = notification_get_vibration(noti, &type, &path);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_get_vibration(
  notification_h noti,
  ffi.Pointer<ffi.Int32> type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenNotification.notification_get_vibration(
      noti,
      type,
      path,
    );

/// @brief Loads a notification from the notification's database with the tag.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// The returned value should be released using notification_free().
/// Parameter tag Tag for loading notification handle
/// @return Notification handle(#notification_h) on success,
/// NULL on failure
/// @exception #NOTIFICATION_ERROR_NONE Success
/// @exception #NOTIFICATION_ERROR_PERMISSION_DENIED The Permission denied
/// @exception #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @exception #NOTIFICATION_ERROR_OUT_OF_MEMORY Out of memory
/// @see #notification_type_e
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
///
/// noti = notification_load_by_tag(tag);
/// if (noti == NULL)
/// return;
///
/// // Do something
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
notification_h notification_load_by_tag(
  ffi.Pointer<ffi.Char> tag,
) =>
    tizenNotification.notification_load_by_tag(
      tag,
    );

/// @brief Posts a notification.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter noti Notification handle
/// @return #NOTIFICATION_ERROR_NONE if success,
/// other value if failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_PERMISSION_DENIED The Permission denied
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Notification handle should be created by notification_create().
/// @post notification_free().
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_post(noti);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_post(
  notification_h noti,
) =>
    tizenNotification.notification_post(
      noti,
    );

/// @brief Removes a button on the notification.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter noti Notification handle
/// Parameter button_index Button index
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// char *pkgname = NULL;
///
/// // Do something
///
/// noti_err = notification_remove_button(noti, NOTIFICATION_BUTTON_1);
///
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_remove_button(
  notification_h noti,
  int button_index,
) =>
    tizenNotification.notification_remove_button(
      noti,
      button_index,
    );

/// @brief Saves a notification template to the notification database.
/// @details An application can save the created notification as a template for later reuse.
/// If the template has the same name as a saved one, the saved template will be overwritten.
/// A saved template can be loaded only by the application which saved it.
/// All templates are removed when the application package is uninstalled.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// @remarks The number of templates is limited to 10.
/// When you try to add more than 10 templates, #NOTIFICATION_ERROR_MAX_EXCEEDED will be returned.
/// Parameter noti Notification handle
/// Parameter template_name Template name
/// @return #NOTIFICATION_ERROR_NONE On success, other value on failure
/// @retval #NOTIFICATION_ERROR_PERMISSION_DENIED The Permission denied
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTIFICATION_ERROR_IO_ERROR I/O error
/// @retval #NOTIFICATION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #NOTIFICATION_ERROR_MAX_EXCEEDED Max notification count exceeded
/// @see #notification_h
/// @see notification_create_from_template()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// notification_h noti = NULL;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// // add the content you want to use for the template.
///
/// noti_err = notification_save_as_template(noti, "CALL_ACCEPT");
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_free(noti);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_save_as_template(
  notification_h noti,
  ffi.Pointer<ffi.Char> template_name,
) =>
    tizenNotification.notification_save_as_template(
      noti,
      template_name,
    );

/// @brief Sets the 'auto remove' option of the active notification.
/// @details The 'auto remove' option lets the active notification be removed several seconds after it shows. Default value is true.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks When 'auto_remove' is set as false, the active notification will not be removed
/// as long as the user removes the active notification or the app which posted the active notification removes the active notification.
/// Parameter noti Notification handle
/// Parameter auto_remove Auto remove option
/// @return #NOTIFICATION_ERROR_NONE On success,
/// other value if failure
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #notification_h
/// @see #notification_get_auto_remove
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// // Do something
///
/// noti_err = notification_set_auto_remove(noti, false);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_auto_remove(
  notification_h noti,
  bool auto_remove,
) =>
    tizenNotification.notification_set_auto_remove(
      noti,
      auto_remove,
    );

/// @brief Sets applications to display the notification.
/// @details All display application is enabled(#NOTIFICATION_DISPLAY_APP_ALL) if you do not call this function.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter applist The with | operation
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// bundle *b = NULL;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_display_applist(noti, NOTIFICATION_DISPLAY_APP_NOTIFICATION_TRAY |
/// NOTIFICATION_DISPLAY_APP_TICKER | NOTIFICATION_DISPLAY_APP_INDICATOR);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_display_applist(
  notification_h noti,
  int applist,
) =>
    tizenNotification.notification_set_display_applist(
      noti,
      applist,
    );

/// @brief Sets the handler for a specific event.
/// @details When some event occurs on notification, application launched by app_control_send_launch_request with app_control handle. \n
/// Setting event handler of a button means that the notification will show the button.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege http://tizen.org/privilege/appmanager.launch
/// @remarks Since 4.0, %http://tizen.org/privilege/appmanager.launch privilege is additionally required.
/// Parameter noti The notification handle
/// Parameter event_type Event type
/// Parameter event_handler App control handle
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #notification_event_type_e
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// app_control_h app_control = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// // Do something
///
/// app_control_create(&app_control);
/// app_control_set_app_id(app_control, "org.tizen.app");
///
/// // Do something
///
/// noti_err = notification_set_event_handler(noti, NOTIFICATION_EVENT_TYPE_CLICK_ON_BUTTON_1, app_control);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// app_control_destroy(app_control);
/// notification_free(noti);
/// return;
/// }
///
/// app_control_destroy(app_control);
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_event_handler(
  notification_h noti,
  int event_type,
  app_control_h event_handler,
) =>
    tizenNotification.notification_set_event_handler(
      noti,
      event_type,
      event_handler,
    );

/// @brief Sets the image height for the extended notification.
/// @details The image is shown under the notification's text. The application can set the image height.
/// The image is modified to fit into the height set by this function.
/// The image can be scaled down and/or cropped.
/// If @a height is 0, the default value is used. The default height depends on the screen size.
/// @since_tizen 4.0
/// Parameter noti   The notification handle
/// Parameter height The image height
/// @return #NOTIFICATION_ERROR_NONE On success,
/// otherwise a negative error value
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see notification_get_extension_image_size()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_text(noti,
/// NOTIFICATION_TEXT_TYPE_CONTENT_EXTENSION,
/// "message",
/// NULL,
/// NOTIFICATION_VARIABLE_TYPE_NONE);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_image(noti,
/// NOTIFICATION_IMAGE_TYPE_EXTENSION,
/// image_path);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_layout(noti, NOTIFICATION_LY_EXTENSION);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_extension_image_size(noti, 20);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// // Do something
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_extension_image_size(
  notification_h noti,
  int height,
) =>
    tizenNotification.notification_set_extension_image_size(
      noti,
      height,
    );

/// @brief Sets an absolute path for an image file to display on the notification view.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter type The notification image type
/// Parameter image_path The image file full path
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Notification handle should be created by notification_create().
/// @see #notification_image_type_e
/// @see notification_create()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_image(noti, NOTIFICATION_IMAGE_TYPE_ICON, APP_IMAGE_FULL_PATH);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_image(
  notification_h noti,
  int type,
  ffi.Pointer<ffi.Char> image_path,
) =>
    tizenNotification.notification_set_image(
      noti,
      type,
      image_path,
    );

/// @brief Sets the launch option for a notification.
/// @details When notification data selected in display application, application launched by app_control_send_launch_request with app_control handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @privlevel public
/// @privilege http://tizen.org/privilege/appmanager.launch
/// @remarks Since 4.0, %http://tizen.org/privilege/appmanager.launch privilege is additionally required.
/// Parameter noti The notification handle
/// Parameter type Launching option type
/// Parameter option App Control handler
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// app_control_h app_control = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// // Do something
///
/// app_control_create(&app_control);
/// app_control_set_app_id(app_control, "org.tizen.app");
///
/// // Do something
///
/// noti_err = notification_set_launch_option(noti, NOTIFICATION_LAUNCH_OPTION_APP_CONTROL, (void *)app_control);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// app_control_destroy(app_control);
/// notification_free(noti);
/// return;
/// }
///
/// app_control_destroy(app_control);
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_launch_option(
  notification_h noti,
  int type,
  ffi.Pointer<ffi.Void> option,
) =>
    tizenNotification.notification_set_launch_option(
      noti,
      type,
      option,
    );

/// @brief Sets the layout of the notification view.
/// @details Caller can set displaying layout of notification.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter layout The type of layout
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @see #notification_ly_type_e
///
/// Module getter: `tizenNotification`.
int notification_set_layout(
  notification_h noti,
  int layout,
) =>
    tizenNotification.notification_set_layout(
      noti,
      layout,
    );

/// @brief Sets the LED displaying option.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter operation The LED notification operation
/// Parameter led_argb The notification LED color
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_set_led(noti, NOTIFICATION_LED_OP_ON, NULL);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_led(
  notification_h noti,
  int operation,
  int led_argb,
) =>
    tizenNotification.notification_set_led(
      noti,
      operation,
      led_argb,
    );

/// @brief Sets the time period of flashing the LED.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter on_ms The time for turning on the LED
/// Parameter off_ms The time for turning off the LED
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_set_led_time_period(noti, 100, 100);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_led_time_period(
  notification_h noti,
  int on_ms,
  int off_ms,
) =>
    tizenNotification.notification_set_led_time_period(
      noti,
      on_ms,
      off_ms,
    );

/// @brief Sets the initial progress for the ongoing type.
/// @details After the notification_post() call, the progress is not updated.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter percentage The progress percentage
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_progress(noti, 0.0);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_progress(
  notification_h noti,
  double percentage,
) =>
    tizenNotification.notification_set_progress(
      noti,
      percentage,
    );

/// @brief Sets the property of the notification.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter flags The property with | operation
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// bundle *b = NULL;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_property(noti, NOTIFICATION_PROP_DISPLAY_ONLY_SIMMODE | NOTIFICATION_PROP_DISABLE_APP_LAUNCH);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_property(
  notification_h noti,
  int flags,
) =>
    tizenNotification.notification_set_property(
      noti,
      flags,
    );

/// @brief Sets the initial size for the ongoing type.
/// @details After notification_post() call, the size is not updated.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter size The double type size
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_size(noti, 0.0);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_size(
  notification_h noti,
  double size,
) =>
    tizenNotification.notification_set_size(
      noti,
      size,
    );

/// @brief Sets the sound type for the notification.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter type The notification sound type
/// Parameter path The user sound file path
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_set_sound(noti, NOTIFICATION_SOUND_TYPE_DEFAULT, NULL);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_sound(
  notification_h noti,
  int type,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenNotification.notification_set_sound(
      noti,
      type,
      path,
    );

/// @brief Sets the tag of the notification handle.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti Notification handle
/// Parameter tag Tag for loading notification handle
/// @return #NOTIFICATION_ERROR_NONE on success,
/// other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @see notification_get_tag()
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// // Do something
///
/// noti_err = notification_set_tag(noti, tag);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_tag(
  notification_h noti,
  ffi.Pointer<ffi.Char> tag,
) =>
    tizenNotification.notification_set_tag(
      noti,
      tag,
    );

/// @brief Sets the text to display on the notification view.
/// @details Sets title, content string. If the text is formatted data (only %d, %f, %s are supported), type - value pair should be set.
/// If %d, the type #NOTIFICATION_VARIABLE_TYPE_INT and the value is an integer.
/// If %f, the type #NOTIFICATION_VARIABLE_TYPE_DOUBLE and the value is a double.
/// If %s, the type #NOTIFICATION_VARIABLE_TYPE_STRING and the value is a string.
/// If the type is #NOTIFICATION_VARIABLE_TYPE_COUNT, notification count is displaying with text.
/// If the value is #NOTIFICATION_COUNT_POS_LEFT, count is displayed at the left of the text.
/// If the value is #NOTIFICATION_COUNT_POS_IN, count is displayed in the text when text has %d format.
/// If the value is #NOTIFICATION_COUNT_POS_RIGHT, count is displayed at the right of the text.
/// Variable parameters should be terminated #NOTIFICATION_VARIABLE_TYPE_NONE.
///
/// Note that You can display the translated contents according to the language of the system.
/// The application must supply a String KEY as the fourth argument to support localization.
/// If the language on the system changes, the contents of the notification are also translated.
///
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter type The notification text type
/// Parameter text The basic text
/// Parameter key The text key for localization
/// Parameter args_type The variable parameter that type - value pair
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre notification handle should be created by notification_create().
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_text(noti, NOTIFICATION_TEXT_TYPE_TITLE,
/// "I'm Title", "IDS_APP_BODY_IM_TITLE", NOTIFICATION_VARIABLE_TYPE_NONE);
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_text(
  notification_h noti,
  int type,
  ffi.Pointer<ffi.Char> text,
  ffi.Pointer<ffi.Char> key,
  int args_type,
) =>
    tizenNotification.notification_set_text(
      noti,
      type,
      text,
      key,
      args_type,
    );

/// @brief Sets a text input box to reply directly on the notification.
/// @details When you add a text input to the active notification, the notification UI will show a text input with a button.
/// So, the user can enter any text and press the button to confirm the text as a input.
/// You can edit some UI component that is related to the text input.
/// First, you can add placeholder text to guide the user using notification_set_text() with #NOTIFICATION_TEXT_TYPE_TEXT_INPUT_PLACEHOLDER type.
/// You also can edit button for the text input.
/// For setting just a text to the button, you can set the text using notification_set_text() with #NOTIFICATION_TEXT_TYPE_TEXT_INPUT_BUTTON type.
/// If you want to show image button, you can set an image for the button using notification_set_image() with #NOTIFICATION_IMAGE_TYPE_TEXT_INPUT_BUTTON type.
///
/// Note that you should set an app_control for handling the event for user input using notification_set_event_handler().
/// #NOTIFICATION_EVENT_TYPE_CLICK_ON_TEXT_INPUT_BUTTON is the event type for the text input.
/// You can get the text the user enters in the app_control handle that is passed as a result of the event.
/// The app_control will contain #APP_CONTROL_DATA_TEXT key, so you can get the text using app_control_get_extra_data() using APP_CONTROL_DATA_TEXT key.
/// The value will contain the text user enters.
///
/// Note that you are able to make the switching button to the text input box.
/// You have to set the app_control which you will set in a text input box to the switching button.
/// Refer to the second sample code.
/// @since_tizen 3.0
/// Parameter noti Notification handle
/// Parameter text_input_max_length The maximum value which can be inputted
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE         Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// notification_h noti = NULL;
/// app_control = NULL;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_text_input(noti, 160);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_text(noti,
/// NOTIFICATION_TEXT_TYPE_TEXT_INPUT_PLACEHOLDER,
/// "Text message",
/// NULL,
/// NOTIFICATION_VARIABLE_TYPE_NONE);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_text(noti,
/// NOTIFICATION_TEXT_TYPE_TEXT_INPUT_BUTTON,
/// "SEND",
/// NULL,
/// NOTIFICATION_VARIABLE_TYPE_NONE);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_display_applist(noti,
/// NOTIFICATION_DISPLAY_APP_NOTIFICATION_TRAY | NOTIFICATION_DISPLAY_APP_ACTIVE);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// // Do something
///
/// noti_err = app_control_create(&app_control);
/// if (noti_err != APP_CONTROL_ERROR_NONE)
/// return;
///
/// noti_err = app_control_set_app_id(app_control, appid);
/// if (noti_err != APP_CONTROL_ERROR_NONE)
/// return;
///
/// noti_err = app_control_set_operation(app_control, APP_CONTROL_OPERATION_DEFAULT);
/// if (noti_err != APP_CONTROL_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_event_handler(noti,
/// NOTIFICATION_EVENT_TYPE_CLICK_ON_TEXT_INPUT_BUTTON,
/// app_control);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = app_control_destroy(app_control);
/// if (noti_err != APP_CONTROL_ERROR_NONE)
/// return;
///
/// noti_err  = notification_post(noti);
/// if(noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
///
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
/// notification_h noti = NULL;
/// app_control = NULL;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL) {
/// return;
/// }
///
/// noti_err = notification_set_text_input(noti, 160);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_text(noti,
/// NOTIFICATION_TEXT_TYPE_TEXT_INPUT_PLACEHOLDER,
/// "Text message",
/// NULL,
/// NOTIFICATION_VARIABLE_TYPE_NONE);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_text(noti,
/// NOTIFICATION_TEXT_TYPE_TEXT_INPUT_BUTTON,
/// "SEND",
/// NULL,
/// NOTIFICATION_VARIABLE_TYPE_NONE);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_add_button(notification, NOTIFICATION_BUTTON_1);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_text(notification,
/// NOTIFICATION_TEXT_TYPE_BUTTON_1,
/// "reply",
/// NULL,
/// NOTIFICATION_VARIABLE_TYPE_NONE);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_display_applist(noti,
/// NOTIFICATION_DISPLAY_APP_NOTIFICATION_TRAY | NOTIFICATION_DISPLAY_APP_ACTIVE);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// // Do something
///
/// noti_err = app_control_create(&app_control);
/// if (noti_err != APP_CONTROL_ERROR_NONE)
/// return;
///
/// noti_err = app_control_set_app_id(app_control, appid);
/// if (noti_err != APP_CONTROL_ERROR_NONE)
/// return;
///
/// noti_err = app_control_set_operation(app_control, APP_CONTROL_OPERATION_DEFAULT);
/// if (noti_err != APP_CONTROL_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_event_handler(notification,
/// NOTIFICATION_EVENT_TYPE_CLICK_ON_BUTTON_1,
/// app_control);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = notification_set_event_handler(noti,
/// NOTIFICATION_EVENT_TYPE_CLICK_ON_TEXT_INPUT_BUTTON,
/// app_control);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// noti_err = app_control_destroy(app_control);
/// if (noti_err != APP_CONTROL_ERROR_NONE)
/// return;
///
/// noti_err  = notification_post(noti);
/// if(noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_text_input(
  notification_h noti,
  int text_input_max_length,
) =>
    tizenNotification.notification_set_text_input(
      noti,
      text_input_max_length,
    );

/// @brief Sets a timestamp.
/// @details If input_time is @c 0, time information is taken from the current time.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter input_time The input time. If you want the time stamp to not be shown, set this as #NOTIFICATION_DO_NOT_SHOW_TIME_STAMP
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Notification handle should be created by notification_create().
/// @see notification_create()
/// @see #NOTIFICATION_DO_NOT_SHOW_TIME_STAMP
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti = notification_create(NOTIFICATION_TYPE_NOTI);
/// if (noti == NULL)
/// return;
///
/// noti_err = notification_set_time(noti, time(NULL));
/// if (noti_err != NOTIFICATION_ERROR_NONE) {
/// notification_free(noti);
/// return;
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_time(
  notification_h noti,
  int input_time,
) =>
    tizenNotification.notification_set_time(
      noti,
      input_time,
    );

/// @brief Sets the timestamp to display on the notification view.
/// @details The timestamp will be converted to a formatted string and it will be displayed on the set text area.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter type The notification text type
/// Parameter time The timestamp
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Notification handle should be created by notification_create().
///
/// Module getter: `tizenNotification`.
int notification_set_time_to_text(
  notification_h noti,
  int type,
  int time,
) =>
    tizenNotification.notification_set_time_to_text(
      noti,
      type,
      time,
    );

/// @brief Sets the vibration type for the notification.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter noti The notification handle
/// Parameter type The notification vibration type
/// Parameter path The user vibration file path
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// notification_h noti = NULL;
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_set_vibration(noti, NOTIFICATION_VIBRATION_TYPE_DEFAULT, NULL);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
///
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_set_vibration(
  notification_h noti,
  int type,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenNotification.notification_set_vibration(
      noti,
      type,
      path,
    );

/// @brief Shows a toast popup window with given message.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// Parameter message The messages to be posted
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTIFICATION_ERROR_FROM_DBUS Error from DBus
/// @see #notification_error_e
///
/// Module getter: `tizenNotification`.
int notification_status_message_post(
  ffi.Pointer<ffi.Char> message,
) =>
    tizenNotification.notification_status_message_post(
      message,
    );

/// @brief Updates notification data.
/// @details The updated notification will appear in the notification area.
/// @since_tizen @if WEARABLE 2.3.1 @elseif MOBILE 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter noti The notification handle that is created by notification_create()
/// @return #NOTIFICATION_ERROR_NONE on success,
/// otherwise any other value on failure
/// @retval #NOTIFICATION_ERROR_NONE Success
/// @retval #NOTIFICATION_ERROR_PERMISSION_DENIED The Permission denied
/// @retval #NOTIFICATION_ERROR_INVALID_PARAMETER Invalid input value
/// @retval #NOTIFICATION_ERROR_NOT_EXIST_ID Priv ID does not exist
/// @par Sample code:
/// @code
/// #include <notification.h>
///
/// {
/// int noti_err = NOTIFICATION_ERROR_NONE;
///
/// noti_err = notification_update(NULL);
/// if (noti_err != NOTIFICATION_ERROR_NONE)
/// return;
/// }
/// @endcode
///
/// Module getter: `tizenNotification`.
int notification_update(
  notification_h noti,
) =>
    tizenNotification.notification_update(
      noti,
    );

