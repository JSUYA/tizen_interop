// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenVcEngine`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libvc_engine.so`.
///
/// UIX / Voice control engine.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_vc_engine;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets current audio type.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The @a audio_type must be released using free() when it is no longer required.
/// Parameter audio_type Current audio type (e.g. #VCE_AUDIO_ID_BLUETOOTH or #VCE_AUDIO_ID_WIFI)
/// @return the value greater than 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenVcEngine`.
int vce_get_audio_type(
  ffi.Pointer<ffi.Pointer<ffi.Char>> audio_type,
) =>
    tizenVcEngine.vce_get_audio_type(
      audio_type,
    );

/// @brief Gets command length.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter vce_command The handle to be passed to the vce_set_commands() function
/// Output parameter count The command count value
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @see vce_set_commands()
///
/// Module getter: `tizenVcEngine`.
int vce_get_command_count(
  vce_cmd_h vce_command,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenVcEngine.vce_get_command_count(
      vce_command,
      count,
    );

/// @brief Retrieves all commands using callback function.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter vce_command The handle to be passed to the vce_set_commands() function
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @retval #VCE_ERROR_INVALID_STATE Invalid state
/// @post This function invokes vce_command_cb() repeatedly for getting commands.
/// @see vce_foreach_command_cb()
/// @see vce_set_commands()
///
/// Module getter: `tizenVcEngine`.
int vce_get_foreach_command(
  vce_cmd_h vce_command,
  vce_command_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcEngine.vce_get_foreach_command(
      vce_command,
      callback,
      user_data,
    );

/// @brief Gets private data from a voice manager client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The @a data must be released using free() when it is no longer required.
/// Parameter key Private key
/// Output parameter data Private data
/// @return 0 on success, otherwise a negative error value.
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #VCE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_INVALID_STATE Invalid state
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failed
///
/// Module getter: `tizenVcEngine`.
int vce_get_private_data(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data,
) =>
    tizenVcEngine.vce_get_private_data(
      key,
      data,
    );

/// @brief Starts the main function for Voice Control (VC) engine.
/// @details This function is the main function for operating VC engine.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The service_app_main() should be used for working the engine after this function.
/// Parameter argc The argument count(original)
/// Parameter argv The argument(original)
/// Parameter callback The structure of engine request callback function
/// @return This function returns @c zero on success, or negative with error code on failure
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failed
/// @pre The vce_get_engine_info() should be successful.
/// @see vce_get_engine_info()
/// @see vce_unload_engine()
/// @see vce_request_callback_s
/// @code
/// #include <vce.h>
///
/// // Required callback functions - MUST BE IMPLEMENTED
/// static int vce_default_initialize();
/// static int vce_default_deinitialize(void);
///
/// static int vce_default_get_info(char** engine_uuid, char** engine_name, char** engine_setting, bool* use_network);
/// static int vce_default_get_recording_format(const char* audio_id, vce_audio_type_e* types, int* rate, int* channels);
/// static int vce_default_foreach_langs(vce_supported_language_cb callback, void* user_data);
/// static bool vce_default_is_lang_supported(const char* lang);
///
/// static int vce_default_set_language(const char* language);
/// static int vce_default_set_commands(vce_cmd_h vc_command);
/// static int vce_default_unset_commands();
///
/// static int vce_default_start(bool stop_by_silence);
/// static int vce_default_set_recording(const void* data, unsigned int length, vce_speech_detect_e* silence_detected);
/// static int vce_default_stop();
/// static int vce_default_cancel(void);
///
/// static int vce_default_set_audio_type(const char* audio_type);
/// static int vce_default_set_domain(const char* domain);
/// static int vce_default_process_text(const char* text);
/// static int vce_default_process_list_event(const char* event);
/// static int vce_default_process_haptic_event(const char* event);
///
/// // Optional callback function
/// static int vce_default_private_data_set_cb(const char* key, const char* data);
///
/// int main(int argc, char* argv[])
/// {
/// // 1. Create a structure 'vce_request_callback_s'
/// vce_request_callback_s callback = {0,};
///
/// callback.version = 1;
///
/// callback.initialize	= vce_default_initialize;
/// callback.deinitialize	= vce_default_deinitialize;
///
/// callback.get_info	= vce_default_get_info;
/// callback.get_recording_format	= vce_default_get_recording_format;
/// callback.foreach_langs	= vce_default_foreach_langs;
/// callback.is_lang_supported	= vce_default_is_lang_supported;
///
/// callback.set_language	= vce_default_set_language;
/// callback.set_commands	= vce_default_set_commands;
/// callback.unset_commands	= vce_default_unset_commands;
///
/// callback.start		= vce_default_start;
/// callback.set_recording	= vce_default_set_recording;
/// callback.stop		= vce_default_stop;
/// callback.cancel		= vce_default_cancel;
///
/// callback.set_audio_type	= vce_default_set_audio_type;
/// callback.set_domain	= vce_default_set_domain;
/// callback.process_text	= vce_default_process_text;
/// callback.process_list_event	= vce_default_process_list_event;
/// callback.process_haptic_event	= vce_default_process_haptic_event;
///
/// // 2. Run 'vce_main()'
/// if (0 != vce_main(argc, argv, &callback)) {
/// SLOG(LOG_ERROR, TAG_VCE, "[ERROR] Fail to vce main");
/// return -1;
/// }
///
/// // Optional
/// vce_set_private_data_set_cb(vce_default_private_data_set_cb);
///
/// // 3. Set event callbacks for service app and Run 'service_app_main()'
/// char ad[50] = {0,};
/// service_app_lifecycle_callback_s event_callback;
/// app_event_handler_h handlers[5] = {NULL, };
///
/// event_callback.create = service_app_create;
/// event_callback.terminate = service_app_terminate;
/// event_callback.app_control = service_app_control;
///
/// service_app_add_event_handler(&handlers[APP_EVENT_LOW_BATTERY], APP_EVENT_LOW_BATTERY, service_app_low_battery, &ad);
/// service_app_add_event_handler(&handlers[APP_EVENT_LOW_MEMORY], APP_EVENT_LOW_MEMORY, service_app_low_memory, &ad);
/// service_app_add_event_handler(&handlers[APP_EVENT_LANGUAGE_CHANGED], APP_EVENT_LANGUAGE_CHANGED, service_app_lang_changed, &ad);
/// service_app_add_event_handler(&handlers[APP_EVENT_REGION_FORMAT_CHANGED], APP_EVENT_REGION_FORMAT_CHANGED, service_app_region_changed, &ad);
///
/// return service_app_main(argc, argv, &event_callback, ad);
/// }
///
/// @endcode
///
/// Module getter: `tizenVcEngine`.
int vce_main(
  int argc,
  ffi.Pointer<ffi.Pointer<ffi.Char>> argv,
  ffi.Pointer<vce_request_callback_s> callback,
) =>
    tizenVcEngine.vce_main(
      argc,
      argv,
      callback,
    );

/// @brief Sends the ASR result to the engine service user.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter event A asr result event
/// Parameter asr_result A asr result text
/// Parameter user_data The user data passed from the start
/// @return @c 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @pre The vce_main() function should be invoked before this function is called.
/// @see vce_start_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_send_asr_result(
  int event,
  ffi.Pointer<ffi.Char> asr_result,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcEngine.vce_send_asr_result(
      event,
      asr_result,
      user_data,
    );

/// @brief Sends the error to the engine service user.
/// @details The following error codes can be delivered. \n
/// #VCE_ERROR_NONE, \n
/// #VCE_ERROR_OUT_OF_MEMORY, \n
/// #VCE_ERROR_IO_ERROR, \n
/// #VCE_ERROR_INVALID_PARAMETER, \n
/// #VCE_ERROR_OUT_OF_NETWORK, \n
/// #VCE_ERROR_RECORDER_BUSY, \n
/// #VCE_ERROR_NOT_SUPPORTED, \n
/// #VCE_ERROR_INVALID_STATE, \n
/// #VCE_ERROR_INVALID_LANGUAGE, \n
/// #VCE_ERROR_OPERATION_FAILED, \n
/// #VCE_ERROR_PERMISSION_DENIED, \n
/// #VCE_ERROR_NOT_SUPPORTED_FEATURE.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter error Error type
/// Parameter msg Error message
/// Parameter user_data The user data passed from set callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @pre The vce_main() function should be invoked before this function is called.
///
/// Module getter: `tizenVcEngine`.
int vce_send_error(
  int error,
  ffi.Pointer<ffi.Char> msg,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcEngine.vce_send_error(
      error,
      msg,
      user_data,
    );

/// @brief Sends audio formats necessary for playing TTS feedback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter rate A sampling rate
/// Parameter channel The audio channel
/// Parameter audio_type The audio type
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
///
/// Module getter: `tizenVcEngine`.
int vce_send_feedback_audio_format(
  int rate,
  int channel,
  int audio_type,
) =>
    tizenVcEngine.vce_send_feedback_audio_format(
      rate,
      channel,
      audio_type,
    );

/// @brief Sends audio streaming necessary for playing TTS feedback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter event A feedback event
/// Parameter buffer The feedback data
/// Parameter len The length of the feedback data
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
///
/// Module getter: `tizenVcEngine`.
int vce_send_feedback_streaming(
  int event,
  ffi.Pointer<ffi.Char> buffer,
  int len,
) =>
    tizenVcEngine.vce_send_feedback_streaming(
      event,
      buffer,
      len,
    );

/// @brief Sends the NLG (Natural Language Generation) result to the engine service user.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter nlg_result A nlg result
/// Parameter user_data The user data passed from the start
/// @return @c 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @pre The vce_main() function should be invoked before this function is called.
/// @see vce_start_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_send_nlg_result(
  ffi.Pointer<ffi.Char> nlg_result,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcEngine.vce_send_nlg_result(
      nlg_result,
      user_data,
    );

/// @brief Sends the results to the engine service user.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// Parameter event A result event
/// Parameter result_id Result ids
/// Parameter count Result count
/// Parameter all_result All result text
/// Parameter non_fixed_result Non-fixed command result text
/// Parameter nlu_result NLU result text
/// Parameter msg Engine message (e.g. #VC_RESULT_MESSAGE_NONE, #VC_RESULT_MESSAGE_ERROR_TOO_LOUD)
/// Output parameter user_info A user info (e.g. If ASR result is consumed, the value is 0x01. If not, the value is 0x00.)
/// Parameter user_data The user data passed from set callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #VCE_ERROR_INVALID_STATE Invalid state
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @pre The vce_main() function should be invoked before this function is called.
/// vce_stop_cb() will invoke this callback.
/// @see vce_stop_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_send_result(
  int event,
  ffi.Pointer<ffi.Int> result_id,
  int count,
  ffi.Pointer<ffi.Char> all_result,
  ffi.Pointer<ffi.Char> non_fixed_result,
  ffi.Pointer<ffi.Char> nlu_result,
  ffi.Pointer<ffi.Char> msg,
  ffi.Pointer<ffi.Int> user_info,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcEngine.vce_send_result(
      event,
      result_id,
      count,
      all_result,
      non_fixed_result,
      nlu_result,
      msg,
      user_info,
      user_data,
    );

/// @brief Sends the specific engine result to the engine service user.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter engine_app_id A specific engine's app id
/// Parameter event A specific engine result event
/// Parameter result A specific engine result text
/// Parameter user_info The user info passed from the start
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @pre The vce_main() function should be invoked before this function is called.
///
/// Module getter: `tizenVcEngine`.
int vce_send_specific_engine_result(
  ffi.Pointer<ffi.Char> engine_app_id,
  ffi.Pointer<ffi.Char> event,
  ffi.Pointer<ffi.Char> result,
  ffi.Pointer<ffi.Void> user_info,
) =>
    tizenVcEngine.vce_send_specific_engine_result(
      engine_app_id,
      event,
      result,
      user_info,
    );

/// @brief Sets a callback function for getting the request of canceling TTS feedback from the engine service user.
/// @since_tizen 5.0
///
/// Parameter callback_func Callback function to be registered
/// Parameter user_data The user data passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
///
/// @see vce_cancel_tts_cb()
/// @see vce_unset_cancel_tts_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_set_cancel_tts_cb(
  vce_cancel_tts_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcEngine.vce_set_cancel_tts_cb(
      callback_func,
      user_data,
    );

/// @brief Sets a callback function for requesting the NLU base information to the engine service.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @remarks The vce_nlu_base_info_requested_cb() function is called when the engine service user requests the NLU base information to the engine service.
/// Parameter callback_func vce_nlu_base_info_requested event callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @retval #VCE_ERROR_NOT_SUPPORTED_FEATURE Not supported feature
/// @see vce_nlu_base_info_requested_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_set_nlu_base_info_requested_cb(
  vce_nlu_base_info_requested_cb callback_func,
) =>
    tizenVcEngine.vce_set_nlu_base_info_requested_cb(
      callback_func,
    );

/// @brief Sets private data to a voice manager client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter key Private key
/// Parameter data Private data
/// @return 0 on success, otherwise a negative error value.
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_OUT_OF_MEMORY Out of Memory
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_INVALID_STATE Invalid state
/// @retval #VCE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failed
///
/// Module getter: `tizenVcEngine`.
int vce_set_private_data(
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> data,
) =>
    tizenVcEngine.vce_set_private_data(
      key,
      data,
    );

/// @brief Sets a callback function for requesting the private data to the engine service.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The vce_private_data_requested_cb() function is called when the engine service user requests the private data to the engine service.
/// Parameter callback_func vce_private_data_requested event callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @see vce_private_data_requested_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_set_private_data_requested_cb(
  vce_private_data_requested_cb callback_func,
) =>
    tizenVcEngine.vce_set_private_data_requested_cb(
      callback_func,
    );

/// @brief Sets a callback function for setting the private data to the engine service.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The vce_private_data_set_cb() function is called when the engine service user sets the private data to the engine service.
/// Parameter callback_func vce_private_data_set event callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @retval #VCE_ERROR_NOT_SUPPORTED_FEATURE Not supported feature
/// @pre The vce_main() function should be invoked before this function is called.
/// @see vce_private_data_set_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_set_private_data_set_cb(
  vce_private_data_set_cb callback_func,
) =>
    tizenVcEngine.vce_set_private_data_set_cb(
      callback_func,
    );

/// @brief Sets a callback function for getting the request of sending TTS feedback from the engine service user.
/// @since_tizen 5.0
///
/// Parameter callback_func Callback function to be registered
/// Parameter user_data The user data passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
///
/// @see vce_request_tts_cb()
/// @see vce_unset_request_tts_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_set_request_tts_cb(
  vce_request_tts_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcEngine.vce_set_request_tts_cb(
      callback_func,
      user_data,
    );

/// @brief Sets a callback function for getting the engine service request.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter callback_func Callback function to register
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
///
/// @see vce_unset_specific_engine_request_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_set_specific_engine_request_cb(
  vce_specific_engine_request_cb callback_func,
) =>
    tizenVcEngine.vce_set_specific_engine_request_cb(
      callback_func,
    );

/// @brief Sets a callback function for sending TTS audio format to the engine service user.
/// @since_tizen 5.0
///
/// Parameter callback_func Callback function to be registered
/// Parameter user_data The user data passed to the callback function
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
///
/// @see vce_tts_audio_format_request_cb()
/// @see vce_unset_get_tts_audio_format_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_set_tts_audio_format_request_cb(
  vce_tts_audio_format_request_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenVcEngine.vce_set_tts_audio_format_request_cb(
      callback_func,
      user_data,
    );

/// @brief Starts recording voice.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return 0 on success, otherwise a negative error value.
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
/// @retval #VCE_ERROR_RECORDER_BUSY Busy recorder
///
/// Module getter: `tizenVcEngine`.
int vce_start_recording() =>
    tizenVcEngine.vce_start_recording();

/// @brief Stops recording voice.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @return 0 on success, otherwise a negative error value.
/// @retval #VCE_ERROR_NONE Successful
/// @retval #VCE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #VCE_ERROR_NOT_SUPPORTED Not supported
/// @retval #VCE_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenVcEngine`.
int vce_stop_recording() =>
    tizenVcEngine.vce_stop_recording();

/// @brief Unsets the TTS feedback cancellation callback function.
/// @since_tizen 5.0
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
///
/// @see vce_set_cancel_tts_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_unset_cancel_tts_cb() =>
    tizenVcEngine.vce_unset_cancel_tts_cb();

/// @brief Unsets the TTS audio format request callback function.
/// @since_tizen 5.0
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
///
/// @see vce_set_tts_audio_format_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_unset_get_tts_audio_format_cb() =>
    tizenVcEngine.vce_unset_get_tts_audio_format_cb();

/// @brief Unsets the TTS feedback request callback function.
/// @since_tizen 5.0
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
///
/// @see vce_set_request_tts_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_unset_request_tts_cb() =>
    tizenVcEngine.vce_unset_request_tts_cb();

/// @brief Unsets the engine service request callback function.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @return 0 on success, otherwise a negative error value
/// @retval #VC_ERROR_NONE Successful
/// @retval #VC_ERROR_NOT_SUPPORTED Not supported
///
/// @see vce_set_specific_engine_request_cb()
///
/// Module getter: `tizenVcEngine`.
int vce_unset_specific_engine_request_cb() =>
    tizenVcEngine.vce_unset_specific_engine_request_cb();

