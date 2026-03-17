// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenMa`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libma.so`.
///
/// UIX / Multi assistant.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_ma;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a wake word used for activating assistant.
/// @details Different <word, language> pairs identify a different word.
/// For example, <"Hi Tizen", "en_US"> and <"Hi Tizen", "en_GB">
/// are different words. If <"Hi Tizen", "en_US"> is added, then
/// "Hi Tizen" will not wake the Tizen voice assistant if the
/// wakeup language is set to "en_GB". <"Hi Tizen", "en_GB"> will
/// have to be added for that.\n
/// Adding the same word twice does not cause any error to be returned.
/// @since_tizen 6.0
///
/// Parameter wake_word The wake word to be added to the list of wake words
/// Parameter language The language code for which the word will be added.
/// The language is identified by its code (e.g. "en_US").
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_add_wake_word(
  ffi.Pointer<ffi.Char> wake_word,
  ffi.Pointer<ffi.Char> language,
) =>
    tizenMa.ma_add_wake_word(
      wake_word,
      language,
    );

/// @brief Retrieves the information about all installed voice assistant applications.
/// @since_tizen 5.5
///
/// Parameter callback The callback for getting the information of installed assistants.
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @see ma_voice_assistant_list_cb()
///
/// Module getter: `tizenMa`.
int ma_assistant_info_foreach_assistants(
  ma_assistant_info_list_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_assistant_info_foreach_assistants(
      callback,
      user_data,
    );

/// @brief Gets the app id of the specified handle.
/// @since_tizen 5.5
///
/// @remarks You must not release @a app_id using free().
/// Parameter handle The handle to the assistant's information
/// Output parameter app_id The application ID of the given assistant handle
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_assistant_info_get_app_id(
  ma_assistant_info_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenMa.ma_assistant_info_get_app_id(
      handle,
      app_id,
    );

/// @brief Gets the enabled status of the specified handle.
/// @since_tizen 5.5
///
/// Parameter handle The handle to the assistant's information
/// Parameter status The enable status of the given assistant handle
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_assistant_info_get_enabled_status(
  ma_assistant_info_h handle,
  ffi.Pointer<ffi.Bool> status,
) =>
    tizenMa.ma_assistant_info_get_enabled_status(
      handle,
      status,
    );

/// @brief Deinitializes multi-assistant client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @post If this function is called, the state will be #MA_STATE_NONE.
/// @see ma_initialize()
///
/// Module getter: `tizenMa`.
int ma_deinitialize() =>
    tizenMa.ma_deinitialize();

/// @brief Gets the current language of multi-assistant client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// @remarks The @a language should be released using free().
/// Output parameter language The current language
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_get_current_language(
  ffi.Pointer<ffi.Pointer<ffi.Char>> language,
) =>
    tizenMa.ma_get_current_language(
      language,
    );

/// @brief Gets the recording audio format.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Output parameter rate The audio sampling rate
/// Output parameter channel The audio channel
/// Output parameter audio_type The audio type
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_get_recording_audio_format(
  ffi.Pointer<ffi.Int> rate,
  ffi.Pointer<ffi.Int32> channel,
  ffi.Pointer<ffi.Int32> audio_type,
) =>
    tizenMa.ma_get_recording_audio_format(
      rate,
      channel,
      audio_type,
    );

/// @brief Gets the recording audio source type.
/// @since_tizen 5.5
///
/// @remarks You must release @a type using free().
/// Output parameter type The audio source type
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_get_recording_audio_source_type(
  ffi.Pointer<ffi.Pointer<ffi.Char>> type,
) =>
    tizenMa.ma_get_recording_audio_source_type(
      type,
    );

/// @brief Gets the current state of the multi-assistant client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Output parameter state The current state
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// Module getter: `tizenMa`.
int ma_get_state(
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenMa.ma_get_state(
      state,
    );

/// @brief Initializes multi-assistant client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
/// @retval #MA_ERROR_OUT_OF_MEMORY Out of memory
///
/// @post If this function is called, the state will be #MA_STATE_INITIALIZED.
/// @see ma_deinitialize()
///
/// Module getter: `tizenMa`.
int ma_initialize() =>
    tizenMa.ma_initialize();

/// @brief Prepares multi-assistant client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @post If this function is called, the state will be #MA_STATE_READY.
/// @see ma_unprepare()
///
/// Module getter: `tizenMa`.
int ma_prepare() =>
    tizenMa.ma_prepare();

/// @brief Removes a wake word used for activating assistant.
/// @details Different <word, language> pairs identify a different word.
/// For example, <"Hi Tizen", "en_US"> and <"Hi Tizen", "en_GB">
/// are different words.\n
/// Removing a word not present on the list does not cause any error
/// to be returned.
/// @since_tizen 6.0
///
/// Parameter wake_word The wake word to be removed from the list of wake words
/// Parameter language The language code for which the word will be removed.
/// The language is identified by its code (e.g. "en_US").
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_remove_wake_word(
  ffi.Pointer<ffi.Char> wake_word,
  ffi.Pointer<ffi.Char> language,
) =>
    tizenMa.ma_remove_wake_word(
      wake_word,
      language,
    );

/// @brief Sends ASR(auto speech recognition) results to the multi-assistant service.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Parameter event The ASR result event (e.g. #MA_ASR_RESULT_EVENT_FINAL_RESULT)
/// Parameter asr_result The ASR result text
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_send_asr_result(
  int event,
  ffi.Pointer<ffi.Char> asr_result,
) =>
    tizenMa.ma_send_asr_result(
      event,
      asr_result,
    );

/// @brief Sends an assistant-specific command to the server.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Parameter command The command to be sent to the server
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_send_assistant_specific_command(
  ffi.Pointer<ffi.Char> command,
) =>
    tizenMa.ma_send_assistant_specific_command(
      command,
    );

/// @brief Sends the preprocessing result.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Parameter is_success The result value to be sent, indicating whether the preprocessing succeeded or not
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_STATE Invalid state
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_send_preprocessing_result(
  bool is_success,
) =>
    tizenMa.ma_send_preprocessing_result(
      is_success,
    );

/// @brief Sends recognition result to the multi-assistant service.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Parameter result The recognition result
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_send_recognition_result(
  int result,
) =>
    tizenMa.ma_send_recognition_result(
      result,
    );

/// @brief Sends results to the multi-assistant service.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Parameter display_text The text shown on the display
/// Parameter utterance_text The utterance text
/// Parameter result_json The result data (JSON format)
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_send_result(
  ffi.Pointer<ffi.Char> display_text,
  ffi.Pointer<ffi.Char> utterance_text,
  ffi.Pointer<ffi.Char> result_json,
) =>
    tizenMa.ma_send_result(
      display_text,
      utterance_text,
      result_json,
    );

/// @brief Sets the active state changed callback.
/// @since_tizen 5.5
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_active_state_changed_cb()
/// @see ma_unset_active_state_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_set_active_state_changed_cb(
  ma_active_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_active_state_changed_cb(
      callback,
      user_data,
    );

/// @brief Sets the language configuration for wake word detection.
/// @details The language configuration of the assistant that invoked
/// this function will be changed and language configurations
/// of other assistants will remain unchanged.
/// @since_tizen 6.0
///
/// Parameter language The language configuration that will be used for wake word detection.
/// It should be denoted by two-letter code defined by ISO 639-1,
/// optionally combined with two-letter code defined by ISO 3166.
/// For example, "ko_KR" for Korean, "en_US" for American English.
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_set_assistant_wakeup_language(
  ffi.Pointer<ffi.Char> language,
) =>
    tizenMa.ma_set_assistant_wakeup_language(
      language,
    );

/// @brief Sets an audio streaming callback.
/// @since_tizen 5.0
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_audio_streaming_cb()
/// @see ma_unset_audio_streaming_cb()
///
/// Module getter: `tizenMa`.
int ma_set_audio_streaming_cb(
  ma_audio_streaming_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_audio_streaming_cb(
      callback,
      user_data,
    );

/// @brief Sets the section changed callback for audio streaming data.
/// @since_tizen 5.5
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_audio_streaming_data_section_changed_cb()
/// @see ma_unset_audio_streaming_data_section_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_set_audio_streaming_data_section_changed_cb(
  ma_audio_streaming_data_section_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_audio_streaming_data_section_changed_cb(
      callback,
      user_data,
    );

/// @brief Sets the background volume.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/volume.set
///
/// @remarks The @a ratio must be a value between 0.0 and 1.0 (inclusive).
/// Parameter ratio The volume ratio to be set
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_set_background_volume(
  double ratio,
) =>
    tizenMa.ma_set_background_volume(
      ratio,
    );

/// @brief Sets an error callback.
/// @since_tizen 5.0
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_error_cb()
/// @see ma_unset_error_cb()
///
/// Module getter: `tizenMa`.
int ma_set_error_cb(
  ma_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_error_cb(
      callback,
      user_data,
    );

/// @brief Sets a language changed callback.
/// @since_tizen 5.0
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_language_changed_cb()
/// @see ma_unset_language_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_set_language_changed_cb(
  ma_language_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_language_changed_cb(
      callback,
      user_data,
    );

/// @brief Sets the preprocessing allow mode.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// @remarks If the @a app_id is NULL, allow mode will be applied regardless of app_id.
/// Parameter mode The preprocessing allow mode to be set
/// Parameter app_id The application ID of the assistant to perform preprocessing
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_STATE Invalid state
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_set_preprocessing_allow_mode(
  int mode,
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenMa.ma_set_preprocessing_allow_mode(
      mode,
      app_id,
    );

/// @brief Sets the preprocessing information changed callback.
/// @since_tizen 5.5
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_preprocessing_information_changed_cb()
/// @see ma_unset_preprocessing_information_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_set_preprocessing_information_changed_cb(
  ma_preprocessing_information_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_preprocessing_information_changed_cb(
      callback,
      user_data,
    );

/// @brief Sets the service state changed callback.
/// @since_tizen 6.0
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_service_state_changed_cb()
/// @see ma_unset_service_state_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_set_service_state_changed_cb(
  ma_service_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_service_state_changed_cb(
      callback,
      user_data,
    );

/// @brief Sets a state changed callback.
/// @since_tizen 5.0
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_state_changed_cb()
/// @see ma_unset_state_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_set_state_changed_cb(
  ma_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_state_changed_cb(
      callback,
      user_data,
    );

/// @brief Sets a voice key status changed callback.
/// @since_tizen 6.0
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_voice_key_status_changed_cb()
/// @see ma_unset_voice_key_status_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_set_voice_key_status_changed_cb(
  ma_voice_key_status_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_voice_key_status_changed_cb(
      callback,
      user_data,
    );

/// @brief Sets the wakeup engine command callback.
/// @details The wakeup engine command callback will be called when the wakeup engine
/// sends wakeup engine specific command to the voice assistant.
/// The command MUST be defined by both wakeup engine and voice assistant.
///
/// @since_tizen 5.5
///
/// Parameter callback The callback
/// Parameter user_data The user data passed to the callback function
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_wakeup_engine_command_cb()
/// @see ma_unset_wakeup_engine_command_cb()
///
/// Module getter: `tizenMa`.
int ma_set_wakeup_engine_command_cb(
  ma_wakeup_engine_command_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMa.ma_set_wakeup_engine_command_cb(
      callback,
      user_data,
    );

/// @brief Sets whether multi-assistant service should send wake word audio data.
/// @details If set to true, wake word audio data will be included in audio streaming data.<br/>
/// The wake word is the way you initiate a conversation with your vocal assistant.
/// It is a predefined keyword automatically detected from continuously streaming audio.<br/>
/// Use ma_set_audio_streaming_data_section_changed_cb() to be informed about
/// switching between wake word and regular audio data.
/// @since_tizen 5.5
///
/// Parameter require The require value to be set
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
/// @retval #MA_ERROR_OPERATION_FAILED Operation failed
///
/// @pre The state should be #MA_STATE_READY.
///
/// Module getter: `tizenMa`.
int ma_set_wake_word_audio_require_flag(
  bool require,
) =>
    tizenMa.ma_set_wake_word_audio_require_flag(
      require,
    );

/// @brief Starts receiving audio streaming data.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Parameter type The type of audio data to start streaming
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_start_receiving_audio_streaming_data(
  int type,
) =>
    tizenMa.ma_start_receiving_audio_streaming_data(
      type,
    );

/// @brief Stops receiving audio streaming data.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Parameter type The type of audio data to stop streaming
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_stop_receiving_audio_streaming_data(
  int type,
) =>
    tizenMa.ma_stop_receiving_audio_streaming_data(
      type,
    );

/// @brief Unprepares multi-assistant client.
/// @since_tizen 5.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_READY.
/// @post If this function is called, the state will be #MA_STATE_INITIALIZED.
/// @see ma_prepare()
///
/// Module getter: `tizenMa`.
int ma_unprepare() =>
    tizenMa.ma_unprepare();

/// @brief Unsets the active state changed callback.
/// @since_tizen 5.5
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_active_state_changed_cb()
/// @see ma_set_active_state_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_active_state_changed_cb() =>
    tizenMa.ma_unset_active_state_changed_cb();

/// @brief Unsets an audio streaming callback.
/// @since_tizen 5.0
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_audio_streaming_cb()
/// @see ma_set_audio_streaming_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_audio_streaming_cb() =>
    tizenMa.ma_unset_audio_streaming_cb();

/// @brief Unsets the section changed callback for audio streaming data.
/// @since_tizen 5.5
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_audio_streaming_data_section_changed_cb()
/// @see ma_set_audio_streaming_data_section_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_audio_streaming_data_section_changed_cb() =>
    tizenMa.ma_unset_audio_streaming_data_section_changed_cb();

/// @brief Unsets an error callback.
/// @since_tizen 5.0
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_error_cb()
/// @see ma_set_error_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_error_cb() =>
    tizenMa.ma_unset_error_cb();

/// @brief Unsets a language changed callback.
/// @since_tizen 5.0
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_language_changed_cb()
/// @see ma_set_language_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_language_changed_cb() =>
    tizenMa.ma_unset_language_changed_cb();

/// @brief Unsets the preprocessing information changed callback.
/// @since_tizen 5.5
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_preprocessing_information_changed_cb()
/// @see ma_set_preprocessing_information_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_preprocessing_information_changed_cb() =>
    tizenMa.ma_unset_preprocessing_information_changed_cb();

/// @brief Unsets the service state changed callback.
/// @since_tizen 6.0
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_service_state_changed_cb()
/// @see ma_set_service_state_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_service_state_changed_cb() =>
    tizenMa.ma_unset_service_state_changed_cb();

/// @brief Unsets a state changed callback.
/// @since_tizen 5.0
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_state_changed_cb()
/// @see ma_set_state_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_state_changed_cb() =>
    tizenMa.ma_unset_state_changed_cb();

/// @brief Unsets a voice key status changed callback.
/// @since_tizen 6.0
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_set_voice_key_status_changed_cb()
/// @see ma_voice_key_status_changed_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_voice_key_status_changed_cb() =>
    tizenMa.ma_unset_voice_key_status_changed_cb();

/// @brief Unsets the callback.
/// @since_tizen 5.5
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_INVALID_STATE Invalid state
///
/// @pre The state should be #MA_STATE_INITIALIZED.
/// @see ma_wakeup_engine_command_cb()
/// @see ma_set_wakeup_engine_command_cb()
///
/// Module getter: `tizenMa`.
int ma_unset_wakeup_engine_command_cb() =>
    tizenMa.ma_unset_wakeup_engine_command_cb();

/// @brief Updates the state of client's voice feedback to the server.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
///
/// Parameter state The current state of voice feedback
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MA_ERROR_NONE Successful
/// @retval #MA_ERROR_NOT_SUPPORTED Not supported
/// @retval #MA_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MA_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenMa`.
int ma_update_voice_feedback_state(
  int state,
) =>
    tizenMa.ma_update_voice_feedback_state(
      state,
    );

