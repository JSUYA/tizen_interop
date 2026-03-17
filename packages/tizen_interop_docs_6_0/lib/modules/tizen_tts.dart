// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenTts`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libtts.so`.
///
/// UIX / TTS.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_tts;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a text to the queue.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks Locale(e.g. setlocale()) MUST be set for utf8 text validation check.
/// Parameter tts The TTS handle
/// Parameter text An input text based utf8
/// Parameter language The language selected from the tts_foreach_supported_voices() (e.g. 'NULL'(Automatic), 'en_US')
/// Parameter voice_type The voice type selected from the tts_foreach_supported_voices() (e.g. #TTS_VOICE_TYPE_AUTO, #TTS_VOICE_TYPE_FEMALE)
/// Parameter speed A speaking speed (e.g. #TTS_SPEED_AUTO or the value from tts_get_speed_range())
/// Output parameter utt_id The utterance ID passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_INVALID_VOICE Invalid voice about language, voice type
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @retval #TTS_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #TTS_STATE_READY, #TTS_STATE_PLAYING or #TTS_STATE_PAUSED.
/// @see tts_get_max_text_size()
/// @see tts_set_credential()
///
/// Module getter: `tizenTts`.
int tts_add_text(
  tts_h tts,
  ffi.Pointer<ffi.Char> text,
  ffi.Pointer<ffi.Char> language,
  int voice_type,
  int speed,
  ffi.Pointer<ffi.Int> utt_id,
) =>
    tizenTts.tts_add_text(
      tts,
      text,
      language,
      voice_type,
      speed,
      utt_id,
    );

/// @brief Creates a handle for TTS.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the function succeeds, @a tts handle must be released with tts_destroy().
/// Output parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_ENGINE_NOT_FOUND Engine not found
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @post If this function is called, the TTS state will be #TTS_STATE_CREATED.
/// @see tts_destroy()
///
/// Module getter: `tizenTts`.
int tts_create(
  ffi.Pointer<tts_h> tts,
) =>
    tizenTts.tts_create(
      tts,
    );

/// @brief Destroys the handle and disconnects the daemon.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @see tts_create()
///
/// Module getter: `tizenTts`.
int tts_destroy(
  tts_h tts,
) =>
    tizenTts.tts_destroy(
      tts,
    );

/// @brief Retrieves all supported voices of the current engine using callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_ENGINE_NOT_FOUND Engine not found
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @post This function invokes tts_supported_voice_cb() repeatedly for getting voices.
/// @see tts_get_default_voice()
///
/// Module getter: `tizenTts`.
int tts_foreach_supported_voices(
  tts_h tts,
  tts_supported_voice_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenTts.tts_foreach_supported_voices(
      tts,
      callback,
      user_data,
    );

/// @brief Gets the default voice set by the user.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks If the function succeeds, @a language must be released with free().
/// Parameter tts The TTS handle
/// Output parameter language Language specified as an ISO 3166 alpha-2 two letter country-code followed by ISO 639-1 for the two-letter language code (for example, "ko_KR" for Korean, "en_US" for American English)
/// Output parameter voice_type The voice type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_ENGINE_NOT_FOUND Engine not found
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @see tts_foreach_supported_voices()
///
/// Module getter: `tizenTts`.
int tts_get_default_voice(
  tts_h tts,
  ffi.Pointer<ffi.Pointer<ffi.Char>> language,
  ffi.Pointer<ffi.Int> voice_type,
) =>
    tizenTts.tts_get_default_voice(
      tts,
      language,
      voice_type,
    );

/// @brief Gets the current error message.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks This function should be called from a tts error callback. Calling in any other context will result in an Operation failed error.
/// A successful call will allocate @a err_msg, which must be released by calling free() when it is no longer required.
/// Parameter tts The TTS handle
/// Output parameter err_msg The current error message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @see tts_set_error_cb()
/// @see tts_unset_error_cb()
///
/// Module getter: `tizenTts`.
int tts_get_error_message(
  tts_h tts,
  ffi.Pointer<ffi.Pointer<ffi.Char>> err_msg,
) =>
    tizenTts.tts_get_error_message(
      tts,
      err_msg,
    );

/// @brief Gets the maximum byte size for text.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Output parameter size The maximum byte size for text
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_READY.
/// @see tts_add_text()
///
/// Module getter: `tizenTts`.
int tts_get_max_text_size(
  tts_h tts,
  ffi.Pointer<ffi.UnsignedInt> size,
) =>
    tizenTts.tts_get_max_text_size(
      tts,
      size,
    );

/// @brief Gets the TTS mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Output parameter mode The mode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_set_mode()
///
/// Module getter: `tizenTts`.
int tts_get_mode(
  tts_h tts,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenTts.tts_get_mode(
      tts,
      mode,
    );

/// @brief Gets the private data from tts engine.
/// @details The private data is the information provided by the engine.
/// Using this API, the application can get the private data which corresponds to the key from the engine.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks The @a data must be released using free() when it is no longer required.
/// If the engine is replaced with the other engine, the key may be ignored.
/// Parameter tts The TTS handle
/// Parameter key The field name of private data
/// Output parameter data The data field of private data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_ENGINE_NOT_FOUND Engine not found
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_READY.
/// @see tts_set_private_data()
///
/// Module getter: `tizenTts`.
int tts_get_private_data(
  tts_h tts,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data,
) =>
    tizenTts.tts_get_private_data(
      tts,
      key,
      data,
    );

/// @brief Gets the speed range.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Output parameter min The minimum speed value
/// Output parameter normal The normal speed value
/// Output parameter max The maximum speed value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_add_text()
///
/// Module getter: `tizenTts`.
int tts_get_speed_range(
  tts_h tts,
  ffi.Pointer<ffi.Int> min,
  ffi.Pointer<ffi.Int> normal,
  ffi.Pointer<ffi.Int> max,
) =>
    tizenTts.tts_get_speed_range(
      tts,
      min,
      normal,
      max,
    );

/// @brief Gets the current state of TTS.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Output parameter state The current state of TTS
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @see tts_play()
/// @see tts_stop()
/// @see tts_pause()
///
/// Module getter: `tizenTts`.
int tts_get_state(
  tts_h tts,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenTts.tts_get_state(
      tts,
      state,
    );

/// @brief Pauses the currently playing utterance.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The TTS state should be #TTS_STATE_PLAYING.
/// @post If this function succeeds, the TTS state will be #TTS_STATE_PAUSED.
/// @see tts_play()
/// @see tts_stop()
/// @see tts_error_cb()
/// @see tts_interrupted_cb()
///
/// Module getter: `tizenTts`.
int tts_pause(
  tts_h tts,
) =>
    tizenTts.tts_pause(
      tts,
    );

/// @brief Starts synthesizing voice from the text and plays the synthesized audio data.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_OUT_OF_NETWORK Out of network
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @retval #TTS_ERROR_PERMISSION_DENIED Permission denied
/// @pre The current state should be #TTS_STATE_READY or #TTS_STATE_PAUSED.
/// @post If this function succeeds, the TTS state will be #TTS_STATE_PLAYING.
/// @see tts_add_text()
/// @see tts_pause()
/// @see tts_stop()
/// @see tts_utterance_started_cb()
/// @see tts_utterance_completed_cb()
/// @see tts_error_cb()
/// @see tts_set_credential()
///
/// Module getter: `tizenTts`.
int tts_play(
  tts_h tts,
) =>
    tizenTts.tts_play(
      tts,
    );

/// @brief Connects the daemon asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @post If this function is successful, the TTS state will be #TTS_STATE_READY.
/// If this function is failed, the error callback is called. (e.g. #TTS_ERROR_ENGINE_NOT_FOUND)
/// @see tts_unprepare()
///
/// Module getter: `tizenTts`.
int tts_prepare(
  tts_h tts,
) =>
    tizenTts.tts_prepare(
      tts,
    );

/// @brief Repeats the last played text.
/// @since_tizen 5.0
/// @remarks This function repeats the last played text once. If there is no previous text, this function will not work.
/// If the language is changed, the last played text is removed.
/// Before calling this function, please call 'tts_stop()' in order to stop playing the previous one.
/// If this function succeeds, @a text_repeat must be released with free().
/// Parameter tts The TTS handle
/// Output parameter text_repeat Texts to be played repeatedly
/// Output parameter utt_id The utterance ID passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @pre The state should be #TTS_STATE_READY.
/// @post If this function succeeds, the TTS state will be #TTS_STATE_PLAYING.
/// @see tts_add_text()
/// @see tts_stop()
///
/// Module getter: `tizenTts`.
int tts_repeat(
  tts_h tts,
  ffi.Pointer<ffi.Pointer<ffi.Char>> text_repeat,
  ffi.Pointer<ffi.Int> utt_id,
) =>
    tizenTts.tts_repeat(
      tts,
      text_repeat,
      utt_id,
    );

/// @brief Sets the app credential.
/// @details Using this API, the application can set a credential.
/// The credential is a key to verify the authorization about using the engine.
/// If the application sets the credential, it will be able to use functions of the engine entirely.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks The necessity of the credential depends on the engine. In case of the engine which is basically embedded in Tizen, the credential is not necessary so far.
/// However, if the user wants to apply the 3rd party's engine, the credential may be necessary. In that case, please follow the policy provided by the corresponding engine.
/// Parameter tts The TTS handle
/// Parameter credential The app credential
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Success
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED or #TTS_STATE_READY.
/// @see tts_play()
///
/// Module getter: `tizenTts`.
int tts_set_credential(
  tts_h tts,
  ffi.Pointer<ffi.Char> credential,
) =>
    tizenTts.tts_set_credential(
      tts,
      credential,
    );

/// @brief Registers a callback function to detect default voice change.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_default_voice_changed_cb()
/// @see tts_unset_default_voice_changed_cb()
///
/// Module getter: `tizenTts`.
int tts_set_default_voice_changed_cb(
  tts_h tts,
  tts_default_voice_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenTts.tts_set_default_voice_changed_cb(
      tts,
      callback,
      user_data,
    );

/// @brief Registers a callback function to detect the engine change.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// Parameter tts The TTS handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_engine_changed_cb()
/// @see tts_unset_engine_changed_cb()
///
/// Module getter: `tizenTts`.
int tts_set_engine_changed_cb(
  tts_h tts,
  tts_engine_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenTts.tts_set_engine_changed_cb(
      tts,
      callback,
      user_data,
    );

/// @brief Registers a callback function to detect errors.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_error_cb()
/// @see tts_unset_error_cb()
///
/// Module getter: `tizenTts`.
int tts_set_error_cb(
  tts_h tts,
  tts_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenTts.tts_set_error_cb(
      tts,
      callback,
      user_data,
    );

/// @brief Sets the TTS mode.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Parameter mode The mode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_get_mode()
///
/// Module getter: `tizenTts`.
int tts_set_mode(
  tts_h tts,
  int mode,
) =>
    tizenTts.tts_set_mode(
      tts,
      mode,
    );

/// @brief Sets the private data to tts engine.
/// @details The private data is the setting parameter for applying keys provided by the engine.
/// Using this API, the application can set the private data and use the corresponding key of the engine.
/// For example, if the engine provides 'girl's voice' as a voice type, the application can set the private data as the following.
/// int ret = tts_set_private_data(tts_h, "voice_type", "GIRL");
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks If the engine is replaced with the other engine, the key may be ignored.
/// Parameter tts The TTS handle
/// Parameter key The field name of private data
/// Parameter data The data for set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_ENGINE_NOT_FOUND Engine not found
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_READY.
/// @see tts_get_private_data()
///
/// Module getter: `tizenTts`.
int tts_set_private_data(
  tts_h tts,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> data,
) =>
    tizenTts.tts_set_private_data(
      tts,
      key,
      data,
    );

/// @brief Registers a callback function to be called when the TTS state changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_state_changed_cb()
/// @see tts_unset_state_changed_cb()
///
/// Module getter: `tizenTts`.
int tts_set_state_changed_cb(
  tts_h tts,
  tts_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenTts.tts_set_state_changed_cb(
      tts,
      callback,
      user_data,
    );

/// @brief Registers a callback function to detect utterance completion.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_utterance_completed_cb()
/// @see tts_unset_utterance_completed_cb()
///
/// Module getter: `tizenTts`.
int tts_set_utterance_completed_cb(
  tts_h tts,
  tts_utterance_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenTts.tts_set_utterance_completed_cb(
      tts,
      callback,
      user_data,
    );

/// @brief Registers a callback function to detect utterance start.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_utterance_started_cb()
/// @see tts_unset_utterance_started_cb()
///
/// Module getter: `tizenTts`.
int tts_set_utterance_started_cb(
  tts_h tts,
  tts_utterance_started_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenTts.tts_set_utterance_started_cb(
      tts,
      callback,
      user_data,
    );

/// @brief Stops playing the utterance and clears the queue.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_OPERATION_FAILED Operation failure
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The TTS state should be #TTS_STATE_READY or #TTS_STATE_PLAYING or #TTS_STATE_PAUSED.
/// @post If this function succeeds, the TTS state will be #TTS_STATE_READY.
/// This function will remove all text via tts_add_text() and synthesized sound data.
/// @see tts_play()
/// @see tts_pause()
///
/// Module getter: `tizenTts`.
int tts_stop(
  tts_h tts,
) =>
    tizenTts.tts_stop(
      tts,
    );

/// @brief Disconnects the daemon.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_READY.
/// @post If this function is called, the TTS state will be #TTS_STATE_CREATED.
/// @see tts_prepare()
///
/// Module getter: `tizenTts`.
int tts_unprepare(
  tts_h tts,
) =>
    tizenTts.tts_unprepare(
      tts,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_set_default_voice_changed_cb()
///
/// Module getter: `tizenTts`.
int tts_unset_default_voice_changed_cb(
  tts_h tts,
) =>
    tizenTts.tts_unset_default_voice_changed_cb(
      tts,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_set_engine_changed_cb()
///
/// Module getter: `tizenTts`.
int tts_unset_engine_changed_cb(
  tts_h tts,
) =>
    tizenTts.tts_unset_engine_changed_cb(
      tts,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_set_error_cb()
///
/// Module getter: `tizenTts`.
int tts_unset_error_cb(
  tts_h tts,
) =>
    tizenTts.tts_unset_error_cb(
      tts,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_set_state_changed_cb()
///
/// Module getter: `tizenTts`.
int tts_unset_state_changed_cb(
  tts_h tts,
) =>
    tizenTts.tts_unset_state_changed_cb(
      tts,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_set_utterance_completed_cb()
///
/// Module getter: `tizenTts`.
int tts_unset_utterance_completed_cb(
  tts_h tts,
) =>
    tizenTts.tts_unset_utterance_completed_cb(
      tts,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter tts The TTS handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #TTS_ERROR_NONE Successful
/// @retval #TTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #TTS_ERROR_INVALID_STATE Invalid state
/// @retval #TTS_ERROR_NOT_SUPPORTED TTS NOT supported
/// @pre The state should be #TTS_STATE_CREATED.
/// @see tts_set_utterance_started_cb()
///
/// Module getter: `tizenTts`.
int tts_unset_utterance_started_cb(
  tts_h tts,
) =>
    tizenTts.tts_unset_utterance_started_cb(
      tts,
    );

