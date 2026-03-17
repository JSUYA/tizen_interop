// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenTtsEngine`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libtts_engine.so`.
///
/// UIX / TTS Engine.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_tts_engine;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Gets the pitch range from Tizen platform.
/// @since_tizen 3.0
/// @remarks This API is used when TTS engine wants to get the pitch range from Tizen platform.
/// Output parameter min The minimum pitch value
/// Output parameter normal The normal pitch value
/// Output parameter max The maximum pitch value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTSE_ERROR_NONE Successful
/// @retval #TTSE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTSE_ERROR_NOT_SUPPORTED Not supported
/// @retval #TTSE_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenTtsEngine`.
int ttse_get_pitch_range(
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> normal,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenTtsEngine.ttse_get_pitch_range(
      min,
      normal,
      max,
    );

/// @brief Gets the speed range from Tizen platform.
/// @since_tizen 3.0
/// @remarks This API is used when TTS engine wants to get the speed range from Tizen platform.
/// Output parameter min The minimum speed value
/// Output parameter normal The normal speed value
/// Output parameter max The maximum speed value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTSE_ERROR_NONE Successful
/// @retval #TTSE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTSE_ERROR_NOT_SUPPORTED Not supported
/// @retval #TTSE_ERROR_OPERATION_FAILED Operation failure
///
/// Module getter: `tizenTtsEngine`.
int ttse_get_speed_range(
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> normal,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenTtsEngine.ttse_get_speed_range(
      min,
      normal,
      max,
    );

/// @brief Main function for Text-To-Speech (TTS) engine.
/// @details This function is the main function for operating TTS engine.
/// @since_tizen 3.0
/// @remarks The service_app_main() should be used for working the engine after this function.
/// Parameter argc The argument count(original)
/// Parameter argv The argument(original)
/// Parameter callback The structure of engine request callback function
/// @return This function returns zero on success,
/// or negative with error code on failure
/// @retval #TTSE_ERROR_NONE Successful
/// @retval #TTSE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTSE_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTSE_ERROR_NOT_SUPPORTED Not supported
/// @see ttse_request_callback_s
/// @code
/// #include <ttse.h>
///
/// // Required callback functions - MUST BE IMPLEMENTED
/// static int ttsengine_get_info_cb(char** engine_uuid, char** engine_name, char** engine_setting, bool* use_network);
/// static int ttsengine_initialize_cb(void);
/// static int ttsengine_deinitialize_cb(void);
/// static int ttsengine_is_valid_voice_cb(const char* language, int type, bool* is_valid);
/// static int ttsengine_foreach_supported_voices_cb(ttse_supported_voice_cb callback, void* user_data);
/// static int ttsengine_set_pitch_cb(int pitch);
/// static int ttsengine_load_voice_cb(const char* language, int type);
/// static int ttsengine_unload_voice_cb(const char* language, int type);
/// static int ttsengine_start_synthesis_cb(const char* language, int type, const char* text, int speed, void* user_data);
/// static int ttsengine_cancel_synthesis_cb(void);
/// static int ttsengine_check_app_agreed_cb(const char* appid, bool* is_agreed);
/// static bool ttsengine_need_app_credential_cb(void);
///
/// // Optional callback function
/// static int ttsengine_private_data_set_cb(const char* key, const char* data);
///
/// int main(int argc, char* argv[])
/// {
/// // 1. Create a structure 'ttse_request_callback_s'
/// ttse_request_callback_s engine_callback = { 0, };
///
/// engine_callback.size = sizeof(ttse_request_callback_s);
/// engine_callback.version = 1;
/// engine_callback.get_info = ttsengine_get_info_cb;
/// engine_callback.initialize = ttsengine_initialize_cb;
/// engine_callback.deinitialize = ttsengine_deinitialize_cb;
/// engine_callback.foreach_voices = ttsengine_foreach_supported_voices_cb;
/// engine_callback.is_valid_voice = ttsengine_is_valid_voice_cb;
/// engine_callback.set_pitch = ttsengine_set_pitch_cb;
/// engine_callback.load_voice = ttsengine_load_voice_cb;
/// engine_callback.unload_voice = ttsengine_unload_voice_cb;
/// engine_callback.start_synth = ttsengine_start_synthesis_cb;
/// engine_callback.cancel_synth = ttsengine_cancel_synthesis_cb;
/// engine_callback.check_app_agreed = ttsengine_check_app_agreed_cb;
/// engine_callback.need_app_credential = ttsengine_need_app_credential_cb;
///
/// // 2. Run 'ttse_main()'
/// if (0 != ttse_main(argc, argv, &engine_callback)) {
/// return -1;
/// }
///
/// // Optional
/// ttse_set_private_data_set_cb(ttsengine_private_data_set_cb);
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
/// Module getter: `tizenTtsEngine`.
int ttse_main(
  int argc,
  ffi.Pointer<ffi.Pointer<ffi.Char>> argv,
  ffi.Pointer<ttse_request_callback_s> callback,
) =>
    tizenTtsEngine.ttse_main(
      argc,
      argv,
      callback,
    );

/// @brief Sends the error to the engine service user.
/// @details The following error codes can be delivered.
/// #TTSE_ERROR_NONE,
/// #TTSE_ERROR_OUT_OF_MEMORY,
/// #TTSE_ERROR_IO_ERROR,
/// #TTSE_ERROR_INVALID_PARAMETER,
/// #TTSE_ERROR_NETWORK_DOWN,
/// #TTSE_ERROR_PERMISSION_DENIED,
/// #TTSE_ERROR_INVALID_STATE,
/// #TTSE_ERROR_INVALID_VOICE,
/// #TTSE_ERROR_OPERATION_FAILED,
/// #TTSE_ERROR_NOT_SUPPORTED_FEATURE,
/// #TTSE_ERROR_NOT_SUPPORTED.
/// @since_tizen 3.0
/// Parameter error The error reason
/// Parameter msg The error message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTSE_ERROR_NONE Successful
/// @retval #TTSE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTSE_ERROR_NOT_SUPPORTED Not supported
/// @retval #TTSE_ERROR_OPERATION_FAILED Operation failure
/// @pre The ttse_main() function should be invoked before this function is called.
///
/// Module getter: `tizenTtsEngine`.
int ttse_send_error(
  int error,
  ffi.Pointer<ffi.Char> msg,
) =>
    tizenTtsEngine.ttse_send_error(
      error,
      msg,
    );

/// @brief Sends the synthesized result to the engine service user.
/// @since_tizen 3.0
/// @remarks This API is used in ttse_start_synthesis_cb(), when TTS engine sends the synthesized result to the engine service user.
/// The synthesized result and @a user_data must be transferred to the engine service user through this function.
/// Parameter event The result event
/// Parameter data Result data
/// Parameter data_size Result data size
/// Parameter audio_type The audio type
/// Parameter rate The sample rate
/// Parameter user_data The user data passed from ttse_start_synthesis_cb()
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTSE_ERROR_NONE Successful
/// @retval #TTSE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTSE_ERROR_NOT_SUPPORTED Not supported
/// @retval #TTSE_ERROR_OPERATION_FAILED Operation failure
/// @pre The ttse_main() function should be invoked before this function is called.
/// ttse_start_synthesis_cb() will invoke this function.
/// @see ttse_start_synthesis_cb()
///
/// Module getter: `tizenTtsEngine`.
int ttse_send_result(
  int event,
  ffi.Pointer<ffi.Void> data,
  int data_size,
  int audio_type,
  int rate,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenTtsEngine.ttse_send_result(
      event,
      data,
      data_size,
      audio_type,
      rate,
      user_data,
    );

/// @brief Sets a callback function for requesting the private data.
/// @since_tizen 3.0
/// @remarks The ttse_private_data_requested_cb() function is called when the engine service user gets the private data from TTS engine.
/// Parameter callback_func ttse_private_data_requested event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTSE_ERROR_NONE Successful
/// @retval #TTSE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTSE_ERROR_NOT_SUPPORTED Not supported
/// @retval #TTSE_ERROR_OPERATION_FAILED Operation failure
/// @pre The ttse_main() function should be invoked before this function is called.
/// @see ttse_private_data_requested_cb()
///
/// Module getter: `tizenTtsEngine`.
int ttse_set_private_data_requested_cb(
  ttse_private_data_requested_cb callback_func,
) =>
    tizenTtsEngine.ttse_set_private_data_requested_cb(
      callback_func,
    );

/// @brief Sets a callback function for setting the private data.
/// @since_tizen 3.0
/// @remarks The ttse_private_data_set_cb() function is called when the engine service user sends the private data.
/// Parameter callback_func ttse_private_data_set event callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTSE_ERROR_NONE Successful
/// @retval #TTSE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTSE_ERROR_NOT_SUPPORTED Not supported
/// @retval #TTSE_ERROR_OPERATION_FAILED Operation failure
/// @pre The ttse_main() function should be invoked before this function is called.
/// @see ttse_private_data_set_cb()
///
/// Module getter: `tizenTtsEngine`.
int ttse_set_private_data_set_cb(
  ttse_private_data_set_cb callback_func,
) =>
    tizenTtsEngine.ttse_set_private_data_set_cb(
      callback_func,
    );

