// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiUiInputmethod`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-ui-inputmethod.so.0`.
///
/// UIX / Input Method.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_ui_inputmethod;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Commits contents such as image to the associated text input UI control.
///
/// @since_tizen 4.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter content The content URI to be sent
/// Parameter description The content description
/// Parameter mime_type The MIME type received from the ime_mime_type_set_request_cb()
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_mime_type_set_request_cb()
/// @see ime_event_set_mime_type_set_request_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_commit_content(
  ffi.Pointer<ffi.Char> content,
  ffi.Pointer<ffi.Char> description,
  ffi.Pointer<ffi.Char> mime_type,
) =>
    tizenCapiUiInputmethod.ime_commit_content(
      content,
      description,
      mime_type,
    );

/// @brief Sends the text to the associated text input UI control.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter str The UTF-8 string to be committed
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_show_preedit_string()
/// @see ime_hide_preedit_string()
/// @see ime_update_preedit_string()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_commit_string(
  ffi.Pointer<ffi.Char> str,
) =>
    tizenCapiUiInputmethod.ime_commit_string(
      str,
    );

/// @brief Gets the autocapital type information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the autocapital type information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter autocapital_type Autocapital type information
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_autocapital_type(
  ime_context_h context,
  ffi.Pointer<ffi.Int32> autocapital_type,
) =>
    tizenCapiUiInputmethod.ime_context_get_autocapital_type(
      context,
      autocapital_type,
    );

/// @brief Gets the text bidirectional information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the bidirectional information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter bidi Text bidirectional information
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_bidi_direction(
  ime_context_h context,
  ffi.Pointer<ffi.Int32> bidi,
) =>
    tizenCapiUiInputmethod.ime_context_get_bidi_direction(
      context,
      bidi,
    );

/// @brief Gets the cursor position information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the cursor position information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter cursor_pos Cursor position information
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
/// @see ime_cursor_position_updated_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_cursor_position(
  ime_context_h context,
  ffi.Pointer<ffi.Int> cursor_pos,
) =>
    tizenCapiUiInputmethod.ime_context_get_cursor_position(
      context,
      cursor_pos,
    );

/// @brief Gets the input hint information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the input hint information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks @a input_hint is a bit-wise value which recommends the input panel provide
/// an auto completion and so on if it is capable of supporting such features.
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter input_hint Input hint information
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_input_hint(
  ime_context_h context,
  ffi.Pointer<ffi.Int32> input_hint,
) =>
    tizenCapiUiInputmethod.ime_context_get_input_hint(
      context,
      input_hint,
    );

/// @brief Gets the preferred language information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the preferred language information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter language Preferred language information
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_language(
  ime_context_h context,
  ffi.Pointer<ffi.Int32> language,
) =>
    tizenCapiUiInputmethod.ime_context_get_language(
      context,
      language,
    );

/// @brief Gets the layout information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the layout information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter layout Layout information
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
/// @see ime_layout_set_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_layout(
  ime_context_h context,
  ffi.Pointer<ffi.Int32> layout,
) =>
    tizenCapiUiInputmethod.ime_context_get_layout(
      context,
      layout,
    );

/// @brief Gets the layout variation information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the layout variation information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter layout_variation Layout variation information
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
/// @see ime_layout_variation_e
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_layout_variation(
  ime_context_h context,
  ffi.Pointer<ffi.Int32> layout_variation,
) =>
    tizenCapiUiInputmethod.ime_context_get_layout_variation(
      context,
      layout_variation,
    );

/// @brief Gets the password mode information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the password mode information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks If @a password_mode is @c true, the input panel is advised not to support the predictive text.
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter password_mode Password mode information \n @c true to indicate that a password being inputted,
/// @c false to indicate non-password edit field.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_password_mode(
  ime_context_h context,
  ffi.Pointer<ffi.Bool> password_mode,
) =>
    tizenCapiUiInputmethod.ime_context_get_password_mode(
      context,
      password_mode,
    );

/// @brief Gets the prediction mode information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the prediction mode information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter prediction_mode Prediction mode information \n @c true to allow the predictive
/// text feature if available, @c false to disable the predictive text feature
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_prediction_mode(
  ime_context_h context,
  ffi.Pointer<ffi.Bool> prediction_mode,
) =>
    tizenCapiUiInputmethod.ime_context_get_prediction_mode(
      context,
      prediction_mode,
    );

/// @brief Gets the @c Return key state information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the @c Return key state information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter return_key_state The @c Return key state information \n @c true to enable @c Return key
/// button, @c false to disable @c Return key button
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
/// @see ime_return_key_state_set_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_return_key_state(
  ime_context_h context,
  ffi.Pointer<ffi.Bool> return_key_state,
) =>
    tizenCapiUiInputmethod.ime_context_get_return_key_state(
      context,
      return_key_state,
    );

/// @brief Gets the @c Return key label type information from the given input context.
///
/// @details Each edit field has various attributes for input panel. This function can be
/// called to get the @c Return key label type information in ime_show_cb() callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter context The input context information of an associated text input UI control
/// Output parameter return_key_type The @c Return key label type information
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post Input panel UI should be drawn or operated by this information accordingly.
///
/// @see ime_show_cb()
/// @see ime_return_key_type_set_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_context_get_return_key_type(
  ime_context_h context,
  ffi.Pointer<ffi.Int32> return_key_type,
) =>
    tizenCapiUiInputmethod.ime_context_get_return_key_type(
      context,
      return_key_type,
    );

/// @brief Requests to create an option window from the input panel.
///
/// @details The input panel can call this function to open the option window. This
/// function calls ime_option_window_created_cb() callback function with
/// #IME_OPTION_WINDOW_TYPE_KEYBOARD parameter.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NO_CALLBACK_FUNCTION Necessary callback function is not set
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The ime_option_window_created_cb() and ime_option_window_destroyed_cb()
/// callback functions MUST be set by ime_event_set_option_window_created_cb() and
/// ime_event_set_option_window_destroyed_cb() respectively.
///
/// @post This function calls ime_option_window_created_cb() callback function to
/// create the option window. And ime_destroy_option_window() function can be called
/// to close the option window.
///
/// @see ime_event_set_option_window_created_cb()
/// @see ime_option_window_created_cb()
/// @see ime_destroy_option_window()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_create_option_window() =>
    tizenCapiUiInputmethod.ime_create_option_window();

/// @brief Requests to delete surrounding text.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter offset The offset value from the cursor position
/// Parameter len The length of the text to delete
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_request_surrounding_text()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_delete_surrounding_text(
  int offset,
  int len,
) =>
    tizenCapiUiInputmethod.ime_delete_surrounding_text(
      offset,
      len,
    );

/// @brief Requests to destroy an option window.
///
/// @details The input panel can call this function to close the option window which
/// is created from either the input panel or Settings application.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter window The option window to destroy
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NO_CALLBACK_FUNCTION Necessary callback function is not set
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @pre The ime_option_window_created_cb() and ime_option_window_destroyed_cb()
/// callback functions MUST be set by ime_event_set_option_window_created_cb() and
/// ime_event_set_option_window_destroyed_cb() respectively.
///
/// @post This function calls ime_option_window_destroyed_cb() callback function
/// to destroy the option window.
///
/// @see ime_event_set_option_window_destroyed_cb()
/// @see ime_option_window_destroyed_cb()
/// @see ime_create_option_window()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_destroy_option_window(
  ffi.Pointer<Evas_Object> window,
) =>
    tizenCapiUiInputmethod.ime_destroy_option_window(
      window,
    );

/// @brief Gets the device class of the key event.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter dev_info The device information from the key event
/// Output parameter dev_class The class of key input device. This can be #ECORE_IMF_DEVICE_CLASS_NONE if the device class is not available
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_process_key_event_cb()
/// @see ime_device_info_get_name()
/// @see ime_device_info_get_subclass()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_device_info_get_class(
  ime_device_info_h dev_info,
  ffi.Pointer<ffi.Int32> dev_class,
) =>
    tizenCapiUiInputmethod.ime_device_info_get_class(
      dev_info,
      dev_class,
    );

/// @brief Gets the device name of the key event.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks @a dev_name must be released using free().
///
/// Parameter dev_info The device information from the key event
/// Output parameter dev_name The name of key input device. This can be an empty string if the device name is not available
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_process_key_event_cb()
/// @see ime_device_info_get_class()
/// @see ime_device_info_get_subclass()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_device_info_get_name(
  ime_device_info_h dev_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dev_name,
) =>
    tizenCapiUiInputmethod.ime_device_info_get_name(
      dev_info,
      dev_name,
    );

/// @brief Gets the device subclass of the key event.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter dev_info The device information from the key event
/// Output parameter dev_subclass The subclass of key input device. This can be #ECORE_IMF_DEVICE_SUBCLASS_NONE if the device subclass is not available
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_process_key_event_cb()
/// @see ime_device_info_get_name()
/// @see ime_device_info_get_class()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_device_info_get_subclass(
  ime_device_info_h dev_info,
  ffi.Pointer<ffi.Int32> dev_subclass,
) =>
    tizenCapiUiInputmethod.ime_device_info_get_subclass(
      dev_info,
      dev_subclass,
    );

/// @brief Sets @c accessibility_state_changed event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_accessibility_state_changed_cb() callback function is called when
/// Accessibility in Settings application is on or off.
///
/// Parameter callback_func @c accessibility_state_changed event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_accessibility_state_changed_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_accessibility_state_changed_cb(
  ime_accessibility_state_changed_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_accessibility_state_changed_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c cursor_position_updated event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_cursor_position_updated_cb() callback function is called when the position
/// of the cursor in an associated text input UI control changes.
///
/// Parameter callback_func @c cursor_position_updated event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_cursor_position_updated_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_cursor_position_updated_cb(
  ime_cursor_position_updated_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_cursor_position_updated_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c display_language_changed event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_display_language_changed_cb() callback function is called when the system
/// display language is changed.
///
/// Parameter callback_func @c display_language_changed event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_display_language_changed_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_display_language_changed_cb(
  ime_display_language_changed_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_display_language_changed_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c focus_in event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_focus_in_cb() callback function is called when an associated text input
/// UI control has focus.
///
/// Parameter callback_func @c focus_in event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_focus_in_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_focus_in_cb(
  ime_focus_in_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_focus_in_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c focus_out event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_focus_out_cb() callback function is called when an associated text input
/// UI control loses focus.
///
/// Parameter callback_func @c focus_out event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_focus_out_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_focus_out_cb(
  ime_focus_out_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_focus_out_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c geometry_requested event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_geometry_requested_cb() callback function is called when an associated
/// text input UI control requests the position and size from the input panel.
///
/// Parameter callback_func @c geometry_requested event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_geometry_requested_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_geometry_requested_cb(
  ime_geometry_requested_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_geometry_requested_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c imdata_requested event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_imdata_requested_cb() callback function is called when an associated
/// text input UI control requests the application specific data from the input panel.
///
/// Parameter callback_func @c imdata_requested event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_imdata_requested_cb()
/// @see ime_event_set_imdata_set_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_imdata_requested_cb(
  ime_imdata_requested_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_imdata_requested_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c imdata_set event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_imdata_set_cb() callback function is called to set the application
/// specific data to deliver to the input panel.
///
/// Parameter callback_func @c imdata_set event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_imdata_set_cb()
/// @see ime_event_set_imdata_requested_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_imdata_set_cb(
  ime_imdata_set_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_imdata_set_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c input_context_reset event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_input_context_reset_cb() callback function is called to reset the input
/// context of an associated text input UI control.
///
/// Parameter callback_func @c input_context_reset event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_input_context_reset_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_input_context_reset_cb(
  ime_input_context_reset_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_input_context_reset_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c language_requested event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_language_requested_cb() callback function is called when an associated
/// text input UI control requests the language from the input panel.
///
/// Parameter callback_func @c language_requested event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_language_requested_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_language_requested_cb(
  ime_language_requested_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_language_requested_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c language_set event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_language_set_cb() callback function is called to set the preferred
/// language to the input panel.
///
/// Parameter callback_func @c language_set event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_language_set_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_language_set_cb(
  ime_language_set_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_language_set_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c layout_set event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_layout_set_cb() callback function is called when an associated text input
/// UI control requests the input panel to set its layout.
///
/// Parameter callback_func @c layout_set event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_layout_set_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_layout_set_cb(
  ime_layout_set_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_layout_set_cb(
      callback_func,
      user_data,
    );

/// @brief Sets MIME type event callback function.
///
/// @since_tizen 4.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_mime_type_set_request_cb() callback function is called when an associated text input
/// UI control requests the text entry to set the MIME type.
///
/// Parameter callback_func MIME type event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_mime_type_set_request_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_mime_type_set_request_cb(
  ime_mime_type_set_request_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_mime_type_set_request_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c option_window_created event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_option_window_created_cb() callback function is called to create the option window.
///
/// Parameter callback_func @c option_window_created event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_option_window_created_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_option_window_created_cb(
  ime_option_window_created_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_option_window_created_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c option_window_destroyed event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_option_window_destroyed_cb() callback function is called to destroy the option window.
///
/// Parameter callback_func @c option_window_destroyed event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_option_window_destroyed_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_option_window_destroyed_cb(
  ime_option_window_destroyed_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_option_window_destroyed_cb(
      callback_func,
      user_data,
    );

/// @brief Sets a callback function to give a hint about predicted words.
///
/// @since_tizen 5.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_prediction_hint_data_set_cb() callback function is called to provide the prediction
/// hint key and value which can be delivered to the input panel.
///
/// Parameter callback_func The callback function to give hints
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_prediction_hint_data_set_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_prediction_hint_data_set_cb(
  ime_prediction_hint_data_set_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_prediction_hint_data_set_cb(
      callback_func,
      user_data,
    );

/// @brief Sets prediction hint event callback function.
///
/// @since_tizen 4.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_prediction_hint_set_cb() callback function is called to set the prediction
/// hint string to deliver to the input panel.
///
/// Parameter callback_func The prediction hint event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_prediction_hint_set_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_prediction_hint_set_cb(
  ime_prediction_hint_set_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_prediction_hint_set_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c process_key_event event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_process_key_event_cb() callback function is called when the key event
/// is received from the external keyboard devices or ime_send_key_event() function.
///
/// Parameter callback_func @c process_key_event event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_process_key_event_cb()
/// @see ime_run()
///
/// @code
/// static void inputmethod_create_cb(void *user_data);
/// static void inputmethod_terminate_cb(void *user_data);
/// static void inputmethod_show_cb(int context_id, ime_context_h context, void *user_data);
/// static void inputmethod_hide_cb(int context_id, void *user_data);
///
/// static bool inputmethod_process_key_event_cb(ime_key_code_e keycode, ime_key_mask_e keymask, void *user_data);
/// {
/// if (keymask & IME_KEY_MASK_CONTROL) {
/// return false; // e.g., Control+C key event would be forwarded to UI control of the client application
/// }
/// if (keymask & IME_KEY_MASK_ALT) {
/// return false;
/// }
///
/// if (!(keymask & IME_KEY_MASK_RELEASED)) { // The key is pressed
/// if (keycode == IME_KEY_1) {
/// ime_update_preedit_string("1"); // Show "1" preedit string
/// return true;
/// }
/// else if (keycode == IME_KEY_2) {
/// ime_commit_string("12"); // Input "12" string
/// return true;
/// }
/// }
///
/// return false;
/// }
///
/// void ime_app_main(int argc, char **argv)
/// {
/// ime_callback_s basic_callback = {
/// inputmethod_create_cb,
/// inputmethod_terminate_cb,
/// inputmethod_show_cb,
/// inputmethod_hide_cb,
/// };
///
/// ime_event_set_process_key_event_cb(inputmethod_process_key_event_cb, NULL);
///
/// ime_run(&basic_callback, NULL);
/// }
/// @endcode
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_process_key_event_cb(
  ime_process_key_event_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_process_key_event_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c process_key_event_with_keycode callback function to handle the key event with a keycode.
///
/// @since_tizen 5.5
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_process_key_event_with_keycode_cb() callback function is called when the key event
/// is received from external keyboard devices or ime_send_key_event().
///
/// Parameter callback_func @c process_key_event_with_keycode() event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_process_key_event_with_keycode_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_process_key_event_with_keycode_cb(
  ime_process_key_event_with_keycode_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_process_key_event_with_keycode_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c return_key_state_set event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_return_key_state_set_cb() callback function is called when an associated
/// text input UI control requests the input panel to enable or disable the @c Return key state.
///
/// Parameter callback_func @c return_key_state_set event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_return_key_state_set_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_return_key_state_set_cb(
  ime_return_key_state_set_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_return_key_state_set_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c return_key_type_set event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_return_key_type_set_cb() callback function is called when an associated
/// text input UI control requests the input panel to set the @c Return key label.
///
/// Parameter callback_func @c return_key_type_set event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_return_key_type_set_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_return_key_type_set_cb(
  ime_return_key_type_set_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_return_key_type_set_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c rotation_degree_changed event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_rotation_degree_changed_cb() callback function is called when the device
/// is rotated.
///
/// Parameter callback_func @c rotation_degree_changed event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_rotation_degree_changed_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_rotation_degree_changed_cb(
  ime_rotation_degree_changed_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_rotation_degree_changed_cb(
      callback_func,
      user_data,
    );

/// @brief Sets @c surrounding_text_updated event callback function.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The ime_surrounding_text_updated_cb() callback function is called when an
/// associated text input UI control responds to a request with the surrounding text.
///
/// Parameter callback_func @c surrounding_text_updated event callback function
/// Parameter user_data User data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @post The ime_run() function should be called to start the IME application's main loop.
///
/// @see ime_surrounding_text_updated_cb()
/// @see ime_run()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_event_set_surrounding_text_updated_cb(
  ime_surrounding_text_updated_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_event_set_surrounding_text_updated_cb(
      callback_func,
      user_data,
    );

/// @brief Gets the pointer of input panel main window.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks The specific error code can be obtained using the get_last_result() method if this function returns NULL.
/// @remarks The returned value should not be released. The returned value is managed by the platform and will be released when terminating this process.
///
/// @return The input panel main window object on success, otherwise NULL
///
/// @exception #IME_ERROR_NONE Successful
/// @exception #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @exception #IME_ERROR_NOT_RUNNING IME main loop is not started yet
/// @exception #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @see get_last_result()
/// @see ime_create_cb()
/// @see ime_terminate_cb()
/// @see ime_show_cb()
/// @see ime_hide_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
ffi.Pointer<Evas_Object> ime_get_main_window() =>
    tizenCapiUiInputmethod.ime_get_main_window();

/// @brief Gets the selected text synchronously.
///
/// @details If multi-line text is selected, the result will contain '\n' for each newline character.
/// And if the selected text is empty, the result will be an empty string.
///
/// @since_tizen 4.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks @a text must be released using free().
///
/// Output parameter text The selected text
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_get_selected_text(
  ffi.Pointer<ffi.Pointer<ffi.Char>> text,
) =>
    tizenCapiUiInputmethod.ime_get_selected_text(
      text,
    );

/// @brief Gets the surrounding text from the position of the cursor, synchronously.
///
/// @since_tizen 3.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks @a text must be released using free().
///
/// Parameter maxlen_before The maximum length of string to be retrieved before the cursor; -1 means unlimited
/// Parameter maxlen_after The maximum length of string to be retrieved after the cursor; -1 means unlimited
/// Output parameter text The surrounding text
/// Output parameter cursor_pos The cursor position
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
/// @retval #IME_ERROR_OUT_OF_MEMORY Failed to obtain text due to out of memory
///
/// @see ime_delete_surrounding_text()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_get_surrounding_text(
  int maxlen_before,
  int maxlen_after,
  ffi.Pointer<ffi.Pointer<ffi.Char>> text,
  ffi.Pointer<ffi.Int> cursor_pos,
) =>
    tizenCapiUiInputmethod.ime_get_surrounding_text(
      maxlen_before,
      maxlen_after,
      text,
      cursor_pos,
    );

/// @brief Requests to hide preedit string.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_commit_string()
/// @see ime_show_preedit_string()
/// @see ime_update_preedit_string()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_hide_preedit_string() =>
    tizenCapiUiInputmethod.ime_hide_preedit_string();

/// @brief Sends the request to hide IME.
///
/// @since_tizen 5.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_request_hide() =>
    tizenCapiUiInputmethod.ime_request_hide();

/// @brief Requests the surrounding text from the position of the cursor, asynchronously.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter maxlen_before The maximum length of string to be retrieved before the cursor; -1 means unlimited
/// Parameter maxlen_after The maximum length of string to be retrieved after the cursor; -1 means unlimited
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NO_CALLBACK_FUNCTION Necessary callback function is not set
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @pre The ime_surrounding_text_updated_cb() callback function MUST be set by ime_event_set_surrounding_text_updated_cb().
///
/// @post The requested surrounding text can be received using the ime_surrounding_text_updated_cb() callback function.
///
/// @see ime_delete_surrounding_text()
/// @see ime_event_set_surrounding_text_updated_cb()
/// @see ime_surrounding_text_updated_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_request_surrounding_text(
  int maxlen_before,
  int maxlen_after,
) =>
    tizenCapiUiInputmethod.ime_request_surrounding_text(
      maxlen_before,
      maxlen_after,
    );

/// @brief Runs the main loop of IME application.
///
/// @details This function starts to run IME application's main loop. The ime_create_cb()
/// callback function is called to initialize IME application before the main loop starts up. And
/// the ime_terminate_cb() callback function is called when IME application is terminated.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks IME application MUST implement ime_app_main() function which is the main
/// entry point of IME application. In ime_app_main() function, the ime_run()
/// function MUST be called with the necessary callback functions; ime_create_cb(),
/// ime_terminate_cb(), ime_show_cb(), and ime_hide_cb() callback functions
/// are mandatory for IME application.
///
/// Parameter basic_cb The structure pointer of the essential callback functions
/// Parameter user_data User data to be passed to the callback functions
///
/// @return 0 if IME application ends successfully, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NO_CALLBACK_FUNCTION Necessary callback function is not set
/// @retval #IME_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The ime_event_set_***() functions can be called to set the event handling callback functions.
///
/// @see ime_callback_s()
/// @see ime_event_set_focus_in_cb()
/// @see ime_event_set_focus_out_cb()
/// @see ime_event_set_surrounding_text_updated_cb()
/// @see ime_event_set_input_context_reset_cb()
/// @see ime_event_set_cursor_position_updated_cb()
/// @see ime_event_set_language_requested_cb()
/// @see ime_event_set_language_set_cb()
/// @see ime_event_set_imdata_set_cb()
/// @see ime_event_set_layout_set_cb()
/// @see ime_event_set_return_key_type_set_cb()
/// @see ime_event_set_return_key_state_set_cb()
/// @see ime_event_set_geometry_requested_cb()
/// @see ime_event_set_display_language_changed_cb()
/// @see ime_event_set_rotation_degree_changed_cb()
/// @see ime_event_set_accessibility_state_changed_cb()
/// @see ime_event_set_option_window_created_cb()
/// @see ime_event_set_option_window_destroyed_cb()
/// @see ime_event_set_prediction_hint_set_cb()
///
/// @code
/// static void inputmethod_create_cb(void *user_data);
/// static void inputmethod_terminate_cb(void *user_data);
/// static void inputmethod_show_cb(int context_id, ime_context_h context, void *user_data);
/// static void inputmethod_hide_cb(int context_id, void *user_data);
/// static void inputmethod_focus_in_cb(int context_id, void *user_data);
/// static void inputmethod_focus_out_cb(int context_id, void *user_data);
/// static void inputmethod_cursor_position_updated_cb(int cursor_pos, void *user_data);
///
/// static void inputmethod_create_cb(void *user_data)
/// {
/// Evas_Object *ime_win = NULL;
///
/// ime_set_size(480, 400, 800, 400);
/// ime_win = ime_get_main_window();
/// if (ime_win) {
/// // Prepare before showing IME window.
/// }
/// }
///
/// static void inputmethod_show_cb(int context_id, ime_context_h context, void *user_data)
/// {
/// Ecore_IMF_Input_Panel_Layout layout;
/// ime_layout_variation_e layout_variation;
/// Evas_Object *ime_win;
///
/// ime_context_get_layout(context, &layout);
/// ime_context_get_layout_variation(context, &layout_variation);
///
/// ime_win = ime_get_main_window();
/// if (ime_win) {
/// // Compose IME UI properly with the context information and show.
///
/// evas_object_show(ime_win);
/// }
/// }
///
/// static void inputmethod_hide_cb(int context_id, void *user_data)
/// {
/// Evas_Object *ime_win = ime_get_main_window();
/// if (ime_win) {
/// evas_object_hide(ime_win);
/// }
/// }
///
/// void ime_app_main(int argc, char **argv)
/// {
/// ime_callback_s basic_callback = {
/// inputmethod_create_cb,
/// inputmethod_terminate_cb,
/// inputmethod_show_cb,
/// inputmethod_hide_cb,
/// };
///
/// ime_event_set_focus_in_cb(inputmethod_focus_in_cb, NULL);
/// ime_event_set_focus_out_cb(inputmethod_focus_out_cb, NULL);
/// ime_event_set_cursor_position_updated_cb(inputmethod_cursor_position_updated_cb, NULL);
///
/// ime_run(&basic_callback, NULL);
/// }
/// @endcode
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_run(
  ffi.Pointer<ime_callback_s> basic_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiUiInputmethod.ime_run(
      basic_cb,
      user_data,
    );

/// @brief Sends a key event to the associated text input UI control.
///
/// @details This function sends key down or up event with key mask to the client application.
/// If @a forward_key is @c true, this key event goes to the edit field directly. And if @a forward_key
/// is @c false, the ime_process_key_event_cb() callback function receives the key event before the edit field.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter keycode The key code to be sent
/// Parameter keymask The modifier key mask
/// Parameter forward_key The flag to send the key event directly to the edit field
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post If @a forward_key is @c false, the ime_process_key_event_cb() callback function can compose the text with the key events.
///
/// @see ime_key_code_e
/// @see ime_key_mask_e
/// @see ime_process_key_event_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_send_key_event(
  int keycode,
  int keymask,
  bool forward_key,
) =>
    tizenCapiUiInputmethod.ime_send_key_event(
      keycode,
      keymask,
      forward_key,
    );

/// @brief Sends a private command to the associated text input UI control.
///
/// @details This can be used by IME to deliver specific data to an application.
/// The data format MUST be negotiated by both application and IME.
///
/// @since_tizen 4.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter command The UTF-8 string to be sent
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_send_private_command(
  ffi.Pointer<ffi.Char> command,
) =>
    tizenCapiUiInputmethod.ime_send_private_command(
      command,
    );

/// @brief Enables whether candidate strings show or not.
///
/// @since_tizen 5.5
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter visible @c true if candidate strings show, @c false otherwise.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_set_candidate_visibility_state(
  bool visible,
) =>
    tizenCapiUiInputmethod.ime_set_candidate_visibility_state(
      visible,
    );

/// @brief Disallows the movement of the floating input panel window with the mouse pointer when the mouse is pressed.
///
/// @details This function must be called after invoking ime_set_floating_drag_start(). Otherwise the call is ignored.
///
/// @since_tizen 4.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks This function can be used in floating mode. If the floating mode is deactivated, calling this function has no effect.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @pre The floating mode was turned on with ime_set_floating_mode().
/// @pre ime_set_floating_drag_start() was called before.
///
/// @see ime_set_floating_mode()
/// @see ime_set_floating_drag_start()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_set_floating_drag_end() =>
    tizenCapiUiInputmethod.ime_set_floating_drag_end();

/// @brief Allows the floating input panel window to move along with the mouse pointer when the mouse is pressed.
///
/// @since_tizen 4.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @remarks This function can be used in floating mode. If the floating mode is deactivated, calling this function has no effect.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @pre The floating mode was turned on with ime_set_floating_mode().
///
/// @see ime_set_floating_mode()
/// @see ime_set_floating_drag_end()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_set_floating_drag_start() =>
    tizenCapiUiInputmethod.ime_set_floating_drag_start();

/// @brief Sets the floating mode or not.
///
/// @since_tizen 4.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter floating_mode @c true - floating mode on, @c false - floating mode off
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_set_floating_drag_start()
/// @see ime_set_floating_drag_end()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_set_floating_mode(
  bool floating_mode,
) =>
    tizenCapiUiInputmethod.ime_set_floating_mode(
      floating_mode,
    );

/// @brief Requests to set selection.
///
/// @since_tizen 3.0
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter start The start cursor position in text (in characters not bytes)
/// Parameter end The end cursor position in text (in characters not bytes)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_set_selection(
  int start,
  int end,
) =>
    tizenCapiUiInputmethod.ime_set_selection(
      start,
      end,
    );

/// @brief Updates the input panel window's size information.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter portrait_width The width in portrait mode
/// Parameter portrait_height The height in portrait mode
/// Parameter landscape_width The width in landscape mode
/// Parameter landscape_height The height in landscape mode
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_create_cb()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_set_size(
  int portrait_width,
  int portrait_height,
  int landscape_width,
  int landscape_height,
) =>
    tizenCapiUiInputmethod.ime_set_size(
      portrait_width,
      portrait_height,
      landscape_width,
      landscape_height,
    );

/// @brief Requests to show preedit string.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_commit_string()
/// @see ime_hide_preedit_string()
/// @see ime_update_preedit_string()
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_show_preedit_string() =>
    tizenCapiUiInputmethod.ime_show_preedit_string();

/// @brief Updates the state of input panel event.
///
/// @since_tizen 5.5
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter type The input panel event type
/// Parameter value The value of event type
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @see ime_event_type_e
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_update_input_panel_event(
  int type,
  int value,
) =>
    tizenCapiUiInputmethod.ime_update_input_panel_event(
      type,
      value,
    );

/// @brief Updates a new preedit string.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
///
/// @privlevel public
///
/// @privilege %http://tizen.org/privilege/ime
///
/// Parameter str The UTF-8 string to be updated in preedit
/// Parameter attrs The Eina_List which has #ime_preedit_attribute lists; @a str can be composed of multiple
/// string attributes: underline, highlight color and reversal color. The @a attrs will be released internally
/// on success and it can be NULL if no attributes to set
///
/// @return 0 on success, otherwise a negative error value
/// @retval #IME_ERROR_NONE No error
/// @retval #IME_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function.
/// @retval #IME_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IME_ERROR_NOT_RUNNING IME main loop is not started yet
///
/// @post This function is supposed to be followed by the ime_show_preedit_string() function.
///
/// @see ime_preedit_attribute
/// @see ime_commit_string()
/// @see ime_show_preedit_string()
/// @see ime_hide_preedit_string()
///
/// @code
/// {
/// int ret;
/// Eina_List *list = NULL;
///
/// ime_preedit_attribute *attr = calloc(1, sizeof(ime_preedit_attribute));
/// attr->start = 0;
/// attr->length = 1;
/// attr->type = IME_ATTR_FONTSTYLE;
/// attr->value = IME_ATTR_FONTSTYLE_UNDERLINE;
/// list = eina_list_append(list, attr);
///
/// attr = calloc(1, sizeof(ime_preedit_attribute));
/// attr->start = 1;
/// attr->length = 1;
/// attr->type = IME_ATTR_FONTSTYLE;
/// attr->value = IME_ATTR_FONTSTYLE_HIGHLIGHT;
/// list = eina_list_append(list, attr);
///
/// attr = calloc(1, sizeof(ime_preedit_attribute));
/// attr->start = 2;
/// attr->length = 1;
/// attr->type = IME_ATTR_FONTSTYLE;
/// attr->value = IME_ATTR_FONTSTYLE_REVERSAL;
/// list = eina_list_append(list, attr);
///
/// ret = ime_update_preedit_string("abcd", list);
/// if (ret != IME_ERROR_NONE) {
/// EINA_LIST_FREE(list, attr)
/// free(attr);
/// }
/// }
/// @endcode
///
/// Module getter: `tizenCapiUiInputmethod`.
int ime_update_preedit_string(
  ffi.Pointer<ffi.Char> str,
  ffi.Pointer<Eina_List> attrs,
) =>
    tizenCapiUiInputmethod.ime_update_preedit_string(
      str,
      attrs,
    );

