// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiContextMotion`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-context-motion.so.2`.
///
/// Context / Activity Recognition, Gesture Recognition.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_context_motion;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @deprecated Deprecated since 6.0.
/// @brief	Initializes an activity handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Output parameter	handle		Activity handle to be initialized
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#ACTIVITY_ERROR_NONE				Successful
/// @retval	#ACTIVITY_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#ACTIVITY_ERROR_NOT_SUPPORTED		Activity recognition is not supported
/// @retval	#ACTIVITY_ERROR_OPERATION_FAILED	Operation failed because of a system error, e.g., out of memory
///
/// @see		activity_release()
///
/// Module getter: `tizenCapiContextMotion`.
int activity_create(
  ffi.Pointer<activity_h> handle,
) =>
    tizenCapiContextMotion.activity_create(
      handle,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Gets the recognition accuracy.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	data		Activity data received through activity_cb()
/// Output parameter	accuracy	Accuracy
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#ACTIVITY_ERROR_NONE				Successful
/// @retval	#ACTIVITY_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#ACTIVITY_ERROR_NOT_SUPPORTED		Activity recognition is not supported
/// @retval	#ACTIVITY_ERROR_OPERATION_FAILED	Operation failed because of a system error
///
/// Module getter: `tizenCapiContextMotion`.
int activity_get_accuracy(
  activity_data_h data,
  ffi.Pointer<ffi.Int32> accuracy,
) =>
    tizenCapiContextMotion.activity_get_accuracy(
      data,
      accuracy,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Check whether the activity is supported or not.
/// @details	Check if the given activity type is supported in the current device.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	activity	Activity type to be checked
/// Output parameter	supported	@c true if the activity is recognizable in the current device,@n
/// @c false otherwise
///
/// @return	@c 0 if the @c activity is supported, otherwise a negative error value
/// @retval	#ACTIVITY_ERROR_NONE				Supported
/// @retval	#ACTIVITY_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#ACTIVITY_ERROR_NOT_SUPPORTED		The @c activity is not supported
/// @retval	#ACTIVITY_ERROR_OPERATION_FAILED	Operation failed because of a system error
/// @retval	#ACTIVITY_ERROR_PERMISSION_DENIED	Does not have permission to use this
///
/// Module getter: `tizenCapiContextMotion`.
int activity_is_supported(
  int activity,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiContextMotion.activity_is_supported(
      activity,
      supported,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Releases the resources occupied by the activity handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	handle		Activity handle to be released
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#ACTIVITY_ERROR_NONE				Successful
/// @retval	#ACTIVITY_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#ACTIVITY_ERROR_NOT_SUPPORTED		Activity recognition is not supported
/// @retval	#ACTIVITY_ERROR_OPERATION_FAILED	Operation failed because of a system error
///
/// @pre		activity_create()
///
/// Module getter: `tizenCapiContextMotion`.
int activity_release(
  activity_h handle,
) =>
    tizenCapiContextMotion.activity_release(
      handle,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Starts to recognize an activity.
/// @details	Sets a callback function to be invoked when the activity is detected,
/// and starts to monitor occurrences of the activity.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	handle		Activity handle to be used to control the activity event
/// Parameter	activity	Activity type to be monitored
/// Parameter	callback	Callback function to receive activity events
/// Parameter	user_data	User data to be passed to the callback function
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#ACTIVITY_ERROR_NONE				Successful
/// @retval	#ACTIVITY_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#ACTIVITY_ERROR_NOT_SUPPORTED		Activity recognition is not supported
/// @retval	#ACTIVITY_ERROR_ALREADY_STARTED		The @c handle is being used already
/// @retval	#ACTIVITY_ERROR_OPERATION_FAILED	Operation failed because of a system error
/// @retval	#ACTIVITY_ERROR_PERMISSION_DENIED	Does not have permission to use this
///
/// @pre		activity_create()
/// @post	activity_recognition_cb()
/// @see		activity_stop_recognition()
///
/// Module getter: `tizenCapiContextMotion`.
int activity_start_recognition(
  activity_h handle,
  int activity,
  activity_recognition_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContextMotion.activity_start_recognition(
      handle,
      activity,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Stops recognizing the activity registered to the activity handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	handle		Activity handle to release its callback function registered
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#ACTIVITY_ERROR_NONE				Successful
/// @retval	#ACTIVITY_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#ACTIVITY_ERROR_NOT_SUPPORTED		Activity recognition is not supported
/// @retval	#ACTIVITY_ERROR_NOT_STARTED			Nothing is started using the @c handle
/// @retval	#ACTIVITY_ERROR_OPERATION_FAILED	Operation failed because of a system error
///
/// Module getter: `tizenCapiContextMotion`.
int activity_stop_recognition(
  activity_h handle,
) =>
    tizenCapiContextMotion.activity_stop_recognition(
      handle,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Initializes a gesture handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Output parameter	handle		Gesture handle to be initialized
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#GESTURE_ERROR_NONE					Successful
/// @retval	#GESTURE_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#GESTURE_ERROR_NOT_SUPPORTED		Gesture recognition is not supported
/// @retval	#GESTURE_ERROR_OPERATION_FAILED		Operation failed because of a system error, e.g., out of memory
///
/// @see		gesture_release()
///
/// Module getter: `tizenCapiContextMotion`.
int gesture_create(
  ffi.Pointer<gesture_h> handle,
) =>
    tizenCapiContextMotion.gesture_create(
      handle,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Gets the gesture event from the gesture data received.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	data		Gesture data received through a callback function
/// Output parameter	event		Gesture event data
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#GESTURE_ERROR_NONE					Successful
/// @retval	#GESTURE_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#GESTURE_ERROR_NOT_SUPPORTED		Gesture recognition is not supported
/// @retval	#GESTURE_ERROR_OPERATION_FAILED		Operation failed because of a system error
///
/// Module getter: `tizenCapiContextMotion`.
int gesture_get_event(
  gesture_data_h data,
  ffi.Pointer<ffi.Int32> event,
) =>
    tizenCapiContextMotion.gesture_get_event(
      data,
      event,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Gets the tilting degrees from #GESTURE_TILT data received.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	data		Tilt gesture data received through a callback function
/// Output parameter	x			Tilting degree on X-axis
/// Output parameter	y			Tilting degree on Y-axis
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#GESTURE_ERROR_NONE					Successful
/// @retval	#GESTURE_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#GESTURE_ERROR_NOT_SUPPORTED		Gesture recognition is not supported
/// @retval	#GESTURE_ERROR_OPERATION_FAILED		Operation failed because of a system error
///
/// Module getter: `tizenCapiContextMotion`.
int gesture_get_tilt(
  gesture_data_h data,
  ffi.Pointer<ffi.Int> x,
  ffi.Pointer<ffi.Int> y,
) =>
    tizenCapiContextMotion.gesture_get_tilt(
      data,
      x,
      y,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Check whether the gesture is supported or not.
/// @details	Check if the given gesture type is supported in the current device.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	gesture		Gesture type to be checked
/// Output parameter	supported	@c true if the gesture is recognizable in the current device,@n
/// @c false otherwise
///
/// @return	@c 0 if the @c gesture is supported, otherwise a negative error value
/// @retval	#GESTURE_ERROR_NONE					Supported
/// @retval	#GESTURE_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#GESTURE_ERROR_NOT_SUPPORTED		The @c gesture is not supported
/// @retval	#GESTURE_ERROR_OPERATION_FAILED		Operation failed because of a system error
/// @retval	#GESTURE_ERROR_PERMISSION_DENIED	Does not have permission to use this
///
/// Module getter: `tizenCapiContextMotion`.
int gesture_is_supported(
  int gesture,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiContextMotion.gesture_is_supported(
      gesture,
      supported,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Releases the resources occupied by the gesture handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	handle		Gesture handle to be released
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#GESTURE_ERROR_NONE					Successful
/// @retval	#GESTURE_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#GESTURE_ERROR_NOT_SUPPORTED		Gesture recognition is not supported
/// @retval	#GESTURE_ERROR_OPERATION_FAILED		Operation failed because of a system error
///
/// @pre		gesture_create()
///
/// Module getter: `tizenCapiContextMotion`.
int gesture_release(
  gesture_h handle,
) =>
    tizenCapiContextMotion.gesture_release(
      handle,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Starts to recognize a gesture.
/// @details	Sets a callback function to be invoked when the gesture is detected,
/// and starts to monitor occurrences of the gesture.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	handle		Gesture handle to be used to control the gesture event
/// Parameter	gesture		Gesture type to be monitored
/// Parameter	option		Detection option
/// Parameter	callback	Callback function to receive gesture events
/// Parameter	user_data	User data to be passed to the callback function
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#GESTURE_ERROR_NONE					Successful
/// @retval	#GESTURE_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#GESTURE_ERROR_NOT_SUPPORTED		Gesture recognition is not supported
/// @retval	#GESTURE_ERROR_ALREADY_STARTED		The @c handle is being used already
/// @retval	#GESTURE_ERROR_OPERATION_FAILED		Operation failed because of a system error
/// @retval	#GESTURE_ERROR_PERMISSION_DENIED	Does not have permission to use this
///
/// @pre		gesture_create()
/// @post	gesture_recognition_cb()
/// @see		gesture_stop_recognition()
///
/// Module getter: `tizenCapiContextMotion`.
int gesture_start_recognition(
  gesture_h handle,
  int gesture,
  int option,
  gesture_recognition_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContextMotion.gesture_start_recognition(
      handle,
      gesture,
      option,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 6.0.
/// @brief	Stops recognizing the gesture registered to the gesture handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter	handle		Gesture handle to release its callback function registered
///
/// @return	@c 0 on success, otherwise a negative error value
/// @retval	#GESTURE_ERROR_NONE					Successful
/// @retval	#GESTURE_ERROR_INVALID_PARAMETER	Invalid parameter used
/// @retval	#GESTURE_ERROR_NOT_SUPPORTED		Gesture recognition is not supported
/// @retval	#GESTURE_ERROR_NOT_STARTED			Nothing is started using the @c handle
/// @retval	#GESTURE_ERROR_OPERATION_FAILED		Operation failed because of a system error
///
/// Module getter: `tizenCapiContextMotion`.
int gesture_stop_recognition(
  gesture_h handle,
) =>
    tizenCapiContextMotion.gesture_stop_recognition(
      handle,
    );

