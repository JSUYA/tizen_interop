// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaSoundManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-sound-manager.so.0`.
///
/// Multimedia / Sound Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_sound_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Acquires the stream focus.
/// @since_tizen 3.0
///
/// @remarks	Do not call this function within sound_stream_focus_state_changed_cb() or sound_stream_focus_state_watch_cb(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned. Since 4.0, it is allowed and does not return the error.
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	focus_mask	The focus mask that user wants to acquire
/// Parameter	sound_behavior	The requesting sound behavior, values of #sound_behavior_e combined with bitwise 'or'
/// Parameter	extra_info	The extra information for this request (optional, this can be NULL)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INVALID_STATE Invalid state
/// @retval #SOUND_MANAGER_ERROR_POLICY Noncompliance with the sound system policy
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre Call sound_manager_create_stream_information() with its parameter for sound_stream_focus_state_changed_cb()\n
/// before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_acquire_focus_all()
/// @see sound_manager_release_focus()
/// @see sound_manager_release_focus_all()
/// @see sound_manager_get_focus_state()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_acquire_focus(
  sound_stream_info_h stream_info,
  int focus_mask,
  int sound_behavior,
  ffi.Pointer<ffi.Char> extra_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_acquire_focus(
      stream_info,
      focus_mask,
      sound_behavior,
      extra_info,
    );

/// @brief Acquires all the stream focuses.
/// @since_tizen 4.0
///
/// @remarks	This function does not return error even though one or all of focuses have already been acquired.\n
/// Use sound_manager_get_focus_state() to get acquired focus state if it returns #SOUND_MANAGER_ERROR_POLICY.
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	sound_behavior	The requesting sound behavior, values of #sound_behavior_e combined with bitwise 'or'
/// Parameter	extra_info	The extra information for this request (optional, this can be NULL)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_POLICY Noncompliance with the sound system policy
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre Call sound_manager_create_stream_information() with its parameter for sound_stream_focus_state_changed_cb()\n
/// before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_acquire_focus()
/// @see sound_manager_release_focus()
/// @see sound_manager_release_focus_all()
/// @see sound_manager_get_focus_state()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_acquire_focus_all(
  sound_stream_info_h stream_info,
  int sound_behavior,
  ffi.Pointer<ffi.Char> extra_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_acquire_focus_all(
      stream_info,
      sound_behavior,
      extra_info,
    );

/// @brief Activates ducking, asynchronously.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/volume.set
/// @remarks If ducking is activated successfully, the volume of all sound streams
/// matched with the target_stream that set in sound_manager_create_stream_ducking()
/// is decreased by @a ratio for @a duration.
/// The change applies system-wide.
/// Parameter	stream_ducking	The handle of stream ducking
/// Parameter	duration		The duration for ducking (msec, 0 <= duration <= 3000)
/// Parameter	ratio			The volume ratio when ducked (0.0 <= ratio < 1.0)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_STATE Invalid state
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre The stream should be unducked before calling this function,
/// otherwise, #SOUND_MANAGER_ERROR_INVALID_STATE is returned.
/// @see sound_manager_create_stream_ducking()
/// @see sound_manager_destroy_stream_ducking()
/// @see sound_manager_is_ducked()
/// @see sound_manager_deactivate_ducking()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_activate_ducking(
  sound_stream_ducking_h stream_ducking,
  int duration,
  double ratio,
) =>
    tizenCapiMediaSoundManager.sound_manager_activate_ducking(
      stream_ducking,
      duration,
      ratio,
    );

/// @brief Adds a callback function to be invoked when the connection state of a sound device was changed.
/// @since_tizen 3.0
///
/// Parameter	device_mask	Devices for which changes should be tracked, values of #sound_device_mask_e combined with bitwise 'or'
/// Parameter	callback	The device connection state changed callback function
/// Parameter	user_data	The user data to be passed to the callback function
/// Output parameter	id	The callback id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @post sound_device_connection_changed_cb() will be invoked.
/// @see sound_manager_remove_device_connection_changed_cb()
/// @see sound_device_connection_changed_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_add_device_connection_changed_cb(
  int device_mask,
  sound_device_connection_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaSoundManager.sound_manager_add_device_connection_changed_cb(
      device_mask,
      callback,
      user_data,
      id,
    );

/// @brief Adds the device to the stream information for the stream routing.
/// @since_tizen 3.0
///
/// @remarks	Use sound_manager_get_device_list() and sound_manager_get_next_device() to get the device.\n
/// #SOUND_MANAGER_ERROR_POLICY could be returned according to the stream type of the @a stream_info.\n
/// The available types of the @a stream_info for this function are #SOUND_STREAM_TYPE_VOIP and #SOUND_STREAM_TYPE_MEDIA_EXTERNAL_ONLY.
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	device		The device item from #sound_device_list_h
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_POLICY Noncompliance with the sound system policy
/// @pre Call sound_manager_create_stream_information() before calling this function.
/// @post You can apply this setting by calling sound_manager_apply_stream_routing().
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_remove_device_for_stream_routing()
/// @see sound_manager_remove_all_devices_for_stream_routing()
/// @see sound_manager_apply_stream_routing()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_add_device_for_stream_routing(
  sound_stream_info_h stream_info,
  sound_device_h device,
) =>
    tizenCapiMediaSoundManager.sound_manager_add_device_for_stream_routing(
      stream_info,
      device,
    );

/// @brief Adds a callback function to be invoked when the state of a sound device was changed.
/// @since_tizen 5.0
///
/// Parameter	device_mask	Devices for which changes should be tracked, values of #sound_device_mask_e combined with bitwise 'or'
/// Parameter	callback	The device state changed callback function
/// Parameter	user_data	The user data to be passed to the callback function
/// Output parameter	id	The callback id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @post  sound_device_running_changed_cb() will be invoked.
/// @see sound_manager_remove_device_running_changed_cb()
/// @see sound_device_running_changed_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_add_device_running_changed_cb(
  int device_mask,
  sound_device_running_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaSoundManager.sound_manager_add_device_running_changed_cb(
      device_mask,
      callback,
      user_data,
      id,
    );

/// @deprecated Deprecated since 4.0. Use sound_manager_add_device_running_changed_cb() instead.
/// @brief Adds a callback function to be invoked when the state of a sound device was changed.
/// @since_tizen 3.0
///
/// Parameter	device_mask	Devices for which changes should be tracked, values of #sound_device_mask_e combined with bitwise 'or'
/// Parameter	callback	The device state changed callback function
/// Parameter	user_data	The user data to be passed to the callback function
/// Output parameter	id	The callback id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @post  sound_device_state_changed_cb() will be invoked.
/// @see sound_manager_remove_device_state_changed_cb()
/// @see sound_device_state_changed_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_add_device_state_changed_cb(
  int device_mask,
  sound_device_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaSoundManager.sound_manager_add_device_state_changed_cb(
      device_mask,
      callback,
      user_data,
      id,
    );

/// @brief Registers the watch callback function to be invoked when the focus state for each sound stream type is changed regardless of the process.
/// @since_tizen 3.0
///
/// @remarks	The registered callback is invoked by the internal thread of the sound manager.\n
/// Do not call this function within sound_stream_focus_state_changed_cb() or sound_stream_focus_state_watch_cb(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.
///
/// Parameter	focus_mask	The focus mask that user wants to watch
/// Parameter	callback	The focus state change watch callback function
/// Parameter	user_data	The user data to be passed to the callback function
/// Output parameter	id		The focus state change watch callback id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_remove_focus_state_watch_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_add_focus_state_watch_cb(
  int focus_mask,
  sound_stream_focus_state_watch_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaSoundManager.sound_manager_add_focus_state_watch_cb(
      focus_mask,
      callback,
      user_data,
      id,
    );

/// @brief Adds a callback function to be invoked when the volume level is changed.
/// @since_tizen 3.0
/// Parameter	callback	Callback function to indicate change in volume
/// Parameter	user_data	The user data to be passed to the callback function
/// Output parameter	id	The callback id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @post sound_manager_volume_changed_cb() will be invoked.
/// @see sound_manager_remove_volume_changed_cb()
/// @see sound_manager_volume_changed_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_add_volume_changed_cb(
  sound_manager_volume_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaSoundManager.sound_manager_add_volume_changed_cb(
      callback,
      user_data,
      id,
    );

/// @brief Applies the stream routing.
/// @since_tizen 3.0
///
/// @remarks	If the stream has not been made yet, this setting will be applied when the stream starts to play.\n
///
/// Parameter	stream_info	The handle of stream information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_STATE Invalid state
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre Call sound_manager_create_stream_information() and sound_manager_add_device_for_stream_routing() before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_add_device_for_stream_routing()
/// @see sound_manager_remove_device_for_stream_routing()
/// @see sound_manager_remove_all_devices_for_stream_routing()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_apply_stream_routing(
  sound_stream_info_h stream_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_apply_stream_routing(
      stream_info,
    );

/// @brief Creates a handle for stream ducking.
/// @since_tizen 5.5
///
/// @remarks @a stream_ducking should be released using sound_manager_destroy_stream_ducking().
///
/// Parameter	target_stream	The type of target stream
/// Parameter	callback		The callback function called when ducking state is changed (optional, this can be NULL)
/// Parameter	user_data		The user data to be passed to the callback function (optional, this can be NULL)
/// Output parameter	stream_ducking	The handle of stream ducking
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_destroy_stream_ducking()
/// @see sound_manager_is_ducked()
/// @see sound_manager_activate_ducking()
/// @see sound_manager_deactivate_ducking()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_create_stream_ducking(
  int target_stream,
  sound_stream_ducking_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<sound_stream_ducking_h> stream_ducking,
) =>
    tizenCapiMediaSoundManager.sound_manager_create_stream_ducking(
      target_stream,
      callback,
      user_data,
      stream_ducking,
    );

/// @brief Creates a handle for stream information.
/// @since_tizen 3.0
///
/// @remarks	The registered callback is issued in the internal thread of the sound manager.\n
/// Do not call this function within sound_stream_focus_state_changed_cb() or sound_stream_focus_state_watch_cb(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// To apply the stream policy according to this stream information, this handle should be passed to other APIs\n
/// related to playback or recording.(e.g. player, wav-player, audio-io, etc.)
///
/// Parameter	stream_type	The type of stream
/// Parameter	callback	The focus state change callback function (optional, this can be NULL)
/// Parameter	user_data	The user data to be passed to the callback function (optional, this can be NULL)
/// Output parameter	stream_info	The handle of stream information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_NOT_SUPPORTED Not supported
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_add_device_for_stream_routing()
/// @see sound_manager_remove_device_for_stream_routing()
/// @see sound_manager_remove_all_devices_for_stream_routing()
/// @see sound_manager_apply_stream_routing()
/// @see sound_manager_acquire_focus()
/// @see sound_manager_release_focus()
/// @see sound_manager_get_focus_state()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_create_stream_information(
  int stream_type,
  sound_stream_focus_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<sound_stream_info_h> stream_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_create_stream_information(
      stream_type,
      callback,
      user_data,
      stream_info,
    );

/// @brief Deactivates ducking, asynchronously.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/volume.set
/// Parameter	stream_ducking	The handle of stream ducking
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_STATE Invalid state
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre The stream should be ducked before calling this function,
/// otherwise, #SOUND_MANAGER_ERROR_INVALID_STATE is returned.
/// @see sound_manager_create_stream_ducking()
/// @see sound_manager_destroy_stream_ducking()
/// @see sound_manager_is_ducked()
/// @see sound_manager_activate_ducking()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_deactivate_ducking(
  sound_stream_ducking_h stream_ducking,
) =>
    tizenCapiMediaSoundManager.sound_manager_deactivate_ducking(
      stream_ducking,
    );

/// @brief Delivers focuses to another stream information.
/// @since_tizen 4.0
///
/// @remarks	This function does not affect any invocation of sound_stream_focus_state_changed_cb() or\n
/// sound_stream_focus_state_watch_cb(). Do not call this function within sound_stream_focus_state_changed_cb() or\n
/// sound_stream_focus_state_watch_cb(), otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.
///
/// Parameter	source	The source handle of stream information which has focuses
/// Parameter	destination	The destination handle of stream information which will receive focuses
/// Parameter	focus_mask	The focus mask to deliver
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INVALID_STATE Invalid state
/// @retval #SOUND_MANAGER_ERROR_POLICY Noncompliance with the sound system policy
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre Call sound_manager_create_stream_information(), sound_manager_acquire_focus() and sound_manager_acquire_focus_all()\n
/// before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_acquire_focus()
/// @see sound_manager_acquire_focus_all()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_deliver_focus(
  sound_stream_info_h source,
  sound_stream_info_h destination,
  int focus_mask,
) =>
    tizenCapiMediaSoundManager.sound_manager_deliver_focus(
      source,
      destination,
      focus_mask,
    );

/// @brief Destroys the handle for stream ducking.
/// @since_tizen 5.5
///
/// Parameter	stream_ducking	The handle of stream ducking
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_create_stream_ducking()
/// @see sound_manager_is_ducked()
/// @see sound_manager_activate_ducking()
/// @see sound_manager_deactivate_ducking()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_destroy_stream_ducking(
  sound_stream_ducking_h stream_ducking,
) =>
    tizenCapiMediaSoundManager.sound_manager_destroy_stream_ducking(
      stream_ducking,
    );

/// @brief Destroys the handle for stream information.
/// @since_tizen 3.0
///
/// @remarks	Do not call this function within sound_stream_focus_state_changed_cb() or sound_stream_focus_state_watch_cb(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.
///
/// Parameter	stream_info	The handle of stream information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_create_stream_information()
/// @see sound_manager_add_device_for_stream_routing()
/// @see sound_manager_remove_device_for_stream_routing()
/// @see sound_manager_remove_all_devices_for_stream_routing()
/// @see sound_manager_apply_stream_routing()
/// @see sound_manager_acquire_focus()
/// @see sound_manager_release_focus()
/// @see sound_manager_get_focus_state()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_destroy_stream_information(
  sound_stream_info_h stream_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_destroy_stream_information(
      stream_info,
    );

/// @brief Frees device list and each item of list.
/// @since_tizen 3.0
///
/// @remarks	This function will deallocate not only device list itself but also each item.
///
/// Parameter	device_list	The device list got with sound_manager_get_device_list().
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
///
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_is_device_running()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_free_device_list(
  sound_device_list_h device_list,
) =>
    tizenCapiMediaSoundManager.sound_manager_free_device_list(
      device_list,
    );

/// @brief Gets the device's 'avoid resampling' property.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device,\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.\n
/// The default value of 'avoid resampling' is false.
///
/// Parameter	device	The device item
/// Parameter	enabled	The value of 'avoid resampling' property: (@c true = enabled, @c false = disabled)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_set_avoid_resampling()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_avoid_resampling(
  sound_device_h device,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_avoid_resampling(
      device,
      enabled,
    );

/// @brief Gets the current device type for media playback stream.
/// @since_tizen 3.0
///
/// Output parameter	device_type	The output device type that a media playback stream can go out
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_NO_DATA No data
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_current_media_playback_device_type(
  ffi.Pointer<ffi.Int32> device_type,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_current_media_playback_device_type(
      device_type,
    );

/// @brief Gets the reason for the current acquired playback focus.
/// @since_tizen 3.0
///
/// @remarks	If there is no acquired playback focus in this system, it'll return #SOUND_MANAGER_ERROR_NO_DATA.\n
/// Do not call this function within sound_stream_focus_state_changed_cb() or sound_stream_focus_state_watch_cb(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// The @a extra_info should be released using free().
///
/// Output parameter	acquired_by	The reason for the current acquired playback focus
/// Output parameter	sound_behavior	The requested sound behavior that should be followed, values of #sound_behavior_e combined with bitwise 'or'
/// Output parameter	extra_info The extra information of the acquired playback focus (optional, this can be NULL)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_NO_DATA No data
/// @see sound_manager_get_current_recording_focus()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_current_playback_focus(
  ffi.Pointer<ffi.Int32> acquired_by,
  ffi.Pointer<ffi.Int> sound_behavior,
  ffi.Pointer<ffi.Pointer<ffi.Char>> extra_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_current_playback_focus(
      acquired_by,
      sound_behavior,
      extra_info,
    );

/// @brief Gets the reason for the current acquired recording focus.
/// @since_tizen 3.0
///
/// @remarks	If there is no acquired recording focus in this system, it'll return #SOUND_MANAGER_ERROR_NO_DATA.\n
/// Do not call this function within sound_stream_focus_state_changed_cb() or sound_stream_focus_state_watch_cb(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// The @a extra_info should be released using free().
///
/// Output parameter	acquired_by	The reason for the current acquired recording focus
/// Output parameter	sound_behavior	The requested sound behavior that should be followed, values of #sound_behavior_e combined with bitwise 'or'
/// Output parameter	extra_info The extra information of the acquired recording focus (optional, this can be NULL)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_NO_DATA No data
/// @see sound_manager_get_current_playback_focus()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_current_recording_focus(
  ffi.Pointer<ffi.Int32> acquired_by,
  ffi.Pointer<ffi.Int> sound_behavior,
  ffi.Pointer<ffi.Pointer<ffi.Char>> extra_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_current_recording_focus(
      acquired_by,
      sound_behavior,
      extra_info,
    );

/// @brief Gets the type of the sound being currently played.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Output parameter	type The current sound type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_NO_PLAYING_SOUND No playing sound
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_current_sound_type(
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_current_sound_type(
      type,
    );

/// @brief Gets the id of the device.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter	device	The device item
/// Output parameter	id	The id of the device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_name()
/// @see sound_manager_is_device_running()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_device_id(
  sound_device_h device,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_device_id(
      device,
      id,
    );

/// @brief Gets the io direction of the device.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter	device	The device item
/// Output parameter	io_direction	The io direction of the device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_is_device_running()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_device_io_direction(
  sound_device_h device,
  ffi.Pointer<ffi.Int32> io_direction,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_device_io_direction(
      device,
      io_direction,
    );

/// @brief Gets the list consisting of connected devices.
/// @since_tizen 3.0
///
/// @remarks	@a device_list should be freed using sound_manager_free_device_list().\n
/// Use sound_manager_get_next_device() to get the first node of the list.
///
/// Parameter	device_mask	The mask values of #sound_device_mask_e combined with bitwise 'or'
/// Output parameter	device_list	The list of connected devices
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_NO_DATA No data
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_is_device_running()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_device_list(
  int device_mask,
  ffi.Pointer<sound_device_list_h> device_list,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_device_list(
      device_mask,
      device_list,
    );

/// @brief Gets the name of the device.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter	device	The device item
/// Output parameter	name	The name of the device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_is_device_running()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_device_name(
  sound_device_h device,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_device_name(
      device,
      name,
    );

/// @deprecated Deprecated since 4.0. Use sound_manager_is_device_running() instead.
/// @brief Gets the state of the device.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter   device  The device item
/// Output parameter  state   The state of the device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_device_state(
  sound_device_h device,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_device_state(
      device,
      state,
    );

/// @brief Gets the type of the device.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter	device	The device item
/// Output parameter	type	The type of the device
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_is_device_running()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_device_type(
  sound_device_h device,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_device_type(
      device,
      type,
    );

/// @brief Gets auto focus reacquisition property.
/// @since_tizen 3.0
///
/// @remarks	The default value is true.
///
/// Parameter	stream_info	The handle of stream information
/// Output parameter	enabled	The value of focus auto reacquisition property: (@c true = enabled, @c false = disabled)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Call sound_manager_create_stream_information() before calling this function.
/// @see sound_manager_create_stream_information()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_focus_reacquisition(
  sound_stream_info_h stream_info,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_focus_reacquisition(
      stream_info,
      enabled,
    );

/// @brief Gets the state of focus.
/// @since_tizen 3.0
/// Parameter	stream_info	The handle of stream information
/// Output parameter	state_for_playback	The state of playback focus
/// Output parameter	state_for_recording	The state of recording focus
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Call sound_manager_create_stream_information() before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_acquire_focus()
/// @see sound_manager_release_focus()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_focus_state(
  sound_stream_info_h stream_info,
  ffi.Pointer<ffi.Int32> state_for_playback,
  ffi.Pointer<ffi.Int32> state_for_recording,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_focus_state(
      stream_info,
      state_for_playback,
      state_for_recording,
    );

/// @brief Gets the maximum volume level supported for a particular sound type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter		type The sound type
/// Output parameter	max	The maximum volume level
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see sound_manager_set_volume()
/// @see sound_manager_get_volume()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_max_volume(
  int type,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_max_volume(
      type,
      max,
    );

/// @brief Gets the restriction of stream type only for media.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device,\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.\n
/// The property is not enabled as default.
///
/// Parameter	device	The device item
/// Output parameter	enabled	The value of 'media stream only' property: (@c true = enabled, @c false = disabled)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_set_media_stream_only()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_media_stream_only(
  sound_device_h device,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_media_stream_only(
      device,
      enabled,
    );

/// @brief Gets the next item of the device list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter	device_list	The list of connected devices
/// Output parameter	device	The device item
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_NO_DATA No data
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_is_device_running()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_next_device(
  sound_device_list_h device_list,
  ffi.Pointer<sound_device_h> device,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_next_device(
      device_list,
      device,
    );

/// @brief Gets the previous item of the device list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter	device_list	The list of connected devices
/// Output parameter	device	The device item
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_NO_DATA No data
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_is_device_running()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_prev_device(
  sound_device_list_h device_list,
  ffi.Pointer<sound_device_h> device,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_prev_device(
      device_list,
      device,
    );

/// @brief Gets the device's sample format.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device,\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.
///
/// Parameter	device	The device item
/// Output parameter	format	The sample format
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_supported_sample_formats()
/// @see sound_manager_set_sample_format()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_sample_format(
  sound_device_h device,
  ffi.Pointer<ffi.Int32> format,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_sample_format(
      device,
      format,
    );

/// @brief Gets the device's sample rate.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device,\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.
///
/// Parameter	device	The device item
/// Output parameter	rate	The sample rate
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_supported_sample_rates()
/// @see sound_manager_set_sample_rate()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_sample_rate(
  sound_device_h device,
  ffi.Pointer<ffi.Int32> rate,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_sample_rate(
      device,
      rate,
    );

/// @brief Gets the sound type of the stream information.
/// @since_tizen 3.0
///
/// @remarks	In case of a @a stream_info made with #SOUND_STREAM_TYPE_EMERGENCY, it'll return #SOUND_MANAGER_ERROR_NO_DATA.\n
/// The reason is that there is no #sound_type_e matched with this @a stream_info.
///
/// Parameter	stream_info	The handle of stream information
/// Output parameter	sound_type	The sound type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_NO_DATA No data
/// @pre Call sound_manager_create_stream_information() before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_set_volume()
/// @see sound_manager_get_max_volume()
/// @see sound_manager_get_volume()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_sound_type(
  sound_stream_info_h stream_info,
  ffi.Pointer<ffi.Int32> sound_type,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_sound_type(
      stream_info,
      sound_type,
    );

/// @brief Gets the preferred device id of the stream info handle.
/// @since_tizen 5.5
///
/// @remarks	This function is to return the preferred device id per each direction if it has been set.
/// If there is no preferred device for a given direction, the corresponding output value will be set to
/// #SOUND_MANAGER_STREAM_NO_PREFERRED_DEVICE.
/// You can get a device handle of the id value by using sound_manager_get_device_list(),
/// sound_manager_get_next_device() and sound_manager_get_device_id().
///
/// Parameter	stream_info	The handle of stream information
/// Output parameter	in_device_id	The preferred input device id
/// Output parameter	out_device_id	The preferred output device id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_set_stream_preferred_device()
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_device_id()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_stream_preferred_device(
  sound_stream_info_h stream_info,
  ffi.Pointer<ffi.Int> in_device_id,
  ffi.Pointer<ffi.Int> out_device_id,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_stream_preferred_device(
      stream_info,
      in_device_id,
      out_device_id,
    );

/// @brief Gets the device's supported sample formats.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device,\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.\n
/// The @a formats should be released using free().
///
/// Parameter	device	The device item
/// Output parameter	formats	The supported sample format list
/// Output parameter	num_of_elems	The number of elements in the sample format list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_set_sample_format()
/// @see sound_manager_get_sample_format()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_supported_sample_formats(
  sound_device_h device,
  ffi.Pointer<ffi.Pointer<ffi.Int32>> formats,
  ffi.Pointer<ffi.UnsignedInt> num_of_elems,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_supported_sample_formats(
      device,
      formats,
      num_of_elems,
    );

/// @brief Gets the device's supported sample rates.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device,\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.\n
/// The @a rates should be released using free().
///
/// Parameter	device	The device item
/// Output parameter	rates	The supported sample rate list
/// Output parameter	num_of_elems	The number of elements in the sample rate list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_set_sample_rate()
/// @see sound_manager_get_sample_rate()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_supported_sample_rates(
  sound_device_h device,
  ffi.Pointer<ffi.Pointer<ffi.Int32>> rates,
  ffi.Pointer<ffi.UnsignedInt> num_of_elems,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_supported_sample_rates(
      device,
      rates,
      num_of_elems,
    );

/// @brief Gets the volume level specified for a particular sound type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter		type The sound type
/// Output parameter	volume	The current volume level
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_max_volume()
/// @see sound_manager_set_volume()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_get_volume(
  int type,
  ffi.Pointer<ffi.Int> volume,
) =>
    tizenCapiMediaSoundManager.sound_manager_get_volume(
      type,
      volume,
    );

/// @brief Checks if the device is running.
/// @since_tizen 5.0
/// Parameter	device	The device item
/// Output parameter	is_running	Whether the device is running or not: (@c true = running, @c false = not running)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_is_device_running(
  sound_device_h device,
  ffi.Pointer<ffi.Bool> is_running,
) =>
    tizenCapiMediaSoundManager.sound_manager_is_device_running(
      device,
      is_running,
    );

/// @brief Checks if the stream is ducked.
/// @since_tizen 5.5
///
/// Parameter	stream_ducking	The handle of stream ducking
/// Output parameter	is_ducked		Whether the stream is ducked or not. @c true if ducked, @c false otherwise.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_create_stream_ducking()
/// @see sound_manager_destroy_stream_ducking()
/// @see sound_manager_activate_ducking()
/// @see sound_manager_deactivate_ducking()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_is_ducked(
  sound_stream_ducking_h stream_ducking,
  ffi.Pointer<ffi.Bool> is_ducked,
) =>
    tizenCapiMediaSoundManager.sound_manager_is_ducked(
      stream_ducking,
      is_ducked,
    );

/// @brief Checks if the stream information is using the device.
/// @since_tizen 3.0
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	device	The device item
/// Output parameter	is_on	Whether the stream info is using the device or not: (@c true = use, @c false = not use)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_get_prev_device()
/// @see sound_manager_get_device_type()
/// @see sound_manager_get_device_io_direction()
/// @see sound_manager_get_device_id()
/// @see sound_manager_get_device_name()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_is_stream_on_device(
  sound_stream_info_h stream_info,
  sound_device_h device,
  ffi.Pointer<ffi.Bool> is_on,
) =>
    tizenCapiMediaSoundManager.sound_manager_is_stream_on_device(
      stream_info,
      device,
      is_on,
    );

/// @brief Releases the acquired stream focus.
/// @since_tizen 3.0
///
/// @remarks	Do not call this function within sound_stream_focus_state_changed_cb() or sound_stream_focus_state_watch_cb(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned. Since 4.0, it is allowed and does not return the error.
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	focus_mask	The focus mask that user wants to release
/// Parameter	sound_behavior	The requesting sound behavior, values of #sound_behavior_e combined with bitwise 'or'
/// Parameter	extra_info	The extra information for this request (optional, this can be NULL)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INVALID_STATE Invalid state
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre Call sound_manager_create_stream_information() and sound_manager_acquire_focus() before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_acquire_focus()
/// @see sound_manager_acquire_focus_all()
/// @see sound_manager_release_focus_all()
/// @see sound_manager_get_focus_state()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_release_focus(
  sound_stream_info_h stream_info,
  int focus_mask,
  int sound_behavior,
  ffi.Pointer<ffi.Char> extra_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_release_focus(
      stream_info,
      focus_mask,
      sound_behavior,
      extra_info,
    );

/// @brief Releases all the acquired stream focuses.
/// @since_tizen 4.0
///
/// @remarks	This function does not return error even though one or all of focuses have already been released.
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	sound_behavior	The requesting sound behavior, values of #sound_behavior_e combined with bitwise 'or'
/// Parameter	extra_info	The extra information for this request (optional, this can be NULL)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_POLICY Noncompliance with the sound system policy
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre Call sound_manager_create_stream_information(), sound_manager_acquire_focus() and sound_manager_acquire_focus_all()\n
/// before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_acquire_focus()
/// @see sound_manager_acquire_focus_all()
/// @see sound_manager_release_focus()
/// @see sound_manager_get_focus_state()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_release_focus_all(
  sound_stream_info_h stream_info,
  int sound_behavior,
  ffi.Pointer<ffi.Char> extra_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_release_focus_all(
      stream_info,
      sound_behavior,
      extra_info,
    );

/// @brief Removes all devices from the stream information for the stream routing.
/// @since_tizen 4.0
///
/// Parameter	stream_info	The handle of stream information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_POLICY Noncompliance with the sound system policy
/// @pre Call sound_manager_create_stream_information() before calling this function.
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_add_device_for_stream_routing()
/// @see sound_manager_remove_device_for_stream_routing()
/// @see sound_manager_apply_stream_routing()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_remove_all_devices_for_stream_routing(
  sound_stream_info_h stream_info,
) =>
    tizenCapiMediaSoundManager.sound_manager_remove_all_devices_for_stream_routing(
      stream_info,
    );

/// @brief Removes a callback function invoked when the connection of a sound device was changed.
/// @since_tizen 3.0
///
/// Parameter	id	The id of the callback to remove
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_add_device_connection_changed_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_remove_device_connection_changed_cb(
  int id,
) =>
    tizenCapiMediaSoundManager.sound_manager_remove_device_connection_changed_cb(
      id,
    );

/// @brief Removes the device from the stream information for the stream routing.
/// @since_tizen 3.0
///
/// @remarks	Use sound_manager_get_device_list() and sound_manager_get_next_device() to get the device.\n
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	device		The device item from #sound_device_list_h
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Call sound_manager_create_stream_information() and sound_manager_add_device_for_stream_routing() before calling this function.
/// @post You can apply this setting by calling sound_manager_apply_stream_routing().
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_add_device_for_stream_routing()
/// @see sound_manager_remove_all_devices_for_stream_routing()
/// @see sound_manager_apply_stream_routing()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_remove_device_for_stream_routing(
  sound_stream_info_h stream_info,
  sound_device_h device,
) =>
    tizenCapiMediaSoundManager.sound_manager_remove_device_for_stream_routing(
      stream_info,
      device,
    );

/// @brief Removes a callback function invoked when the state of a sound device was changed.
/// @since_tizen 5.0
///
/// Parameter	id	The id of the callback to remove
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_add_device_running_changed_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_remove_device_running_changed_cb(
  int id,
) =>
    tizenCapiMediaSoundManager.sound_manager_remove_device_running_changed_cb(
      id,
    );

/// @deprecated Deprecated since 4.0. Use sound_manager_remove_device_running_changed_cb() instead.
/// @brief Removes a callback function invoked when the state of a sound device was changed.
/// @since_tizen 3.0
///
/// Parameter	id	The id of the callback to remove
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_add_device_state_changed_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_remove_device_state_changed_cb(
  int id,
) =>
    tizenCapiMediaSoundManager.sound_manager_remove_device_state_changed_cb(
      id,
    );

/// @brief Unregisters the focus state change watch callback.
/// @since_tizen 3.0
///
/// @remarks	Do not call this function within sound_stream_focus_state_changed_cb() or sound_stream_focus_state_watch_cb(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.
///
/// Parameter	id		The focus state change watch callback id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_add_focus_state_watch_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_remove_focus_state_watch_cb(
  int id,
) =>
    tizenCapiMediaSoundManager.sound_manager_remove_focus_state_watch_cb(
      id,
    );

/// @brief Removes the volume change callback.
/// @since_tizen 3.0
/// Parameter	id	The id of the callback to remove
/// @return 0 on success, otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_add_volume_changed_cb()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_remove_volume_changed_cb(
  int id,
) =>
    tizenCapiMediaSoundManager.sound_manager_remove_volume_changed_cb(
      id,
    );

/// @brief Sets the device's 'avoid resampling' property.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device,\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.\n
/// The 'avoid resampling' property is not enabled as default. With this enabled, @a device will\n
/// use the first stream's original sample format and rate without resampling if supported.
///
/// Parameter	device	The device item
/// Parameter	enable	The 'avoid resampling' property value to set: (@c true = enable, @c false = disable)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_avoid_resampling()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_set_avoid_resampling(
  sound_device_h device,
  bool enable,
) =>
    tizenCapiMediaSoundManager.sound_manager_set_avoid_resampling(
      device,
      enable,
    );

/// @brief Sets auto focus reacquisition property.
/// @since_tizen 3.0
///
/// @remarks	The focus reacquisition is set as default.
/// If you don't want to reacquire the focus you've lost automatically, disable the focus reacquisition setting by using this function and vice versa.
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	enable	The auto focus reacquisition property value to set: (@c true = enable, @c false = disable)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre Call sound_manager_create_stream_information() before calling this function.
/// @see sound_manager_create_stream_information()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_set_focus_reacquisition(
  sound_stream_info_h stream_info,
  bool enable,
) =>
    tizenCapiMediaSoundManager.sound_manager_set_focus_reacquisition(
      stream_info,
      enable,
    );

/// @brief Sets the restriction of stream type only for media.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device,\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.\n
/// This property is not enabled as default. With this enabled, no other stream type\n
/// is allowed to @a device to play sound except for #SOUND_STREAM_TYPE_MEDIA.
///
/// Parameter	device	The device item
/// Parameter	enable	The 'media stream only' property value to set: (@c true = enable, @c false = disable)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_media_stream_only()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_set_media_stream_only(
  sound_device_h device,
  bool enable,
) =>
    tizenCapiMediaSoundManager.sound_manager_set_media_stream_only(
      device,
      enable,
    );

/// @brief Sets the device's sample format.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device.\n
/// @a format should be one of the values received from sound_manager_get_supported_sample_formats(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.
///
/// Parameter	device	The device item
/// Parameter	format	The sample format
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_supported_sample_formats()
/// @see sound_manager_get_sample_format()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_set_sample_format(
  sound_device_h device,
  int format,
) =>
    tizenCapiMediaSoundManager.sound_manager_set_sample_format(
      device,
      format,
    );

/// @brief Sets the device's sample rate.
/// @since_tizen 5.0
///
/// @remarks	@a device should be #SOUND_DEVICE_USB_AUDIO type and an output device.\n
/// @a rate should be one of the values received from sound_manager_get_supported_sample_rates(),\n
/// otherwise #SOUND_MANAGER_ERROR_INVALID_OPERATION will be returned.\n
/// Use sound_manager_get_device_io_direction() to check if it is an output device or not.
///
/// Parameter	device	The device item
/// Parameter	rate	The sample rate
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_supported_sample_rates()
/// @see sound_manager_get_sample_rate()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_set_sample_rate(
  sound_device_h device,
  int rate,
) =>
    tizenCapiMediaSoundManager.sound_manager_set_sample_rate(
      device,
      rate,
    );

/// @brief Sets the preferred built-in device for the stream routing.
/// @since_tizen 5.5
///
/// @remarks	This function is to set a specific built-in device when the system has multiple devices of the same built-in device type.
/// When there's only one device for a built-in device type in the system, nothing will happen even if this function succeeds in operation.
/// If @a device is not supported by @a stream_info, #SOUND_MANAGER_ERROR_POLICY will be returned.
/// After this function is called, @a device is not needed for the function's work. It's okay to destroy it by destroying the list from which it was obtained.
///
/// Parameter	stream_info	The handle of stream information
/// Parameter	io_direction	The IO direction of the device
/// Parameter	device	The preferred device (this can be NULL to unset)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_POLICY Noncompliance with the sound system policy
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @pre Call sound_manager_create_stream_information() before calling this function.
/// @pre Get a device by calling sound_manager_get_device_list() and sound_manager_get_next_device().
/// @post You can get preferred devices by calling sound_manager_get_stream_preferred_device().
/// @post Call sound_manager_free_device_list() to free the devices.
/// @see sound_manager_get_stream_preferred_device()
/// @see sound_manager_create_stream_information()
/// @see sound_manager_destroy_stream_information()
/// @see sound_manager_get_device_list()
/// @see sound_manager_get_next_device()
/// @see sound_manager_free_device_list()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_set_stream_preferred_device(
  sound_stream_info_h stream_info,
  int io_direction,
  sound_device_h device,
) =>
    tizenCapiMediaSoundManager.sound_manager_set_stream_preferred_device(
      stream_info,
      io_direction,
      device,
    );

/// @brief Sets the volume level specified for a particular sound type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/volume.set
/// Parameter		type The sound type
/// Parameter		volume	The volume level to be set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SOUND_MANAGER_ERROR_NONE Success
/// @retval #SOUND_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #SOUND_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #SOUND_MANAGER_ERROR_INTERNAL Internal error inside the sound system
/// @see sound_manager_get_max_volume()
/// @see sound_manager_get_volume()
///
/// Module getter: `tizenCapiMediaSoundManager`.
int sound_manager_set_volume(
  int type,
  int volume,
) =>
    tizenCapiMediaSoundManager.sound_manager_set_volume(
      type,
      volume,
    );

