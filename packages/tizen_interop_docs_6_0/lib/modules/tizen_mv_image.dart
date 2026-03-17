// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenMvImage`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libmv_image.so`.
///
/// Multimedia / Media Vision Image.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_mv_image;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Clones the image object.
///
/// @since_tizen 3.0
/// @remarks @a dst must be released using mv_image_object_destroy().
/// @param in  src    The handle to the source image object
/// @param out dst    The handle to the destination image object
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create image object handles by calling mv_image_object_create()
///
/// @see mv_image_object_create()
/// @see mv_image_object_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_object_clone(
  mv_image_object_h src,
  ffi.Pointer<mv_image_object_h> dst,
) =>
    tizenMvImage.mv_image_object_clone(
      src,
      dst,
    );

/// @brief Creates an image object.
///
/// @since_tizen 3.0
/// @param out image_object    A new handle to the image object
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
///
/// @post Release image object by using mv_image_object_destroy()
///
/// @see mv_image_object_destroy()
/// @see mv_image_object_h
///
/// Module getter: `tizenMvImage`.
int mv_image_object_create(
  ffi.Pointer<mv_image_object_h> image_object,
) =>
    tizenMvImage.mv_image_object_create(
      image_object,
    );

/// @brief Destroys the image object.
///
/// @since_tizen 3.0
/// @param in image_object    The handle to the image object to be destroyed
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image object by using mv_image_object_create()
///
/// @see mv_image_object_create()
/// @see mv_image_object_h
///
/// Module getter: `tizenMvImage`.
int mv_image_object_destroy(
  mv_image_object_h image_object,
) =>
    tizenMvImage.mv_image_object_destroy(
      image_object,
    );

/// @brief Fills the image object.
/// @details Extracts data from @a source image which will be needed for
/// recognition of depicted object in @a location.
///
/// @since_tizen 3.0
/// @remarks After filling the image object it can be evaluated by
/// mv_image_object_get_recognition_rate(). If recognition rate
/// is too low, try to use another image of object or change
/// configuration parameters (see #mv_engine_config_h) and construct
/// the image object again.
/// @param in,out image_object    The handle to the image object which will be
/// filled and can be recognized in future
/// @param in     engine_cfg      The handle to the configuration of engine
/// which will be used for extract recognition
/// data from @a source. If NULL, then default
/// settings will be used.
/// @param in     source          The source image where image object is depicted
/// @param in     location        The pointer to location of the image object
/// on the source image, or NULL if the object is
/// shown in full
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Source colorspace
/// isn't supported
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image object by using mv_image_object_create()
/// @post Release image object by using mv_image_object_destroy()
///
/// @see mv_image_object_h
/// @see mv_image_object_create()
/// @see mv_image_object_get_recognition_rate()
/// @see mv_image_recognize()
/// @see mv_image_object_destroy()
/// @see mv_engine_config_h
///
/// Module getter: `tizenMvImage`.
int mv_image_object_fill(
  mv_image_object_h image_object,
  mv_engine_config_h engine_cfg,
  mv_source_h source,
  ffi.Pointer<mv_rectangle_s> location,
) =>
    tizenMvImage.mv_image_object_fill(
      image_object,
      engine_cfg,
      source,
      location,
    );

/// @brief Gets a label of image object.
///
/// @since_tizen 3.0
/// @remarks If @a image_object have not a label, this function return
/// MEDIA_VISION_ERROR_NO_DATA value.
/// @param in  image_object   The handle to the image object from which a
/// label will be received
/// @param out label          The label of image object
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NO_DATA Image object hasn't label
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image object by using mv_image_object_create()
/// @pre Set label for the image object by using mv_image_object_set_label()
/// @post Release image object by using mv_image_object_destroy()
///
/// @see mv_image_object_set_label()
/// @see mv_image_object_h
/// @see mv_image_object_create()
/// @see mv_image_object_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_object_get_label(
  mv_image_object_h image_object,
  ffi.Pointer<ffi.Int> label,
) =>
    tizenMvImage.mv_image_object_get_label(
      image_object,
      label,
    );

/// @brief Gets a value that determines how well an image object can be recognized.
/// @details Recognition rate determines how well an image object can be
/// recognized. This value can be from 0 to 1. If the recognition rate
/// is 0 object can not be recognized and the bigger it is the more
/// likely to recognize the object.
///
/// @since_tizen 3.0
/// @remarks If recognition rate is too low, try to use another image of object
/// or change some configuration parameters (see #mv_engine_config_h)
/// and fill the image object again (see mv_image_object_fill()).
/// @param in  image_object        The handle to the image object which will be
/// evaluated by this function
/// @param out recognition_rate    A value that determines how well an image
/// object can be recognized, if 0 then object
/// can not be recognized
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image object by using mv_image_object_create()
/// @post Release image object by using mv_image_object_destroy()
///
/// @see mv_image_object_h
/// @see mv_image_object_create()
/// @see mv_image_object_fill()
/// @see mv_image_object_destroy()
/// @see mv_engine_config_h
///
/// Module getter: `tizenMvImage`.
int mv_image_object_get_recognition_rate(
  mv_image_object_h image_object,
  ffi.Pointer<ffi.Double> recognition_rate,
) =>
    tizenMvImage.mv_image_object_get_recognition_rate(
      image_object,
      recognition_rate,
    );

/// @brief Loads an image object from the file.
///
/// @since_tizen 3.0
/// @remarks @a image_object is loaded from the absolute path directory.
/// Use app_get_data_path() for the private app storage path.
/// @a image_object must be destroyed using
/// mv_image_object_destroy().
/// @param in  file_name       Name of path/file to load the image object
/// @param out image_object    The handle to the image object which will be
/// filled
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_PATH Invalid path
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_VISION_ERROR_PERMISSION_DENIED Not permitted
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Image object can be preliminary saved with mv_image_object_save()
/// function
///
/// @see mv_image_object_save()
/// @see mv_image_object_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_object_load(
  ffi.Pointer<ffi.Char> file_name,
  ffi.Pointer<mv_image_object_h> image_object,
) =>
    tizenMvImage.mv_image_object_load(
      file_name,
      image_object,
    );

/// @brief Saves the image object.
///
/// @since_tizen 3.0
/// @remarks @a image_object is saved to the absolute path directory.
/// Use app_get_data_path() for the private app storage path.
/// @param in file_name       Name of the file to path/save the image object
/// @param in image_object    The handle to the image object which will be saved
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_PATH Invalid path
/// @retval #MEDIA_VISION_ERROR_PERMISSION_DENIED Not permitted
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image object handle by calling mv_image_object_create()
/// @post Saved model can be loaded later by calling
/// mv_image_object_load() function
///
/// @see mv_image_object_create()
/// @see mv_image_object_load()
/// @see mv_image_object_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_object_save(
  ffi.Pointer<ffi.Char> file_name,
  mv_image_object_h image_object,
) =>
    tizenMvImage.mv_image_object_save(
      file_name,
      image_object,
    );

/// @brief Sets a label for the image object.
///
/// @since_tizen 3.0
/// @param in image_object   The handle to the image object for which the label
/// will be assigned
/// @param in label          The label which will be assigned to the image
/// object
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image object by using mv_image_object_create()
/// @post Label could be received by using mv_image_object_get_label()
/// @post Release image object by using mv_image_object_destroy()
///
/// @see mv_image_object_get_label()
/// @see mv_image_object_h
/// @see mv_image_object_create()
/// @see mv_image_object_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_object_set_label(
  mv_image_object_h image_object,
  int label,
) =>
    tizenMvImage.mv_image_object_set_label(
      image_object,
      label,
    );

/// @brief Recognizes the given image objects on the source image.
/// @details Use this function to launch image recognition algorithm configured
/// by @a engine_cfg configuration.
///
/// @since_tizen 3.0
/// @param in source              The handle to the source image on which image
/// objects will be recognized
/// @param in image_objects       The set of handles to the image objects which
/// will be processed as targets of recognition
/// @param in number_of_objects   The number of image objects
/// @param in engine_cfg          The handle to the configuration of engine
/// which will be used for recognition. If NULL,
/// then default settings will be used.
/// @param in recognized_cb       The callback which will be called in order to
/// process recognition result
/// @param in user_data           The user data to be passed to the
/// @a recognized_cb
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Source colorspace
/// isn't supported
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create a set of image objects using mv_image_object_create() for
/// each of them and construct (fill / load / clone) them on images that
/// will be recognized
/// @pre Create a source handle by calling mv_create_source() and fill
/// by the image for which recognition will be performed
/// @post mv_image_recognized_cb() will be called to process recognition result
/// @post Release source image by using mv_destroy_source()
/// @post Release image objects by using mv_image_object_destroy() for each
/// handle from @a image_objects set
///
/// @see mv_image_recognized_cb()
/// @see mv_source_h
/// @see mv_create_source()
/// @see mv_destroy_source()
/// @see mv_image_object_h
/// @see mv_image_object_create()
/// @see mv_image_object_destroy()
/// @see mv_engine_config_h
///
/// Module getter: `tizenMvImage`.
int mv_image_recognize(
  mv_source_h source,
  ffi.Pointer<mv_image_object_h> image_objects,
  int number_of_objects,
  mv_engine_config_h engine_cfg,
  mv_image_recognized_cb recognized_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvImage.mv_image_recognize(
      source,
      image_objects,
      number_of_objects,
      engine_cfg,
      recognized_cb,
      user_data,
    );

/// @brief Tracks the given image tracking model on the current frame
/// @details Image tracking on a sequence of frames assumes calling this
/// function for each frame in the correct order.
/// @a tracked_cb will be called  for result processing.
///
/// @since_tizen 3.0
/// @remarks Tracking algorithm is usually using for recognition of image object
/// on the sequence of images that are organized by time. For example,
/// it may be the sequence of frames from a video stream.
/// @remarks If object is lost during the tracking, system tries to find it
/// further for the following frames. Therefore, tracking will be
/// recovered when object appears again.
/// @remarks Previous calls of mv_image_track() for this
/// @a image_tracking_model will affect on current call
/// @param in     source                 The handle to the current image of
/// sequence where image tracking model
/// will be tracked
/// @param in,out image_tracking_model   The handle to the image tracking model
/// which processed as target of tracking
/// @param in     engine_cfg             The handle to the configuration of
/// engine which will be used for tracking.
/// If NULL, then default settings will be
/// used.
/// @param in     tracked_cb             The callback which will receive
/// tracking results
/// @param in     user_data              The user data to be passed to the
/// @a tracked_cb
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Source colorspace
/// isn't supported
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image tracking model by calling
/// mv_image_tracking_model_create() and set target by calling
/// mv_image_tracking_model_set_target()
/// @pre Create a source images by calling mv_create_source() for each of
/// them and construct them based on sequence of images for which will be
/// held image tracking
/// @post @a tracked_cb will be called to process tracking result
/// @post Release image tracking model by using
/// mv_image_tracking_model_destroy()
///
/// @see mv_image_tracked_cb()
/// @see mv_source_h
/// @see mv_image_tracking_model_h
/// @see mv_image_tracking_model_create()
/// @see mv_image_tracking_model_set_target()
/// @see mv_image_tracking_model_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_track(
  mv_source_h source,
  mv_image_tracking_model_h image_tracking_model,
  mv_engine_config_h engine_cfg,
  mv_image_tracked_cb tracked_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvImage.mv_image_track(
      source,
      image_tracking_model,
      engine_cfg,
      tracked_cb,
      user_data,
    );

/// @brief Clones the image tracking model.
///
/// @since_tizen 3.0
/// @remarks @a dst must be released using mv_image_tracking_model_destroy().
/// @param in  src    The handle to the source image tracking model
/// @param out dst    The handle to the destination image tracking model
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create image tracking model handles by calling
/// mv_image_tracking_model_create()
///
/// @see mv_image_tracking_model_create()
/// @see mv_image_tracking_model_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_tracking_model_clone(
  mv_image_tracking_model_h src,
  ffi.Pointer<mv_image_tracking_model_h> dst,
) =>
    tizenMvImage.mv_image_tracking_model_clone(
      src,
      dst,
    );

/// @brief Creates an image tracking model.
///
/// @since_tizen 3.0
/// @param out image_tracking_model    A new handle to the image tracking model
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @post Release image tracking model by using mv_image_tracking_model_destroy()
///
/// @see mv_image_tracking_model_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_tracking_model_create(
  ffi.Pointer<mv_image_tracking_model_h> image_tracking_model,
) =>
    tizenMvImage.mv_image_tracking_model_create(
      image_tracking_model,
    );

/// @brief Destroys the image tracking model.
///
/// @since_tizen 3.0
/// @param in image_tracking_model    The handle to the image tracking model
/// to be destroyed
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image tracking model by using mv_image_tracking_model_create()
///
/// @see mv_image_tracking_model_create()
///
/// Module getter: `tizenMvImage`.
int mv_image_tracking_model_destroy(
  mv_image_tracking_model_h image_tracking_model,
) =>
    tizenMvImage.mv_image_tracking_model_destroy(
      image_tracking_model,
    );

/// @brief Loads an image tracking model from the file.
///
/// @since_tizen 3.0
/// @remarks @a image_tracking_model is loaded from the absolute path directory.
/// Use app_get_data_path() for the private app storage path.
/// @a image_tracking_model must be destroyed using
/// mv_image_tracking_model_destroy().
/// @param in  file_name               Name of path/file to load model
/// @param out image_tracking_model    The handle to the image tracking
/// model to be filled
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_PATH Invalid path
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_VISION_ERROR_PERMISSION_DENIED Not permitted
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Image tracking model handle can be preliminary saved with
/// mv_image_tracking_model_save() function
///
/// @see mv_image_tracking_model_save()
/// @see mv_image_tracking_model_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_tracking_model_load(
  ffi.Pointer<ffi.Char> file_name,
  ffi.Pointer<mv_image_tracking_model_h> image_tracking_model,
) =>
    tizenMvImage.mv_image_tracking_model_load(
      file_name,
      image_tracking_model,
    );

/// @brief Refreshes the state of image tracking model.
/// @details Clears moving history and change state to undetected. This function
/// is usually called each time before tracking is started for the new
/// sequence of sources which is not the direct continuation of the
/// sequence for which tracking has been performed before. Tracking
/// algorithm will try to find image by itself.
///
/// @since_tizen 3.0
/// @param in image_tracking_model   The handle to the image tracking model
/// which will be refreshed
/// @param in engine_cfg             The handle to the configuration of
/// engine which will be used. If NULL,
/// then default settings will be used.
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image tracking model by calling
/// mv_image_tracking_model_create()
/// @post Release image tracking model by using
/// mv_image_tracking_model_destroy()
///
/// @see mv_image_tracking_model_h
/// @see mv_image_tracking_model_create()
/// @see mv_image_track()
/// @see mv_image_tracking_model_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_tracking_model_refresh(
  mv_image_tracking_model_h image_tracking_model,
  mv_engine_config_h engine_cfg,
) =>
    tizenMvImage.mv_image_tracking_model_refresh(
      image_tracking_model,
      engine_cfg,
    );

/// @brief Saves the image tracking model.
///
/// @since_tizen 3.0
/// @remarks @a image_tracking_model is saved to the absolute path directory.
/// Use app_get_data_path() for the private app storage path.
/// @param in file_name               Name of path/file to save the model
/// @param in image_tracking_model    The handle to the image tracking model
/// to be saved
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_PATH Invalid path
/// @retval #MEDIA_VISION_ERROR_PERMISSION_DENIED Not permitted
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image tracking model handle by calling
/// mv_image_tracking_model_create()
/// @post Saved model can be loaded later by calling
/// mv_image_tracking_model_load() function
///
/// @see mv_image_tracking_model_create()
/// @see mv_image_tracking_model_load()
/// @see mv_image_tracking_model_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_tracking_model_save(
  ffi.Pointer<ffi.Char> file_name,
  mv_image_tracking_model_h image_tracking_model,
) =>
    tizenMvImage.mv_image_tracking_model_save(
      file_name,
      image_tracking_model,
    );

/// @brief Sets target of image tracking model.
/// @details Sets image object which will be tracked by using tracking
/// functionality with @a image_tracking_model.
///
/// @since_tizen 3.0
/// @param in image_object            Image object which will be set
/// as target for tracking
/// @param in image_tracking_model    Handle to the image tracking model
/// for which will be set a new target
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create image tracking model by calling
/// mv_image_tracking_model_create()
/// @pre Create an image object using mv_image_object_create() and construct
/// (fill / load / clone) it on image that will be tracking
/// @post Release image object by using mv_image_object_destroy()
/// @post Release image tracking model by using
/// mv_image_tracking_model_destroy()
///
/// @see mv_image_object_h
/// @see mv_image_tracking_model_h
/// @see mv_image_object_create()
/// @see mv_image_object_destroy()
/// @see mv_image_tracking_model_create()
/// @see mv_image_track()
/// @see mv_image_tracking_model_destroy()
///
/// Module getter: `tizenMvImage`.
int mv_image_tracking_model_set_target(
  mv_image_object_h image_object,
  mv_image_tracking_model_h image_tracking_model,
) =>
    tizenMvImage.mv_image_tracking_model_set_target(
      image_object,
      image_tracking_model,
    );

