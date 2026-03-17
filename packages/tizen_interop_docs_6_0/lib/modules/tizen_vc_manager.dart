// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenVcManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libvc_manager.so`.
///
/// UIX / Voice control manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_vc_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @platform
/// @brief Cancels recognition.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                        Successful
/// @retval #VC_ERROR_OUT_OF_MEMORY               Not enough memory
/// @retval #VC_ERROR_INVALID_STATE               Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED            Operation failure
/// @retval #VC_ERROR_IN_PROGRESS_TO_READY        In progress to ready
/// @retval #VC_ERROR_IN_PROGRESS_TO_RECORDING    In progress to recording
/// @retval #VC_ERROR_IN_PROGRESS_TO_PROCESSING   In progress to processing
/// @retval #VC_ERROR_PERMISSION_DENIED           Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED               VC not supported
///
/// @pre The service state should be #VC_SERVICE_STATE_RECORDING or #VC_SERVICE_STATE_PROCESSING.
/// @post It will invoke vc_service_state_changed_cb(), if you register a callback with vc_service_state_changed_cb(). \n
/// If this function succeeds, the service state will be #VC_SERVICE_STATE_READY.
///
/// @see vc_mgr_start()
/// @see vc_mgr_stop()
/// @see vc_service_state_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_cancel() =>
    tizenVcManager.vc_mgr_cancel();

/// @platform
/// @brief Deinitializes the voice control manager.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @post If this function is called, the state will be #VC_STATE_NONE.
///
/// @see vc_mgr_initialize()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_deinitialize() =>
    tizenVcManager.vc_mgr_deinitialize();

/// @platform
/// @brief Disables command type as candidate command.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter cmd_type   The command type (e.g. #VC_COMMAND_TYPE_FOREGROUND, #VC_COMMAND_TYPE_BACKGROUND, #VC_COMMAND_TYPE_WIDGET, #VC_COMMAND_TYPE_SYSTEM, #VC_COMMAND_TYPE_SYSTEM_BACKGROUND, #VC_COMMAND_TYPE_EXCLUSIVE)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_enable_command_type()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_disable_command_type(
  int cmd_type,
) =>
    tizenVcManager.vc_mgr_disable_command_type(
      cmd_type,
    );

/// @platform
/// @brief Requests to do action as if utterance is spoken.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter type         Event type
/// Parameter send_event   The string for send event
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_OUT_OF_MEMORY       Not enough memory
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The service state should be #VC_SERVICE_STATE_READY.
///
/// Module getter: `tizenVcManager`.
int vc_mgr_do_action(
  int type,
  ffi.Pointer<ffi.Char> send_event,
) =>
    tizenVcManager.vc_mgr_do_action(
      type,
      send_event,
    );

/// @platform
/// @brief Enables command type as candidate command.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter cmd_type   The command type (e.g. #VC_COMMAND_TYPE_FOREGROUND, #VC_COMMAND_TYPE_BACKGROUND, #VC_COMMAND_TYPE_WIDGET, #VC_COMMAND_TYPE_SYSTEM, #VC_COMMAND_TYPE_SYSTEM_BACKGROUND, #VC_COMMAND_TYPE_EXCLUSIVE)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_disable_command_type()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_enable_command_type(
  int cmd_type,
) =>
    tizenVcManager.vc_mgr_enable_command_type(
      cmd_type,
    );

/// @platform
/// @brief Retrieves all supported languages using callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to invoke
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_OPERATION_FAILED    Operation failure
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should NOT be #VC_SERVICE_STATE_NONE.
/// @post This function invokes vc_supported_language_cb() for each supported language.
///
/// @see vc_supported_language_cb()
/// @see vc_mgr_get_current_language()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_foreach_supported_languages(
  vc_supported_language_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_foreach_supported_languages(
      callback,
      user_data,
    );

/// @platform
/// @brief Gets a type of audio-in.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks audio_id must be released using free() when it is no longer required.
///
/// Output parameter audio_id   The audio id (e.g. #VC_AUDIO_TYPE_BLUETOOTH or USB device ID)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY and the service state should be #VC_SERVICE_STATE_READY.
///
/// @see vc_mgr_set_audio_type()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_audio_type(
  ffi.Pointer<ffi.Pointer<ffi.Char>> audio_id,
) =>
    tizenVcManager.vc_mgr_get_audio_type(
      audio_id,
    );

/// @platform
/// @brief Retrieves all available commands.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks If the function succeeds, @a vc_cmd_list must be released with vc_cmd_list_destroy(vc_cmd_list, true).
///
/// Parameter vc_cmd_list   The command list
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED    Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY and the service state should be #VC_SERVICE_STATE_READY.
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_current_commands(
  ffi.Pointer<vc_cmd_list_h> vc_cmd_list,
) =>
    tizenVcManager.vc_mgr_get_current_commands(
      vc_cmd_list,
    );

/// @platform
/// @brief Gets the current language set by user.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks If the function succeeds, @a language must be released with free() by you when you no longer need it.
///
/// Output parameter language   A language is specified as an ISO 3166 alpha-2 two letter country-code \n
/// followed by ISO 639-1 for the two-letter language code. \n
/// For example, "ko_KR" for Korean, "en_US" for American English.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #VC_ERROR_OPERATION_FAILED    Operation failure
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should NOT be #VC_SERVICE_STATE_NONE.
///
/// @see vc_mgr_foreach_supported_languages()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_current_language(
  ffi.Pointer<ffi.Pointer<ffi.Char>> language,
) =>
    tizenVcManager.vc_mgr_get_current_language(
      language,
    );

/// @platform
/// @brief Gets the current error message.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks This function should be called during as vc error callback. If not, the error as operation failure will be returned. \n
/// If the function succeeds, @a err_msg must be released using free() when it is no longer required.
///
/// Output parameter err_msg   The current error message
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval $VC_ERROR_OPERATION_FAILED    Operation failure
/// @retval #VC_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @see vc_error_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_error_message(
  ffi.Pointer<ffi.Pointer<ffi.Char>> err_msg,
) =>
    tizenVcManager.vc_mgr_get_error_message(
      err_msg,
    );

/// @platform
/// @brief Gets private data from VC engine.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks VC manager client can get private data from VC engine using this function.
/// @a data must be released using free() when it is no longer required.
///
/// Parameter  key    Private key
/// Output parameter data   Private data
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_OUT_OF_MEMORY       Not enough memory
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The service state should be #VC_SERVICE_STATE_READY.
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_private_data(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data,
) =>
    tizenVcManager.vc_mgr_get_private_data(
      key,
      data,
    );

/// @platform
/// @brief Gets recognition mode.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Output parameter mode   Recognition mode
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_get_recognition_mode()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_recognition_mode(
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenVcManager.vc_mgr_get_recognition_mode(
      mode,
    );

/// @platform
/// @brief Gets the microphone volume during recording.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Output parameter volume   Recording volume
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The service state should be #VC_SERVICE_STATE_RECORDING.
///
/// @see vc_mgr_start()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_recording_volume(
  ffi.Pointer<ffi.Float> volume,
) =>
    tizenVcManager.vc_mgr_get_recording_volume(
      volume,
    );

/// @platform
/// @brief Gets the current state of voice control service.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Output parameter state   The current state
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED    Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_start()
/// @see vc_mgr_stop()
/// @see vc_mgr_cancel()
/// @see vc_set_service_state_changed_cb()
/// @see vc_unset_service_state_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_service_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenVcManager.vc_mgr_get_service_state(
      state,
    );

/// @platform
/// @brief Gets the current state of voice control manager.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Output parameter state   The current state
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should NOT be #VC_SERVICE_STATE_NONE.
///
/// @see vc_state_changed_cb()
/// @see vc_set_state_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_get_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenVcManager.vc_mgr_get_state(
      state,
    );

/// @platform
/// @brief Initializes the voice control manager.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks If the function succeeds, VC manager must be released with vc_mgr_deinitialize().
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #VC_ERROR_OPERATION_FAILED    Operation fail
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_NONE.
/// @post If this function is called, the state will be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_deinitialize()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_initialize() =>
    tizenVcManager.vc_mgr_initialize();

/// @platform
/// @brief Checks whether the command format is supported.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks The command formats are defined in @ref CAPI_UIX_VOICE_CONTROL_COMMAND_MODULE. (e.g. #VC_COMMAND_FORMAT_FIXED, #VC_COMMAND_FORMAT_FIXED_AND_NONFIXED, and so on). Please refer to @ref CAPI_UIX_VOICE_CONTROL_COMMAND_MODULE.
///
/// Parameter  format    The command format
/// Output parameter support   The result status @c true = supported, @c false = not supported
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// Module getter: `tizenVcManager`.
int vc_mgr_is_command_format_supported(
  int format,
  ffi.Pointer<ffi.Bool> support,
) =>
    tizenVcManager.vc_mgr_is_command_format_supported(
      format,
      support,
    );

/// @platform
/// @brief Connects the voice control service.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @post If this function is called, the state will be #VC_STATE_READY.
///
/// @see vc_mgr_unprepare()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_prepare() =>
    tizenVcManager.vc_mgr_prepare();

/// @platform
/// @brief Sends audio streaming to the engine service.
/// @details Using this function, the developer can send audio streaming after vc_mgr_start() function is called.
/// @since_tizen 6.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter event Audio streaming event (e.g. #VC_AUDIO_STREAMING_EVENT_START, #VC_AUDIO_STREAMING_EVENT_CONTINUE)
/// Parameter buffer Audio streaming data
/// Parameter len Length of the audio streaming data
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_OUT_OF_MEMORY       Not enough memory
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED    Operation fail
///
/// @pre The state should be #VC_SERVICE_STATE_RECORDING.
///
/// @see vc_mgr_set_audio_streaming_mode()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_send_audio_streaming(
  int event,
  ffi.Pointer<ffi.UnsignedChar> buffer,
  int len,
) =>
    tizenVcManager.vc_mgr_send_audio_streaming(
      event,
      buffer,
      len,
    );

/// @platform
/// @brief Sends the specific engine request to the vc-service.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter engine_app_id A specific engine's app id
/// Parameter event A engine service user request event
/// Parameter request A engine service user request text
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_OPERATION_FAILED Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
///
/// Module getter: `tizenVcManager`.
int vc_mgr_send_specific_engine_request(
  ffi.Pointer<ffi.Char> engine_app_id,
  ffi.Pointer<ffi.Char> event,
  ffi.Pointer<ffi.Char> request,
) =>
    tizenVcManager.vc_mgr_send_specific_engine_request(
      engine_app_id,
      event,
      request,
    );

/// @platform
/// @brief Sends the utterance status to the VC client.
/// @since_tizen 6.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter pid The process id of the VC client
/// Parameter utt_id The utterance id
/// Parameter utt_status The utterance status
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_OUT_OF_MEMORY       Not enough memory
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED    Operation fail
///
/// @pre The service state should be #VC_SERVICE_STATE_READY.
///
/// Module getter: `tizenVcManager`.
int vc_mgr_send_utterance_status(
  int pid,
  int utt_id,
  int utt_status,
) =>
    tizenVcManager.vc_mgr_send_utterance_status(
      pid,
      utt_id,
      utt_status,
    );

/// @platform
/// @brief Sets a callback function for getting recognition result.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_all_result_cb()
/// @see vc_mgr_unset_all_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_all_result_cb(
  vc_mgr_all_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_all_result_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets audio streaming mode.
/// @since_tizen 6.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks The default audio streaming mode is #VC_AUDIO_STREAMING_MODE_VC_SERVICE. \n
/// If you want to use other mode, you can set mode with vc_mgr_set_audio_streaming_mode().
///
/// Parameter mode Audio streaming mode
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED    Operation fail
///
/// @pre The state should be #VC_STATE_INITIALIZED or #VC_SERVICE_STATE_READY.
///
/// @see vc_mgr_send_audio_streaming()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_audio_streaming_mode(
  int mode,
) =>
    tizenVcManager.vc_mgr_set_audio_streaming_mode(
      mode,
    );

/// @platform
/// @brief Sets a type of audio-in.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter audio_id   The audio type (e.g. #VC_AUDIO_TYPE_BLUETOOTH or USB device ID)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED    Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY and the service state should be #VC_SERVICE_STATE_READY.
///
/// @see vc_mgr_get_audio_type()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_audio_type(
  ffi.Pointer<ffi.Char> audio_id,
) =>
    tizenVcManager.vc_mgr_set_audio_type(
      audio_id,
    );

/// @platform
/// @brief Sets all types of commands.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks VC manager client can register all types of commands.
/// The commands should include type, command text, format.
///
/// Parameter vc_cmd_list   The command list handle
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_unset_command_list()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_command_list(
  vc_cmd_list_h vc_cmd_list,
) =>
    tizenVcManager.vc_mgr_set_command_list(
      vc_cmd_list,
    );

/// @platform
/// @brief Sets commands from file.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks The commands should include type, command text, format.
///
/// Parameter file_path   The directory of a file which has command list
/// Parameter type          The command type (e.g. #VC_COMMAND_TYPE_FOREGROUND, #VC_COMMAND_TYPE_BACKGROUND, #VC_COMMAND_TYPE_WIDGET, #VC_COMMAND_TYPE_SYSTEM, #VC_COMMAND_TYPE_SYSTEM_BACKGROUND, #VC_COMMAND_TYPE_EXCLUSIVE)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED    Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_unset_command_list()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_command_list_from_file(
  ffi.Pointer<ffi.Char> file_path,
  int type,
) =>
    tizenVcManager.vc_mgr_set_command_list_from_file(
      file_path,
      type,
    );

/// @platform
/// @brief Sets a callback function to be called when current language is changed.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_current_language_changed_cb()
/// @see vc_mgr_unset_current_language_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_current_language_changed_cb(
  vc_current_language_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_current_language_changed_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets a callback function to be called when dialog requests.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_unset_dialog_request_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_dialog_request_cb(
  vc_mgr_dialog_request_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_dialog_request_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets a callback function to be called when an error occurred.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_error_cb()
/// @see vc_mgr_unset_error_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_error_cb(
  vc_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_error_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets a callback function to be called when engine sends audio formats necessary for playing TTS feedback.
/// @since_tizen 5.0
///
/// Parameter callback Callback function to set
/// Parameter user_data The user data to be passed to the callback function
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_feedback_audio_format_cb()
/// @see vc_mgr_unset_feedback_audio_format_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_feedback_audio_format_cb(
  vc_mgr_feedback_audio_format_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_feedback_audio_format_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets a callback function to be called when engine sends audio streaming for TTS feedback.
/// @since_tizen 5.0
///
/// Parameter callback Callback function to set
/// Parameter user_data The user data to be passed to the callback function
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_feedback_streaming_cb()
/// @see vc_mgr_unset_feedback_streaming_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_feedback_streaming_cb(
  vc_mgr_feedback_streaming_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_feedback_streaming_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets background commands of preloaded app from file.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks The command type is valid for #VC_COMMAND_TYPE_BACKGROUND.
/// The commands should include type, command text, format.
///
/// Parameter file_path   The directory of a file which has command list
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED    Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_unset_command_list()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_preloaded_commands_from_file(
  ffi.Pointer<ffi.Char> file_path,
) =>
    tizenVcManager.vc_mgr_set_preloaded_commands_from_file(
      file_path,
    );

/// @platform
/// @brief Sets a callback function for getting pre recognition result.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_pre_result_cb()
/// @see vc_mgr_unset_pre_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_pre_result_cb(
  vc_mgr_pre_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_pre_result_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets private data to VC engine.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks VC manager client can set private data to VC engine using this function.
///
/// Parameter key    Private key
/// Parameter data   Private data
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_OUT_OF_MEMORY       Not enough memory
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The service state should be #VC_SERVICE_STATE_READY.
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_private_data(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> data,
) =>
    tizenVcManager.vc_mgr_set_private_data(
      key,
      data,
    );

/// @platform
/// @brief Sets a callback function to be called when engine request private data.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_private_data_requested_cb()
/// @see vc_mgr_unset_private_data_requested_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_private_data_requested_cb(
  vc_mgr_private_data_requested_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_private_data_requested_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets a callback function to be called when engine set private data.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_private_data_set_cb()
/// @see vc_mgr_unset_private_data_set_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_private_data_set_cb(
  vc_mgr_private_data_set_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_private_data_set_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets recognition mode.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter mode   Recognition mode (e.g. #VC_RECOGNITION_MODE_STOP_BY_SILENCE is default value)
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY and the service state should be #VC_SERVICE_STATE_READY.
///
/// @see vc_mgr_set_recognition_mode()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_recognition_mode(
  int mode,
) =>
    tizenVcManager.vc_mgr_set_recognition_mode(
      mode,
    );

/// @platform
/// @brief Sets a callback function for getting all types of recognition results.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_result_cb()
/// @see vc_mgr_unset_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_result_cb(
  vc_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_result_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Selects valid results from all results.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks This function should be called in vc_mgr_all_result_cb().
/// The @a vc_cmd_list can be NULL, in that case the function does nothing.
/// Parameter vc_cmd_list   The valid result list
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre vc_mgr_all_result_cb() should be called
///
/// @see vc_mgr_all_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_selected_results(
  vc_cmd_list_h vc_cmd_list,
) =>
    tizenVcManager.vc_mgr_set_selected_results(
      vc_cmd_list,
    );

/// @platform
/// @brief Sets a callback function to be called when service state is changed.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_service_state_changed_cb()
/// @see vc_mgr_unset_service_state_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_service_state_changed_cb(
  vc_service_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_service_state_changed_cb(
      callback,
      user_data,
    );

/// @brief Registers a callback function for getting specific engine result.
/// @since_tizen 5.0
///
/// Parameter callback Callback function to register
/// Parameter user_data The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_unset_specific_engine_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_specific_engine_result_cb(
  vc_mgr_specific_engine_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_specific_engine_result_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets a callback function to be called when begin of speech is detected.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_begin_speech_detected_cb()
/// @see vc_mgr_unset_speech_detected_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_speech_detected_cb(
  vc_mgr_begin_speech_detected_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_speech_detected_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets a callback function to be called when state is changed.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback    Callback function to register
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_state_changed_cb()
/// @see vc_mgr_unset_state_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_state_changed_cb(
  vc_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_state_changed_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Sets TTS streaming callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// Parameter callback The callback function
/// Parameter user_data The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_vc_tts_streaming_cb()
/// @see vc_mgr_unset_vc_tts_streaming_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_set_vc_tts_streaming_cb(
  vc_mgr_vc_tts_streaming_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcManager.vc_mgr_set_vc_tts_streaming_cb(
      callback,
      user_data,
    );

/// @platform
/// @brief Starts recognition.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks The default recognition mode is #VC_RECOGNITION_MODE_STOP_BY_SILENCE. \n
/// If you want to use other mode, you can set mode with vc_mgr_set_recognition_mode().
///
/// Parameter exclusive_command_option   Exclusive command option
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                       Successful
/// @retval #VC_ERROR_INVALID_PARAMETER          Invalid parameter.
/// @retval #VC_ERROR_INVALID_STATE              Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED           Operation failure
/// @retval #VC_ERROR_IN_PROGRESS_TO_RECORDING   In progress to recording
/// @retval #VC_ERROR_PERMISSION_DENIED          Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED              VC not supported
///
/// @pre The state should be #VC_STATE_READY and the service state should be #VC_SERVICE_STATE_READY.
/// @post It will invoke vc_service_state_changed_cb(), if you register a callback with vc_service_state_changed_cb(). \n
/// If this function succeeds, the service state will be #VC_SERVICE_STATE_RECORDING.
///
/// @see vc_mgr_stop()
/// @see vc_mgr_cancel()
/// @see vc_service_state_changed_cb()
/// @see vc_mgr_set_recognition_mode()
/// @see vc_mgr_get_recognition_mode()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_start(
  bool exclusive_command_option,
) =>
    tizenVcManager.vc_mgr_start(
      exclusive_command_option,
    );

/// @platform
/// @brief Starts getting TTS feedback streaming data from the buffer.
/// @since_tizen 5.0
///
/// @remarks In order to get TTS feedback streaming data, the application should set 'vc_mgr_feedback_streaming_cb()' using vc_mgr_set_feedback_streaming_cb().
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
///
/// @pre The state should be #VC_STATE_READY. \n
/// 'vc_mgr_feedback_streaming_cb()' should be registered.
///
/// @see vc_mgr_feedback_streaming_cb()
/// @see vc_mgr_set_feedback_streaming_cb()
/// @see vc_mgr_unset_feedback_streaming_cb()
/// @see vc_mgr_stop_feedback()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_start_feedback() =>
    tizenVcManager.vc_mgr_start_feedback();

/// @platform
/// @brief Stops recognition.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                        Successful
/// @retval #VC_ERROR_INVALID_STATE               Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED            Operation failure
/// @retval #VC_ERROR_IN_PROGRESS_TO_READY        In progress to ready
/// @retval #VC_ERROR_IN_PROGRESS_TO_RECORDING    In progress to recording
/// @retval #VC_ERROR_IN_PROGRESS_TO_PROCESSING   In progress to processing
/// @retval #VC_ERROR_PERMISSION_DENIED           Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED               VC not supported
///
/// @pre The service state should be #VC_SERVICE_STATE_RECORDING.
/// @post It will invoke vc_service_state_changed_cb(), if you register a callback with vc_service_state_changed_cb(). \n
/// If this function succeeds, the service state will be #VC_SERVICE_STATE_PROCESSING.
///
/// @see vc_mgr_start()
/// @see vc_mgr_cancel()
/// @see vc_service_state_changed_cb()
/// @see vc_mgr_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_stop() =>
    tizenVcManager.vc_mgr_stop();

/// @platform
/// @brief Stops getting and removes TTS feedback streaming data from the buffer.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_feedback_streaming_cb()
/// @see vc_mgr_set_feedback_streaming_cb()
/// @see vc_mgr_unset_feedback_streaming_cb()
/// @see vc_mgr_start_feedback()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_stop_feedback() =>
    tizenVcManager.vc_mgr_stop_feedback();

/// @platform
/// @brief Disconnects the voice control service.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
/// @post If this function is called, the state will be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_prepare()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unprepare() =>
    tizenVcManager.vc_mgr_unprepare();

/// @platform
/// @brief Unsets the recognition result callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_all_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_all_result_cb() =>
    tizenVcManager.vc_mgr_unset_all_result_cb();

/// @platform
/// @brief Unsets all types of commands.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @remarks All previously registered commands will be unset.
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_READY.
///
/// @see vc_mgr_set_command_list()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_command_list() =>
    tizenVcManager.vc_mgr_unset_command_list();

/// @platform
/// @brief Unsets the current language changed callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_current_language_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_current_language_changed_cb() =>
    tizenVcManager.vc_mgr_unset_current_language_changed_cb();

/// @platform
/// @brief Unsets the callback function to be called when dialog requests.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_dialog_request_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_dialog_request_cb() =>
    tizenVcManager.vc_mgr_unset_dialog_request_cb();

/// @platform
/// @brief Unsets the callback function to be called when an error occurred.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_error_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_error_cb() =>
    tizenVcManager.vc_mgr_unset_error_cb();

/// @platform
/// @brief Unsets a callback function to be called when engine sends audio formats necessary for playing TTS feedback.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_feedback_audio_format_cb()
/// @see vc_mgr_set_feedback_audio_format_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_feedback_audio_format_cb() =>
    tizenVcManager.vc_mgr_unset_feedback_audio_format_cb();

/// @platform
/// @brief Unsets a callback function to be called when engine sends audio streaming for TTS feedback.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_feedback_streaming_cb()
/// @see vc_mgr_set_feedback_streaming_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_feedback_streaming_cb() =>
    tizenVcManager.vc_mgr_unset_feedback_streaming_cb();

/// @platform
/// @brief Unsets the pre recognition result callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_pre_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_pre_result_cb() =>
    tizenVcManager.vc_mgr_unset_pre_result_cb();

/// @platform
/// @brief Unsets the callback function to be called when engine request private data.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_private_data_requested_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_private_data_requested_cb() =>
    tizenVcManager.vc_mgr_unset_private_data_requested_cb();

/// @platform
/// @brief Unsets the callback function to be called when engine set private data.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_private_data_set_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_private_data_set_cb() =>
    tizenVcManager.vc_mgr_unset_private_data_set_cb();

/// @platform
/// @brief Unsets the callback function for getting all types of recognition results.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_result_cb() =>
    tizenVcManager.vc_mgr_unset_result_cb();

/// @platform
/// @brief Unsets the service state changed callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_service_state_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_service_state_changed_cb() =>
    tizenVcManager.vc_mgr_unset_service_state_changed_cb();

/// @brief Unregisters the specific engine result callback function.
/// @since_tizen 5.0
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_specific_engine_result_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_specific_engine_result_cb() =>
    tizenVcManager.vc_mgr_unset_specific_engine_result_cb();

/// @platform
/// @brief Unsets the speech detected callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_speech_detected_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_speech_detected_cb() =>
    tizenVcManager.vc_mgr_unset_speech_detected_cb();

/// @platform
/// @brief Unsets the state changed callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE                Successful
/// @retval #VC_ERROR_INVALID_STATE       Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED       VC not supported
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_set_state_changed_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_state_changed_cb() =>
    tizenVcManager.vc_mgr_unset_state_changed_cb();

/// @platform
/// @brief Unsets TTS streaming callback function.
/// @since_tizen 5.0
///
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/voicecontrol.manager
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED	VC not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// @see vc_mgr_vc_tts_streaming_cb()
/// @see vc_mgr_set_vc_tts_streaming_cb()
///
/// Module getter: `tizenVcManager`.
int vc_mgr_unset_vc_tts_streaming_cb() =>
    tizenVcManager.vc_mgr_unset_vc_tts_streaming_cb();

