// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenSttEngine`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libstt_engine.so`.
///
/// UIX / STT Engine.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_stt_engine;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Main function for Speech-To-Text (STT) engine.
/// @details This function is the main function for operating STT engine.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The service_app_main() should be used for working the engine after this function.
/// Parameter argc The argument count(original)
/// Parameter argv The argument(original)
/// Parameter callback The structure of engine request callback function
/// @return This function returns @c zero on success,
/// or negative with error code on failure
/// @retval #STTE_ERROR_NONE Successful
/// @retval #STTE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STTE_ERROR_PERMISSION_DENIED	Permission denied
/// @retval #STTE_ERROR_NOT_SUPPORTED Not supported
/// @retval #STTE_ERROR_OPERATION_FAILED Operation failure
/// @see stte_request_callback_s
/// @code
/// #include <stte.h>
///
/// // Required callback functions - MUST BE IMPLEMENTED
/// static int sttengine_get_info_cb(char** engine_uuid, char** engine_name, char** engine_setting, bool* use_network);
/// static int sttengine_initialize_cb(void);
/// static int sttengine_deinitialize_cb(void);
/// static int sttengine_is_valid_language_cb(const char* language, bool* is_valid);
/// static int sttengine_foreach_supported_langs_cb(stte_supported_language_cb callback, void* user_data);
/// static bool sttengine_support_silence_detection_cb(void);
/// static int sttengine_set_silence_detection_cb(bool is_set);
/// static int sttengine_support_recognition_type_cb(const char* type, bool* is_supported);
/// static int sttengine_get_recording_format_cb(stte_audio_type_e* types, int* rate, int* channels);
/// static int sttengine_set_recording_data_cb(const void* data, unsigned int length);
/// static int sttengine_foreach_result_time_cb(void* time_info, stte_result_time_cb callback, void* user_data);
/// static int sttengine_start_cb(const char* language, const char* type, const char* appid, const char* credential, void *user_data);
/// static int sttengine_stop_cb(void);
/// static int sttengine_cancel_cb(void);
/// static int sttengine_check_app_agreed_cb(const char* appid, bool* is_agreed);
/// static bool sttengine_need_app_credential_cb(void);
///
/// // Optional callback function
/// static int sttengine_private_data_set_cb(const char* key, const char* data);
///
/// int main(int argc, char* argv[])
/// {
/// // 1. Create a structure 'stte_request_callback_s'
/// stte_request_callback_s engine_callback = { 0, };
///
/// engine_callback.size = sizeof(stte_request_callback_s);
/// engine_callback.version = 1;
/// engine_callback.get_info = sttengine_get_info_cb;
///
/// engine_callback.initialize = sttengine_initialize_cb;
/// engine_callback.deinitialize = sttengine_deinitialize_cb;
///
/// engine_callback.foreach_langs = sttengine_foreach_supported_langs_cb;
/// engine_callback.is_valid_lang = sttengine_is_valid_language_cb;
/// engine_callback.support_silence = sttengine_support_silence_detection_cb;
/// engine_callback.support_recognition_type = sttengine_support_recognition_type_cb;
///
/// engine_callback.get_audio_format = sttengine_get_recording_format_cb;
/// engine_callback.foreach_result_time = sttengine_foreach_result_time_cb;
///
/// engine_callback.set_silence_detection = sttengine_set_silence_detection_cb;
///
/// engine_callback.start = sttengine_start_cb;
/// engine_callback.set_recording = sttengine_set_recording_data_cb;
/// engine_callback.stop = sttengine_stop_cb;
/// engine_callback.cancel = sttengine_cancel_cb;
///
/// engine_callback.check_app_agreed = sttengine_check_app_agreed_cb;
/// engine_callback.need_app_credential = sttengine_need_app_credential_cb;
///
/// // 2. Run 'stte_main()'
/// if (0 != stte_main(argc, argv, &engine_callback)) {
/// return -1;
/// }
///
/// // Optional
/// stte_set_private_data_set_cb(sttengine_private_data_set_cb);
///
/// // 3. Set event callbacks for service app and Run 'service_app_main()'
/// char ad[50] = { 0, };
///
/// service_app_lifecycle_callback_s event_callback;
/// app_event_handler_h handlers[5] = { NULL, };
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
/// Module getter: `tizenSttEngine`.
int stte_main(
  int argc,
  ffi.Pointer<ffi.Pointer<ffi.Char>> argv,
  ffi.Pointer<stte_request_callback_s> callback,
) =>
    tizenSttEngine.stte_main(
      argc,
      argv,
      callback,
    );

/// @brief Sends the error to the engine service user.
/// @details The following error codes can be delivered.
/// #STTE_ERROR_NONE,
/// #STTE_ERROR_OUT_OF_MEMORY,
/// #STTE_ERROR_IO_ERROR,
/// #STTE_ERROR_INVALID_PARAMETER,
/// #STTE_ERROR_NETWORK_DOWN,
/// #STTE_ERROR_INVALID_STATE,
/// #STTE_ERROR_INVALID_LANGUAGE,
/// #STTE_ERROR_OPERATION_FAILED,
/// #STTE_ERROR_NOT_SUPPORTED_FEATURE,
/// #STTE_ERROR_NOT_SUPPORTED,
/// #STTE_ERROR_PERMISSION_DENIED,
/// #STTE_ERROR_RECORDING_TIMED_OUT.
/// @since_tizen 3.0
/// Parameter error The error reason
/// Parameter msg The error message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STTE_ERROR_NONE Successful
/// @retval #STTE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STTE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STTE_ERROR_NOT_SUPPORTED Not supported
/// @retval #STTE_ERROR_OPERATION_FAILED Operation failure
/// @pre The stte_main() function should be invoked before this function is called.
///
/// Module getter: `tizenSttEngine`.
int stte_send_error(
  int error,
  ffi.Pointer<ffi.Char> msg,
) =>
    tizenSttEngine.stte_send_error(
      error,
      msg,
    );

/// @brief Sends the recognition result to the engine service user.
/// @since_tizen 3.0
/// @remarks This API is used in stte_set_recording_data_cb() and stte_stop_cb(), when STT engine sends the recognition result to the engine service user.
/// This function is called in the following situations; 1) after stte_stop_cb() is called, 2) the end point of speech is detected from recording, or 3) partial result is occurred.
/// The recognition result and @a user_data must be transferred to the engine service user through this function.
/// Also, @a time_info must be transferred to stte_foreach_result_time_cb(). The type of @a time_info is up to the STT engine developer.
/// Parameter event The result event
/// Parameter type The recognition type (e.g. #STTE_RECOGNITION_TYPE_FREE, #STTE_RECOGNITION_TYPE_FREE_PARTIAL)
/// Parameter result Result texts
/// Parameter result_count Result text count
/// Parameter msg Engine message (e.g. #STTE_RESULT_MESSAGE_NONE, #STTE_RESULT_MESSAGE_ERROR_TOO_SHORT)
/// Parameter time_info The time information
/// Parameter user_data The user data passed from stte_start_cb()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STTE_ERROR_NONE Successful
/// @retval #STTE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STTE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STTE_ERROR_NOT_SUPPORTED Not supported
/// @retval #STTE_ERROR_OPERATION_FAILED Operation failure
/// @pre The stte_main() function should be invoked before this function is called.
/// stte_stop_cb() will invoke this function.
/// @post This function invokes stte_foreach_result_time_cb().
/// @see stte_start_cb()
/// @see stte_set_recording_data_cb()
/// @see stte_stop_cb()
/// @see stte_foreach_result_time_cb()
///
/// Module getter: `tizenSttEngine`.
int stte_send_result(
  int event,
  ffi.Pointer<ffi.Char> type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> result,
  int result_count,
  ffi.Pointer<ffi.Char> msg,
  ffi.Pointer<ffi.Void> time_info,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenSttEngine.stte_send_result(
      event,
      type,
      result,
      result_count,
      msg,
      time_info,
      user_data,
    );

/// @brief Sends the speech status to the engine service user when STT engine notifies the change of the speech status.
/// @since_tizen 3.0
/// @remarks This API is invoked when STT engine wants to notify the change of the speech status anytime.
/// NOTE that this API can be invoked for recognizing the speech.
/// Parameter status The status of speech (e.g. STTE_SPEECH_STATUS_START_POINT_DETECTED or STTE_SPEECH_STATUS_END_POINT_DETECTED)
/// Parameter user_data The user data passed from the start function.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STTE_ERROR_NONE Successful
/// @retval #STTE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STTE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STTE_ERROR_NOT_SUPPORTED Not supported
/// @retval #STTE_ERROR_OPERATION_FAILED Operation failure
/// @pre The stte_main() function should be invoked before this function is called.
/// stte_start_cb() and stte_set_recording_data_cb() will invoke this function.
/// @see stte_start_cb()
/// @see stte_set_recording_data_cb()
///
/// Module getter: `tizenSttEngine`.
int stte_send_speech_status(
  int status,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenSttEngine.stte_send_speech_status(
      status,
      user_data,
    );

/// @brief Sets a callback function for setting the audio type.
/// @since_tizen 5.5
/// @remarks The stte_audio_type_cb() function is called when STT framework sets audio type to the STT engine.
/// Parameter callback_func stte_audio_type_set event callback function
/// Parameter user_data The user data passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STTE_ERROR_NONE Successful
/// @retval #STTE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STTE_ERROR_NOT_SUPPORTED Not supported
/// @retval #STTE_ERROR_OPERATION_FAILED Operation failure
/// @pre The stte_main() function should be invoked before this function is called.
/// @see stte_audio_type_cb()
/// @see stte_unset_audio_type_set_cb()
///
/// Module getter: `tizenSttEngine`.
int stte_set_audio_type_set_cb(
  stte_audio_type_cb callback_func,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenSttEngine.stte_set_audio_type_set_cb(
      callback_func,
      user_data,
    );

/// @brief Sets a callback function for requesting the private data.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The stte_private_data_requested_cb() function is called when the engine service user gets the private data from STT engine.
/// Parameter callback_func stte_private_data_requested event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STTE_ERROR_NONE Successful
/// @retval #STTE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STTE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STTE_ERROR_NOT_SUPPORTED Not supported
/// @retval #STTE_ERROR_OPERATION_FAILED Operation failure
/// @pre The stte_main() function should be invoked before this function is called.
/// @see stte_private_data_requested_cb()
///
/// Module getter: `tizenSttEngine`.
int stte_set_private_data_requested_cb(
  stte_private_data_requested_cb callback_func,
) =>
    tizenSttEngine.stte_set_private_data_requested_cb(
      callback_func,
    );

/// @brief Sets a callback function for setting the private data.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The stte_private_data_set_cb() function is called when the engine service user sends the private data.
/// Parameter callback_func stte_private_data_set event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STTE_ERROR_NONE Successful
/// @retval #STTE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STTE_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STTE_ERROR_NOT_SUPPORTED Not supported
/// @retval #STTE_ERROR_OPERATION_FAILED Operation failure
/// @pre The stte_main() function should be invoked before this function is called.
/// @see stte_private_data_set_cb()
///
/// Module getter: `tizenSttEngine`.
int stte_set_private_data_set_cb(
  stte_private_data_set_cb callback_func,
) =>
    tizenSttEngine.stte_set_private_data_set_cb(
      callback_func,
    );

/// @brief Unsets a callback function for setting the audio type.
/// @since_tizen 5.5
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STTE_ERROR_NONE Successful
/// @retval #STTE_ERROR_NOT_SUPPORTED Not supported
/// @retval #STTE_ERROR_OPERATION_FAILED Operation failure
/// @pre The stte_main() function should be invoked before this function is called.
/// @see stte_set_audio_type_set_cb()
///
/// Module getter: `tizenSttEngine`.
int stte_unset_audio_type_set_cb() =>
    tizenSttEngine.stte_unset_audio_type_set_cb();

