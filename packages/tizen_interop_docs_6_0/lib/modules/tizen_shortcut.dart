// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenShortcut`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libshortcut.so.0`.
///
/// Application Framework / Shortcut.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_shortcut;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a shortcut to home, asynchronously.
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/shortcut
/// @remarks If a homescreen does not support this feature, you will get a proper error code.\n
/// Application must check the return value of this function.\n
/// Application must check the return status from the callback function.\n
/// Application should set the callback function to get the result of this request.
/// Parameter name The name of the created shortcut icon
/// Parameter type The type of shortcuts
/// Parameter uri The specific information for delivering to the viewer for creating a shortcut
/// Parameter icon The absolute path of an icon file
/// Parameter allow_duplicate @c 1 if it accepts the duplicated shortcut,
/// otherwise @c 0
/// Parameter cb The address of the callback function that is called when the result comes back from the viewer
/// Parameter data The callback data that is used in the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SHORTCUT_ERROR_NONE Successful
/// @retval #SHORTCUT_ERROR_NOT_SUPPORTED Not supported
/// @retval #SHORTCUT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SHORTCUT_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #SHORTCUT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SHORTCUT_ERROR_IO_ERROR I/O Error
/// @retval #SHORTCUT_ERROR_RESOURCE_BUSY Device or resource busy
/// @retval #SHORTCUT_ERROR_NO_SPACE There is no space to add a new shortcut
/// @retval #SHORTCUT_ERROR_EXIST Shortcut is already exist
/// @retval #SHORTCUT_ERROR_FAULT Unrecoverable error
/// @retval #SHORTCUT_ERROR_COMM Connection not established or communication problem
/// @pre You have to prepare the callback function.
/// @post You have to check the return status from the callback function which is passed by the argument.
/// @see result_cb()
/// @par Example
/// @code
/// #include <stdio.h>
/// #include <shortcut_manager.h>
/// static int _result_cb(int ret, int pid, void *data)
/// {
/// if (ret < 0)
/// dlog_print("Failed to add a shortcut: %s\n", perror(ret));
///
/// dlog_print("Processed by the %d\n", pid);
/// return 0;
/// }
///
/// static int app_create(void *data)
/// {
/// char* data_path = app_get_data_path();
/// int path_len = strlen(data_path)+10;
/// char * path = malloc(path_len);
/// memset(path, 0, path_len);
/// strncat(path, data_path, path_len);
/// strncat(path, "Friend.jpg", path_len);
///
/// shortcut_add_to_home("With friends", LAUNCH_BY_URI, "gallery:0000-0000", path, 0, _result_cb, NULL);
/// free(path);
///
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenShortcut`.
int shortcut_add_to_home(
  ffi.Pointer<ffi.Char> name,
  int type,
  ffi.Pointer<ffi.Char> uri,
  ffi.Pointer<ffi.Char> icon,
  int allow_duplicate,
  result_cb cb,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenShortcut.shortcut_add_to_home(
      name,
      type,
      uri,
      icon,
      allow_duplicate,
      cb,
      data,
    );

/// @brief Adds a widget to home, asynchronously.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/shortcut
/// @remarks If a homescreen does not support this feature, you will get a proper error code.\n
/// Application must check the return value of this function.\n
/// Application must check the return status from the callback function.\n
/// Application should set the callback function to get the result of this request.
/// Parameter name The name of the created widget which will be shown when the widget is not prepared
/// Parameter size The size of widget
/// Parameter widget_id Widget ID
/// Parameter icon The absolute path of an icon file which will be shown when the widget is not prepared
/// Parameter period The Update period in seconds
/// Parameter allow_duplicate @c 1 if it accepts the duplicated widget,
/// otherwise @c 0
/// Parameter cb The address of the callback function that is called when the result comes back from the viewer
/// Parameter data The callback data that is used in the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SHORTCUT_ERROR_NONE Successful
/// @retval #SHORTCUT_ERROR_NOT_SUPPORTED Not supported
/// @retval #SHORTCUT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SHORTCUT_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #SHORTCUT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SHORTCUT_ERROR_IO_ERROR I/O Error
/// @retval #SHORTCUT_ERROR_FAULT Unrecoverable error
/// @retval #SHORTCUT_ERROR_COMM Connection not established or communication problem
/// @pre You have to prepare the callback function.
/// @post You have to check the return status from the callback function which is passed by the argument.
/// @see result_cb()
/// @see shortcut_widget_size_e
/// @par Example
/// @code
/// #include <stdio.h>
/// #include <shortcut.h>
/// #include <storage.h>
///
/// #define TIZEN_PATH_MAX 1024
/// static int _result_cb(int ret, int pid, void *data)
/// {
/// if (ret < 0)
/// dlog_print("Failed to add a widget: %s\n", perror(ret));
///
/// dlog_print("Processed by the %d\n", pid);
///
/// return 0;
/// }
///
/// static int app_create(void *data)
/// {
/// char *image_root = NULL;
/// char image_path[TIZEN_PATH_MAX] = {0,};
///
/// storage_get_directory(STORAGE_TYPE_INTERNAL, STORAGE_DIRECTORY_IMAGES, &image_root);
/// snprintf(image_path, TIZEN_PATH_MAX, "%s/alter_icon.png", image_root);
///
/// shortcut_add_to_home_widget("alter_name", WIDGET_SIZE_1x1, "org.tizen.testwidget",
/// image_path, -1.0f, 0, _result_cb, NULL);
///
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenShortcut`.
int shortcut_add_to_home_widget(
  ffi.Pointer<ffi.Char> name,
  int size,
  ffi.Pointer<ffi.Char> widget_id,
  ffi.Pointer<ffi.Char> icon,
  double period,
  int allow_duplicate,
  result_cb cb,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenShortcut.shortcut_add_to_home_widget(
      name,
      size,
      widget_id,
      icon,
      period,
      allow_duplicate,
      cb,
      data,
    );

/// @brief Gets the preset list of shortcut template from the installed package, synchronously.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/shortcut
/// @remarks If a homescreen does not support this feature, you will get a proper error code.\n
/// Application must check the return value of this function.\n
/// Application must check the return status from the callback function.\n
/// Application should set the callback function to get the result of this request.
/// Parameter package_name The package name
/// Parameter list_cb The callback function to get the shortcut item information
/// Parameter data The callback data that is used in the callback function
/// @return @c N Number of items (call count of the callback function),
/// otherwise a negative error value
/// @retval #SHORTCUT_ERROR_NOT_SUPPORTED Not supported
/// @retval #SHORTCUT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SHORTCUT_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #SHORTCUT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SHORTCUT_ERROR_IO_ERROR I/O Error
/// @retval #SHORTCUT_ERROR_FAULT Unrecoverable error
/// @retval #SHORTCUT_ERROR_COMM Connection not established or communication problem
/// @pre You have to prepare the callback function.
/// @post You have to check the return status from the callback function which is passed by the argument.
///
/// Module getter: `tizenShortcut`.
int shortcut_get_list(
  ffi.Pointer<ffi.Char> package_name,
  shortcut_list_cb list_cb,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenShortcut.shortcut_get_list(
      package_name,
      list_cb,
      data,
    );

/// @brief Removes a shortcut from home, asynchronously.
/// @details If the callback function registered for a widget, the shortcut deletion is possible.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/shortcut
/// Parameter name The name of the created shortcut icon
/// Parameter cb The address of the callback function that is called when the result comes back from the viewer
/// Parameter user_data The callback data that is used in the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #SHORTCUT_ERROR_NONE Successful
/// @retval #SHORTCUT_ERROR_NOT_SUPPORTED Not supported
/// @retval #SHORTCUT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SHORTCUT_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #SHORTCUT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SHORTCUT_ERROR_IO_ERROR I/O Error
/// @retval #SHORTCUT_ERROR_COMM Connection not established or communication problem
/// @pre You have to prepare the callback function.
/// @post You have to check the return status from the callback function which is passed by the argument.
/// @see result_cb()
/// @par Example
/// @code
/// #include <shortcut_manager.h>
///
/// int _result_cb(int ret, void *data)
/// {
/// if (ret < 0)
/// dlog_print("Failed to remove a shortcut: %d\n", ret);
///
/// return 0;
/// }
///
/// {
/// int result;
///
/// result = shortcut_remove_from_home("shortcut_name", _result_cb, NULL);
/// if (result != SHORTCUT_ERROR_NONE) {
/// dlog_print("Failed to remove a shortcut: %d\n", result);
/// return result;
/// }
/// }
///
/// @endcode
///
/// Module getter: `tizenShortcut`.
int shortcut_remove_from_home(
  ffi.Pointer<ffi.Char> name,
  result_cb cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenShortcut.shortcut_remove_from_home(
      name,
      cb,
      user_data,
    );

/// @brief Sets the callback function to listen the remove requests from applications.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/shortcut
/// @remarks Should be used in the homescreen.\n
/// Should check the return value of this function.
/// Prospective Clients: Homescreen.
/// Parameter remove_cb The callback function pointer that is invoked when remove_from_home is requested
/// Parameter data The callback data to deliver to the callback function
/// @return 0 on success, otherwise a negative error value
/// @retval #SHORTCUT_ERROR_NONE Successful
/// @retval #SHORTCUT_ERROR_NOT_SUPPORTED Not supported
/// @retval #SHORTCUT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SHORTCUT_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #SHORTCUT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SHORTCUT_ERROR_IO_ERROR I/O Error
/// @retval #SHORTCUT_ERROR_COMM Connection not established or communication problem
/// @pre You have to prepare a callback function.
/// @post If a request is sent from the application, the registered callback will be invoked.
/// @see shortcut_remove_cb()
/// @see shortcut_error_e
///
/// Module getter: `tizenShortcut`.
int shortcut_set_remove_cb(
  shortcut_remove_cb remove_cb,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenShortcut.shortcut_set_remove_cb(
      remove_cb,
      data,
    );

/// @brief Sets a callback function to listen requests from applications.
/// @since_tizen 2.4
/// @privlevel public
/// @privilege %http://tizen.org/privilege/shortcut
/// @remarks Should be used in the homescreen.\n
/// Should check the return value of this function.
/// Prospective Clients: Homescreen.
/// Parameter request_cb The callback function pointer that is invoked when add_to_home is requested
/// Parameter data The callback data to deliver to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #SHORTCUT_ERROR_NONE Successful
/// @retval #SHORTCUT_ERROR_NOT_SUPPORTED Not supported
/// @retval #SHORTCUT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SHORTCUT_ERROR_INVALID_PARAMETER Invalid function parameter
/// @retval #SHORTCUT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #SHORTCUT_ERROR_IO_ERROR I/O Error
/// @retval #SHORTCUT_ERROR_COMM Connection not established or communication problem
/// @pre You have to prepare a callback function.
/// @post If a request is sent from the application, the registered callback will be invoked.
/// @see shortcut_request_cb()
/// @see shortcut_error_e
///
/// Module getter: `tizenShortcut`.
int shortcut_set_request_cb(
  shortcut_request_cb request_cb,
  ffi.Pointer<ffi.Void> data,
) =>
    tizenShortcut.shortcut_set_request_cb(
      request_cb,
      data,
    );

/// @brief Unsets a callback for the shortcut remove.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/shortcut
/// @remarks The specific error code can be obtained using the gat_last_result() method. Error codes are described in Exception section.
/// @return None
/// @exception #SHORTCUT_ERROR_NONE Successful
/// @exception #SHORTCUT_ERROR_NOT_SUPPORTED Not supported
/// @exception #SHORTCUT_ERROR_PERMISSION_DENIED Permission denied
/// @see shortcut_set_remove_cb()
/// @see get_last_result()
///
/// Module getter: `tizenShortcut`.
void shortcut_unset_remove_cb() =>
    tizenShortcut.shortcut_unset_remove_cb();

/// @brief Unsets a callback for the shortcut request.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/shortcut
/// @remarks The specific error code can be obtained using the gat_last_result() method. Error codes are described in Exception section.
/// @return None
/// @exception #SHORTCUT_ERROR_NONE Successful
/// @exception #SHORTCUT_ERROR_NOT_SUPPORTED Not supported
/// @exception #SHORTCUT_ERROR_PERMISSION_DENIED Permission denied
/// @see shortcut_set_request_cb()
/// @see get_last_result()
///
/// Module getter: `tizenShortcut`.
void shortcut_unset_request_cb() =>
    tizenShortcut.shortcut_unset_request_cb();

