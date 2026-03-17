// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenVc`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libvc.so`.
///
/// UIX / Voice control.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_vc;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Deinitializes voice control.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @see vc_initialize()
///
/// Module getter: `tizenVc`.
int vc_deinitialize() =>
    tizenVc.vc_deinitialize();

/// @brief Retrieves all supported languages using callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter callback Callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_OPERATION_FAILED Operation failure
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED or #VC_STATE_READY.
/// @post This function invokes vc_supported_language_cb() repeatedly for getting languages.
/// @see vc_supported_language_cb()
/// @see vc_get_current_language()
///
/// Module getter: `tizenVc`.
int vc_foreach_supported_languages(
  vc_supported_language_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_foreach_supported_languages(
      callback,
      user_data,
    );

/// @brief Gets current language.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks If the function succeeds, @a language must be released with free() by you when you no longer need it.
/// Output parameter language A language is specified as an ISO 3166 alpha-2 two letter country-code
/// followed by ISO 639-1 for the two-letter language code.
/// For example, "ko_KR" for Korean, "en_US" for American English
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #VC_ERROR_OPERATION_FAILED Operation failure
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED or #VC_STATE_READY.
/// @see vc_foreach_supported_languages()
///
/// Module getter: `tizenVc`.
int vc_get_current_language(
  ffi.Pointer<ffi.Pointer<ffi.Char>> language,
) =>
    tizenVc.vc_get_current_language(
      language,
    );

/// @brief Gets the recognition result.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter callback Callback function to get recognition result
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_READY.
/// @see vc_result_cb()
///
/// Module getter: `tizenVc`.
int vc_get_result(
  vc_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_get_result(
      callback,
      user_data,
    );

/// @brief Gets current state of voice control service.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Output parameter state The current state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_READY.
/// @see vc_request_start()
/// @see vc_request_stop()
/// @see vc_request_cancel()
/// @see vc_set_service_state_changed_cb()
/// @see vc_unset_service_state_changed_cb()
///
/// Module getter: `tizenVc`.
int vc_get_service_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenVc.vc_get_service_state(
      state,
    );

/// @brief Gets current state of voice control client.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Output parameter state The current state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @see vc_state_changed_cb()
/// @see vc_set_state_changed_cb()
///
/// Module getter: `tizenVc`.
int vc_get_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenVc.vc_get_state(
      state,
    );

/// @brief Gets the system command list.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks In the system command list, there are system commands predefined by product manufacturers. Those commands have the highest priority.
/// Therefore, the user can not set any commands same with the system commands.
/// The @a vc_sys_cmd_list must be released using free() when it is no longer required.
/// Output parameter vc_sys_cmd_list System command list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The service state should be #VC_SERVICE_STATE_READY.
/// @see vc_unset_command_list()
///
/// Module getter: `tizenVc`.
int vc_get_system_command_list(
  ffi.Pointer<vc_cmd_list_h> vc_sys_cmd_list,
) =>
    tizenVc.vc_get_system_command_list(
      vc_sys_cmd_list,
    );

/// @brief Initializes voice control.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks If the function succeeds, vc must be released with vc_deinitialize().
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #VC_ERROR_OPERATION_FAILED Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @post If this function is called, the state will be #VC_STATE_INITIALIZED.
/// @see vc_deinitialize()
///
/// Module getter: `tizenVc`.
int vc_initialize() =>
    tizenVc.vc_initialize();

/// @brief Connects the voice control service.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED Operation failure
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @post If this function is called, the state will be #VC_STATE_READY.
/// @see vc_unprepare()
///
/// Module getter: `tizenVc`.
int vc_prepare() =>
    tizenVc.vc_prepare();

/// @brief Requests to start the dialogue.
/// @details Using this function, the developer can request starting the dialogue to the framework.
/// When the developer requests the dialogue, two types of texts, @a disp_text and @a utt_text, can be sent by this function.
/// @a disp_text is a text for displaying, and @a utt_text is that for uttering.
/// For example, if @a disp_text is "October 10th" and @a utt_text is "Today is October 10th.", "October 10th" will be displayed on the screen and "Today is October 10th." will be spoken.
/// Also, the developer can set whether the dialogue starts automatically or not, using @a auto_start.
/// If the developer sets @a auto_start as @c true, the framework will start to record next speech and continue the dialogue.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks If @a auto_start is @c true, the recognition will start again. In this case, it can be restarted up to 4 times.
/// Parameter disp_text Text to be displayed on the screen
/// Parameter utt_text Text to be spoken
/// Parameter auto_start A variable for setting whether the dialog session will be restarted automatically or not
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The service state should be #VC_SERVICE_STATE_READY.
///
/// Module getter: `tizenVc`.
int vc_request_dialog(
  ffi.Pointer<ffi.Char> disp_text,
  ffi.Pointer<ffi.Char> utt_text,
  bool auto_start,
) =>
    tizenVc.vc_request_dialog(
      disp_text,
      utt_text,
      auto_start,
    );

/// @brief Sets command list.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The command type is valid for #VC_COMMAND_TYPE_FOREGROUND or #VC_COMMAND_TYPE_BACKGROUND.
/// The matched commands of command list should be set and they should include type and command text at least.
/// Parameter vc_cmd_list Command list handle
/// Parameter type Command type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_READY.
/// @see vc_unset_command_list()
///
/// Module getter: `tizenVc`.
int vc_set_command_list(
  vc_cmd_list_h vc_cmd_list,
  int type,
) =>
    tizenVc.vc_set_command_list(
      vc_cmd_list,
      type,
    );

/// @brief Registers a callback function to be called when current language is changed.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter callback Callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_current_language_changed_cb()
/// @see vc_unset_current_language_changed_cb()
///
/// Module getter: `tizenVc`.
int vc_set_current_language_changed_cb(
  vc_current_language_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_set_current_language_changed_cb(
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when an error occurred.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter callback Callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_error_cb()
/// @see vc_unset_error_cb()
///
/// Module getter: `tizenVc`.
int vc_set_error_cb(
  vc_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_set_error_cb(
      callback,
      user_data,
    );

/// @brief Sets the invocation name.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks Invocation name is used to activate background commands. The invocation name can be the same as the application name or any other phrase.
/// For example, an application "Tizen Sample" has a background command, "Play music", and the invocation name of the application is set to "Tizen Sample".
/// In order to activate the background command, users can say "Tizen Sample, Play music".
/// The invocation name is dependent on the current language. For example, if the current language is "en_US"(English), the invocation name is also "en_US".
/// If the current language is "ja_JP"(Japanese) and the invocation name is "en_US", the invocation name will not be recognized.
/// This function should be called before vc_set_command_list().
/// Parameter name Invocation name that an application wants to be invoked by
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_READY.
/// @see vc_set_command_list()
///
/// Module getter: `tizenVc`.
int vc_set_invocation_name(
  ffi.Pointer<ffi.Char> name,
) =>
    tizenVc.vc_set_invocation_name(
      name,
    );

/// @brief Registers a callback function for getting recognition result.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter callback Callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_result_cb()
/// @see vc_unset_result_cb()
///
/// Module getter: `tizenVc`.
int vc_set_result_cb(
  vc_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_set_result_cb(
      callback,
      user_data,
    );

/// @brief Requests to set app id which is to want to ask the server dialogue.
/// @details Using this function, the developer can request registering the application on vc framework.
/// If developer requests to register @a app_id with @a credential which is valid, the application will be set on vc framework.
/// and then, when the developer requests the dialogue using vc_request_dialog(), dialog from specific engine server will be played by vc framework.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter app_id App id which is to want to ask server dialog.
/// Parameter credential Credential key.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The service state should be #VC_SERVICE_STATE_READY.
/// @see vc_unset_server_dialog()
///
/// Module getter: `tizenVc`.
int vc_set_server_dialog(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Char> credential,
) =>
    tizenVc.vc_set_server_dialog(
      app_id,
      credential,
    );

/// @brief Registers a callback function to be called when state is changed.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter callback Callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_service_state_changed_cb()
/// @see vc_unset_service_state_changed_cb()
///
/// Module getter: `tizenVc`.
int vc_set_service_state_changed_cb(
  vc_service_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_set_service_state_changed_cb(
      callback,
      user_data,
    );

/// @brief Registers a callback function to be called when state is changed.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter callback Callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_state_changed_cb()
/// @see vc_unset_state_changed_cb()
///
/// Module getter: `tizenVc`.
int vc_set_state_changed_cb(
  vc_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_set_state_changed_cb(
      callback,
      user_data,
    );

/// @partner
/// @brief Requests to cancel TTS streaming data.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/voicecontrol.tts
/// Parameter utt_id The utterance id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @pre The state should be #VC_STATE_READY.
/// @see vc_tts_request()
///
/// Module getter: `tizenVc`.
int vc_tts_cancel(
  int utt_id,
) =>
    tizenVc.vc_tts_cancel(
      utt_id,
    );

/// @partner
/// @brief Gets the TTS audio details.
/// @details Using this function, the developer can get details of synthesized audio data which is requested by vc_tts_request() function.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/voicecontrol.tts
/// Output parameter rate The audio sampling rate
/// Output parameter channel The audio channel
/// Output parameter audio_type The audio type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @pre The state should be #VC_STATE_READY.
///
/// Module getter: `tizenVc`.
int vc_tts_get_synthesized_audio_details(
  ffi.Pointer<ffi.Int> rate,
  ffi.Pointer<ffi.Int32> channel,
  ffi.Pointer<ffi.Int32> audio_type,
) =>
    tizenVc.vc_tts_get_synthesized_audio_details(
      rate,
      channel,
      audio_type,
    );

/// @partner
/// @brief Requests to send TTS streaming data, asynchronously.
/// @details Using this function, the developer can request text to speech to the framework.
/// When the developer requests the TTS with @a language, VC engine will send PCM data which is synthesized using VC engine's own persona.
/// If @a to_vc_manager is true, the synthesized PCM data will be delivered to the VC manager, otherwise it will be delivered to the VC client
/// For example, if @a text is "Alarm is set as 7 PM" and @a to_vc_manager is true, the PCM data corresponding "Alarm is set as 7 PM" will be delivered to VC manager client,
/// and then it will be spoken in VC manager. If @a to_vc_manager is false, you will receive PCM data through the vc_tts_streaming_cb() callback function if it was set using vc_tts_set_streaming_cb().
/// This function is executed asynchronously, so if there is an error while synthesizing, vc_error_cb() will be called.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/voicecontrol.tts
/// Parameter text The text to be requested for TTS
/// Parameter language The language is specified as an ISO 3166 alpha-2 two-letter country code
/// followed by ISO 639-1 for the two-letter language code.
/// For example, "ko_KR" for Korean, "en_US" for American English
/// Parameter to_vc_manager The value for selection between VC client and VC manager\n
/// If @c true, the synthesized PCM data will be delivered to the VC manager, otherwise it will be delivered to the VC client
/// Output parameter utt_id The utterance id
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED Operation failure
/// @pre The state should be #VC_STATE_READY.
/// @see vc_tts_cancel()
///
/// Module getter: `tizenVc`.
int vc_tts_request(
  ffi.Pointer<ffi.Char> text,
  ffi.Pointer<ffi.Char> language,
  bool to_vc_manager,
  ffi.Pointer<ffi.Int> utt_id,
) =>
    tizenVc.vc_tts_request(
      text,
      language,
      to_vc_manager,
      utt_id,
    );

/// @partner
/// @brief Sets the TTS streaming callback function.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/voicecontrol.tts
/// Parameter callback The callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// Module getter: `tizenVc`.
int vc_tts_set_streaming_cb(
  vc_tts_streaming_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_tts_set_streaming_cb(
      callback,
      user_data,
    );

/// @partner
/// @brief Sets the TTS utterance status callback function.
/// @details Using this function, the developer can set the utterance status callback to be called
/// when the VC manager client starts or stops playing TTS PCM data which was requested to be synthesized with the vc_tts_request() function.
/// This function is called when @a to_vc_manager in the vc_tts_request() function call is @c true.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/voicecontrol.tts
/// Parameter callback The callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_OPERATION_FAILED Operation failure
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// Module getter: `tizenVc`.
int vc_tts_set_utterance_status_cb(
  vc_tts_utterance_status_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVc.vc_tts_set_utterance_status_cb(
      callback,
      user_data,
    );

/// @partner
/// @brief Unsets the TTS streaming callback function.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/voicecontrol.tts
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// Module getter: `tizenVc`.
int vc_tts_unset_streaming_cb() =>
    tizenVc.vc_tts_unset_streaming_cb();

/// @partner
/// @brief Unsets the TTS utterance status callback function.
/// @since_tizen 5.5
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/voicecontrol.tts
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @pre The state should be #VC_STATE_INITIALIZED.
///
/// Module getter: `tizenVc`.
int vc_tts_unset_utterance_status_cb() =>
    tizenVc.vc_tts_unset_utterance_status_cb();

/// @brief Disconnects the voice control service.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_READY.
/// @post If this function is called, the state will be #VC_STATE_INITIALIZED.
/// @see vc_prepare()
///
/// Module getter: `tizenVc`.
int vc_unprepare() =>
    tizenVc.vc_unprepare();

/// @brief Unsets command list.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter type Command type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_READY.
/// @see vc_set_command_list()
///
/// Module getter: `tizenVc`.
int vc_unset_command_list(
  int type,
) =>
    tizenVc.vc_unset_command_list(
      type,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_set_current_language_changed_cb()
///
/// Module getter: `tizenVc`.
int vc_unset_current_language_changed_cb() =>
    tizenVc.vc_unset_current_language_changed_cb();

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_set_error_cb()
///
/// Module getter: `tizenVc`.
int vc_unset_error_cb() =>
    tizenVc.vc_unset_error_cb();

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_set_result_cb()
///
/// Module getter: `tizenVc`.
int vc_unset_result_cb() =>
    tizenVc.vc_unset_result_cb();

/// @brief Requests to unset app id which is to not want to ask the server dialogue.
/// @details Using this function, the developer can disable function to ask dialog based on server.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter app_id App id which is to not want to ask server dialog.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The service state should be #VC_SERVICE_STATE_READY.
/// @see vc_set_server_dialog()
///
/// Module getter: `tizenVc`.
int vc_unset_server_dialog(
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenVc.vc_unset_server_dialog(
      app_id,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_set_service_state_changed_cb()
///
/// Module getter: `tizenVc`.
int vc_unset_service_state_changed_cb() =>
    tizenVc.vc_unset_service_state_changed_cb();

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_INVALID_STATE Invalid state
/// @retval #VC_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
/// @pre The state should be #VC_STATE_INITIALIZED.
/// @see vc_set_state_changed_cb()
///
/// Module getter: `tizenVc`.
int vc_unset_state_changed_cb() =>
    tizenVc.vc_unset_state_changed_cb();

