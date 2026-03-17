// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenMvInference`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libmv_inference.so`.
///
/// Multimedia / Media Vision Inference.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_mv_inference;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Configures the network of the inference.
/// @details Use this function to configure the network of the inference
/// which is set to @a engine_config.
///
/// @since_tizen 5.5
///
/// Parameter infer         The handle to the inference
/// Parameter engine_config The handle to the configuration of
/// engine.
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// in @a engine_config
/// @retval #MEDIA_VISION_ERROR_INVALID_PATH Invalid path of model data
/// in @a engine_config
///
/// Module getter: `tizenMvInference`.
int mv_inference_configure(
  mv_inference_h infer,
  mv_engine_config_h engine_config,
) =>
    tizenMvInference.mv_inference_configure(
      infer,
      engine_config,
    );

/// /
/// /**
/// @brief Creates inference handle.
/// @details Use this function to create an inference. After the creation
/// the inference has to be prepared with
/// mv_inference_prepare() function to prepare a network
/// for the inference.
///
/// @since_tizen 5.5
/// @remarks If the app sets #MV_INFERENCE_MODEL_CONFIGURATION_FILE_PATH,
/// #MV_INFERENCE_MODEL_WEIGHT_FILE_PATH, and #MV_INFERENCE_MODEL_USER_FILE_PATH
/// to media storage, then the media storage privilege
/// %http://tizen.org/privilege/mediastorage is needed.\n
/// If the app sets any of the paths mentioned in the previous sentence
/// to external storage, then the external storage privilege
/// %http://tizen.org/privilege/externalstorage is needed.\n
/// If the required privileges aren't set properly, mv_inference_prepare() will returned
/// #MEDIA_VISION_ERROR_PERMISSION_DENIED.
///
/// @remarks The @a infer should be released using mv_inference_destroy().
///
/// Output parameter infer    The handle to the inference to be created
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mv_inference_destroy()
/// @see mv_inference_prepare()
///
/// Module getter: `tizenMvInference`.
int mv_inference_create(
  ffi.Pointer<mv_inference_h> infer,
) =>
    tizenMvInference.mv_inference_create(
      infer,
    );

/// @brief Destroys inference handle and releases all its resources.
///
/// @since_tizen 5.5
///
/// Parameter infer    The handle to the inference to be destroyed
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Create inference handle by using mv_inference_create()
///
/// @see mv_inference_create()
///
/// Module getter: `tizenMvInference`.
int mv_inference_destroy(
  mv_inference_h infer,
) =>
    tizenMvInference.mv_inference_destroy(
      infer,
    );

/// @brief Performs face detection on the @a source.
/// @details Use this function to launch face detection.
/// Each time when mv_inference_face_detect() is
/// called, @a detected_cb will receive a list of faces and their locations
/// in the media source.
///
/// @since_tizen 5.5
/// @remarks This function is synchronous and may take considerable time to run.
///
/// Parameter source         The handle to the source of the media
/// Parameter infer          The handle to the inference
/// Parameter detected_cb    The callback which will be called for
/// detecting faces on media source.
/// This callback will receive the detection results.
/// Parameter user_data      The user data passed from the code where
/// mv_inference_face_detect() is invoked. This data will
/// be accessible in @a detected_cb callback.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INTERNAL          Internal error
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Source colorspace
/// isn't supported
///
/// @pre Create a source handle by calling mv_create_source()
/// @pre Create an inference handle by calling mv_inference_create()
/// @pre Configure an inference handle by calling mv_inference_configure()
/// @pre Prepare an inference by calling mv_inference_prepare()
/// @post @a detected_cb will be called to provide detection results
///
/// @see mv_inference_face_detected_cb()
///
/// Module getter: `tizenMvInference`.
int mv_inference_face_detect(
  mv_source_h source,
  mv_inference_h infer,
  mv_inference_face_detected_cb detected_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvInference.mv_inference_face_detect(
      source,
      infer,
      detected_cb,
      user_data,
    );

/// @brief Performs facial landmarks detection on the @a source.
/// @details Use this function to launch facial landmark detection.
/// Each time when mv_inference_facial_landmark_detect() is
/// called, @a detected_cb will receive a list facial landmark's locations
/// in the media source.
///
/// @since_tizen 5.5
/// @remarks This function is synchronous and may take considerable time to run.
///
/// Parameter source         The handle to the source of the media
/// Parameter infer          The handle to the inference
/// Parameter roi            Rectangular area including a face in @a source which
/// will be analyzed. If NULL, then the whole source will be
/// analyzed.
/// Parameter detected_cb    The callback which will receive the detection results.
/// Parameter user_data      The user data passed from the code where
/// mv_inference_facial_landmark_detect() is invoked.
/// This data will be accessible in @a detected_cb callback.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INTERNAL          Internal error
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Source colorspace
/// isn't supported
///
/// @pre Create a source handle by calling mv_create_source()
/// @pre Create an inference handle by calling mv_inference_create()
/// @pre Configure an inference handle by calling mv_inference_configure()
/// @pre Prepare an inference by calling mv_inference_prepare()
/// @post @a detected_cb will be called to provide detection results
///
/// @see mv_inference_facial_landmark_detected_cb()
///
/// Module getter: `tizenMvInference`.
int mv_inference_facial_landmark_detect(
  mv_source_h source,
  mv_inference_h infer,
  ffi.Pointer<mv_rectangle_s> roi,
  mv_inference_facial_landmark_detected_cb detected_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvInference.mv_inference_facial_landmark_detect(
      source,
      infer,
      roi,
      detected_cb,
      user_data,
    );

/// @brief Traverses the list of supported engines for inference.
/// @details Using this function the supported engines can be obtained.
/// The names can be used with #mv_engine_config_h related
/// getters and setters to get/set MV_INFERENCE_BACKEND_TYPE attribute
/// value.
///
/// @since_tizen 5.5
/// Parameter infer The handle to the inference
/// Parameter callback The iteration callback function
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mv_inference_supported_engine_cb()
///
/// Module getter: `tizenMvInference`.
int mv_inference_foreach_supported_engine(
  mv_inference_h infer,
  mv_inference_supported_engine_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvInference.mv_inference_foreach_supported_engine(
      infer,
      callback,
      user_data,
    );

/// @brief Performs image classification on the @a source.
/// @details Use this function to launch image classification.
/// Each time when mv_inference_image_classify() is
/// called, @a classified_cb will receive classes
/// which the media source may belong to.
///
/// @since_tizen 5.5
/// @remarks This function is synchronous and may take considerable time to run.
///
/// Parameter source         The handle to the source of the media
/// Parameter infer          The handle to the inference
/// Parameter roi            Rectangular area in the @a source which will be analyzed.
/// If NULL, then the whole source will be analyzed.
/// Parameter classified_cb  The callback which will be called for
/// classification on @a source.
/// This callback will receive classification results.
/// Parameter user_data      The user data passed from the code where
/// mv_inference_image_classify() is invoked. This data will
/// be accessible in @a classified_cb callback.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_VISION_ERROR_INTERNAL          Internal error
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Source colorspace
/// isn't supported
///
/// @pre Create a source handle by calling mv_create_source()
/// @pre Create an inference handle by calling mv_inference_create()
/// @pre Configure an inference handle by calling mv_inference_configure()
/// @pre Prepare an inference by calling mv_inference_prepare()
/// @post @a classified_cb will be called to provide classification results
///
/// @see mv_inference_image_classified_cb()
///
/// Module getter: `tizenMvInference`.
int mv_inference_image_classify(
  mv_source_h source,
  mv_inference_h infer,
  ffi.Pointer<mv_rectangle_s> roi,
  mv_inference_image_classified_cb classified_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvInference.mv_inference_image_classify(
      source,
      infer,
      roi,
      classified_cb,
      user_data,
    );

/// @brief Performs object detection on the @a source.
/// @details Use this function to launch object detection.
/// Each time when mv_inference_object_detect() is
/// called, @a detected_cb will receive a list of objects and their locations
/// in the media source.
///
/// @since_tizen 5.5
/// @remarks This function is synchronous and may take considerable time to run.
///
/// Parameter source         The handle to the source of the media
/// Parameter infer          The handle to the inference
/// Parameter detected_cb    The callback which will be called for
/// detecting objects in the media source.
/// This callback will receive the detection results.
/// Parameter user_data      The user data passed from the code where
/// mv_inference_object_detect() is invoked. This data will
/// be accessible in @a detected_cb callback.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INTERNAL          Internal error
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Source colorspace
/// isn't supported
///
/// @pre Create a source handle by calling mv_create_source()
/// @pre Create an inference handle by calling mv_inference_create()
/// @pre Configure an inference handle by calling mv_inference_configure()
/// @pre Prepare an inference by calling mv_inference_prepare()
/// @post @a detected_cb will be called to provide detection results
///
/// @see mv_inference_object_detected_cb()
///
/// Module getter: `tizenMvInference`.
int mv_inference_object_detect(
  mv_source_h source,
  mv_inference_h infer,
  mv_inference_object_detected_cb detected_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvInference.mv_inference_object_detect(
      source,
      infer,
      detected_cb,
      user_data,
    );

/// @brief Gets a label of a pose.
///
/// @since_tizen 6.0
///
/// Parameter result            The handle to inference result
/// Parameter pose_index        The pose index between 0 and
/// the number of poses which can be gotten by
/// mv_inference_pose_get_number_of_poses()
/// Output parameter label         The label of a pose
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mv_inference_pose_get_number_of_poses()
/// @see mv_inference_pose_get_number_of_landmarks()
/// @see mv_inference_pose_landmark_detected_cb()
/// @see mv_inference_pose_result_h
///
/// Module getter: `tizenMvInference`.
int mv_inference_pose_get_label(
  mv_inference_pose_result_h result,
  int pose_index,
  ffi.Pointer<ffi.Int> label,
) =>
    tizenMvInference.mv_inference_pose_get_label(
      result,
      pose_index,
      label,
    );

/// @brief Gets landmark location of a part of a pose.
///
/// @since_tizen 6.0
///
/// Parameter result            The handle to inference result
/// Parameter pose_index        The pose index between 0 and
/// the number of poses which can be gotten by
/// mv_inference_pose_get_number_of_poses()
/// Parameter pose_part         The landmark index between 0 and
/// the number of landmarks which can be gotten by
/// mv_inference_pose_get_number_of_landmarks()
/// Output parameter location      The location of a landmark
/// Output parameter score         The score of a landmark
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mv_inference_pose_get_number_of_poses()
/// @see mv_inference_pose_get_number_of_landmarks()
/// @see mv_inference_pose_landmark_detected_cb()
/// @see mv_inference_pose_result_h
///
/// Module getter: `tizenMvInference`.
int mv_inference_pose_get_landmark(
  mv_inference_pose_result_h result,
  int pose_index,
  int pose_part,
  ffi.Pointer<mv_point_s> location,
  ffi.Pointer<ffi.Float> score,
) =>
    tizenMvInference.mv_inference_pose_get_landmark(
      result,
      pose_index,
      pose_part,
      location,
      score,
    );

/// @brief Gets the number of landmarks per a pose.
///
/// @since_tizen 6.0
///
/// Parameter result         			The handle to inference result
/// Output parameter number_of_landmarks   The pointer to the number of landmarks
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mv_inference_pose_landmark_detected_cb()
/// @see mv_inference_pose_result_h
///
/// Module getter: `tizenMvInference`.
int mv_inference_pose_get_number_of_landmarks(
  mv_inference_pose_result_h result,
  ffi.Pointer<ffi.Int> number_of_landmarks,
) =>
    tizenMvInference.mv_inference_pose_get_number_of_landmarks(
      result,
      number_of_landmarks,
    );

/// @brief Gets the number of poses.
///
/// @since_tizen 6.0
///
/// Parameter result         		The handle to inference result
/// Output parameter number_of_poses   The pointer to the number of poses
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mv_inference_pose_landmark_detected_cb()
/// @see mv_inference_pose_result_h
///
/// Module getter: `tizenMvInference`.
int mv_inference_pose_get_number_of_poses(
  mv_inference_pose_result_h result,
  ffi.Pointer<ffi.Int> number_of_poses,
) =>
    tizenMvInference.mv_inference_pose_get_number_of_poses(
      result,
      number_of_poses,
    );

/// @brief Performs pose landmarks detection on the @a source.
/// @details Use this function to launch pose landmark detection.
/// Each time when mv_inference_pose_landmark_detect() is
/// called, @a detected_cb will receive a list of pose landmark's locations
/// in the media source.
///
/// @since_tizen 6.0
/// @remarks This function is synchronous and may take considerable time to run.
///
/// Parameter source         The handle to the source of the media
/// Parameter infer          The handle to the inference
/// Parameter roi            Rectangular area including a face in @a source which
/// will be analyzed. If NULL, then the whole source will be
/// analyzed.
/// Parameter detected_cb    The callback which will receive the detection results.
/// Parameter user_data      The user data passed from the code where
/// mv_inference_pose_landmark_detect() is invoked.
/// This data will be accessible in @a detected_cb callback.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INTERNAL          Internal error
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Source colorspace isn't supported
///
/// @pre Create a source handle by calling mv_create_source()
/// @pre Create an inference handle by calling mv_inference_create()
/// @pre Configure an inference handle by calling mv_inference_configure()
/// @pre Prepare an inference by calling mv_inference_prepare()
/// @post @a detected_cb will be called to provide detection results
///
/// @see mv_inference_pose_landmark_detected_cb()
///
/// Module getter: `tizenMvInference`.
int mv_inference_pose_landmark_detect(
  mv_source_h source,
  mv_inference_h infer,
  ffi.Pointer<mv_rectangle_s> roi,
  mv_inference_pose_landmark_detected_cb detected_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvInference.mv_inference_pose_landmark_detect(
      source,
      infer,
      roi,
      detected_cb,
      user_data,
    );

/// @brief Prepares inference.
/// @details Use this function to prepare inference based on
/// the configured network.
///
/// @since_tizen 5.5
///
/// Parameter infer         The handle to the inference
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_DATA Invalid model data
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_VISION_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// Module getter: `tizenMvInference`.
int mv_inference_prepare(
  mv_inference_h infer,
) =>
    tizenMvInference.mv_inference_prepare(
      infer,
    );

/// @brief Compares an action pose with the pose which is set by mv_pose_set_from_file().
/// @details Use this function to compare action pose with the pose
/// which is set by mv_pose_set_from_file().
/// Parts to be compared can be selected by #mv_inference_human_body_part_e.
/// Their similarity will be given by the score between 0 ~ 1.
///
/// @since_tizen 6.0
/// @remarks If @a action contains multiple poses, the first pose is used for comparison.
///
/// Parameter pose   The handle to the pose
/// Parameter action The action pose
/// Parameter parts  The parts to be compared
/// Output parameter score The similarity score
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Sets the pose by using mv_pose_set_from_file()
/// @pre Detects the pose by using mv_inference_pose_landmark_detect()
///
/// Module getter: `tizenMvInference`.
int mv_pose_compare(
  mv_pose_h pose,
  mv_inference_pose_result_h action,
  int parts,
  ffi.Pointer<ffi.Float> score,
) =>
    tizenMvInference.mv_pose_compare(
      pose,
      action,
      parts,
      score,
    );

/// @brief Creates pose handle.
/// @details Use this function to create a pose.
///
/// @since_tizen 6.0
///
/// @remarks The @a pose should be released using mv_pose_destroy().
///
/// Output parameter pose    The handle to the pose to be created
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mv_pose_destroy()
///
/// Module getter: `tizenMvInference`.
int mv_pose_create(
  ffi.Pointer<mv_pose_h> pose,
) =>
    tizenMvInference.mv_pose_create(
      pose,
    );

/// @brief Destroys pose handle and releases all its resources.
///
/// @since_tizen 6.0
///
/// Parameter pose    The handle to the pose to be destroyed
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Create pose handle by using mv_pose_create()
///
/// @see mv_pose_create()
///
/// Module getter: `tizenMvInference`.
int mv_pose_destroy(
  mv_pose_h pose,
) =>
    tizenMvInference.mv_pose_destroy(
      pose,
    );

/// @brief Sets a motion capture file and its pose mapping file to the pose.
/// @details Use this function to set a motion capture file and
/// its pose mapping file. These are used by mv_pose_compare()
/// to compare a given pose by mv_inference_pose_landmark_estimation().
///
///
/// @since_tizen 6.0
/// @remarks If the app sets paths to media storage,
/// then the media storage privilege
/// %http://tizen.org/privilege/mediastorage is needed.\n
/// If the app sets the paths to external storage,
/// then the external storage privilege
/// %http://tizen.org/privilege/externalstorage is needed.\n
/// If the required privileges aren't set properly,
/// mv_pose_set_from_file() will returned #MEDIA_VISION_ERROR_PERMISSION_DENIED.
///
/// Parameter pose                  The handle to the pose
/// Parameter motion_capture_file_path The file path to the motion capture file
/// Parameter motion_mapping_file_path The file path to the motion mapping file
///
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_PATH Invalid path of capture or mapping file
/// @retval #MEDIA_VISION_ERROR_INTERNAL Internal error
///
/// Module getter: `tizenMvInference`.
int mv_pose_set_from_file(
  mv_pose_h pose,
  ffi.Pointer<ffi.Char> motion_capture_file_path,
  ffi.Pointer<ffi.Char> motion_mapping_file_path,
) =>
    tizenMvInference.mv_pose_set_from_file(
      pose,
      motion_capture_file_path,
      motion_mapping_file_path,
    );

