// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenFeedback`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libfeedback.so.0`.
///
/// System / Feedback.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_feedback;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Deinitializes feedback API.
/// @details This function must be called when feedback functions are no longer needed.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks If you don't want to use feedback anymore, you need to deinitialize with this function.
/// And for controlling haptic device, the privilege should be set to, %http://tizen.org/privilege/haptic.
/// If you don't have the haptic privilege, this function deinitializes only sound.
/// It does not return any error in this case.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #FEEDBACK_ERROR_NONE Successful
/// @retval #FEEDBACK_ERROR_NOT_INITIALIZED Not initialized
/// @retval #FEEDBACK_ERROR_NOT_SUPPORTED Not supported device
/// @pre feedback_initialize()
/// @see feedback_initialize()
///
/// Module getter: `tizenFeedback`.
int feedback_deinitialize() =>
    tizenFeedback.feedback_deinitialize();

/// @brief Initializes feedback API.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks If this function is not called in advance, other function will return #FEEDBACK_ERROR_NOT_INITIALIZED.
/// And for controlling haptic device, the privilege should be set to, %http://tizen.org/privilege/haptic.
/// If you don't have the haptic privilege, this function initializes only sound.
/// It does not return any error in this case.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #FEEDBACK_ERROR_NONE Successful
/// @retval #FEEDBACK_ERROR_NOT_SUPPORTED Not supported device
/// @post feedback_deinitialize()
/// @see feedback_deinitialize()
///
/// Module getter: `tizenFeedback`.
int feedback_initialize() =>
    tizenFeedback.feedback_initialize();

/// @brief Checks if the pattern is supported.
/// @details This function can be used to check if a specific pattern is supported.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter type The pattern type
/// Parameter pattern The pre-defined pattern
/// Output parameter status True means the pattern is supported,
/// otherwise not supported
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #FEEDBACK_ERROR_NONE Successful
/// @retval #FEEDBACK_ERROR_OPERATION_FAILED Operation not permitted
/// @retval #FEEDBACK_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #FEEDBACK_ERROR_NOT_SUPPORTED Not supported device
/// @retval #FEEDBACK_ERROR_NOT_INITIALIZED Not initialized
/// @pre feedback_initialize()
///
/// Module getter: `tizenFeedback`.
int feedback_is_supported_pattern(
  int type,
  int pattern,
  ffi.Pointer<ffi.Bool> status,
) =>
    tizenFeedback.feedback_is_supported_pattern(
      type,
      pattern,
      status,
    );

/// @brief Plays various types of reactions that are pre-defined.
/// @details This function can be used to react to pre-defined actions. \n
/// It play various types of system pre-defined media or vibration patterns.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks Currently, there are two types of reactions: sound and vibration. \n
/// Depending on the settings, some types cannot operate.
/// For example, when set to silent mode, the device doesn't produce any sound.
/// If to play one of the devices is successful, this function regards as success.
/// And for controlling haptic device, the privilege should be set to, %http://tizen.org/privilege/haptic.
/// If you don't have the haptic privilege, it only works sound operation.
/// It does not return any error in this case.
/// Parameter pattern The pre-defined pattern
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #FEEDBACK_ERROR_NONE Successful
/// @retval #FEEDBACK_ERROR_OPERATION_FAILED Operation not permitted
/// @retval #FEEDBACK_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #FEEDBACK_ERROR_NOT_SUPPORTED Not supported device
/// @retval #FEEDBACK_ERROR_NOT_INITIALIZED Not initialized
/// @pre feedback_initialize()
///
/// Module getter: `tizenFeedback`.
int feedback_play(
  int pattern,
) =>
    tizenFeedback.feedback_play(
      pattern,
    );

/// @brief Plays specific type of reactions that are pre-defined.
/// @details This function can be used to react to pre-defined actions. \n
/// It play specific type of system pre-defined pattern.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks Currently, there are two types of reactions: sound and vibration. \n
/// Depending on the settings, some types cannot operate.
/// For example, when set to silent mode, the device doesn't produce any sound.
/// And for controlling haptic device, the privilege should be set to, %http://tizen.org/privilege/haptic.
/// If you don't have the haptic privilege, it returns FEEDBACK_ERROR_PERMISSION_DENIED error.
/// Parameter type The pattern type
/// Parameter pattern The pre-defined pattern
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #FEEDBACK_ERROR_NONE Successful
/// @retval #FEEDBACK_ERROR_OPERATION_FAILED Operation not permitted
/// @retval #FEEDBACK_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #FEEDBACK_ERROR_NOT_SUPPORTED Not supported device
/// @retval #FEEDBACK_ERROR_PERMISSION_DENIED Permission denied
/// @retval #FEEDBACK_ERROR_NOT_INITIALIZED Not initialized
/// @pre feedback_initialize()
///
/// Module getter: `tizenFeedback`.
int feedback_play_type(
  int type,
  int pattern,
) =>
    tizenFeedback.feedback_play_type(
      type,
      pattern,
    );

/// @brief Stops various types of reactions.
/// @details This function can be used to stop reaction to pre-defined actions. \n
/// It stops system pre-defined vibration patterns.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks This function does not support to stop media sound actions. \n
/// In this case, it will return FEEDBACK_ERROR_NOT_SUPPORTED error.
/// And for controlling haptic device, the privilege should be set to, %http://tizen.org/privilege/haptic.
/// If you don't have the haptic privilege, it only works sound operation.
/// It does not return any error in this case.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #FEEDBACK_ERROR_NONE Successful
/// @retval #FEEDBACK_ERROR_OPERATION_FAILED Operation not permitted
/// @retval #FEEDBACK_ERROR_NOT_SUPPORTED Not supported device
/// @retval #FEEDBACK_ERROR_PERMISSION_DENIED Permission denied
/// @retval #FEEDBACK_ERROR_NOT_INITIALIZED Not initialized
/// @pre feedback_initialize()
///
/// Module getter: `tizenFeedback`.
int feedback_stop() =>
    tizenFeedback.feedback_stop();

