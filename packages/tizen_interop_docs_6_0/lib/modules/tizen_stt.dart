// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenStt`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libstt.so`.
///
/// UIX / STT.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_stt;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Cancels processing recognition and recording asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks This function cancels recording and engine cancels recognition processing.
/// After successful cancel, stt_state_changed_cb() is called otherwise if error is occurred, stt_error_cb() is called.
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STT_ERROR_IN_PROGRESS_TO_READY Progress to ready is not finished
/// @retval #STT_ERROR_IN_PROGRESS_TO_RECORDING Progress to recording is not finished
/// @retval #STT_ERROR_IN_PROGRESS_TO_PROCESSING Progress to processing is not finished
/// @pre The state should be #STT_STATE_RECORDING or #STT_STATE_PROCESSING.
/// @post It will invoke stt_state_changed_cb(), if you register a callback with stt_state_changed_cb().
/// If this function succeeds, the STT state will be #STT_STATE_READY.
/// If you call this function again before state changes, you will receive #STT_ERROR_IN_PROGRESS_TO_READY.
/// @see stt_start()
/// @see stt_stop()
/// @see stt_state_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_cancel(
  stt_h stt,
) =>
    tizenStt.stt_cancel(
      stt,
    );

/// @brief Creates a STT handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks If the function succeeds, @a stt handle must be released with stt_destroy().
/// Output parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @post If this function is called, the STT state will be #STT_STATE_CREATED.
/// @see stt_destroy()
///
/// Module getter: `tizenStt`.
int stt_create(
  ffi.Pointer<stt_h> stt,
) =>
    tizenStt.stt_create(
      stt,
    );

/// @brief Destroys a STT handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @see stt_create()
///
/// Module getter: `tizenStt`.
int stt_destroy(
  stt_h stt,
) =>
    tizenStt.stt_destroy(
      stt,
    );

/// @brief Retrieves the time stamp of the current recognition result using the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks This function should be called in stt_recognition_result_cb().
/// After stt_recognition_result_cb(), result data is NOT valid.
/// Parameter stt The STT handle
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre This function should be called in stt_recognition_result_cb().
/// @post This function invokes stt_result_time_cb() repeatedly for getting time information.
/// @see stt_result_time_cb()
/// @see stt_recognition_result_cb()
///
/// Module getter: `tizenStt`.
int stt_foreach_detailed_result(
  stt_h stt,
  stt_result_time_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_foreach_detailed_result(
      stt,
      callback,
      user_data,
    );

/// @brief Retrieves supported engine information using a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Success
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE STT Not initialized
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @post This function invokes stt_supported_engine_cb() repeatedly for getting engine information.
/// @see stt_supported_engine_cb()
///
/// Module getter: `tizenStt`.
int stt_foreach_supported_engines(
  stt_h stt,
  stt_supported_engine_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_foreach_supported_engines(
      stt,
      callback,
      user_data,
    );

/// @brief Retrieves all supported languages of current engine using callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_ENGINE_NOT_FOUND No available engine
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @post This function invokes stt_supported_language_cb() repeatedly for getting languages.
/// @see stt_supported_language_cb()
/// @see stt_get_default_language()
///
/// Module getter: `tizenStt`.
int stt_foreach_supported_languages(
  stt_h stt,
  stt_supported_language_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_foreach_supported_languages(
      stt,
      callback,
      user_data,
    );

/// @brief Gets the default language set by the user.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks The language is specified as an ISO 3166 alpha-2 two letter country-code followed by ISO 639-1 for the two-letter language code.
/// For example, "ko_KR" for Korean, "en_US" for American English.
/// If the function succeeds, @a language must be released using free() when it is no longer required.
/// Parameter stt The STT handle
/// Output parameter language The language
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @see stt_foreach_supported_languages()
///
/// Module getter: `tizenStt`.
int stt_get_default_language(
  stt_h stt,
  ffi.Pointer<ffi.Pointer<ffi.Char>> language,
) =>
    tizenStt.stt_get_default_language(
      stt,
      language,
    );

/// @brief Gets the current engine ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks If the function is success, @a engine_id must be released using free().
/// Parameter stt The STT handle
/// Output parameter engine_id Engine ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Success
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE STT Not initialized
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_set_engine()
///
/// Module getter: `tizenStt`.
int stt_get_engine(
  stt_h stt,
  ffi.Pointer<ffi.Pointer<ffi.Char>> engine_id,
) =>
    tizenStt.stt_get_engine(
      stt,
      engine_id,
    );

/// @brief Gets the current error message.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks This function should be called during an stt error callback. If not, the error as operation failure will be returned.
/// If the function succeeds, @a err_msg must be released using free() when it is no longer required.
/// Parameter stt The STT handle
/// Output parameter err_msg The current error message
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @see stt_set_error_cb()
/// @see stt_unset_error_cb()
///
/// Module getter: `tizenStt`.
int stt_get_error_message(
  stt_h stt,
  ffi.Pointer<ffi.Pointer<ffi.Char>> err_msg,
) =>
    tizenStt.stt_get_error_message(
      stt,
      err_msg,
    );

/// @brief Gets the private data from stt engine.
/// @details The private data is the information provided by the engine.
/// Using this API, the application can get the private data which corresponds to the key from the engine.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks If the engine is replaced with the other engine, the key may be ignored.
/// @remarks The @a data must be released using free() when it is no longer required.
/// Parameter stt The STT handle
/// Parameter key The field name of private data
/// Output parameter data The data field of private data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_TIMED_OUT No answer from the STT service
/// @pre The state should be #STT_STATE_READY.
/// @see stt_set_private_data()
///
/// Module getter: `tizenStt`.
int stt_get_private_data(
  stt_h stt,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> data,
) =>
    tizenStt.stt_get_private_data(
      stt,
      key,
      data,
    );

/// @brief Gets the microphone volume during recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Output parameter volume Recording volume
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_RECORDING.
/// @see stt_start()
///
/// Module getter: `tizenStt`.
int stt_get_recording_volume(
  stt_h stt,
  ffi.Pointer<ffi.Float> volume,
) =>
    tizenStt.stt_get_recording_volume(
      stt,
      volume,
    );

/// @brief Gets the current STT state.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Output parameter state The current STT state
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @see stt_start()
/// @see stt_stop()
/// @see stt_cancel()
/// @see stt_state_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_get_state(
  stt_h stt,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenStt.stt_get_state(
      stt,
      state,
    );

/// @brief Checks whether the recognition type is supported.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter type The type for recognition (e.g. #STT_RECOGNITION_TYPE_FREE, #STT_RECOGNITION_TYPE_FREE_PARTIAL)
/// Output parameter support The result status @c true = supported,
/// @c false = not supported
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_READY.
///
/// Module getter: `tizenStt`.
int stt_is_recognition_type_supported(
  stt_h stt,
  ffi.Pointer<ffi.Char> type,
  ffi.Pointer<ffi.Bool> support,
) =>
    tizenStt.stt_is_recognition_type_supported(
      stt,
      type,
      support,
    );

/// @brief Connects the STT service asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @post If this function is successful, the STT state will be #STT_STATE_READY.
/// If this function is failed, the error callback is called. (e.g. #STT_ERROR_ENGINE_NOT_FOUND)
/// @see stt_unprepare()
///
/// Module getter: `tizenStt`.
int stt_prepare(
  stt_h stt,
) =>
    tizenStt.stt_prepare(
      stt,
    );

/// @brief Sets the app credential.
/// @details Using this API, the application can set a credential.
/// The credential is a key to verify the authorization about using the engine.
/// If the application sets the credential, it will be able to use functions of the engine entirely.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks The necessity of the credential depends on the engine. In case of the engine which is basically embedded in Tizen, the credential is not necessary so far.
/// However, if the user wants to apply the 3rd party's engine, the credential may be necessary. In that case, please follow the policy provided by the corresponding engine.
/// Parameter stt The STT handle
/// Parameter credential The app credential
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Success
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @pre The state should be #STT_STATE_CREATED or #STT_STATE_READY.
/// @see stt_start()
///
/// Module getter: `tizenStt`.
int stt_set_credential(
  stt_h stt,
  ffi.Pointer<ffi.Char> credential,
) =>
    tizenStt.stt_set_credential(
      stt,
      credential,
    );

/// @brief Sets a callback function to detect the default language change.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_default_language_changed_cb()
/// @see stt_unset_default_language_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_set_default_language_changed_cb(
  stt_h stt,
  stt_default_language_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_set_default_language_changed_cb(
      stt,
      callback,
      user_data,
    );

/// @brief Sets the engine ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// @remarks A privilege (%http://tizen.org/privilege/appmanager.launch) is necessary since 3.0.
/// Parameter stt The STT handle
/// Parameter engine_id Engine ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Success
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE STT Not initialized
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_get_engine()
///
/// Module getter: `tizenStt`.
int stt_set_engine(
  stt_h stt,
  ffi.Pointer<ffi.Char> engine_id,
) =>
    tizenStt.stt_set_engine(
      stt,
      engine_id,
    );

/// @brief Sets a callback function to detect the engine change.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// Parameter stt The STT handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_engine_changed_cb()
/// @see stt_unset_engine_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_set_engine_changed_cb(
  stt_h stt,
  stt_engine_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_set_engine_changed_cb(
      stt,
      callback,
      user_data,
    );

/// @brief Sets a callback function to be called when an error occurred.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_error_cb()
/// @see stt_unset_error_cb()
///
/// Module getter: `tizenStt`.
int stt_set_error_cb(
  stt_h stt,
  stt_error_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_set_error_cb(
      stt,
      callback,
      user_data,
    );

/// @brief Sets the private data to stt engine.
/// @details The private data is the setting parameter for applying keys provided by the engine.
/// Using this API, the application can set the private data and use the corresponding key of the engine.
/// For example, if the engine provides 'partial recognition' as a recognition type, the application can set the private data as the following.
/// int ret = stt_set_private_data(stt_h, "recognition_type", "PARTIAL");
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// @remarks If the engine is replaced with the other engine, the key may be ignored.
/// Parameter stt The STT handle
/// Parameter key The field name of private data
/// Parameter data The data for set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_TIMED_OUT No answer from the STT service
/// @pre The state should be #STT_STATE_READY.
/// @see stt_get_private_data()
///
/// Module getter: `tizenStt`.
int stt_set_private_data(
  stt_h stt,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> data,
) =>
    tizenStt.stt_set_private_data(
      stt,
      key,
      data,
    );

/// @brief Sets a callback function to get the recognition result.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_recognition_result_cb()
/// @see stt_unset_recognition_result_cb()
///
/// Module getter: `tizenStt`.
int stt_set_recognition_result_cb(
  stt_h stt,
  stt_recognition_result_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_set_recognition_result_cb(
      stt,
      callback,
      user_data,
    );

/// @brief Sets the silence detection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter type The option type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED_FEATURE Not supported feature of current engine
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_READY.
///
/// Module getter: `tizenStt`.
int stt_set_silence_detection(
  stt_h stt,
  int type,
) =>
    tizenStt.stt_set_silence_detection(
      stt,
      type,
    );

/// @brief Sets a callback function to detect the speech status is changed.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_speech_status_cb()
/// @see stt_unset_speech_status_cb()
///
/// Module getter: `tizenStt`.
int stt_set_speech_status_cb(
  stt_h stt,
  stt_speech_status_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_set_speech_status_cb(
      stt,
      callback,
      user_data,
    );

/// @brief Sets the sound to start recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks Sound file type should be wav type.
/// Parameter stt The STT handle
/// Parameter filename The sound file path
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_READY.
///
/// Module getter: `tizenStt`.
int stt_set_start_sound(
  stt_h stt,
  ffi.Pointer<ffi.Char> filename,
) =>
    tizenStt.stt_set_start_sound(
      stt,
      filename,
    );

/// @brief Sets a callback function to be called when STT state changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_state_changed_cb()
/// @see stt_unset_state_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_set_state_changed_cb(
  stt_h stt,
  stt_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenStt.stt_set_state_changed_cb(
      stt,
      callback,
      user_data,
    );

/// @brief Sets the sound to stop recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks Sound file type should be wav type.
/// Parameter stt The STT handle
/// Parameter filename The sound file path
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_READY.
///
/// Module getter: `tizenStt`.
int stt_set_stop_sound(
  stt_h stt,
  ffi.Pointer<ffi.Char> filename,
) =>
    tizenStt.stt_set_stop_sound(
      stt,
      filename,
    );

/// @brief Starts recording and recognition asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// @remarks This function starts recording in the STT service and sending recording data to engine.
/// This work continues until stt_stop(), stt_cancel() or silence detected by engine.
/// Parameter stt The STT handle
/// Parameter language The language selected from stt_foreach_supported_languages()
/// Parameter type The type for recognition (e.g. #STT_RECOGNITION_TYPE_FREE, #STT_RECOGNITION_TYPE_FREE_PARTIAL)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_RECORDER_BUSY Recorder busy
/// @retval #STT_ERROR_INVALID_LANGUAGE Invalid language
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STT_ERROR_IN_PROGRESS_TO_RECORDING Progress to recording is not finished
/// @pre The state should be #STT_STATE_READY.
/// @post It will invoke stt_state_changed_cb(), if you register a callback with stt_state_changed_cb().
/// If this function succeeds, the STT state will be #STT_STATE_RECORDING.
/// If you call this function again before state changes, you will receive #STT_ERROR_IN_PROGRESS_TO_RECORDING.
/// @see stt_stop()
/// @see stt_cancel()
/// @see stt_state_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_start(
  stt_h stt,
  ffi.Pointer<ffi.Char> language,
  ffi.Pointer<ffi.Char> type,
) =>
    tizenStt.stt_start(
      stt,
      language,
      type,
    );

/// @brief Finishes the recording and starts recognition processing in engine asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STT_ERROR_IN_PROGRESS_TO_READY Progress to ready is not finished
/// @retval #STT_ERROR_IN_PROGRESS_TO_RECORDING Progress to recording is not finished
/// @retval #STT_ERROR_IN_PROGRESS_TO_PROCESSING Progress to processing is not finished
/// @pre The state should be #STT_STATE_RECORDING.
/// @post It will invoke stt_state_changed_cb(), if you register a callback with stt_state_changed_cb().
/// If this function succeeds, the STT state will be #STT_STATE_PROCESSING.
/// If you call this function again before state changes, you will receive #STT_ERROR_IN_PROGRESS_TO_PROCESSING.
/// After processing of engine, stt_result_cb() is called.
/// @see stt_start()
/// @see stt_cancel()
/// @see stt_state_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_stop(
  stt_h stt,
) =>
    tizenStt.stt_stop(
      stt,
    );

/// @brief Disconnects the STT service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_READY.
/// @post If this function is called, the STT state will be #STT_STATE_CREATED.
/// @see stt_prepare()
///
/// Module getter: `tizenStt`.
int stt_unprepare(
  stt_h stt,
) =>
    tizenStt.stt_unprepare(
      stt,
    );

/// @brief Unsets the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_set_default_language_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_unset_default_language_changed_cb(
  stt_h stt,
) =>
    tizenStt.stt_unset_default_language_changed_cb(
      stt,
    );

/// @brief Unsets the callback function.
/// @since_tizen @if MOBILE 3.0 @elseif WEARABLE 2.3.2 @endif
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_set_engine_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_unset_engine_changed_cb(
  stt_h stt,
) =>
    tizenStt.stt_unset_engine_changed_cb(
      stt,
    );

/// @brief Unsets the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_set_error_cb()
///
/// Module getter: `tizenStt`.
int stt_unset_error_cb(
  stt_h stt,
) =>
    tizenStt.stt_unset_error_cb(
      stt,
    );

/// @brief Unsets the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_set_recognition_result_cb()
///
/// Module getter: `tizenStt`.
int stt_unset_recognition_result_cb(
  stt_h stt,
) =>
    tizenStt.stt_unset_recognition_result_cb(
      stt,
    );

/// @brief Unsets the callback function to detect the speech status is changed.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_set_speech_status_cb()
///
/// Module getter: `tizenStt`.
int stt_unset_speech_status_cb(
  stt_h stt,
) =>
    tizenStt.stt_unset_speech_status_cb(
      stt,
    );

/// @brief Unsets the sound to start recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_READY.
///
/// Module getter: `tizenStt`.
int stt_unset_start_sound(
  stt_h stt,
) =>
    tizenStt.stt_unset_start_sound(
      stt,
    );

/// @brief Unsets the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_CREATED.
/// @see stt_set_state_changed_cb()
///
/// Module getter: `tizenStt`.
int stt_unset_state_changed_cb(
  stt_h stt,
) =>
    tizenStt.stt_unset_state_changed_cb(
      stt,
    );

/// @brief Unsets the sound to stop recording.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/recorder
/// Parameter stt The STT handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #STT_ERROR_NONE Successful
/// @retval #STT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #STT_ERROR_INVALID_STATE Invalid state
/// @retval #STT_ERROR_OPERATION_FAILED Operation failure
/// @retval #STT_ERROR_NOT_SUPPORTED STT NOT supported
/// @retval #STT_ERROR_PERMISSION_DENIED Permission denied
/// @pre The state should be #STT_STATE_READY.
///
/// Module getter: `tizenStt`.
int stt_unset_stop_sound(
  stt_h stt,
) =>
    tizenStt.stt_unset_stop_sound(
      stt,
    );

