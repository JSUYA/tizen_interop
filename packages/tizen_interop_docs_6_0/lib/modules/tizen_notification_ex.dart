// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenNotificationEx`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libnotification-ex.so.1`.
///
/// Application Framework / Notification EX.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_notification_ex;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates the notification_ex action handle with app control handle.
/// @details The notification_ex can define the action with #noti_ex_action_h.
/// If it is necessary to use app control handle for an action,
/// the app control handle must be set in notification_ex action handle.
/// @a extra can be used to pass user defined data
/// and the extra data can be obtained from an action handle using #noti_ex_action_get_extra().
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_action_destroy().
/// @a app_control must be released after noti_ex_action_app_control_create() function is called.
/// Output parameter handle The notification_ex action handle
/// Parameter app_control The app control handle
/// Parameter extra The extra data
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_action_h
/// @see noti_ex_action_destroy()
/// @see noti_ex_action_get_extra()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// app_control_h app_control = NULL;
/// noti_ex_action_h appcontrol_action = NULL;
///
/// app_control_create(&app_control);
/// app_control_set_app_id(app_control, "temp_appid");
///
/// ret = noti_ex_action_app_control_create(&appcontrol_action, app_control, NULL);
///
/// app_control_destroy(app_control);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_app_control_create(
  ffi.Pointer<noti_ex_action_h> handle,
  app_control_h app_control,
  ffi.Pointer<ffi.Char> extra,
) =>
    tizenNotificationEx.noti_ex_action_app_control_create(
      handle,
      app_control,
      extra,
    );

/// @brief Gets the app control handle from notification_ex action.
/// @since_tizen 5.5
/// @remarks The @a app_control should be released using app_control_destroy().
/// Parameter handle The notification_ex action handle
/// Output parameter app_control The app control handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_action_h
/// @see noti_ex_action_app_control_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// app_control_h app_control = NULL;
///
/// ret = noti_ex_action_app_control_get(appcontrol_action, &app_control);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_app_control_get(
  noti_ex_action_h handle,
  ffi.Pointer<app_control_h> app_control,
) =>
    tizenNotificationEx.noti_ex_action_app_control_get(
      handle,
      app_control,
    );

/// @brief Sets the app control handle for notification_ex action.
/// @since_tizen 5.5
/// Parameter handle The notification_ex action handle
/// Parameter app_control The app control handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_action_h
/// @see noti_ex_action_app_control_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// app_control_h app_control = NULL;
///
/// app_control_create(&app_control);
/// app_control_set_app_id(app_control, "new_appid");
///
/// ret = noti_ex_action_app_control_set(appcontrol_action, app_control);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_app_control_set(
  noti_ex_action_h handle,
  app_control_h app_control,
) =>
    tizenNotificationEx.noti_ex_action_app_control_set(
      handle,
      app_control,
    );

/// @brief Releases the notification_ex action handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex action handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_action_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_action_destroy(action);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_destroy(
  noti_ex_action_h handle,
) =>
    tizenNotificationEx.noti_ex_action_destroy(
      handle,
    );

/// @brief Executes the action for a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex action handle
/// Parameter item The notification_ex item handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_action_h
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h button_item = NULL;
/// noti_ex_action_h action = NULL;
///
/// ret = noti_ex_action_visibility_create(&action, NULL);
/// ret = noti_ex_item_button_create(&button_item, "button_id", "button_title");
/// ret = noti_ex_item_set_action(button_item, action);
///
/// ret = noti_ex_action_execute(action, button_item);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_execute(
  noti_ex_action_h handle,
  noti_ex_item_h item,
) =>
    tizenNotificationEx.noti_ex_action_execute(
      handle,
      item,
    );

/// @brief Gets the extra data for an action.
/// @since_tizen 5.5
/// @remarks @a extra must be released using free().
/// Parameter handle The notification_ex action handle
/// Output parameter extra The extra data
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_action_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *extra = NULL;
///
/// ret = noti_ex_action_get_extra(action, &extra);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_get_extra(
  noti_ex_action_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> extra,
) =>
    tizenNotificationEx.noti_ex_action_get_extra(
      handle,
      extra,
    );

/// @brief Gets the type of an action.
/// @details The action type is equal to one of the values of #noti_ex_action_type_e
/// @since_tizen 5.5
/// Parameter handle The notification_ex action handle
/// Output parameter type The type of action \n
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_action_h
/// @see #noti_ex_action_type_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int type = NOTI_EX_ACTION_TYPE_NULL;
///
/// ret = noti_ex_action_get_type(action, &type);
///
/// if (type == NOTI_EX_ACTION_TYPE_VISIBILITY) {
/// // Do something
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_get_type(
  noti_ex_action_h handle,
  ffi.Pointer<ffi.Int> type,
) =>
    tizenNotificationEx.noti_ex_action_get_type(
      handle,
      type,
    );

/// @brief Gets the local state of an action.
/// @since_tizen 5.5
/// Parameter handle The notification_ex action handle
/// Output parameter local The local state of action
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_action_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// bool local;
///
/// ret = noti_ex_action_is_local(action, &local);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_is_local(
  noti_ex_action_h handle,
  ffi.Pointer<ffi.Bool> local,
) =>
    tizenNotificationEx.noti_ex_action_is_local(
      handle,
      local,
    );

/// @brief Creates the notification_ex action handle to control visibility.
/// @details The notification_ex can define the action with #noti_ex_action_h.
/// If it is necessary to control visibility of the notification_ex item,
/// the notification_ex action handle has to be created as a visibility action.
/// @a extra can be used to pass user defined data
/// and the extra data can be obtained from an action handle using #noti_ex_action_get_extra().
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_action_destroy().
/// Output parameter handle The notification_ex action handle
/// Parameter extra The extra data
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_action_h
/// @see noti_ex_action_destroy()
/// @see noti_ex_action_get_extra()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_action_h visibility_action = NULL;
///
/// ret = noti_ex_action_visibility_create(&visibility_action, NULL);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_visibility_create(
  ffi.Pointer<noti_ex_action_h> handle,
  ffi.Pointer<ffi.Char> extra,
) =>
    tizenNotificationEx.noti_ex_action_visibility_create(
      handle,
      extra,
    );

/// @brief Sets the visibility state for notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex action handle
/// Parameter id The id of notification_ex item
/// Parameter visible The visibility state
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_action_h
/// @see noti_ex_action_visibility_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h button_item = NULL;
/// noti_ex_action_h action = NULL;
///
/// ret = noti_ex_item_button_create(&button_item, "button_id1", "button_title");
///
/// ret = noti_ex_action_visibility_create(&action, NULL);
/// ret = noti_ex_action_visibility_set(action, "button_id1", true);
/// ret = noti_ex_action_visibility_set(action, "button_id2", false);
///
/// ret = noti_ex_item_set_action(button_item, action);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_action_visibility_set(
  noti_ex_action_h handle,
  ffi.Pointer<ffi.Char> id,
  bool visible,
) =>
    tizenNotificationEx.noti_ex_action_visibility_set(
      handle,
      id,
      visible,
    );

/// @brief Creates the notification_ex color handle.
/// @details Color information can be defined as a notification_ex color handle
/// with alpha, red, green, blue value.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_color_destroy().
/// Output parameter handle The notification_ex color handle
/// Parameter a The alpha value
/// Parameter r The red value
/// Parameter g The green value
/// Parameter b The blue value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_color_h
/// @see noti_ex_color_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_color_h color = NULL;
///
/// ret = noti_ex_color_create(&color, 0, 0, 0, 0);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_color_create(
  ffi.Pointer<noti_ex_color_h> handle,
  int a,
  int r,
  int g,
  int b,
) =>
    tizenNotificationEx.noti_ex_color_create(
      handle,
      a,
      r,
      g,
      b,
    );

/// @brief Releases a notification_ex color handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex color handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_color_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_color_destroy(color);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_color_destroy(
  noti_ex_color_h handle,
) =>
    tizenNotificationEx.noti_ex_color_destroy(
      handle,
    );

/// @brief Gets the alpha value of a color.
/// @since_tizen 5.5
/// Parameter handle The notification_ex color handle
/// Output parameter val The alpha value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_color_h
/// @see noti_ex_color_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// unsigned char alpha;
///
/// ret = noti_ex_color_get_alpha(color, &alpha);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_color_get_alpha(
  noti_ex_color_h handle,
  ffi.Pointer<ffi.UnsignedChar> val,
) =>
    tizenNotificationEx.noti_ex_color_get_alpha(
      handle,
      val,
    );

/// @brief Gets the blue value of a color.
/// @since_tizen 5.5
/// Parameter handle The notification_ex color handle
/// Output parameter val The blue value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_color_h
/// @see noti_ex_color_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// unsigned char blue;
///
/// ret = noti_ex_color_get_blue(color, &blue);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_color_get_blue(
  noti_ex_color_h handle,
  ffi.Pointer<ffi.UnsignedChar> val,
) =>
    tizenNotificationEx.noti_ex_color_get_blue(
      handle,
      val,
    );

/// @brief Gets the green value of a color.
/// @since_tizen 5.5
/// Parameter handle The notification_ex color handle
/// Output parameter val The green value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_color_h
/// @see noti_ex_color_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// unsigned char green;
///
/// ret = noti_ex_color_get_green(color, &green);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_color_get_green(
  noti_ex_color_h handle,
  ffi.Pointer<ffi.UnsignedChar> val,
) =>
    tizenNotificationEx.noti_ex_color_get_green(
      handle,
      val,
    );

/// @brief Gets the red value of a color.
/// @since_tizen 5.5
/// Parameter handle The notification_ex color handle
/// Output parameter val The red value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_color_h
/// @see noti_ex_color_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// unsigned char red;
///
/// ret = noti_ex_color_get_red(color, &red);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_color_get_red(
  noti_ex_color_h handle,
  ffi.Pointer<ffi.UnsignedChar> val,
) =>
    tizenNotificationEx.noti_ex_color_get_red(
      handle,
      val,
    );

/// @brief Clones the notification event info handle.
/// @details The event for notification item is defined as
/// notification event info handle.
/// @since_tizen 5.5
/// @remarks @a cloned_handle must be released using noti_ex_event_info_destroy().
/// Parameter handle The notification event info handle to be cloned
/// Output parameter cloned_handle The notification event info handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_event_info_h
/// @see noti_ex_event_info_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_update_cb(noti_ex_manager_h handle,
/// noti_ex_event_info_h info, noti_ex_item_h updated_item, void *user_data) {
///
/// int ret;
/// noti_ex_event_info_h cloned = NULL;
///
/// ret = noti_ex_event_info_clone(info, &cloned);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_event_info_clone(
  noti_ex_event_info_h handle,
  ffi.Pointer<noti_ex_event_info_h> cloned_handle,
) =>
    tizenNotificationEx.noti_ex_event_info_clone(
      handle,
      cloned_handle,
    );

/// @brief Releases the notification event info handle.
/// @since_tizen 5.5
/// Parameter handle The notification event info handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_event_info_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_update_cb(noti_ex_manager_h handle,
/// noti_ex_event_info_h info, noti_ex_item_h updated_item, void *user_data) {
///
/// int ret;
/// noti_ex_event_info_h cloned = NULL;
///
/// ret = noti_ex_event_info_clone(info, &cloned);
/// ret = noti_ex_event_info_destroy(cloned);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_event_info_destroy(
  noti_ex_event_info_h handle,
) =>
    tizenNotificationEx.noti_ex_event_info_destroy(
      handle,
    );

/// @brief Gets the channel of an event.
/// @since_tizen 5.5
/// @remarks @a channel must be released using free().
/// Parameter handle The notification event info handle
/// Output parameter channel The channel of event
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_event_info_h
/// @see noti_ex_event_info_clone()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *channel = NULL;
///
/// ret = noti_ex_event_info_get_channel(event_handle, &channel);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_event_info_get_channel(
  noti_ex_event_info_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> channel,
) =>
    tizenNotificationEx.noti_ex_event_info_get_channel(
      handle,
      channel,
    );

/// @brief Gets the type of an event.
/// @since_tizen 5.5
/// Parameter handle The notification event info handle
/// Output parameter event_type The type of event
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_event_info_h
/// @see noti_ex_event_info_clone()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_event_info_type_e type;
///
/// ret = noti_ex_event_info_get_event_type(event_handle, &type);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_event_info_get_event_type(
  noti_ex_event_info_h handle,
  ffi.Pointer<ffi.Int32> event_type,
) =>
    tizenNotificationEx.noti_ex_event_info_get_event_type(
      handle,
      event_type,
    );

/// @brief Gets the id of a notification_ex item.
/// @since_tizen 5.5
/// @remarks @a item_id must be released using free().
/// Parameter handle The notification event info handle
/// Output parameter item_id The id of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_event_info_h
/// @see noti_ex_event_info_clone()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *item_id = NULL;
///
/// ret = noti_ex_event_info_get_item_id(event_handle, &item_id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_event_info_get_item_id(
  noti_ex_event_info_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> item_id,
) =>
    tizenNotificationEx.noti_ex_event_info_get_item_id(
      handle,
      item_id,
    );

/// @brief Gets the app id of event owner.
/// @since_tizen 5.5
/// @remarks @a owner must be released using free().
/// Parameter handle The notification event info handle
/// Output parameter owner The app id of event owner
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_event_info_h
/// @see noti_ex_event_info_clone()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *owner = NULL;
///
/// ret = noti_ex_event_info_get_owner(event_handle, &owner);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_event_info_get_owner(
  noti_ex_event_info_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> owner,
) =>
    tizenNotificationEx.noti_ex_event_info_get_owner(
      handle,
      owner,
    );

/// @brief Gets the id of request for an event.
/// @since_tizen 5.5
/// Parameter handle The notification event info handle
/// Output parameter req_id The id of request for event
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_event_info_h
/// @see noti_ex_event_info_clone()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int request_id;
///
/// ret = noti_ex_event_info_get_request_id(event_handle, &request_id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_event_info_get_request_id(
  noti_ex_event_info_h handle,
  ffi.Pointer<ffi.Int> req_id,
) =>
    tizenNotificationEx.noti_ex_event_info_get_request_id(
      handle,
      req_id,
    );

/// @brief Creates the notification_ex geometry handle.
/// @details Geometry information can be defined as a notification_ex geometry handle
/// with x, y, width and height value.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_geometry_destroy().
/// Output parameter handle The notification_ex geometry handle
/// Parameter x The x value
/// Parameter y The y value
/// Parameter w The width value
/// Parameter h The height value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_geometry_h
/// @see noti_ex_geometry_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_geometry_h geometry = NULL;
///
/// ret = noti_ex_geometry_create(&geometry, 0, 0, 0, 0);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_geometry_create(
  ffi.Pointer<noti_ex_geometry_h> handle,
  int x,
  int y,
  int w,
  int h,
) =>
    tizenNotificationEx.noti_ex_geometry_create(
      handle,
      x,
      y,
      w,
      h,
    );

/// @brief Releases the notification_ex geometry handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex geometry handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_geometry_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_geometry_destroy(geometry);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_geometry_destroy(
  noti_ex_geometry_h handle,
) =>
    tizenNotificationEx.noti_ex_geometry_destroy(
      handle,
    );

/// @brief Gets the height value.
/// @since_tizen 5.5
/// Parameter handle The notification_ex geometry handle
/// Output parameter val The height value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_geometry_h
/// @see noti_ex_geometry_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int height;
///
/// ret = noti_ex_geometry_get_height(geometry, &height);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_geometry_get_height(
  noti_ex_geometry_h handle,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenNotificationEx.noti_ex_geometry_get_height(
      handle,
      val,
    );

/// @brief Gets the width value.
/// @since_tizen 5.5
/// Parameter handle The notification_ex geometry handle
/// Output parameter val The width value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_geometry_h
/// @see noti_ex_geometry_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int width;
///
/// ret = noti_ex_geometry_get_width(geometry, &width);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_geometry_get_width(
  noti_ex_geometry_h handle,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenNotificationEx.noti_ex_geometry_get_width(
      handle,
      val,
    );

/// @brief Gets the x position value.
/// @since_tizen 5.5
/// Parameter handle The notification_ex geometry handle
/// Output parameter val The x value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_geometry_h
/// @see noti_ex_geometry_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int x;
///
/// ret = noti_ex_geometry_get_x(geometry, &x);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_geometry_get_x(
  noti_ex_geometry_h handle,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenNotificationEx.noti_ex_geometry_get_x(
      handle,
      val,
    );

/// @brief Gets the y position value.
/// @since_tizen 5.5
/// Parameter handle The notification_ex geometry handle
/// Output parameter val The y value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_geometry_h
/// @see noti_ex_geometry_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int y;
///
/// ret = noti_ex_geometry_get_y(geometry, &y);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_geometry_get_y(
  noti_ex_geometry_h handle,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenNotificationEx.noti_ex_geometry_get_y(
      handle,
      val,
    );

/// @brief Adds the receiver group of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter receiver_group The receiver group
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_add_receiver(item_handle, NOTI_EX_RECEIVER_GROUP_INDICATOR);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_add_receiver(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> receiver_group,
) =>
    tizenNotificationEx.noti_ex_item_add_receiver(
      handle,
      receiver_group,
    );

/// @brief Creates the notification_ex item handle with a button.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to display the notification with a button,
/// the notification_ex handle has to be created as a button item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// Parameter title The title of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h button_item = NULL;
///
/// ret = noti_ex_item_button_create(&button_item, "button_id", "button_title");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_button_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
  ffi.Pointer<ffi.Char> title,
) =>
    tizenNotificationEx.noti_ex_item_button_create(
      handle,
      id,
      title,
    );

/// @brief Gets the title of a button item.
/// @since_tizen 5.5
/// @remarks @a title must be released using free().
/// @remarks If the multi-language handle is set by noti_ex_item_button_set_multi_language_title(), \n
/// it will return a multi-language title.
/// Parameter handle The notification_ex item handle
/// Output parameter title The title of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_button_create()
/// @see noti_ex_item_button_set_multi_language_title()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *title = NULL;
///
/// ret = noti_ex_item_button_get_title(button_item, &title);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_button_get_title(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> title,
) =>
    tizenNotificationEx.noti_ex_item_button_get_title(
      handle,
      title,
    );

/// @brief Sets the multi-language handle.
/// @since_tizen 5.5
/// @remarks After the multi-language handle setted successfully, noti_ex_item_button_get_title() \n
/// will return the multi-language text.
/// @remarks The #noti_ex_item_h handle keeps its own copy of #noti_ex_multi_lang_h. \n
/// Therefore, you can destroy @a multi after it was set for @a handle.
/// @remarks You can pass NULL to @a multi, if you want to remove multi-language text.
/// Parameter handle The notification_ex button item handle
/// Parameter multi The multi-language handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_button_create()
/// @see noti_ex_multi_lang_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h button_item = NULL;
/// noti_ex_multi_lang_h multi;
///
/// ret = noti_ex_item_button_create(&button_item, "button_id", "button_title");
/// ret = noti_ex_multi_lang_create(&multi, "_IDS_NOTI_TEST_", "Hi %d I'm %s", 33, "test");
/// ret = noti_ex_item_button_set_multi_language_title(button_item, multi);
/// noti_ex_multi_lang_destroy(multi);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_button_set_multi_language_title(
  noti_ex_item_h handle,
  noti_ex_multi_lang_h multi,
) =>
    tizenNotificationEx.noti_ex_item_button_set_multi_language_title(
      handle,
      multi,
    );

/// @brief Creates the notification_ex item handle for the chat message.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to create a chat message notification,
/// notification_ex handle has to be created as a chat message item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// @a name, @a text, @a image and @a time must not be released if the function returns #NOTI_EX_ERROR_NONE.
/// @a name, @a text, @a image and @a time will be released when @a handle is released.
/// @a name and @a time are mandatory (cannot be null). Both @a text and @a image cannot be null.
/// Output parameter handle The noti ex item handle
/// Parameter id The id of notification_ex item
/// Parameter name The notification_ex item handle for name
/// Parameter text The notification_ex item handle for text
/// Parameter image The notification_ex item handle for image
/// Parameter time The notification_ex item handle for time
/// Parameter message_type The type of chat message
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see #noti_ex_item_chat_message_type_e
/// @see noti_ex_item_text_create()
/// @see noti_ex_item_image_create()
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h chatmessage_item = NULL;
/// noti_ex_item_h name_handle = NULL;
/// noti_ex_item_h text_handle = NULL;
/// noti_ex_item_h image_handle = NULL;
/// noti_ex_item_h time_handle = NULL;
/// time_t current_time;
///
/// noti_ex_item_text_create(&name_handle, "name_id", "name", NULL);
/// noti_ex_item_text_create(&text_handle, "text_id", "text", NULL);
/// noti_ex_item_image_create(&image_handle, "image_id", APP_IMAGE_FULL_PATH);
///
/// time(&current_time);
/// noti_ex_item_time_create(&time_handle, "time_id", current_time);
///
/// ret = noti_ex_item_chat_message_create(&chatmessage_item, "message_id", name_handle,
/// text_handle, image_handle, time_handle, NOTI_EX_ITEM_CHAT_MESSAGE_TYPE_USER);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_chat_message_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
  noti_ex_item_h name,
  noti_ex_item_h text,
  noti_ex_item_h image,
  noti_ex_item_h time,
  int message_type,
) =>
    tizenNotificationEx.noti_ex_item_chat_message_create(
      handle,
      id,
      name,
      text,
      image,
      time,
      message_type,
    );

/// @brief Gets the notification_ex item handle for the chat message image.
/// @details The image is a notification_ex item handle created with noti_ex_item_image_create().
/// @since_tizen 5.5
/// @remarks @a image should not be released.
/// @remarks The @a image is available until @a handle is released.
/// Parameter handle The notification_ex item handle
/// Output parameter image The notification_ex item handle with image
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_chat_message_create()
/// @see noti_ex_item_image_get_image_path()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h image_handle = NULL;
/// char *image_path = NULL;
///
/// ret = noti_ex_item_chat_message_get_image(chatmessage_item, &image_handle);
/// ret = noti_ex_item_image_get_image_path(image_handle, &image_path);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_chat_message_get_image(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_item_h> image,
) =>
    tizenNotificationEx.noti_ex_item_chat_message_get_image(
      handle,
      image,
    );

/// @brief Gets the type of chat message.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter message_type The type of chat message
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see #noti_ex_item_chat_message_type_e
/// @see noti_ex_item_chat_message_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_chat_message_type_e type;
///
/// ret = noti_ex_item_chat_message_get_message_type(chatmessage_item, &type);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_chat_message_get_message_type(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Int32> message_type,
) =>
    tizenNotificationEx.noti_ex_item_chat_message_get_message_type(
      handle,
      message_type,
    );

/// @brief Gets the notification_ex item handle for the chat message name.
/// @details The name is a notification_ex item handle created with noti_ex_item_text_create().
/// @since_tizen 5.5
/// @remarks @a name should not be released.
/// @remarks The @a name is available until @a handle is released.
/// Parameter handle The notification_ex item handle
/// Output parameter name The notification_ex item handle with name
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_chat_message_create()
/// @see noti_ex_item_text_get_contents()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h name_handle = NULL;
/// char *name = NULL;
///
/// ret = noti_ex_item_chat_message_get_name(chatmessage_item, &name_handle);
/// ret = noti_ex_item_text_get_contents(name_handle, &name);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_chat_message_get_name(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_item_h> name,
) =>
    tizenNotificationEx.noti_ex_item_chat_message_get_name(
      handle,
      name,
    );

/// @brief Gets the notification_ex item handle for the chat message text.
/// @details The text is a notification_ex item handle created with noti_ex_item_text_create().
/// @since_tizen 5.5
/// @remarks @a text should not be released.
/// @remarks The @a text is available until @a handle is released.
/// Parameter handle The notification_ex item handle
/// Output parameter text The notification_ex item handle with text
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_chat_message_create()
/// @see noti_ex_item_text_get_contents()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h text_handle = NULL;
/// char *text = NULL;
///
/// ret = noti_ex_item_chat_message_get_text(chatmessage_item, &text_handle);
/// ret = noti_ex_item_text_get_contents(text_handle, &text);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_chat_message_get_text(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_item_h> text,
) =>
    tizenNotificationEx.noti_ex_item_chat_message_get_text(
      handle,
      text,
    );

/// @brief Gets the notification_ex item handle for the chat message time.
/// @details The time is notification_ex item handle created with noti_ex_item_time_create().
/// @since_tizen 5.5
/// @remarks @a time should not be released.
/// @remarks The @a time is available until @a handle is released.
/// Parameter handle The notification_ex item handle
/// Output parameter time The notification_ex item handle with time
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_chat_message_create()
/// @see noti_ex_item_time_get_time()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h time_handle = NULL;
/// time_t time_info;
///
/// ret = noti_ex_item_chat_message_get_time(chatmessage_item, &time_handle);
/// ret = noti_ex_item_time_get_time(time_handle, &time_info);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_chat_message_get_time(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_item_h> time,
) =>
    tizenNotificationEx.noti_ex_item_chat_message_get_time(
      handle,
      time,
    );

/// @brief Creates the notification_ex item handle with checkbox.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to display the notification with a checkbox,
/// the notification_ex handle has to be created as a checkbox item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// Parameter title The title of notification_ex item
/// Parameter checked The check state of checkbox
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h checkbox_item = NULL;
///
/// ret = noti_ex_item_checkbox_create(&checkbox_item, "checkbox_id", "checkbox_title", false);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_checkbox_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
  ffi.Pointer<ffi.Char> title,
  bool checked,
) =>
    tizenNotificationEx.noti_ex_item_checkbox_create(
      handle,
      id,
      title,
      checked,
    );

/// @brief Gets the check state of a checkbox.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter checked The check state of a checkbox
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_checkbox_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// bool checked;
///
/// ret = noti_ex_item_checkbox_get_check_state(checkbox_item, &checked);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_checkbox_get_check_state(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Bool> checked,
) =>
    tizenNotificationEx.noti_ex_item_checkbox_get_check_state(
      handle,
      checked,
    );

/// @brief Gets the title of a checkbox.
/// @since_tizen 5.5
/// @remarks @a title must be released using free().
/// @remarks If the multi-language handle is set by noti_ex_item_checkbox_set_multi_language_title(), \n
/// it will return a multi-language title.
/// Parameter handle The notification_ex item handle
/// Output parameter title The title of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_checkbox_create()
/// @see noti_ex_item_checkbox_set_multi_language_title()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *title = NULL;
///
/// ret = noti_ex_item_checkbox_get_title(checkbox_item, &title);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_checkbox_get_title(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> title,
) =>
    tizenNotificationEx.noti_ex_item_checkbox_get_title(
      handle,
      title,
    );

/// @brief Sets the check state of a checkbox.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter checked The check state of a checkbox
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_checkbox_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_checkbox_set_check_state(checkbox_item, true);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_checkbox_set_check_state(
  noti_ex_item_h handle,
  bool checked,
) =>
    tizenNotificationEx.noti_ex_item_checkbox_set_check_state(
      handle,
      checked,
    );

/// @brief Sets the multi-language handle.
/// @since_tizen 5.5
/// @remarks After the multi-language handle setted successfully, \n
/// noti_ex_item_checkbox_get_title() will return the multi-language text.
/// @remarks The #noti_ex_item_h handle keeps its own copy of #noti_ex_multi_lang_h. \n
/// Therefore, you can destroy @a multi after it was set for @ handle.
/// @remarks You can pass NULL to @a multi, if you want to remove the multi-language text.
/// Parameter handle The notification_ex item handle
/// Parameter multi The multi-language handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_checkbox_create()
/// @see noti_ex_item_checkbox_get_title()
/// @see noti_ex_multi_lang_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h checkbox_item = NULL;
/// noti_ex_multi_lang_h multi;
///
/// ret = noti_ex_item_checkbox_create(&checkbox_item, "checkbox_id", "checkbox_title", false);
/// ret = noti_ex_multi_lang_create(&multi, "_IDS_NOTI_TEST_", "Hi %d I'm %s", 33, "test");
/// ret = noti_ex_item_checkbox_set_multi_language_title(checkbox_item, multi);
/// noti_ex_multi_lang_destroy(multi);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_checkbox_set_multi_language_title(
  noti_ex_item_h handle,
  noti_ex_multi_lang_h multi,
) =>
    tizenNotificationEx.noti_ex_item_checkbox_set_multi_language_title(
      handle,
      multi,
    );

/// @brief Checks if an item of a specified type is included in a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter type The type of a notification_ex item
/// Output parameter exist The state of if a type is included
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_item_type_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int type = NOTI_EX_ITEM_TYPE_ENTRY;
/// bool exist;
///
/// ret = noti_ex_item_check_type_exist(item_handle, type, &exist);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_check_type_exist(
  noti_ex_item_h handle,
  int type,
  ffi.Pointer<ffi.Bool> exist,
) =>
    tizenNotificationEx.noti_ex_item_check_type_exist(
      handle,
      type,
      exist,
    );

/// @brief Releases the notification_ex item handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_destroy(item_handle);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_destroy(
  noti_ex_item_h handle,
) =>
    tizenNotificationEx.noti_ex_item_destroy(
      handle,
    );

/// @brief Creates the notification_ex item handle for an entry item.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to get the text input directly from the notification,
/// the notification_ex handle has to be created as an entry item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h entry_item = NULL;
///
/// ret = noti_ex_item_entry_create(&entry_item, "entry_id");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_entry_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
) =>
    tizenNotificationEx.noti_ex_item_entry_create(
      handle,
      id,
    );

/// @brief Gets the text of an entry item.
/// @since_tizen 5.5
/// @remarks @a text must be released using free().
/// @remarks If the multi-language handle is set by \n
/// noti_ex_item_entry_set_multi_language(), it will return a multi-language text.
/// Parameter handle The notification_ex item handle
/// Output parameter text The text of entry item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_entry_create()
/// @see noti_ex_item_entry_set_multi_language()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *text = NULL;
///
/// ret = noti_ex_item_entry_get_text(entry_item, &text);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_entry_get_text(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> text,
) =>
    tizenNotificationEx.noti_ex_item_entry_get_text(
      handle,
      text,
    );

/// @brief Sets the multi-language handle.
/// @since_tizen 5.5
/// @remarks After the multi-language handle setted successfully, \n
/// noti_ex_item_entry_get_text() will return the multi-language text. \n
/// @remarks The #noti_ex_item_h handle keeps its own copy of #noti_ex_multi_lang_h. \n
/// Therefore, you can destroy @a multi after it was set for @a handle.
/// @remarks You can pass NULL to @a multi, if you want to remove the multi-language text.
/// Parameter handle The notification_ex item handle
/// Parameter multi The multi-language handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_text_create()
/// @see noti_ex_item_text_set_multi_language()
/// @see noti_ex_item_text_get_contents()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h entry_item = NULL;
/// noti_ex_multi_lang_h multi;
///
/// ret = noti_ex_item_entry_create(&entry_item, "entry_id");
/// ret = noti_ex_item_entry_set_multi_language(entry_item, multi);
/// noti_ex_multi_lang_destroy(multi);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_entry_set_multi_language(
  noti_ex_item_h handle,
  noti_ex_multi_lang_h multi,
) =>
    tizenNotificationEx.noti_ex_item_entry_set_multi_language(
      handle,
      multi,
    );

/// @brief Sets the text of an entry item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter text The text of entry item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_entry_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_entry_set_text(entry_item, "entry_text");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_entry_set_text(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> text,
) =>
    tizenNotificationEx.noti_ex_item_entry_set_text(
      handle,
      text,
    );

/// @brief Finds the notification_ex item handle by notification_ex item id.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// Parameter item The notification_ex item handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h item = NULL;
///
/// ret = noti_ex_item_find_by_id(item_handle, "find_id", &item);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_find_by_id(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> id,
  ffi.Pointer<noti_ex_item_h> item,
) =>
    tizenNotificationEx.noti_ex_item_find_by_id(
      handle,
      id,
      item,
    );

/// @brief Finds the notification item of the specified main type.
/// @details Finds the item that matches the main type among the group items.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Parameter handle The notification_ex item handle
/// Parameter type The main type
/// Output parameter item The notification_ex item handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_item_main_type_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// noti_ex_item_h text_item = NULL;
/// int type = NOTI_EX_ITEM_MAIN_TYPE_TITLE;
/// int ret;
///
/// ret = noti_ex_item_find_by_main_type(item_handle, type, &text_item);
///
/// if (text_item != NULL) {
/// // Do something
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_find_by_main_type(
  noti_ex_item_h handle,
  int type,
  ffi.Pointer<noti_ex_item_h> item,
) =>
    tizenNotificationEx.noti_ex_item_find_by_main_type(
      handle,
      type,
      item,
    );

/// @brief Gets the action for a notification_ex item.
/// @details The action is defined as notification_ex action handle.
/// @since_tizen 5.5
/// @remarks @a action must be released using noti_ex_action_destroy().
/// Parameter handle The notification_ex item handle
/// Output parameter action The notification_ex action handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_action_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_action_h action = NULL;
///
/// ret = noti_ex_item_get_action(item_handle, &action);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_action(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_action_h> action,
) =>
    tizenNotificationEx.noti_ex_item_get_action(
      handle,
      action,
    );

/// @brief Gets the channel of a notification_ex item.
/// @since_tizen 5.5
/// @remarks @a channel must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter channel The channel of a notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *channel;
///
/// ret = noti_ex_item_get_channel(item_handle, &channel);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_channel(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> channel,
) =>
    tizenNotificationEx.noti_ex_item_get_channel(
      handle,
      channel,
    );

/// @brief Gets the enabled state of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter enable The enable state
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// bool enable;
///
/// ret = noti_ex_item_get_enable(item_handle, &enable);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_enable(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Bool> enable,
) =>
    tizenNotificationEx.noti_ex_item_get_enable(
      handle,
      enable,
    );

/// @brief Gets the extension data.
/// @since_tizen 5.5
/// @remarks The @a value should be released using bundle_free().
/// Parameter handle The notification_ex item handle
/// Parameter key The key
/// Output parameter value The bundle data
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *key = "ADDITIONAL_DATA_KEY";
/// bundle *b;
///
/// ret = noti_ex_item_get_extension_data(item_handle, key, &b);
/// ...
/// bundle_free(b);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_extension_data(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<bundle>> value,
) =>
    tizenNotificationEx.noti_ex_item_get_extension_data(
      handle,
      key,
      value,
    );

/// @brief Gets the id of a notification_ex item.
/// @since_tizen 5.5
/// @remarks @a id must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter id The id of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *id = NULL;
///
/// ret = noti_ex_item_get_id(item_handle, &id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_id(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> id,
) =>
    tizenNotificationEx.noti_ex_item_get_id(
      handle,
      id,
    );

/// @brief Gets the information of a notification_ex item.
/// @details The information of notification_ex item is defined as
/// notification_ex item info handle.
/// @since_tizen 5.5
/// @remarks @a info should not be released.
/// @remarks @a info is available until @a handle is released.
/// Parameter handle The notification_ex item handle
/// Output parameter info The notification_ex item info handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_item_info_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_info_h item_info = NULL;
///
/// ret = noti_ex_item_get_info(item_handle, &item_info);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_info(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_item_info_h> info,
) =>
    tizenNotificationEx.noti_ex_item_get_info(
      handle,
      info,
    );

/// @brief Gets the LED information of a notification_ex item.
/// @details The LED information is defined as notification_ex LED info handle
/// @since_tizen 5.5
/// @remarks @a led must be released using noti_ex_led_info_destroy().
/// Parameter handle The notification_ex item handle
/// Output parameter led The notification_ex LED info item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_led_info_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_led_info_h led_info = NULL;
///
/// ret = noti_ex_item_get_led_info(item_handle, &led_info);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_led_info(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_led_info_h> led,
) =>
    tizenNotificationEx.noti_ex_item_get_led_info(
      handle,
      led,
    );

/// @brief Gets the main type of a notification item.
/// @details The type is equal to one of the values of #noti_ex_item_main_type_e.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter type The main type
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_item_main_type_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int type = NOTI_EX_ITEM_MAIN_TYPE_NONE;
///
/// ret = noti_ex_item_get_main_type(item_handle, &type);
///
/// if (type == NOTI_EX_ITEM_MAIN_TYPE_TITLE) {
/// // Do something
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_main_type(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Int> type,
) =>
    tizenNotificationEx.noti_ex_item_get_main_type(
      handle,
      type,
    );

/// @brief Gets the value indicating whether a notification is currently ongoing.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter ongoing The state of ongoing
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// bool ongoing;
///
/// ret = noti_ex_item_get_ongoing_state(item_handle, &ongoing);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_ongoing_state(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Bool> ongoing,
) =>
    tizenNotificationEx.noti_ex_item_get_ongoing_state(
      handle,
      ongoing,
    );

/// @brief Gets the policy of a notification_ex item.
/// @details @a policy is equal to values of #noti_ex_item_policy_e combined with bitwise 'or'.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter policy The policy of a notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_item_policy_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int policy;
///
/// ret = noti_ex_item_get_policy(item_handle, &policy);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_policy(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Int> policy,
) =>
    tizenNotificationEx.noti_ex_item_get_policy(
      handle,
      policy,
    );

/// @brief Gets the list of receiver group of a notification_ex item.
/// @since_tizen 5.5
/// @remarks Each member of the list must be released using free(), then the @a list must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter list The list of receiver group
/// Output parameter count The count of list
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char **list = NULL;
/// int count;
///
/// ret = noti_ex_item_get_receiver_list(item_handle, &list, &count);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_receiver_list(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> list,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenNotificationEx.noti_ex_item_get_receiver_list(
      handle,
      list,
      count,
    );

/// @brief Gets the sender app id of a notification_ex item.
/// @since_tizen 5.5
/// @remarks @a id must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter id The sender app id of a notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *app_id = NULL;
///
/// ret = noti_ex_item_get_sender_app_id(item_handle, &app_id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_sender_app_id(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> id,
) =>
    tizenNotificationEx.noti_ex_item_get_sender_app_id(
      handle,
      id,
    );

/// @brief Gets the sound path of a notification_ex item.
/// @since_tizen 5.5
/// @remarks @a path must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter path The absolute path of sound for notification_ex item
/// If not set, you will get NULL.
/// If set default, you will get #NOTI_EX_SOUND_TYPE_DEFAULT.
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *path = NULL;
///
/// ret = noti_ex_item_get_sound_path(item_handle, &path);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_sound_path(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenNotificationEx.noti_ex_item_get_sound_path(
      handle,
      path,
    );

/// @brief Gets the style of a notification_ex item.
/// @details The style is defined as notification_ex style handle.
/// @since_tizen 5.5
/// @remarks @a style must be released using noti_ex_style_destroy().
/// Parameter handle The notification_ex item handle
/// Output parameter style The notification_ex style handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_style_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_style_h style = NULL;
///
/// ret = noti_ex_item_get_style(item_handle, &style);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_style(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_style_h> style,
) =>
    tizenNotificationEx.noti_ex_item_get_style(
      handle,
      style,
    );

/// @brief Gets the tag of a notification_ex item.
/// @since_tizen 5.5
/// @remarks @a tag must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter tag The tag of a notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *tag = NULL;
///
/// ret = noti_ex_item_get_tag(item_handle, &tag);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_tag(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> tag,
) =>
    tizenNotificationEx.noti_ex_item_get_tag(
      handle,
      tag,
    );

/// @brief Gets the type of notification_ex item.
/// @details The item type is equal to one of the values of #noti_ex_item_type_e.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter type The type of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_item_type_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int type = NOTI_EX_ITEM_TYPE_NULL;
///
/// ret = noti_ex_item_get_type(item_handle, &type);
///
/// if (type == NOTI_EX_ITEM_TYPE_BUTTON) {
/// // Do something
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_type(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Int> type,
) =>
    tizenNotificationEx.noti_ex_item_get_type(
      handle,
      type,
    );

/// @brief Gets the vibration path of a notification_ex item.
/// @since_tizen 5.5
/// @remarks @a path must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter path The absolute path of vibration for a notification_ex item
/// If not set, you will get NULL.
/// If set default, you will get #NOTI_EX_VIBRATION_TYPE_DEFAULT.
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *path = NULL;
///
/// ret = noti_ex_item_get_vibration_path(item_handle, &path);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_vibration_path(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenNotificationEx.noti_ex_item_get_vibration_path(
      handle,
      path,
    );

/// @brief Gets the visibility state of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter visible The visible state
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// bool visible;
///
/// ret = noti_ex_item_get_visible(item_handle, &visible);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_get_visible(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Bool> visible,
) =>
    tizenNotificationEx.noti_ex_item_get_visible(
      handle,
      visible,
    );

/// @brief Adds the child to the group item.
/// @since_tizen 5.5
/// @remarks @a child must not be released after calling this function
/// Parameter handle The notification_ex item handle
/// Parameter child The child notification_ex item handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_group_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h group_item = NULL;
/// noti_ex_item_h child_item = NULL;
///
/// ret = noti_ex_item_group_create(&group_item, "group_id");
/// ret = noti_ex_item_button_create(&child_item, "button_id", "button_title");
/// ret = noti_ex_item_group_add_child(group_item, child_item);
///
/// noti_ex_item_destroy(child_item);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_group_add_child(
  noti_ex_item_h handle,
  noti_ex_item_h child,
) =>
    tizenNotificationEx.noti_ex_item_group_add_child(
      handle,
      child,
    );

/// @brief Creates the group of notification_ex items.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to make the group of notification_ex items,
/// the notification_ex handle has to be created as a group item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h group_item = NULL;
///
/// ret = noti_ex_item_group_create(&group_item, "group_id");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_group_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
) =>
    tizenNotificationEx.noti_ex_item_group_create(
      handle,
      id,
    );

/// @brief Gets the data of children from the group item.
/// @details The noti_ex_item_group_foreach_child_cb() is called for each child of the group item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter callback The callback function to get the children data
/// Parameter user_data The user data to be passed to the callback function
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_group_foreach_child_cb()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// int _ex_item_group_foreach_child_cb(noti_ex_item_h handle, void *user_data) {
/// return 0;
/// }
///
/// {
/// int ret;
/// noti_ex_item_h group_item = NULL;
/// noti_ex_item_h child_item = NULL;
///
/// ret = noti_ex_item_group_create(&group_item, "group_id");
/// ret = noti_ex_item_button_create(&child_item, "button_id", "button_title");
/// ret = noti_ex_item_group_add_child(group_item, child_item);
///
/// noti_ex_item_destroy(child_item);
///
/// ret = noti_ex_item_group_foreach_child(group_item, _ex_item_group_foreach_child_cb, NULL);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_group_foreach_child(
  noti_ex_item_h handle,
  noti_ex_item_group_foreach_child_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenNotificationEx.noti_ex_item_group_foreach_child(
      handle,
      callback,
      user_data,
    );

/// @brief Gets the label of application.
/// @since_tizen 5.5
/// @remarks @a label must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter label The label of application
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_group_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *label = NULL;
///
/// ret = noti_ex_item_group_get_app_label(group_item, &label);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_group_get_app_label(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenNotificationEx.noti_ex_item_group_get_app_label(
      handle,
      label,
    );

/// @brief Gets the vertical state of group item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter vertical The vertical state of group item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_group_create()
/// @see noti_ex_item_group_set_direction()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// bool vertical;
///
/// ret = noti_ex_item_group_is_vertical(group_item, &vertical);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_group_is_vertical(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Bool> vertical,
) =>
    tizenNotificationEx.noti_ex_item_group_is_vertical(
      handle,
      vertical,
    );

/// @brief Removes the child from the group item by notification_ex item id.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter item_id The id of notification_ex item that is child of group item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_group_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_group_remove_child(group_item, "child_id");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_group_remove_child(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> item_id,
) =>
    tizenNotificationEx.noti_ex_item_group_remove_child(
      handle,
      item_id,
    );

/// @brief Sets the direction of children in the group item.
/// @details If vertical state is true, the children of group item are placed vertically.
/// If vertical state is false, the children of group item are placed horizontally.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter vertical The vertical state of group item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_group_create()
/// @see noti_ex_item_group_is_vertical().
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_group_set_direction(group_item, true);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_group_set_direction(
  noti_ex_item_h handle,
  bool vertical,
) =>
    tizenNotificationEx.noti_ex_item_group_set_direction(
      handle,
      vertical,
    );

/// @brief Creates the notification_ex item handle with an image.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to display the notification with an image,
/// the notification_ex handle has to be created as an image item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// Parameter image_path The absolute path of image
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h image_item = NULL;
/// char *image_path[BUFLEN];
///
/// char *shared_path = app_get_shared_resource_path();
/// snprintf(image_path, BUFLEN, "%simage.png", shared_path);
/// free(shared_path);
///
/// ret = noti_ex_item_image_create(&image_item, "image_id", image_path);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_image_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
  ffi.Pointer<ffi.Char> image_path,
) =>
    tizenNotificationEx.noti_ex_item_image_create(
      handle,
      id,
      image_path,
    );

/// @brief Gets the path of image.
/// @since_tizen 5.5
/// @remarks @a image_path must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter image_path The absolute path of image
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_image_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *path = NULL;
///
/// ret = noti_ex_item_image_get_image_path(image_item, &path);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_image_get_image_path(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> image_path,
) =>
    tizenNotificationEx.noti_ex_item_image_get_image_path(
      handle,
      image_path,
    );

/// @brief Gets the time to delete the notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item info handle
/// Output parameter delete_time The time to delete notification, in seconds
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_info_h
/// @see noti_ex_item_get_info()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int delete_time;
/// noti_ex_item_info_h item_info = NULL;
///
/// ret = noti_ex_item_get_info(item_handle, &item_info);
///
/// ret = noti_ex_item_info_get_delete_time(item_info, &delete_time);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_info_get_delete_time(
  noti_ex_item_info_h handle,
  ffi.Pointer<ffi.Int> delete_time,
) =>
    tizenNotificationEx.noti_ex_item_info_get_delete_time(
      handle,
      delete_time,
    );

/// @brief Gets the time to hide the notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item info handle
/// Output parameter hide_time The time to hide notification, in seconds
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_info_h
/// @see noti_ex_item_get_info()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int hide_time;
/// noti_ex_item_info_h item_info = NULL;
///
/// ret = noti_ex_item_get_info(item_handle, &item_info);
///
/// ret = noti_ex_item_info_get_hide_time(item_info, &hide_time);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_info_get_hide_time(
  noti_ex_item_info_h handle,
  ffi.Pointer<ffi.Int> hide_time,
) =>
    tizenNotificationEx.noti_ex_item_info_get_hide_time(
      handle,
      hide_time,
    );

/// @brief Gets the time information.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item info handle
/// Output parameter time The time information
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_info_h
/// @see noti_ex_item_get_info()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// time_t time;
/// noti_ex_item_info_h item_info = NULL;
///
/// ret = noti_ex_item_get_info(item_handle, &item_info);
///
/// ret = noti_ex_item_info_get_time(item_info, &time);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_info_get_time(
  noti_ex_item_info_h handle,
  ffi.Pointer<time_t> time,
) =>
    tizenNotificationEx.noti_ex_item_info_get_time(
      handle,
      time,
    );

/// @brief Sets the time to delete the notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item info handle
/// Parameter delete_time The time to delete notification, in seconds
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_info_h
/// @see noti_ex_item_get_info()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_info_h item_info = NULL;
///
/// ret = noti_ex_item_get_info(item_handle, &item_info);
///
/// ret = noti_ex_item_info_set_delete_time(item_info, 5);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_info_set_delete_time(
  noti_ex_item_info_h handle,
  int delete_time,
) =>
    tizenNotificationEx.noti_ex_item_info_set_delete_time(
      handle,
      delete_time,
    );

/// @brief Sets the time to hide the notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item info handle
/// Parameter hide_time The time to hide notification, in seconds
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_info_h
/// @see noti_ex_item_get_info()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_info_h item_info = NULL;
///
/// ret = noti_ex_item_get_info(item_handle, &item_info);
///
/// ret = noti_ex_item_info_set_hide_time(action, 5);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_info_set_hide_time(
  noti_ex_item_info_h handle,
  int hide_time,
) =>
    tizenNotificationEx.noti_ex_item_info_set_hide_time(
      handle,
      hide_time,
    );

/// @brief Creates the notification_ex item handle with input selector.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to be display the notification with selector to select predefined input,
/// the notification_ex handle has to be created as an input selector item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h selector_item = NULL;
///
/// ret = noti_ex_item_input_selector_create(&selector_item, "selector_id");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_input_selector_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
) =>
    tizenNotificationEx.noti_ex_item_input_selector_create(
      handle,
      id,
    );

/// @brief Gets the contents that can be selected by input selector.
/// @since_tizen 5.5
/// @remarks Each item in the @a list must be released using free(), then the @a list must be released using free().
/// @remarks If the multi-language handle is set by noti_ex_item_input_selector_set_multi_language_contents(), \n
/// it will return a multi-language contents.
/// Parameter handle The notification_ex item handle
/// Output parameter list The list of contents
/// Output parameter count The count of contents
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_input_selector_create()
/// @see noti_ex_item_input_selector_set_contents()
/// @see noti_ex_item_input_selector_set_multi_language_contents()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char **list = NULL;
/// int count = 0;
///
/// ret = noti_ex_item_input_selector_get_contents(selector_item, &list, &count);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_input_selector_get_contents(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> list,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenNotificationEx.noti_ex_item_input_selector_get_contents(
      handle,
      list,
      count,
    );

/// @brief Sets the contents for input selector item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter contents The list of contents
/// Parameter count The count of contents
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_input_selector_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// const char *contents[] = {"What's up?", "On my way", "Nice"};
/// int count = 3;
///
/// ret = noti_ex_item_input_selector_set_contents(selector_item, contents, count);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_input_selector_set_contents(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> contents,
  int count,
) =>
    tizenNotificationEx.noti_ex_item_input_selector_set_contents(
      handle,
      contents,
      count,
    );

/// @brief Sets the multi-language contents for input selector item.
/// @since_tizen 5.5
/// @remarks After the multi-language handle setted successfully, \n
/// noti_ex_item_input_selector_get_contents() will return the multi-language text. \n
/// @remarks The #noti_ex_item_h handle keeps its own copy of #noti_ex_multi_lang_h list. \n
/// Therefore, you can destroy @a multi_language_list after it was set for @a handle.
/// @remarks You can pass NULL to @a multi_language_list, if you want to remove the multi-language text.
/// Parameter handle The notification_ex item handle
/// Parameter multi_language_list The list of noti_ex_multi_lang_h
/// Parameter count The count of contents
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_input_selector_create()
/// @see noti_ex_item_input_selector_get_contents()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_multi_lang_h *contents[] = {multi1, multi2, multi3};
/// int count = 3;
///
/// ret = noti_ex_item_input_selector_set_multi_language_contents(selector_item, contents, count);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_input_selector_set_multi_language_contents(
  noti_ex_item_h handle,
  ffi.Pointer<noti_ex_multi_lang_h> multi_language_list,
  int count,
) =>
    tizenNotificationEx.noti_ex_item_input_selector_set_multi_language_contents(
      handle,
      multi_language_list,
      count,
    );

/// @brief Creates the notification_ex item handle with progress.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to be display the notification with progress,
/// the notification_ex handle has to be created as a progress item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// Parameter min The minimum value of progress
/// Parameter current The current value of progress
/// Parameter max The maximum value of progress
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h progress_item = NULL;
///
/// ret = noti_ex_item_progress_create(&progress_item, "progress_id", 0, 50, 100);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_progress_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
  double min,
  double current,
  double max,
) =>
    tizenNotificationEx.noti_ex_item_progress_create(
      handle,
      id,
      min,
      current,
      max,
    );

/// @brief Gets the current value of progress.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter current The current value of progress
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_progress_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// float current;
///
/// ret = noti_ex_item_progress_get_current(progress_item, &current);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_progress_get_current(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Float> current,
) =>
    tizenNotificationEx.noti_ex_item_progress_get_current(
      handle,
      current,
    );

/// @brief Gets the maximum value of progress.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter max The maximum value of progress
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_progress_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// float max;
///
/// ret = noti_ex_item_progress_get_max(progress_item, &max);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_progress_get_max(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Float> max,
) =>
    tizenNotificationEx.noti_ex_item_progress_get_max(
      handle,
      max,
    );

/// @brief Gets the minimum value of progress.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter min The minimum value of progress
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_progress_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// float min;
///
/// ret = noti_ex_item_progress_get_min(progress_item, &min);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_progress_get_min(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Float> min,
) =>
    tizenNotificationEx.noti_ex_item_progress_get_min(
      handle,
      min,
    );

/// @brief Gets the type of progress.
/// The type is equal to one of the values of #noti_ex_item_progress_type_e.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Output parameter type The type of progress
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter,
/// if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see #noti_ex_item_progress_type_e
/// @see noti_ex_item_progress_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int type;
///
/// ret = noti_ex_item_progress_get_type(progress_item, &type);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_progress_get_type(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Int> type,
) =>
    tizenNotificationEx.noti_ex_item_progress_get_type(
      handle,
      type,
    );

/// @brief Sets the current value of progress.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter current The current value of progress
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_progress_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_progress_set_current(progress_item, 70);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_progress_set_current(
  noti_ex_item_h handle,
  double current,
) =>
    tizenNotificationEx.noti_ex_item_progress_set_current(
      handle,
      current,
    );

/// @brief Sets the type of progress.
/// @details The type is equal to one of the values of #noti_ex_item_progress_type_e.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter type The type of progress
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter,
/// if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see #noti_ex_item_progress_type_e
/// @see noti_ex_item_progress_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h progress_item = NULL;
/// int type = NOTI_EX_ITEM_PROGRESS_TYPE_PERCENT;
///
/// ret = noti_ex_item_progress_create(&progress_item, "progress_id", 0, 50, 100);
/// ret = noti_ex_item_progress_set_type(progress_item, type);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_progress_set_type(
  noti_ex_item_h handle,
  int type,
) =>
    tizenNotificationEx.noti_ex_item_progress_set_type(
      handle,
      type,
    );

/// @brief Removes the receiver group from a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter receiver_group The receiver group
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_remove_receiver(item_handle, NOTI_EX_RECEIVER_GROUP_INDICATOR);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_remove_receiver(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> receiver_group,
) =>
    tizenNotificationEx.noti_ex_item_remove_receiver(
      handle,
      receiver_group,
    );

/// @brief Sets the action of a notification_ex item.
/// @details The action is defined as notification_ex action handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter action The notification_ex action handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_action_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h item_handle = NULL;
/// noti_ex_action_h action = NULL;
///
/// ret = app_control_create(&app_control);
/// ret = app_control_set_app_id(app_control, "appid");
/// ret = noti_ex_action_app_control_create(&action, app_control, NULL);
///
/// ret = noti_ex_item_button_create(&item_handle, "button_id", "button_title");
///
/// ret = noti_ex_item_set_action(item_handle, action);
///
/// app_control_destroy(app_control);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_action(
  noti_ex_item_h handle,
  noti_ex_action_h action,
) =>
    tizenNotificationEx.noti_ex_item_set_action(
      handle,
      action,
    );

/// @brief Sets the channel of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter channel The channel of a notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_channel(item_handle, "channel");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_channel(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> channel,
) =>
    tizenNotificationEx.noti_ex_item_set_channel(
      handle,
      channel,
    );

/// @brief Sets the enabled state of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter enable The enable state
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_enable(item_handle, true);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_enable(
  noti_ex_item_h handle,
  bool enable,
) =>
    tizenNotificationEx.noti_ex_item_set_enable(
      handle,
      enable,
    );

/// @brief Sets the extension data.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter key The key
/// Parameter value The bundle data
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *key = "ADDITIONAL_DATA_KEY";
/// bundle *b = bundle_create();
/// bundle_add_str(b, "key", "value");
///
/// ret = noti_ex_item_set_extension_data(item_handle, key, b);
/// bundle_free(b);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_extension_data(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<bundle> value,
) =>
    tizenNotificationEx.noti_ex_item_set_extension_data(
      handle,
      key,
      value,
    );

/// @brief Sets the id of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_id(item_handle, "new_id");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_id(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> id,
) =>
    tizenNotificationEx.noti_ex_item_set_id(
      handle,
      id,
    );

/// @brief Sets the LED information of a notification_ex item.
/// @details The LED information is defined as notification_ex LED info handle
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter led The notification_ex LED info item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_led_info_h
/// @see noti_ex_led_info_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_led_info(item_handle, led_info);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_led_info(
  noti_ex_item_h handle,
  noti_ex_led_info_h led,
) =>
    tizenNotificationEx.noti_ex_item_set_led_info(
      handle,
      led,
    );

/// @brief Sets the main type of a notification item.
/// @details Use this function to configure main type among multiple items.
/// In other words, if there is only one item, it should not be used.
/// The type is equal to one of the values of #noti_ex_item_main_type_e.
/// @since_tizen 5.5
/// @remarks When set to a specific type, the previous main item of the same type is canceled.
/// Parameter handle The notification_ex item handle
/// Parameter id The ID of notification_ex item
/// Parameter type The main type
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_item_main_type_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// noti_ex_item_h text_item = NULL;
/// noti_ex_item_h group_item = NULL;
/// int type = NOTI_EX_ITEM_MAIN_TYPE_TITLE;
/// int ret;
///
/// ret = noti_ex_item_group_create(&group_item, "group_id");
/// ret = noti_ex_item_text_create(&text_item, "text_id", "text", "hyperlink");
/// ret = noti_ex_item_group_add_child(group_item, text_item);
/// noti_ex_item_destroy(text_item);
///
/// ret = noti_ex_item_set_main_type(group_item, "text_id", type);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_main_type(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> id,
  int type,
) =>
    tizenNotificationEx.noti_ex_item_set_main_type(
      handle,
      id,
      type,
    );

/// @brief Sets the value indicating whether a notification is currently ongoing.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter ongoing The state of ongoing
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_ongoing_state(item_handle, true);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_ongoing_state(
  noti_ex_item_h handle,
  bool ongoing,
) =>
    tizenNotificationEx.noti_ex_item_set_ongoing_state(
      handle,
      ongoing,
    );

/// @brief Sets the policy of a notification_ex item.
/// @details @a policy should be set to values of #noti_ex_item_policy_e combined with bitwise 'or'.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter policy The policy of a notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_item_policy_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_policy(item_handle,
/// NOTI_EX_ITEM_POLICY_ON_BOOT_CLEAR | NOTI_EX_ITEM_POLICY_SIM_MODE);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_policy(
  noti_ex_item_h handle,
  int policy,
) =>
    tizenNotificationEx.noti_ex_item_set_policy(
      handle,
      policy,
    );

/// @brief Sets the sound path of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter path The absolute path of sound for notification_ex item
/// If you want to set a default sound, enter #NOTI_EX_SOUND_TYPE_DEFAULT.
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_sound_path(item_handle, "sound_path");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_sound_path(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenNotificationEx.noti_ex_item_set_sound_path(
      handle,
      path,
    );

/// @brief Sets the style of a notification_ex item.
/// @details The style is defined as notification_ex style handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter style The notification_ex style handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see #noti_ex_style_h
/// @see noti_ex_style_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_style(item_handle, style);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_style(
  noti_ex_item_h handle,
  noti_ex_style_h style,
) =>
    tizenNotificationEx.noti_ex_item_set_style(
      handle,
      style,
    );

/// @brief Sets the tag of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter tag The tag of a notification_ex item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_tag(item_handle, "item_tag");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_tag(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> tag,
) =>
    tizenNotificationEx.noti_ex_item_set_tag(
      handle,
      tag,
    );

/// @brief Sets the vibration path of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter path The absolute path of vibration for notification_ex item
/// If you want to set a default sound, enter #NOTI_EX_VIBRATION_TYPE_DEFAULT.
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_vibration_path(item_handle, "vibration_path");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_vibration_path(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenNotificationEx.noti_ex_item_set_vibration_path(
      handle,
      path,
    );

/// @brief Sets the visibility state of a notification_ex item.
/// @since_tizen 5.5
/// Parameter handle The notification_ex item handle
/// Parameter visible The visible state
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_set_visible(item_handle, true);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_set_visible(
  noti_ex_item_h handle,
  bool visible,
) =>
    tizenNotificationEx.noti_ex_item_set_visible(
      handle,
      visible,
    );

/// @brief Creates the notification_ex item handle with text.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to be display the notification with text,
/// the notification_ex handle has to be created as a text item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// Parameter text The text of text item
/// Parameter hyperlink The hyperlink of text item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h text_item = NULL;
///
/// ret = noti_ex_item_text_create(&text_item, "text_id", "text", "hyperlink");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_text_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
  ffi.Pointer<ffi.Char> text,
  ffi.Pointer<ffi.Char> hyperlink,
) =>
    tizenNotificationEx.noti_ex_item_text_create(
      handle,
      id,
      text,
      hyperlink,
    );

/// @brief Gets the text contents of the text item.
/// @since_tizen 5.5
/// @remarks @a contents must be released using free().
/// @remarks If the multi-language handle is set by noti_ex_item_text_set_multi_language(), \n
/// it will return a multi-language content.
/// Parameter handle The notification_ex item handle
/// Output parameter contents The text contents
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_text_create()
/// @see noti_ex_item_text_set_multi_language()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *contents = NULL;
///
/// ret = noti_ex_item_text_get_contents(text_item, &contents);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_text_get_contents(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> contents,
) =>
    tizenNotificationEx.noti_ex_item_text_get_contents(
      handle,
      contents,
    );

/// @brief Gets the hyperlink of the text item.
/// @since_tizen 5.5
/// @remarks @a hyperlink must be released using free().
/// Parameter handle The notification_ex item handle
/// Output parameter hyperlink The hyperlink
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_text_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *hyperlink = NULL;
///
/// ret = noti_ex_item_text_get_hyperlink(text_item, &hyperlink);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_text_get_hyperlink(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> hyperlink,
) =>
    tizenNotificationEx.noti_ex_item_text_get_hyperlink(
      handle,
      hyperlink,
    );

/// @brief Sets the text contents of the text item.
/// @since_tizen 5.5
/// @remarks If the multi-language handle is set by noti_ex_item_text_set_multi_language(), \n
/// it will return a multi-language content.
/// Parameter handle The notification_ex item handle
/// Parameter contents The text contents
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @see noti_ex_item_text_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_item_text_set_contents(text_item, "text_contents");
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_text_set_contents(
  noti_ex_item_h handle,
  ffi.Pointer<ffi.Char> contents,
) =>
    tizenNotificationEx.noti_ex_item_text_set_contents(
      handle,
      contents,
    );

/// @brief Sets the multi-language handle.
/// @since_tizen 5.5
/// @remarks After the multi-language handle setted successfully, \n
/// noti_ex_item_text_get_contents() will return the multi-language text. \n
/// @remarks The #noti_ex_item_h handle keeps its own copy of #noti_ex_multi_lang_h. \n
/// Therefore, you can destroy @a multi after it was set for @a handle.
/// @remarks You can pass NULL to @a multi, if you want to remove the multi-language text.
/// Parameter handle The notification_ex item handle
/// Parameter multi The multi-language handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_text_create()
/// @see noti_ex_multi_lang_create()
/// @see noti_ex_item_text_get_contents()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h text_item = NULL;
/// noti_ex_multi_lang_h multi;
///
/// ret = noti_ex_item_text_create(&text_item, "text_id", "text", "hyperlink");
/// ret = noti_ex_multi_lang_create(&multi, "_IDS_NOTI_TEST_", "Hi %d I'm %s", 33, "test");
/// ret = noti_ex_item_text_set_multi_language(text_item, multi);
/// noti_ex_multi_lang_destroy(multi);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_text_set_multi_language(
  noti_ex_item_h handle,
  noti_ex_multi_lang_h multi,
) =>
    tizenNotificationEx.noti_ex_item_text_set_multi_language(
      handle,
      multi,
    );

/// @brief Creates the notification_ex item handle with time.
/// @details The notification_ex item is the predefined type of notifications.
/// The notification can be created with one item or group of items.
/// If the user wants to be display the notification with time,
/// the notification_ex handle has to be created as a time item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Output parameter handle The notification_ex item handle
/// Parameter id The id of notification_ex item
/// Parameter time The time information
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_item_h time_item = NULL;
/// time_t time_info;
/// time(&time_info);
///
/// ret = noti_ex_item_time_create(&time_item, "time_id", time_info);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_time_create(
  ffi.Pointer<noti_ex_item_h> handle,
  ffi.Pointer<ffi.Char> id,
  int time,
) =>
    tizenNotificationEx.noti_ex_item_time_create(
      handle,
      id,
      time,
    );

/// @brief Gets the time information of time item.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_item_destroy().
/// Parameter handle The notification_ex item handle
/// Output parameter time The time information of time item
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter, if the item type is not correct, this error is returned
/// @see #noti_ex_item_h
/// @see noti_ex_item_time_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// time_t time_info;
///
/// ret = noti_ex_item_time_get_time(time_item, &time_info);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_item_time_get_time(
  noti_ex_item_h handle,
  ffi.Pointer<time_t> time,
) =>
    tizenNotificationEx.noti_ex_item_time_get_time(
      handle,
      time,
    );

/// @brief Creates the notification_ex LED info handle.
/// @details LED information can be defined as a notification_ex LED handle
/// with color information.
/// The color is the defined notification_ex color handle.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_led_info_destroy().
/// @a color must not be released if the function returns #NOTI_EX_ERROR_NONE.
/// @a color will be released when @a handle is released.
/// Output parameter handle The notification_ex LED info handle
/// Parameter color The notification_ex color handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_led_info_h
/// @see #noti_ex_color_h
/// @see noti_ex_led_info_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_led_info_h led_info = NULL;
/// noti_ex_color_h color = NULL;
///
/// ret = noti_ex_color_create(&color, 0, 0, 0, 0);
///
/// ret = noti_ex_led_info_create(&led_info, color);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_led_info_create(
  ffi.Pointer<noti_ex_led_info_h> handle,
  noti_ex_color_h color,
) =>
    tizenNotificationEx.noti_ex_led_info_create(
      handle,
      color,
    );

/// @brief Releases the notification_ex LED info handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex LED info handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_led_info_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_led_info_destroy(led_info);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_led_info_destroy(
  noti_ex_led_info_h handle,
) =>
    tizenNotificationEx.noti_ex_led_info_destroy(
      handle,
    );

/// @brief Gets the color information from LED info.
/// @since_tizen 5.5
/// @remarks @a color must be released using noti_ex_color_destroy().
/// Parameter handle The notification_ex LED info handle
/// Output parameter color The notification_ex color handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_led_info_h
/// @see #noti_ex_color_h
/// @see noti_ex_led_info_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_color_h color = NULL;
///
/// ret = noti_ex_led_info_get_color(led_info, &color);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_led_info_get_color(
  noti_ex_led_info_h handle,
  ffi.Pointer<noti_ex_color_h> color,
) =>
    tizenNotificationEx.noti_ex_led_info_get_color(
      handle,
      color,
    );

/// @brief Gets the time period for turning off the LED.
/// @since_tizen 5.5
/// Parameter handle The notification_ex LED info handle
/// Output parameter ms The time for turning off the LED, in milliseconds
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_led_info_h
/// @see noti_ex_led_info_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int ms;
///
/// ret = noti_ex_led_info_get_off_period(led_info, &ms);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_led_info_get_off_period(
  noti_ex_led_info_h handle,
  ffi.Pointer<ffi.Int> ms,
) =>
    tizenNotificationEx.noti_ex_led_info_get_off_period(
      handle,
      ms,
    );

/// @brief Gets the time period for turning on the LED.
/// @since_tizen 5.5
/// Parameter handle The notification_ex LED info handle
/// Output parameter ms The time for turning on the LED, in milliseconds
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_led_info_h
/// @see noti_ex_led_info_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int ms;
///
/// ret = noti_ex_led_info_get_on_period(led_info, &ms);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_led_info_get_on_period(
  noti_ex_led_info_h handle,
  ffi.Pointer<ffi.Int> ms,
) =>
    tizenNotificationEx.noti_ex_led_info_get_on_period(
      handle,
      ms,
    );

/// @brief Sets the time period for turning off the LED.
/// @since_tizen 5.5
/// Parameter handle The notification_ex LED info handle
/// Parameter ms The time for turning off the LED, in milliseconds
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_led_info_h
/// @see noti_ex_led_info_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_led_info_set_off_period(led_info, 5);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_led_info_set_off_period(
  noti_ex_led_info_h handle,
  int ms,
) =>
    tizenNotificationEx.noti_ex_led_info_set_off_period(
      handle,
      ms,
    );

/// @brief Sets the time period for turning on the LED.
/// @since_tizen 5.5
/// Parameter handle The notification_ex LED info handle
/// Parameter ms The time for turning on the LED, in milliseconds
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_led_info_h
/// @see noti_ex_led_info_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_led_info_set_on_period(led_info, 5);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_led_info_set_on_period(
  noti_ex_led_info_h handle,
  int ms,
) =>
    tizenNotificationEx.noti_ex_led_info_set_on_period(
      handle,
      ms,
    );

/// @partner
/// @brief Creates the notification_ex manager handle.
/// @details The manager handle is created with event callbacks and
/// the user can listen to notification events through the event callbacks.
/// If the user wants to manage notifications for specific group
/// the user should identify it with @a receiver_group
/// Callbacks in @a event_callbacks can be set to NULL, which will result in the corresponding events not being received.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// @remarks @a handle must be released using noti_ex_manager_destroy().
/// Output parameter handle The notification manager handle
/// Parameter receiver_group The notification group name of manager
/// Parameter event_callbacks The callbacks for notification events
/// Parameter user_data The user data for @a event_callbacks
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_manager_h
/// @see #noti_ex_manager_events_s
/// @see #NOTI_EX_RECEIVER_GROUP_TICKER
/// @see #NOTI_EX_RECEIVER_GROUP_LOCKSCREEN
/// @see #NOTI_EX_RECEIVER_GROUP_INDICATOR
/// @see #NOTI_EX_RECEIVER_GROUP_POPUP
/// @see noti_ex_manager_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_add_cb(noti_ex_manager_h handle, noti_ex_event_info_h info,
/// noti_ex_item_h *added_item, int cnt, void *user_data) {
/// }
///
/// void _manager_events_update_cb(noti_ex_manager_h handle,
/// noti_ex_event_info_h info, noti_ex_item_h updated_item, void *user_data) {
/// }
///
/// void _manager_events_delete_cb(noti_ex_manager_h handle,
/// noti_ex_event_info_h info, noti_ex_item_h deleted_item, void *user_data) {
/// }
///
/// void _manager_events_error_cb(noti_ex_manager_h handle,
/// noti_ex_error_e error, int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
///
/// ev.added = _manager_events_add_cb;
/// ev.updated = _manager_events_update_cb;
/// ev.deleted = _manager_events_delete_cb;
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_create(
  ffi.Pointer<noti_ex_manager_h> handle,
  ffi.Pointer<ffi.Char> receiver_group,
  noti_ex_manager_events_s event_callbacks,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenNotificationEx.noti_ex_manager_create(
      handle,
      receiver_group,
      event_callbacks,
      user_data,
    );

/// @partner
/// @brief Deletes notification.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// Parameter handle The notification manager handle
/// Parameter noti The notification item to be deleted
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_manager_h
/// @see #noti_ex_error_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
/// noti_ex_item_h *items;
/// noti_ex_item_h *item;
/// int items_count;
/// int request_id;
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// ret = noti_ex_manager_get(handle, &items, &items_count);
/// for (int i = 0; i < items_count; i++) {
/// item = items[i];
/// noti_ex_manager_delete(handle, item, &request_id);
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_delete(
  noti_ex_manager_h handle,
  noti_ex_item_h noti,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_manager_delete(
      handle,
      noti,
      request_id,
    );

/// @partner
/// @brief Deletes all notification.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// Parameter handle The notification manager handle
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_manager_h
/// @see #noti_ex_error_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
/// noti_ex_item_h *items;
/// noti_ex_item_h *item;
/// int items_count;
/// int request_id;
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// ret = noti_ex_manager_delete_all(handle, &request_id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_delete_all(
  noti_ex_manager_h handle,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_manager_delete_all(
      handle,
      request_id,
    );

/// @brief Destroys the notification_ex manager handle.
/// @since_tizen 5.5
/// Parameter handle The notification manager handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_item_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// ret = noti_ex_manager_destroy(handle);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_destroy(
  noti_ex_manager_h handle,
) =>
    tizenNotificationEx.noti_ex_manager_destroy(
      handle,
    );

/// @partner
/// @brief Finds notification by root id.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// @remarks @a root_id is the id of the foremost notification item.
/// Parameter handle The notification manager handle
/// Parameter root_id The id of the foremost notification item to be retrieved
/// Output parameter item The result of the find operation \n
/// The @a item must be released using noti_ex_item_destroy().
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_manager_h
/// @see #noti_ex_item_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
/// noti_ex_item_h item;
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// ret = noti_ex_manager_find_by_root_id(handle, "group1", &item);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_find_by_root_id(
  noti_ex_manager_h handle,
  ffi.Pointer<ffi.Char> root_id,
  ffi.Pointer<noti_ex_item_h> item,
) =>
    tizenNotificationEx.noti_ex_manager_find_by_root_id(
      handle,
      root_id,
      item,
    );

/// @partner
/// @brief Gets all notifications for the notification_ex manager.
/// @details Every notification that has been sent for the manager will be retrieved.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// Parameter handle The notification manager handle
/// Output parameter items The result of the get request \n
/// Each item in @a items must be released using noti_ex_item_destroy(), then @a items must be released using free().
/// Output parameter count The count of retrieved notification items
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_item_h
/// @see #noti_ex_manager_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
/// noti_ex_item_h *items;
/// noti_ex_item_h *item;
/// int items_count;
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// ret = noti_ex_manager_get(handle, &items, &items_count);
/// for (int i = 0; i < items_count; i++) {
/// item = items[i];
/// // do something with item
/// noti_ex_item_destroy(item);
/// }
///
/// free(items);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_get(
  noti_ex_manager_h handle,
  ffi.Pointer<ffi.Pointer<noti_ex_item_h>> items,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenNotificationEx.noti_ex_manager_get(
      handle,
      items,
      count,
    );

/// @partner
/// @brief Gets notifications with @a channel for the notification_ex manager.
/// @details Every notification that has been sent for the manager will be retrieved.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// Parameter handle The notification manager handle
/// Parameter channel The channel of a notification_ex item
/// Output parameter items The result of the get request \n
/// Each item in @a items must be released using noti_ex_item_destroy(), then @a items must be released using free().
/// Output parameter count The count of retrieved notification items
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_item_h
/// @see #noti_ex_manager_h
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
/// noti_ex_item_h *items;
/// noti_ex_item_h *item;
/// int items_count;
/// char *channel = "channel";
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// ...
/// ret = noti_ex_manager_get_by_channel(handle, channel, &items, &items_count);
/// for (int i = 0; i < items_count; i++) {
/// item = items[i];
/// // do something with item
/// noti_ex_item_destroy(item);
/// }
///
/// free(items);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_get_by_channel(
  noti_ex_manager_h handle,
  ffi.Pointer<ffi.Char> channel,
  ffi.Pointer<ffi.Pointer<noti_ex_item_h>> items,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenNotificationEx.noti_ex_manager_get_by_channel(
      handle,
      channel,
      items,
      count,
    );

/// @partner
/// @brief Gets the count of notifications for the manager.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// Parameter handle The notification manager handle
/// Output parameter count The count of notifications
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_manager_h
/// @see #NOTI_EX_RECEIVER_GROUP_TICKER
/// @see #NOTI_EX_RECEIVER_GROUP_LOCKSCREEN
/// @see #NOTI_EX_RECEIVER_GROUP_INDICATOR
/// @see #NOTI_EX_RECEIVER_GROUP_POPUP
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
/// int cnt;
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// ret = noti_ex_manager_get_notification_count(handle, &cnt);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_get_notification_count(
  noti_ex_manager_h handle,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenNotificationEx.noti_ex_manager_get_notification_count(
      handle,
      count,
    );

/// @partner
/// @brief Hides notification.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// Parameter handle The notification manager handle
/// Parameter item The notification item to be hidden
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_item_h
/// @see #noti_ex_manager_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
/// noti_ex_item_h *items;
/// noti_ex_item_h *item;
/// int items_count;
/// int request_id;
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// for (int i = 0; i < items_count; i++) {
/// item = items[i];
/// ret = noti_ex_manager_hide(handle, item, &request_id);
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_hide(
  noti_ex_manager_h handle,
  noti_ex_item_h item,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_manager_hide(
      handle,
      item,
      request_id,
    );

/// @partner
/// @brief Sends error to the reporter.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// Parameter handle The notification manager handle
/// Parameter info The handle that contains event information
/// Parameter error The error type
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_event_info_h
/// @see #noti_ex_manager_h
/// @see #noti_ex_error_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_add_cb(noti_ex_manager_h handle, noti_ex_event_info_h info,
/// noti_ex_item_h *added_item, int cnt, void *user_data) {
/// }
///
/// void _manager_events_update_cb(noti_ex_manager_h handle, noti_ex_event_info_h info,
/// noti_ex_item_h updated_item, void *user_data) {
/// // if something wrong about process
/// noti_ex_manager_send_error(handle, info, NOTI_EX_ERROR_IO_ERROR);
/// }
///
/// void _manager_events_delete_cb(noti_ex_manager_h handle, noti_ex_event_info_h info,
/// noti_ex_item_h deleted_item, void *user_data) {
/// }
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
///
/// ev.added = _manager_events_add_cb;
/// ev.updated = _manager_events_update_cb;
/// ev.deleted = _manager_events_delete_cb;
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_send_error(
  noti_ex_manager_h handle,
  noti_ex_event_info_h info,
  int error,
) =>
    tizenNotificationEx.noti_ex_manager_send_error(
      handle,
      info,
      error,
    );

/// @partner
/// @brief Updates notification.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/notification.admin
/// Parameter handle The notification manager handle
/// Parameter item The notification item to be updated
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_item_h
/// @see #noti_ex_manager_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _manager_events_error_cb(noti_ex_manager_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_manager_h handle;
/// noti_ex_manager_events_s ev;
/// noti_ex_item_h *items;
/// noti_ex_item_h *item;
/// int items_count;
/// int request_id;
///
/// ev.error = _manager_events_error_cb;
/// ret = noti_ex_manager_create(&handle, NOTI_EX_RECEIVER_GROUP_INDICATOR, ev, NULL);
/// ret = noti_ex_manager_get(handle, &items, &items_count);
/// for (int i = 0; i < items_count; i++) {
/// item = items[i];
///
/// // modify item
/// noti_ex_manager_update(handle, item, &request_id);
/// }
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_manager_update(
  noti_ex_manager_h handle,
  noti_ex_item_h item,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_manager_update(
      handle,
      item,
      request_id,
    );

/// @brief Creates the multi-language item handle.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_multi_lang_destroy().
/// Output parameter handle The multi-language item handle
/// Parameter msgid The identifier of the message to be translated. One of the identifers declared in PO files. \n
/// The message of @a msgid and @a format must contain the same specifiers and in the same order.
/// Parameter format The string that contains the text to be written. \n
/// It can optionally contain embedded format specifiers \n
/// that are replaced by the values specified in subsequent additional arguments and formatted as requested. \n
/// Valid specifiers are as follows. \n
/// %d : Signed decimal integer \n
/// %f : Decimal floating point \n
/// %s : String of characters
/// Parameter ... The additional arguments. The values to be used to replace format specifiers in the format string.
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_multi_lang_h
/// @see noti_ex_multi_lang_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_multi_lang_h handle = NULL;
///
/// // _IDS_TEST_ : "Hi %s version %f"
/// ret = noti_ex_multi_lang_create(&handle, "_IDS_TEST_", "Hi %s version %f", "Tizen", 5.5);
/// noti_ex_multi_lang_destroy(handle);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_multi_lang_create(
  ffi.Pointer<noti_ex_multi_lang_h> handle,
  ffi.Pointer<ffi.Char> msgid,
  ffi.Pointer<ffi.Char> format,
) =>
    tizenNotificationEx.noti_ex_multi_lang_create(
      handle,
      msgid,
      format,
    );

/// @brief Destroys the multi-language item handle.
/// @since_tizen 5.5
/// Parameter handle The multi-language item handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_multi_lang_h
/// @see noti_ex_multi_lang_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_multi_lang_h handle = NULL;
///
/// // _IDS_TEST_ : "Hi %s version %f"
/// ret = noti_ex_multi_lang_create(&handle, "_IDS_TEST_", "Hi %s version %f", "Tizen", 5.5);
/// noti_ex_multi_lang_destroy(handle);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_multi_lang_destroy(
  noti_ex_multi_lang_h handle,
) =>
    tizenNotificationEx.noti_ex_multi_lang_destroy(
      handle,
    );

/// @brief Creates the notification_ex padding handle.
/// @details Padding information can be defined as a notification_ex padding handle
/// with left, right, top and bottom values.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_padding_destroy().
/// Output parameter handle The notification_ex padding handle
/// Parameter left The left value
/// Parameter top The top value
/// Parameter right The right value
/// Parameter bottom The bottom value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_padding_h
/// @see noti_ex_padding_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_padding_h padding = NULL;
///
/// ret = noti_ex_padding_create(&padding, 0, 0, 0, 0);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_padding_create(
  ffi.Pointer<noti_ex_padding_h> handle,
  int left,
  int top,
  int right,
  int bottom,
) =>
    tizenNotificationEx.noti_ex_padding_create(
      handle,
      left,
      top,
      right,
      bottom,
    );

/// @brief Releases a notification_ex padding handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex padding handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_padding_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_padding_destroy(padding);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_padding_destroy(
  noti_ex_padding_h handle,
) =>
    tizenNotificationEx.noti_ex_padding_destroy(
      handle,
    );

/// @brief Gets the bottom value of padding.
/// @since_tizen 5.5
/// Parameter handle The notification_ex padding handle
/// Output parameter val The bottom value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_padding_h
/// @see noti_ex_padding_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int bottom;
///
/// ret = noti_ex_padding_get_bottom(padding, &bottom);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_padding_get_bottom(
  noti_ex_padding_h handle,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenNotificationEx.noti_ex_padding_get_bottom(
      handle,
      val,
    );

/// @brief Gets the left value of padding.
/// @since_tizen 5.5
/// Parameter handle The notification_ex padding handle
/// Output parameter val The left value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_padding_h
/// @see noti_ex_padding_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int left;
///
/// ret = noti_ex_padding_get_left(padding, &left);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_padding_get_left(
  noti_ex_padding_h handle,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenNotificationEx.noti_ex_padding_get_left(
      handle,
      val,
    );

/// @brief Gets the right value of padding.
/// @since_tizen 5.5
/// Parameter handle The notification_ex padding handle
/// Output parameter val The right value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_padding_h
/// @see noti_ex_padding_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int right;
///
/// ret = noti_ex_padding_get_right(padding, &right);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_padding_get_right(
  noti_ex_padding_h handle,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenNotificationEx.noti_ex_padding_get_right(
      handle,
      val,
    );

/// @brief Gets the top value of padding.
/// @since_tizen 5.5
/// Parameter handle The notification_ex padding handle
/// Output parameter val The top value
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_padding_h
/// @see noti_ex_padding_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// int top;
///
/// ret = noti_ex_padding_get_top(padding, &top);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_padding_get_top(
  noti_ex_padding_h handle,
  ffi.Pointer<ffi.Int> val,
) =>
    tizenNotificationEx.noti_ex_padding_get_top(
      handle,
      val,
    );

/// @brief Creates the notification_ex reporter handle.
/// @details The reporter handle is created with event callbacks and
/// the user can listen notification events through the event callbacks.
/// Callbacks in @a event_callbacks can be set to NULL, which will result in the corresponding events not being received.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// @remarks @a handle must be released using noti_ex_reporter_destroy().
/// Output parameter handle The notification reporter handle
/// Parameter event_callbacks The callbacks for notification events
/// Parameter user_data The user data for @a event_callbacks
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_item_h
/// @see #noti_ex_reporter_events_s
/// @see noti_ex_reporter_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_event_cb(noti_ex_reporter_h handle, noti_ex_event_info_h info,
/// noti_ex_item_h *items, int cnt, void *user_data) {
/// }
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle,
/// noti_ex_error_e error, int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
///
/// ev.event = _reporter_events_event_cb;
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_create(
  ffi.Pointer<noti_ex_reporter_h> handle,
  noti_ex_reporter_events_s event_callbacks,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenNotificationEx.noti_ex_reporter_create(
      handle,
      event_callbacks,
      user_data,
    );

/// @brief Deletes a notification.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter handle The notification reporter handle
/// Parameter noti The notification handle to be updated
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see noti_ex_reporter_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
/// noti_ex_item_h group_item = NULL;
/// noti_ex_item_h child_item = NULL;
/// int request_id;
///
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// ret = noti_ex_reporter_find_by_root_id(handle, "group_id", &group_item);
/// ret = noti_ex_reporter_delete(handle, group_item, &request_id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_delete(
  noti_ex_reporter_h handle,
  noti_ex_item_h noti,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_reporter_delete(
      handle,
      noti,
      request_id,
    );

/// @brief Deletes all notifications.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter handle The notification reporter handle
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see noti_ex_reporter_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
/// noti_ex_item_h group_item = NULL;
/// noti_ex_item_h child_item = NULL;
/// int request_id;
///
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// ret = noti_ex_reporter_delete_all(handle, &request_id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_delete_all(
  noti_ex_reporter_h handle,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_reporter_delete_all(
      handle,
      request_id,
    );

/// @brief Destroys the notification_ex reporter handle.
/// @since_tizen 5.5
/// Parameter handle The notification reporter handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see noti_ex_reporter_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
///
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// ret = noti_ex_reporter_destroy(handle);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_destroy(
  noti_ex_reporter_h handle,
) =>
    tizenNotificationEx.noti_ex_reporter_destroy(
      handle,
    );

/// @brief Finds notification by root id.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter handle The notification reporter handle
/// Parameter root_id The id of the foremost notification item to be retrieved
/// Output parameter item The result of the find operation \n
/// The @a item must be released using noti_ex_item_destroy().
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see noti_ex_reporter_create()
/// @see noti_ex_item_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
/// noti_ex_item_h group_item = NULL;
/// noti_ex_item_h child_item = NULL;
/// int request_id;
///
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// ret = noti_ex_reporter_find_by_root_id(handle, "group_id", &group_item);
/// ret = noti_ex_reporter_delete(handle, group_item, &request_id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_find_by_root_id(
  noti_ex_reporter_h handle,
  ffi.Pointer<ffi.Char> root_id,
  ffi.Pointer<noti_ex_item_h> item,
) =>
    tizenNotificationEx.noti_ex_reporter_find_by_root_id(
      handle,
      root_id,
      item,
    );

/// @brief Posts a notification.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter handle The notification reporter handle
/// Parameter noti The notification handle to be posted
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see noti_ex_reporter_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
/// noti_ex_item_h group_item = NULL;
/// noti_ex_item_h child_item = NULL;
/// int request_id;
///
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// ret = noti_ex_item_group_create(&group_item, "group_id");
/// ret = noti_ex_item_button_create(&child_item, "button_id", "button_title");
/// ret = noti_ex_item_group_add_child(group_item, child_item);
/// noti_ex_item_destroy(child_item);
///
/// ret = noti_ex_reporter_post(handle, group_item, &request_id);
/// noti_ex_item_destroy(group_item);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_post(
  noti_ex_reporter_h handle,
  noti_ex_item_h noti,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_reporter_post(
      handle,
      noti,
      request_id,
    );

/// @brief Posts notifications contained in a list.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter handle The notification reporter handle
/// Parameter noti_list The notification handle list to be posted
/// Parameter count The count of notifications in @a noti_list
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see noti_ex_reporter_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
/// noti_ex_item_h group_item = NULL;
/// noti_ex_item_h child_item = NULL;
/// noti_ex_item_h *noti_list = (noti_ex_item_h *)calloc(2, sizeof(noti_ex_item_h));
/// int request_id;
///
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// ret = noti_ex_item_group_create(&noti_list[0], "group_id1");
/// ret = noti_ex_item_button_create(&child_item, "button_id1", "button_title");
/// ret = noti_ex_item_group_add_child(noti_list[0], child_item);
/// noti_ex_item_destroy(child_item);
///
/// ret = noti_ex_item_group_create(&noti_list[1], "group_id2");
/// ret = noti_ex_item_button_create(&child_item, "button_id2", "button_title");
/// ret = noti_ex_item_group_add_child(noti_list[1], child_item);
/// noti_ex_item_destroy(child_item);
///
/// ret = noti_ex_reporter_post_list(handle, noti_list, 2, &request_id);
/// noti_ex_item_destroy(noti_list[0]);
/// noti_ex_item_destroy(noti_list[1]);
///
/// free(noti_list);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_post_list(
  noti_ex_reporter_h handle,
  ffi.Pointer<noti_ex_item_h> noti_list,
  int count,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_reporter_post_list(
      handle,
      noti_list,
      count,
      request_id,
    );

/// @brief Sends error to the manager.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Output parameter handle The notification reporter handle
/// Parameter info The handle that contains event information
/// Parameter error The error type
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see #noti_ex_event_info_h
/// @see #noti_ex_manager_events_s
/// @see #noti_ex_error_e
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_event_cb(noti_ex_reporter_h handle, noti_ex_event_info_h info,
/// noti_ex_item_h *items, int cnt, void *user_data) {
///
/// // if something wrong about process
/// noti_ex_reporter_send_error(handle, info, NOTI_EX_ERROR_IO_ERROR);
/// }
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle,
/// noti_ex_error_e error, int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
///
/// ev.event = _reporter_events_event_cb;
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_send_error(
  noti_ex_reporter_h handle,
  noti_ex_event_info_h info,
  int error,
) =>
    tizenNotificationEx.noti_ex_reporter_send_error(
      handle,
      info,
      error,
    );

/// @brief Updates a notification.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/notification
/// Parameter handle The notification reporter handle
/// Parameter noti The notification handle to be updated
/// Output parameter request_id The id of request
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_PERMISSION_DENIED Permission deny
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_IO_ERROR IO error
/// @see noti_ex_reporter_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// void _reporter_events_error_cb(noti_ex_reporter_h handle, noti_ex_error_e error,
/// int req_id, void *user_data) {
/// }
///
/// {
/// int ret;
/// noti_ex_reporter_h handle;
/// noti_ex_reporter_events_s ev;
/// noti_ex_item_h group_item = NULL;
/// noti_ex_item_h child_item = NULL;
/// int request_id;
///
/// ev.error = _reporter_events_error_cb;
/// ret = noti_ex_reporter_create(&handle, ev, NULL);
/// ret = noti_ex_reporter_find_by_root_id(handle, "group_id", &group_item);
/// ret = noti_ex_item_group_set_direction(group_item, false);
/// ret = noti_ex_reporter_update(handle, group_item, &request_id);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_reporter_update(
  noti_ex_reporter_h handle,
  noti_ex_item_h noti,
  ffi.Pointer<ffi.Int> request_id,
) =>
    tizenNotificationEx.noti_ex_reporter_update(
      handle,
      noti,
      request_id,
    );

/// @brief Creates the notification_ex style handle.
/// @details Style information can be defined as a notification_ex style handle
/// with color, padding and geometry information.
/// The color is the defined notification_ex color handle.
/// The padding is the defined notification_ex padding handle.
/// The geometry is the defined notification_ex geometry handle.
/// @since_tizen 5.5
/// @remarks @a handle must be released using noti_ex_style_destroy().
/// @a color, @a padding and @a geometry must not be released if the function returns #NOTI_EX_ERROR_NONE.
/// @a color, @a padding and @a geometry will be released when @a handle is released.
/// Output parameter handle The notification_ex padding handle
/// Parameter color The notification_ex color handle
/// Parameter padding The notification_ex padding handle
/// Parameter geometry The notification_ex geometry handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #NOTI_EX_ERROR_OUT_OF_MEMORY out of memory
/// @see #noti_ex_style_h
/// @see #noti_ex_color_h
/// @see #noti_ex_padding_h
/// @see #noti_ex_geometry_h
/// @see noti_ex_style_destroy()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_style_h style = NULL;
/// noti_ex_color_h color = NULL;
/// noti_ex_padding_h padding = NULL;
/// noti_ex_geometry_h geometry = NULL;
///
/// ret = noti_ex_color_create(&color, 0, 0, 0, 0);
/// ret = noti_ex_padding_create(&padding, 0, 0, 0, 0);
/// ret = noti_ex_geometry_create(&geometry, 0, 0, 0, 0);
///
/// ret = noti_ex_style_create(&style, color, padding, geometry);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_create(
  ffi.Pointer<noti_ex_style_h> handle,
  noti_ex_color_h color,
  noti_ex_padding_h padding,
  noti_ex_geometry_h geometry,
) =>
    tizenNotificationEx.noti_ex_style_create(
      handle,
      color,
      padding,
      geometry,
    );

/// @brief Releases the notification_ex style handle.
/// @since_tizen 5.5
/// Parameter handle The notification_ex style handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_style_h
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
///
/// ret = noti_ex_style_destroy(style);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_destroy(
  noti_ex_style_h handle,
) =>
    tizenNotificationEx.noti_ex_style_destroy(
      handle,
    );

/// @brief Gets the background color of a style.
/// @since_tizen 5.5
/// @remarks @a color must be released using noti_ex_color_destroy().
/// Parameter handle The notification_ex style handle
/// Output parameter color The notification_ex color handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_style_h
/// @see noti_ex_style_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_color_h color = NULL;
///
/// ret = noti_ex_style_get_background_color(style, &color);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_get_background_color(
  noti_ex_style_h handle,
  ffi.Pointer<noti_ex_color_h> color,
) =>
    tizenNotificationEx.noti_ex_style_get_background_color(
      handle,
      color,
    );

/// @brief Gets the background image path from style.
/// @since_tizen 5.5
/// @remarks The @a image_path should be released using free().
/// Parameter handle The notification_ex style handle
/// Output parameter image_path The background image path
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_style_h
/// @see noti_ex_style_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *image_path;
///
/// ret = noti_ex_style_get_background_image(style, &image_path);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_get_background_image(
  noti_ex_style_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> image_path,
) =>
    tizenNotificationEx.noti_ex_style_get_background_image(
      handle,
      image_path,
    );

/// @brief Gets the color information from a style.
/// @since_tizen 5.5
/// @remarks @a color must be released using noti_ex_color_destroy().
/// Parameter handle The notification_ex style handle
/// Output parameter color The notification_ex color handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_style_h
/// @see #noti_ex_color_h
/// @see noti_ex_style_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_color_h color = NULL;
///
/// ret = noti_ex_style_get_color(style, &color);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_get_color(
  noti_ex_style_h handle,
  ffi.Pointer<noti_ex_color_h> color,
) =>
    tizenNotificationEx.noti_ex_style_get_color(
      handle,
      color,
    );

/// @brief Gets the geometry information from style.
/// @since_tizen 5.5
/// @remarks @a geometry must be released using noti_ex_geometry_destroy().
/// Parameter handle The notification_ex style handle
/// Output parameter geometry The notification_ex geometry handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_style_h
/// @see #noti_ex_geometry_h
/// @see noti_ex_style_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_geometry_h geometry = NULL;
///
/// ret = noti_ex_style_get_geometry(style, &geometry);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_get_geometry(
  noti_ex_style_h handle,
  ffi.Pointer<noti_ex_geometry_h> geometry,
) =>
    tizenNotificationEx.noti_ex_style_get_geometry(
      handle,
      geometry,
    );

/// @brief Gets the padding information from a style.
/// @since_tizen 5.5
/// @remarks @a padding must be released using noti_ex_padding_destroy().
/// Parameter handle The notification_ex style handle
/// Output parameter padding The notification_ex padding handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_style_h
/// @see #noti_ex_padding_h
/// @see noti_ex_style_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_padding_h padding = NULL;
///
/// ret = noti_ex_style_get_padding(style, &padding);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_get_padding(
  noti_ex_style_h handle,
  ffi.Pointer<noti_ex_padding_h> padding,
) =>
    tizenNotificationEx.noti_ex_style_get_padding(
      handle,
      padding,
    );

/// @brief Sets the background color of a style.
/// @since_tizen 5.5
/// @remarks @a color must be released using noti_ex_color_destroy().
/// Parameter handle The notification_ex style handle
/// Parameter color The notification_ex color handle
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_style_h
/// @see noti_ex_style_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// noti_ex_color_h color;
///
/// ret = noti_ex_color_create(&color, 0, 0, 0, 0);
/// ret = noti_ex_style_set_background_color(style, color);
/// ret = noti_ex_color_destroy(color);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_set_background_color(
  noti_ex_style_h handle,
  noti_ex_color_h color,
) =>
    tizenNotificationEx.noti_ex_style_set_background_color(
      handle,
      color,
    );

/// @brief Sets the background image path of a style.
/// @since_tizen 5.5
/// Parameter handle The notification_ex style handle
/// Parameter image_path The background image path
/// @return #NOTI_EX_ERROR_NONE On success, other value on failure
/// @retval #NOTI_EX_ERROR_NONE Success
/// @retval #NOTI_EX_ERROR_INVALID_PARAMETER Invalid parameter
/// @see #noti_ex_style_h
/// @see noti_ex_style_create()
/// @par Sample code:
/// @code
/// #include <notification_ex.h>
///
/// {
/// int ret;
/// char *image_path[BUFLEN];
///
/// char *shared_path = app_get_shared_resource_path();
/// snprintf(image_path, BUFLEN, "%simage.png", shared_path);
/// free(shared_path);
///
/// ret = noti_ex_style_set_background_image(style, image_path);
/// }
/// @endcode
///
/// Module getter: `tizenNotificationEx`.
int noti_ex_style_set_background_image(
  noti_ex_style_h handle,
  ffi.Pointer<ffi.Char> image_path,
) =>
    tizenNotificationEx.noti_ex_style_set_background_image(
      handle,
      image_path,
    );

