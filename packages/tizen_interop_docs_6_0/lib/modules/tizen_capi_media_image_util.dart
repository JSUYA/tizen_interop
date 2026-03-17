// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaImageUtil`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-image-util.so.0`.
///
/// Multimedia / Image Util.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_image_util;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Encodes an image and adds the encoded image to the frames of the animated GIF.
/// @since_tizen 5.5
///
/// @remarks This function should be called for each @a image which you want to add to the animated GIF. Each @a image should be the same size.\n
/// The supported colorspace is #IMAGE_UTIL_COLORSPACE_RGBA8888.\n
/// You should call image_util_agif_encode_save_to_file() or image_util_agif_encode_save_to_buffer() to save the animated GIF.\n
/// If you call this function after image_util_agif_encode_save_to_file() or image_util_agif_encode_save_to_buffer() function is called,
/// this function will encode a new animated GIF.
///
/// Parameter handle The handle of encoding an animated GIF
/// Parameter image The handle of the image for each frame
/// Parameter time_delay The time delay between @a image and the next image (in 0.01sec increments)
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_agif_encode_create()
///
/// @post image_util_agif_encode_save_to_file()
/// @post image_util_agif_encode_save_to_buffer()
/// @post image_util_agif_encode_destroy()
///
/// @see image_util_agif_encode_create()
/// @see image_util_agif_encode_save_to_file()
/// @see image_util_agif_encode_save_to_buffer()
/// @see image_util_agif_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_agif_encode_add_frame(
  image_util_agif_encode_h handle,
  image_util_image_h image,
  int time_delay,
) =>
    tizenCapiMediaImageUtil.image_util_agif_encode_add_frame(
      handle,
      image,
      time_delay,
    );

/// @brief Creates a handle for encoding an animated GIF.
/// @since_tizen 5.5
///
/// @remarks The @a handle should be released using image_util_agif_encode_destroy().
///
/// Output parameter handle The handle of encoding an animated GIF
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @post image_util_agif_encode_destroy()
///
/// @see image_util_agif_encode_add_frame()
/// @see image_util_agif_encode_save_to_file()
/// @see image_util_agif_encode_save_to_buffer()
/// @see image_util_agif_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_agif_encode_create(
  ffi.Pointer<image_util_agif_encode_h> handle,
) =>
    tizenCapiMediaImageUtil.image_util_agif_encode_create(
      handle,
    );

/// @brief Destroys the handle for encoding an animated GIF.
/// @since_tizen 5.5
///
/// @remarks Any created animated GIF encoding handle created should be destroyed.
///
/// Parameter handle The handle of encoding an animated GIF
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre image_util_agif_encode_create()
///
/// @see image_util_agif_encode_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_agif_encode_destroy(
  image_util_agif_encode_h handle,
) =>
    tizenCapiMediaImageUtil.image_util_agif_encode_destroy(
      handle,
    );

/// @brief Saves the animated GIF image to the buffer.
/// @details After the data has been written to a buffer,
/// the file cannot be modified. In other words,\n
/// it is not possible to add frames to the buffer.\n
/// Saving animation flushes the frames that has been added to the encoder.\n
/// However, the encoder can be still used after the data is written.\n
/// For example, although you write the data to one buffer(B0),\n
/// you can do the following operations:\n
///
/// 1. Add frames 1-10 to the encoder.\n
/// 2. Save the data in the encoder to another buffer(B1). 10 frames will be saved.\n
/// 3. Add more frames (11-20) to the same encoder.\n
/// 4. Save the data in the encoder to the other buffer (B2)\n
/// It is not possible to save the changed data to B1 file used in step 4.
/// @since_tizen 5.5
///
/// @remarks The @a buffer should be released using free() after using it.
///
/// Parameter handle The handle of encoding an animated GIF
/// Output parameter buffer The buffer in which the animated GIF is saved
/// Output parameter buffer_size The size of the buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre image_util_agif_encode_create()
///
/// @post image_util_agif_encode_destroy()
///
/// @see image_util_agif_encode_create()
/// @see image_util_agif_encode_add_frame()
/// @see image_util_agif_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_agif_encode_save_to_buffer(
  image_util_agif_encode_h handle,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> buffer,
  ffi.Pointer<ffi.Size> buffer_size,
) =>
    tizenCapiMediaImageUtil.image_util_agif_encode_save_to_buffer(
      handle,
      buffer,
      buffer_size,
    );

/// @brief Saves the animated GIF image to the file.
/// @details After the data has been written to a file,
/// the file cannot be modified. In other words,\n
/// it is not possible to add frames to the file.\n
/// Saving animation flushes the frames that has been added to the encoder.\n
/// However, the encoder can be still used after the data is written.\n
/// For example, although you write the data to one file(B0),\n
/// you can do the following operations:\n
///
/// 1. Add frames 1-10 to the encoder.\n
/// 2. Save the data in the encoder to another file(B1). 10 frames will be saved.\n
/// 3. Add more frames (11-20) to the same encoder.\n
/// 4. Save the data in the encoder to the other file (B2)\n
/// It is not possible to save the changed data to B1 file used in step 4.
/// @since_tizen 5.5
///
/// @remarks %http://tizen.org/privilege/mediastorage is required if @a file_path value is media storage.\n
/// %http://tizen.org/privilege/externalstorage is required if @a file_path value is external storage.
///
/// Parameter handle The handle of encoding an animated GIF
/// Parameter file_path The file path for saving the animated GIF
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IMAGE_UTIL_ERROR_NO_SUCH_FILE No such file
///
/// @pre image_util_agif_encode_create()
///
/// @post image_util_agif_encode_destroy()
///
/// @see image_util_agif_encode_create()
/// @see image_util_agif_encode_add_frame()
/// @see image_util_agif_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_agif_encode_save_to_file(
  image_util_agif_encode_h handle,
  ffi.Pointer<ffi.Char> file_path,
) =>
    tizenCapiMediaImageUtil.image_util_agif_encode_save_to_file(
      handle,
      file_path,
    );

/// @brief Encodes an image and adds image to the frame of the animated image.
/// @since_tizen 6.0
///
/// @remarks This function should be called for each @a image which you want to add to the animated WEBP or GIF. Each @a image should be the same size.\n
/// The supported colorspaces are #IMAGE_UTIL_COLORSPACE_RGBA8888, #IMAGE_UTIL_COLORSPACE_ARGB8888, #IMAGE_UTIL_COLORSPACE_BGRA8888 and #IMAGE_UTIL_COLORSPACE_RGBA8888 for animated WEBP.\n
/// The supported colorspace is #IMAGE_UTIL_COLORSPACE_RGBA8888 for animated GIF.\n
/// You should call image_util_anim_encode_save_to_file() or image_util_anim_encode_save_to_buffer() to save the animated WEBP.\n
/// If you call this function after image_util_anim_encode_save_to_file() or image_util_anim_encode_save_to_buffer() function is called,
/// this function will encode a new animated WEBP and GIF.
///
/// Parameter handle The handle of animation encoder
/// Parameter image The handle of the image for each frame
/// Parameter time_delay The time delay between @a image and the next image (in 1ms increments for WEBP and 10ms increments for GIF)
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre image_util_anim_encode_create()
///
/// @post image_util_anim_encode_save_to_file()
/// @post image_util_anim_encode_save_to_buffer()
///
/// @see image_util_anim_encode_save_to_file()
/// @see image_util_anim_encode_save_to_buffer()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_anim_encode_add_frame(
  image_util_anim_encode_h handle,
  image_util_image_h image,
  int time_delay,
) =>
    tizenCapiMediaImageUtil.image_util_anim_encode_add_frame(
      handle,
      image,
      time_delay,
    );

/// @brief Creates a handle for encoding animation.
/// @since_tizen 6.0
///
/// @remarks The @a handle should be released using image_util_anim_encode_destroy().
///
/// Parameter image_type The type of output image to create animation
/// Output parameter handle The handle of animation encoder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @see image_util_anim_encode_add_frame()
/// @see image_util_anim_encode_save_to_file()
/// @see image_util_anim_encode_save_to_buffer()
/// @see image_util_anim_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_anim_encode_create(
  int image_type,
  ffi.Pointer<image_util_anim_encode_h> handle,
) =>
    tizenCapiMediaImageUtil.image_util_anim_encode_create(
      image_type,
      handle,
    );

/// @brief Destroys the handle for encoding animation.
/// @since_tizen 6.0
///
/// @remarks Any created animated encoder handle created should be destroyed.
///
/// Parameter handle The handle of animation encoder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre image_util_anim_encode_create()
///
/// @see image_util_anim_encode_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_anim_encode_destroy(
  image_util_anim_encode_h handle,
) =>
    tizenCapiMediaImageUtil.image_util_anim_encode_destroy(
      handle,
    );

/// @brief Saves the animation WEBP or GIF image to the buffer.
/// @details After the data has been written to a buffer,
/// the file cannot be modified. In other words,\n
/// it is not possible to add frames to the buffer.\n
/// Saving animation flushes the frames that has been added to the encoder.\n
/// However, the encoder can be still used after the data is written.\n
/// For example, although you write the data to one buffer(B0),\n
/// you can do the following operations:\n
///
/// 1. Add frames 1-10 to the encoder.\n
/// 2. Save the data in the encoder to another buffer(B1). 10 frames will be saved.\n
/// 3. Add more frames (11-20) to the same encoder.\n
/// 4. Save the data in the encoder to the other buffer (B2)\n
/// It is not possible to save the changed data to B1 file used in step 4.
/// @since_tizen 6.0
///
/// @remarks The @a buffer should be released using free() after using it.
///
/// Parameter handle The handle of encoding an animated WEBP or GIF
/// Output parameter buffer The buffer in which the animated WEBP or GIF is saved
/// Output parameter buffer_size The size of the buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_anim_encode_create()
///
/// @see image_util_anim_encode_add_frame()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_anim_encode_save_to_buffer(
  image_util_anim_encode_h handle,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> buffer,
  ffi.Pointer<ffi.Size> buffer_size,
) =>
    tizenCapiMediaImageUtil.image_util_anim_encode_save_to_buffer(
      handle,
      buffer,
      buffer_size,
    );

/// @brief Saves the animated WEBP or GIF image to the file.
/// @details After the data has been written to a file,
/// the file cannot be modified. In other words,\n
/// it is not possible to add frames to the file.\n
/// Saving animation flushes the frames that has been added to the encoder.\n
/// However, the encoder can be still used after the data is written.\n
/// For example, although you write the data to one file(B0),\n
/// you can do the following operations:\n
///
/// 1. Add frames 1-10 to the encoder.\n
/// 2. Save the data in the encoder to another file(B1). 10 frames will be saved.\n
/// 3. Add more frames (11-20) to the same encoder.\n
/// 4. Save the data in the encoder to the other file (B2)\n
/// It is not possible to save the changed data to B1 file used in step 4.
/// @since_tizen 6.0
///
/// @remarks %http://tizen.org/privilege/mediastorage is required if @a file_path value is media storage.\n
/// %http://tizen.org/privilege/externalstorage is required if @a file_path value is external storage.
///
/// Parameter handle The handle of encoding an animated WEBP or GIF
/// Parameter file_path The file path for saving the animated WEBP or GIF
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_NO_SUCH_FILE No such file
///
/// @pre image_util_anim_encode_create()
///
/// @see image_util_anim_encode_add_frame()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_anim_encode_save_to_file(
  image_util_anim_encode_h handle,
  ffi.Pointer<ffi.Char> file_path,
) =>
    tizenCapiMediaImageUtil.image_util_anim_encode_save_to_file(
      handle,
      file_path,
    );

/// @brief Sets a background color of the animation.
/// @since_tizen 6.0
///
/// @remarks This function should be called before image_util_anim_encode_add_frame() is called.
///
/// Parameter handle The handle of animation encoder
/// Parameter r The red color of the background
/// Parameter g The green color of the background
/// Parameter b The blue color of the background
/// Parameter a The alpha color of the background
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_anim_encode_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_anim_encode_set_background_color(
  image_util_anim_encode_h handle,
  int r,
  int g,
  int b,
  int a,
) =>
    tizenCapiMediaImageUtil.image_util_anim_encode_set_background_color(
      handle,
      r,
      g,
      b,
      a,
    );

/// @brief Sets a number of times to repeat the animation.
/// @since_tizen 6.0
///
/// @remarks This function should be called before image_util_anim_encode_add_frame() is called.
///
/// Parameter handle The handle of animation encoder
/// Parameter loop_count The number of times to repeat the animation
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_anim_encode_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_anim_encode_set_loop_count(
  image_util_anim_encode_h handle,
  int loop_count,
) =>
    tizenCapiMediaImageUtil.image_util_anim_encode_set_loop_count(
      handle,
      loop_count,
    );

/// @brief Sets lossless compression of animation.
/// @since_tizen 6.0
///
/// @remarks This function should be called before image_util_anim_encode_add_frame() is called.
///
/// Parameter handle The handle of animation encoder
/// Parameter lossless The flag determining whether the compression is lossless or lossy: true for lossless, false for lossy
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_anim_encode_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_anim_encode_set_lossless(
  image_util_anim_encode_h handle,
  bool lossless,
) =>
    tizenCapiMediaImageUtil.image_util_anim_encode_set_lossless(
      handle,
      lossless,
    );

/// @deprecated Deprecated since 5.5.
/// @brief Calculates the size of the image buffer for the specified resolution and colorspace.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter width The image width
/// Parameter height The image height
/// Parameter colorspace The image colorspace
/// Output parameter size The Calculated buffer size
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see image_util_transform_run()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_calculate_buffer_size(
  int width,
  int height,
  int colorspace,
  ffi.Pointer<ffi.UnsignedInt> size,
) =>
    tizenCapiMediaImageUtil.image_util_calculate_buffer_size(
      width,
      height,
      colorspace,
      size,
    );

/// @brief Clones an image handle.
/// @since_tizen 5.5
///
/// @remarks The @a dst should be released using image_util_destroy_image().
///
/// Parameter src		The handle of the image
/// Output parameter dst		A handle of the cloned image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see image_util_destroy_image()
/// @see image_util_get_image()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_clone_image(
  image_util_image_h src,
  ffi.Pointer<image_util_image_h> dst,
) =>
    tizenCapiMediaImageUtil.image_util_clone_image(
      src,
      dst,
    );

/// @brief Creates an image handle.
/// @since_tizen 5.5
///
/// @remarks The @a image should be released using image_util_destroy_image().
///
/// Parameter width		The width of image
/// Parameter height		The height of image
/// Parameter colorspace	The colorspace of image
/// Parameter data		The data of image
/// Parameter data_size	The size of data
/// Output parameter image		A handle of image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see image_util_destroy_image()
/// @see image_util_get_image()
/// @see image_util_clone_image()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_create_image(
  int width,
  int height,
  int colorspace,
  ffi.Pointer<ffi.UnsignedChar> data,
  int data_size,
  ffi.Pointer<image_util_image_h> image,
) =>
    tizenCapiMediaImageUtil.image_util_create_image(
      width,
      height,
      colorspace,
      data,
      data_size,
      image,
    );

/// @brief Creates a handle of image util decoding.
/// @details This function creates a handle of image util decoding.
/// @since_tizen 3.0
///
/// @remarks The @a handle should be released using image_util_decode_destroy().
///
/// Output parameter handle The handle of image util decoding
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see image_util_decode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_create(
  ffi.Pointer<image_util_decode_h> handle,
) =>
    tizenCapiMediaImageUtil.image_util_decode_create(
      handle,
    );

/// @brief Destroys the image decoding handle.
/// @since_tizen 3.0
///
/// @remarks Any image handle created should be destroyed.
///
/// Parameter handle The handle of image util decoding
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_decode_create()
///
/// @see image_util_decode_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_destroy(
  image_util_decode_h handle,
) =>
    tizenCapiMediaImageUtil.image_util_decode_destroy(
      handle,
    );

/// @deprecated Deprecated since 5.5. Use image_util_decode_run2() instead.
/// @brief Starts decoding of the image and fills the output buffer set using image_util_decode_set_output_buffer().
/// @since_tizen 3.0
///
/// @remarks The output will be stored in the pointer set using image_util_decode_set_output_buffer().\n
/// The function executes synchronously.\n
/// When any of the pre-condition are not called, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.
///
/// Parameter handle The handle of image util decoding
/// Output parameter width Width of the decoded image
/// Output parameter height Height of the decoded image
/// Output parameter size Size of the decoded image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_decode_create()
/// @pre image_util_decode_set_input_buffer() / image_util_decode_set_input_path().
/// @pre image_util_decode_set_output_buffer()
///
/// @post image_util_decode_destroy()
///
/// @see image_util_decode_create()
/// @see image_util_decode_set_input_path()
/// @see image_util_decode_set_input_buffer()
/// @see image_util_decode_set_output_buffer()
/// @see image_util_decode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_run(
  image_util_decode_h handle,
  ffi.Pointer<ffi.UnsignedLong> width,
  ffi.Pointer<ffi.UnsignedLong> height,
  ffi.Pointer<ffi.UnsignedLongLong> size,
) =>
    tizenCapiMediaImageUtil.image_util_decode_run(
      handle,
      width,
      height,
      size,
    );

/// @brief Decodes the image with the given decode handle.
/// @details This function decodes the image synchronously.
/// @since_tizen 5.5
///
/// @remarks If the decoding fails, the @a image will be @c NULL.\n
/// The @a image should be released using image_util_destroy_image().\n
/// If any of the required functions listed in the preconditions section has not been called, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.
///
/// Parameter handle The handle of image util decoding
/// Output parameter image The decoded image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_decode_create()
/// @pre image_util_decode_set_input_buffer() / image_util_decode_set_input_path().
///
/// @post image_util_decode_destroy()
///
/// @see image_util_decode_create()
/// @see image_util_decode_set_input_path()
/// @see image_util_decode_set_input_buffer()
/// @see image_util_decode_destroy()
/// @see image_util_destroy_image()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_run2(
  image_util_decode_h handle,
  ffi.Pointer<image_util_image_h> image,
) =>
    tizenCapiMediaImageUtil.image_util_decode_run2(
      handle,
      image,
    );

/// @deprecated Deprecated since 5.5. Use image_util_decode_run_async2() instead.
/// @brief Starts decoding of the image and fills the output buffer set using image_util_decode_set_output_buffer().
/// @since_tizen 3.0
///
/// @remarks The output will be stored in the pointer set using image_util_decode_set_output_buffer().\n
/// The function executes asynchronously, which contains complete callback.\n
/// When any of the pre-condition are not called, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.
///
/// Parameter handle The handle of image util decoding
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_decode_create()
/// @pre image_util_decode_set_input_buffer() / image_util_decode_set_input_path().
/// @pre image_util_decode_set_output_buffer()
///
/// @post image_util_decode_destroy()
///
/// @see image_util_decode_create()
/// @see image_util_decode_set_input_path()
/// @see image_util_decode_set_input_buffer()
/// @see image_util_decode_set_output_buffer()
/// @see image_util_decode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_run_async(
  image_util_decode_h handle,
  image_util_decode_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaImageUtil.image_util_decode_run_async(
      handle,
      callback,
      user_data,
    );

/// @brief Starts decoding of the image with the given decode handle.
/// @details This function decodes the image asynchronously.
/// @since_tizen 5.5
///
/// @remarks If the decoding fails, the image_util_decode_completed2_cb() will be called with @c NULL image and a non-zero error_code.\n
/// If any of the required functions listed in the preconditions section has not been called, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.
///
/// Parameter handle The handle of image util decoding
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_decode_create()
/// @pre image_util_decode_set_input_buffer() / image_util_decode_set_input_path().
///
/// @post image_util_decode_destroy()
///
/// @see image_util_decode_create()
/// @see image_util_decode_set_input_path()
/// @see image_util_decode_set_input_buffer()
/// @see image_util_decode_destroy()
/// @see image_util_destroy_image()
/// @see image_util_decode_completed2_cb()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_run_async2(
  image_util_decode_h handle,
  image_util_decode_completed2_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaImageUtil.image_util_decode_run_async2(
      handle,
      callback,
      user_data,
    );

/// @brief Sets the decoded image colorspace format.
/// @since_tizen 3.0
///
/// @remarks The default colorspace is #IMAGE_UTIL_COLORSPACE_RGBA8888.\n
/// Use image_util_foreach_supported_colorspace to get supported colorspaces for each image format.\n
/// Errors would be returned if not supported.
///
/// Parameter handle The handle of image util decoding
/// Parameter colorspace The decoded image colorspace
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_decode_create()
/// @pre image_util_decode_set_input_path() / image_util_decode_set_input_buffer()
///
/// @post image_util_decode_run2() / image_util_decode_run_async2()
/// @post image_util_decode_destroy()
///
/// @see image_util_supported_colorspace_cb()
/// @see image_util_foreach_supported_colorspace()
/// @see image_util_decode_create()
/// @see image_util_decode_set_input_path()
/// @see image_util_decode_set_input_buffer()
/// @see image_util_decode_run2()
/// @see image_util_decode_run_async2()
/// @see image_util_decode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_set_colorspace(
  image_util_decode_h handle,
  int colorspace,
) =>
    tizenCapiMediaImageUtil.image_util_decode_set_colorspace(
      handle,
      colorspace,
    );

/// @brief Sets the input buffer from which to decode.
/// @since_tizen 3.0
///
/// @remarks One of image_util_decode_set_input_path() or image_util_decode_set_input_buffer() should be set.\n
/// If both are set then the latest input set, is considered.\n
/// Finds out image type by reading the header of the image provided in input buffer.\n
/// Since 6.0, this module supports WEBP image format.
///
/// Parameter handle The handle of image util decoding
/// Parameter src_buffer The input image buffer
/// Parameter src_size The input image buffer size
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_decode_create()
///
/// @post image_util_decode_run2() / image_util_decode_run_async2()
/// @post image_util_decode_destroy()
///
/// @see image_util_decode_create()
/// @see image_util_decode_run2()
/// @see image_util_decode_run_async2()
/// @see image_util_decode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_set_input_buffer(
  image_util_decode_h handle,
  ffi.Pointer<ffi.UnsignedChar> src_buffer,
  int src_size,
) =>
    tizenCapiMediaImageUtil.image_util_decode_set_input_buffer(
      handle,
      src_buffer,
      src_size,
    );

/// @brief Sets the input file path from which to decode.
/// @since_tizen 3.0
///
/// @remarks One of image_util_decode_set_input_path() or image_util_decode_set_input_buffer() should be set.\n
/// If both are set then the latest input set, is considered.\n
/// %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage.\n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.\n
/// Finds out image type by reading the header of the image provided in input path.\n
/// Since 6.0, this module supports WEBP image format.
///
/// Parameter handle The handle of image util decoding
/// Parameter path The path to input image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
/// @retval #IMAGE_UTIL_ERROR_NO_SUCH_FILE No such file
///
/// @pre image_util_decode_create()
///
/// @post image_util_decode_run2() / image_util_decode_run_async2()
/// @post image_util_decode_destroy()
///
/// @see image_util_decode_create()
/// @see image_util_decode_run2()
/// @see image_util_decode_run_async2()
/// @see image_util_decode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_set_input_path(
  image_util_decode_h handle,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiMediaImageUtil.image_util_decode_set_input_path(
      handle,
      path,
    );

/// @brief Sets the downscale value at which JPEG image should be decoded.
/// @since_tizen 3.0
///
/// @remarks This is API is supported only for JPEG decoding.
///
/// Parameter handle The handle of image util decoding
/// Parameter down_scale The downscale at which image is to be decoded
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_decode_create()
/// @pre image_util_decode_set_input_path() / image_util_decode_set_input_buffer()
///
/// @post image_util_decode_run2() / image_util_decode_run_async2()
/// @post image_util_decode_destroy()
///
/// @see image_util_decode_create()
/// @see image_util_decode_set_input_path()
/// @see image_util_decode_set_input_buffer()
/// @see image_util_decode_run2()
/// @see image_util_decode_run_async2()
/// @see image_util_decode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_set_jpeg_downscale(
  image_util_decode_h handle,
  int down_scale,
) =>
    tizenCapiMediaImageUtil.image_util_decode_set_jpeg_downscale(
      handle,
      down_scale,
    );

/// @deprecated Deprecated since 5.5.
/// @brief Sets the output buffer to which the decoded buffer will be written to.
/// @since_tizen 3.0
///
/// @remarks Either image_util_decode_set_input_path() or image_util_decode_set_input_buffer() should be set.\n
/// By default the decoded output buffer colorspace will be #IMAGE_UTIL_COLORSPACE_RGBA8888.
/// Use image_util_decode_set_colorspace() to change the colorspace.
/// @a dst_buffer should be released after @c image_util_decode_run() or @c image_util_decode_run_async().
///
/// Parameter handle The handle of image util decoding
/// Parameter dst_buffer The decoded output buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_decode_create()
///
/// @post image_util_decode_run() / image_util_decode_run_async()
/// @post image_util_decode_destroy()
///
/// @see image_util_decode_create()
/// @see image_util_decode_set_input_path()
/// @see image_util_decode_set_input_buffer()
/// @see image_util_decode_run()
/// @see image_util_decode_run_async()
/// @see image_util_decode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_decode_set_output_buffer(
  image_util_decode_h handle,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> dst_buffer,
) =>
    tizenCapiMediaImageUtil.image_util_decode_set_output_buffer(
      handle,
      dst_buffer,
    );

/// @brief Destroys an image handle.
/// @details The function frees all resources related to the @a image. The image handle no longer can be used to perform any operations.
/// A new image handle has to be created before the next usage.
/// @since_tizen 5.5
///
/// Parameter image The handle of the image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see image_util_create_image()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_destroy_image(
  image_util_image_h image,
) =>
    tizenCapiMediaImageUtil.image_util_destroy_image(
      image,
    );

/// @brief Creates a handle of image util encoding.
/// @details This function creates a handle of image util encoding.
/// @since_tizen 3.0
///
/// @remarks The @a handle should be released using image_util_encode_destroy().
///
/// Parameter image_type The type of output image for which to create encode handle.
/// Output parameter handle The handle of image util encoding
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @post image_util_encode_run_to_file()
/// @post image_util_encode_run_to_buffer()
/// @post image_util_encode_run_async_to_file()
/// @post image_util_encode_run_async_to_buffer()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_run_to_file()
/// @see image_util_encode_run_to_buffer()
/// @see image_util_encode_run_async_to_file()
/// @see image_util_encode_run_async_to_buffer()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_create(
  int image_type,
  ffi.Pointer<image_util_encode_h> handle,
) =>
    tizenCapiMediaImageUtil.image_util_encode_create(
      image_type,
      handle,
    );

/// @brief Destroys the image encoding handle.
/// @since_tizen 3.0
///
/// @remarks Any image handle created should be destroyed.
///
/// Parameter handle The handle of image util encoding
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_encode_create()
///
/// @see image_util_encode_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_destroy(
  image_util_encode_h handle,
) =>
    tizenCapiMediaImageUtil.image_util_encode_destroy(
      handle,
    );

/// @deprecated Deprecated since 5.5. Use image_util_encode_run_to_file() or image_util_encode_run_to_buffer() instead.
/// @brief Starts encoding of the image and fills the output buffer, set using image_util_encode_set_output_buffer() or image_util_encode_set_output_path().
/// @since_tizen 3.0
///
/// @remarks The output will be stored in the pointer set to image_util_encode_set_output_buffer() or image_util_encode_set_output_path().\n
/// The function executes synchronously.\n
/// When any of the functions at the pre-condition are not called, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.\n
/// In case of animated GIF encoding, image_util_encode_set_resolution(), image_util_encode_set_input_buffer() and\n
/// image_util_encode_set_gif_frame_delay_time() MUST be called for each frame.
/// In case of animated GIF encoding, call image_util_encode_run() for each frame to encode progressively.
///
/// Parameter handle The handle of image util encoding
/// Output parameter size Size of the encoded image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_encode_create()
/// @pre image_util_encode_set_resolution()
/// @pre image_util_encode_set_input_buffer()
/// @pre image_util_encode_set_output_buffer() / image_util_encode_set_output_path()
///
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_set_resolution()
/// @see image_util_encode_set_input_buffer()
/// @see image_util_encode_set_gif_frame_delay_time()
/// @see image_util_encode_set_output_path()
/// @see image_util_encode_set_output_buffer()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_run(
  image_util_encode_h handle,
  ffi.Pointer<ffi.UnsignedLongLong> size,
) =>
    tizenCapiMediaImageUtil.image_util_encode_run(
      handle,
      size,
    );

/// @deprecated Deprecated since 5.5. Use image_util_encode_run_async_to_file() or image_util_encode_run_async_to_buffer() instead.
/// @brief Starts encoding of the image and fills the output buffer, set using image_util_encode_set_output_buffer() or image_util_encode_set_output_path().
/// @since_tizen 3.0
///
/// @remarks The output will be stored in the pointer set to image_util_encode_set_output_buffer() or image_util_encode_set_output_path().\n
/// The function executes asynchronously, which contains complete callback.\n
/// When any of the functions at the pre-condition are not called, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.\n
/// In case of animated GIF encoding, image_util_encode_set_resolution(), image_util_encode_set_input_buffer() and\n
/// image_util_encode_set_gif_frame_delay_time() MUST be called for each frame.
/// In case of animated GIF encoding, call image_util_encode_run_async() for each frame to encode progressively.
///
/// Parameter handle The handle of image util encoding
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_encode_create()
/// @pre image_util_encode_set_resolution()
/// @pre image_util_encode_set_input_buffer()
/// @pre image_util_encode_set_output_buffer() / image_util_encode_set_output_path()
///
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_set_resolution()
/// @see image_util_encode_set_input_buffer()
/// @see image_util_encode_set_gif_frame_delay_time()
/// @see image_util_encode_set_output_path()
/// @see image_util_encode_set_output_buffer()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_run_async(
  image_util_encode_h handle,
  image_util_encode_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaImageUtil.image_util_encode_run_async(
      handle,
      callback,
      user_data,
    );

/// @brief Encodes the image and save it to a buffer in the given encoding handle asynchronously.
/// @details The output will be stored in a buffer provided by the @a completed_cb callback.
/// @since_tizen 5.5
///
/// @remarks If any functions at the pre-condition are not called first, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.\n
/// The only supported colorspace for BMP and GIF is #IMAGE_UTIL_COLORSPACE_RGBA8888.\n
/// To get supported colorspaces for JPEG format, you can use image_util_foreach_supported_colorspace().\n
/// Before 6.0, #IMAGE_UTIL_COLORSPACE_RGBA8888 was the only supported colorspace for PNG. But since 6.0, this module supports more colorspaces for PNG.
/// To get supported colorspaces for PNG, you can use image_util_foreach_supported_colorspace().\n
/// Since 6.0, this module supports WEBP, you can use image_util_foreach_supported_colorspace() to get supported colorspaces for WEBP.\n
///
/// Parameter handle The handle of image util encoding
/// Parameter image The image handle for encoding
/// Parameter completed_cb The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_run_async_to_buffer(
  image_util_encode_h handle,
  image_util_image_h image,
  image_util_encode_to_buffer_completed_cb completed_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaImageUtil.image_util_encode_run_async_to_buffer(
      handle,
      image,
      completed_cb,
      user_data,
    );

/// @brief Encodes the image and save it to a file in the given encoding handle asynchronously.
/// @details The output will be stored in @a file_path. And the function executes asynchronously.
/// @since_tizen 5.5
///
/// @remarks If any functions at the pre-condition are not called first, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.\n
/// The only supported colorspace for BMP and GIF is #IMAGE_UTIL_COLORSPACE_RGBA8888.\n
/// To get supported colorspaces for JPEG format, you can use image_util_foreach_supported_colorspace().\n
/// %http://tizen.org/privilege/mediastorage is required if @a file_path value is media storage.\n
/// %http://tizen.org/privilege/externalstorage is required if @a file_path value is external storage.\n
/// Before 6.0, #IMAGE_UTIL_COLORSPACE_RGBA8888 was the only supported colorspace for PNG. But since 6.0, this module supports more colorspaces for PNG.
/// To get supported colorspaces for PNG, you can use image_util_foreach_supported_colorspace().\n
/// Since 6.0, this module supports WEBP, you can use image_util_foreach_supported_colorspace() to get supported colorspaces for WEBP.\n
///
/// Parameter handle The handle of image util encoding
/// Parameter image The image handle for encoding
/// Parameter file_path The file path for encoding image
/// Parameter completed_cb The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_run_async_to_file(
  image_util_encode_h handle,
  image_util_image_h image,
  ffi.Pointer<ffi.Char> file_path,
  image_util_encode_to_file_completed_cb completed_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaImageUtil.image_util_encode_run_async_to_file(
      handle,
      image,
      file_path,
      completed_cb,
      user_data,
    );

/// @brief Encodes the image to save it to a buffer in the given encoding handle.
/// @details The function executes synchronously.
/// @since_tizen 5.5
///
/// @remarks If any functions at the pre-condition are not called first, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.\n
/// The @a buffer should be released using free().\n
/// The only supported colorspace for BMP and GIF is #IMAGE_UTIL_COLORSPACE_RGBA8888.\n
/// To get supported colorspaces for JPEG format, you can use image_util_foreach_supported_colorspace().\n
/// Before 6.0, #IMAGE_UTIL_COLORSPACE_RGBA8888 was the only supported colorspace for PNG. But since 6.0, this module supports more colorspaces for PNG.
/// To get supported colorspaces for PNG, you can use image_util_foreach_supported_colorspace().\n
/// Since 6.0, this module supports WEBP, you can use image_util_foreach_supported_colorspace() to get supported colorspaces for WEBP.\n
///
/// Parameter handle The handle of image util encoding
/// Parameter image The image handle for encoding
/// Output parameter buffer The buffer that encoded image is stored
/// Output parameter buffer_size The size of the buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_run_to_buffer(
  image_util_encode_h handle,
  image_util_image_h image,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> buffer,
  ffi.Pointer<ffi.Size> buffer_size,
) =>
    tizenCapiMediaImageUtil.image_util_encode_run_to_buffer(
      handle,
      image,
      buffer,
      buffer_size,
    );

/// @brief Encodes the image and save it to a file in the given encoding handle.
/// @details The function executes synchronously.
/// @since_tizen 5.5
///
/// @remarks If any functions at the pre-condition are not called first, #IMAGE_UTIL_ERROR_INVALID_PARAMETER is returned.\n
/// The only supported colorspace for BMP and GIF is #IMAGE_UTIL_COLORSPACE_RGBA8888.\n
/// To get supported colorspaces for JPEG format, you can use image_util_foreach_supported_colorspace().\n
/// %http://tizen.org/privilege/mediastorage is required if @a file_path value is media storage.\n
/// %http://tizen.org/privilege/externalstorage is required if @a file_path value is external storage.\n
/// Before 6.0, #IMAGE_UTIL_COLORSPACE_RGBA8888 was the only supported colorspace for PNG. But since 6.0, this module supports more colorspaces for PNG.
/// To get supported colorspaces for PNG, you can use image_util_foreach_supported_colorspace().\n
/// Since 6.0, this module supports WEBP, you can use image_util_foreach_supported_colorspace() to get supported colorspaces for WEBP.\n
///
/// Parameter handle The handle of image util encoding
/// Parameter image The image handle for encoding
/// Parameter file_path The file path for encoding image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_PERMISSION_DENIED Permission denied
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_run_to_file(
  image_util_encode_h handle,
  image_util_image_h image,
  ffi.Pointer<ffi.Char> file_path,
) =>
    tizenCapiMediaImageUtil.image_util_encode_run_to_file(
      handle,
      image,
      file_path,
    );

/// @deprecated Deprecated since 5.5. Use image_util_create_image() instead.
/// @brief Sets the colorspace format for image encoding.
/// @since_tizen 3.0
///
/// @remarks The default colorspace is #IMAGE_UTIL_COLORSPACE_RGBA8888.\n
/// Use image_util_foreach_supported_colorspace() to get supported colorspaces for each image format.\n
/// Errors would be returned if not supported.
///
/// Parameter handle The handle of image util encoding
/// Parameter colorspace The colorspace of the input image to encode
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_supported_colorspace_cb()
/// @see image_util_foreach_supported_colorspace()
/// @see image_util_encode_create()
/// @see image_util_encode_set_resolution()
/// @see image_util_encode_set_input_buffer()
/// @see image_util_encode_set_output_path()
/// @see image_util_encode_set_output_buffer()
/// @see image_util_encode_run()
/// @see image_util_encode_run_async()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_colorspace(
  image_util_encode_h handle,
  int colorspace,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_colorspace(
      handle,
      colorspace,
    );

/// @deprecated Deprecated since 5.5. Use image_util_agif_encode_add_frame() instead.
/// @brief Sets the time delay between each frame in the encoded animated GIF image.
/// @since_tizen 3.0
///
/// @remarks In case animated GIF image if this is not set then there will be no delay between each frame.\n
/// This should be set for each frame in the animated GIF image.\n
/// This can be set a different value for each frame, which results in different delay time between different frames.
///
/// Parameter handle The handle of image util encoding
/// Parameter delay_time Time delay between each frame in the encoded image, in 0.01sec units.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_set_resolution()
/// @see image_util_encode_set_input_buffer()
/// @see image_util_encode_set_output_path()
/// @see image_util_encode_set_output_buffer()
/// @see image_util_encode_run()
/// @see image_util_encode_run_async()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_gif_frame_delay_time(
  image_util_encode_h handle,
  int delay_time,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_gif_frame_delay_time(
      handle,
      delay_time,
    );

/// @deprecated Deprecated since 5.5. Use image_util_create_image() instead.
/// @brief Sets the input buffer from which to encode.
/// @since_tizen 3.0
///
/// @remarks Either image_util_encode_set_output_path() or image_util_encode_set_output_buffer() should be set.\n
/// By default the input buffer colorspace will be considered as #IMAGE_UTIL_COLORSPACE_RGBA8888.\n
/// Use image_util_encode_set_colorspace() to change the colorspace.\n
/// While encoding animated GIF image, input buffer should be set for each frame.
///
/// Parameter handle The handle of image util decoding
/// Parameter src_buffer The input image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_set_resolution()
/// @see image_util_encode_set_output_path()
/// @see image_util_encode_set_output_buffer()
/// @see image_util_encode_run()
/// @see image_util_encode_run_async()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_input_buffer(
  image_util_encode_h handle,
  ffi.Pointer<ffi.UnsignedChar> src_buffer,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_input_buffer(
      handle,
      src_buffer,
    );

/// @deprecated Deprecated since 5.5. Use image_util_encode_run_to_buffer() or image_util_encode_run_async_to_buffer() instead.
/// @brief Sets the output buffer to which to encoded buffer will be written to.
/// @since_tizen 3.0
///
/// @remarks One of image_util_encode_set_output_path() or image_util_encode_set_output_buffer() should be set.\n
/// If both are set then the latest output set is considered.\n
/// Before 4.0, output buffer setting is not supported for BMP. #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT will be returned for BMP.\n
/// Since 4.0, output buffer setting has been supported for BMP. Applications can set the output buffer to write encoded BMP.\n
/// In case of GIF encoding, the output buffer will be completely available only after image_util_encode_destroy().
/// @a dst_buffer should be released after @c image_util_encode_run() or @c image_util_encode_run_async().
///
/// Parameter handle The handle of image util encoding
/// Parameter dst_buffer The output image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_set_resolution()
/// @see image_util_encode_set_input_buffer()
/// @see image_util_encode_run()
/// @see image_util_encode_run_async()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_output_buffer(
  image_util_encode_h handle,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> dst_buffer,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_output_buffer(
      handle,
      dst_buffer,
    );

/// @deprecated Deprecated since 5.5. Use image_util_encode_run_to_file() or image_util_encode_run_async_to_file() instead.
/// @brief Sets the output path to which to encoded buffer will be written to.
/// @since_tizen 3.0
///
/// @remarks One of image_util_encode_set_output_path() or image_util_encode_set_output_buffer() should be set.\n
/// If both are set then the latest output set is considered.\n
/// %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage.\n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
///
/// Parameter handle The handle of image util encoding
/// Parameter path The output file path
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_PERMISSION_DENIED The application does not have the privilege to call this function
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_NO_SUCH_FILE No such file
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_set_resolution()
/// @see image_util_encode_set_input_buffer()
/// @see image_util_encode_run()
/// @see image_util_encode_run_async()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_output_path(
  image_util_encode_h handle,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_output_path(
      handle,
      path,
    );

/// @brief Sets the compression value of PNG image encoding(0~9).
/// @since_tizen 3.0
///
/// @remarks If application does not set this, then the default value is #IMAGE_UTIL_PNG_COMPRESSION_6.
///
/// Parameter handle The handle of image util encoding
/// Parameter compression The compression value valid from 0~9
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_run_to_file()
/// @see image_util_encode_run_to_buffer()
/// @see image_util_encode_run_async_to_file()
/// @see image_util_encode_run_async_to_buffer()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_png_compression(
  image_util_encode_h handle,
  int compression,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_png_compression(
      handle,
      compression,
    );

/// @brief Sets the quality for image encoding.
/// @since_tizen 3.0
///
/// @remarks If application does not set this, then by default quality of 75 is set.\n
/// Quality is supported for JPEG format. #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT will be returned for other formats.
///
/// Parameter handle The handle of image util encoding
/// Parameter quality Encoding quality from 1~100
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_run_to_file()
/// @see image_util_encode_run_to_buffer()
/// @see image_util_encode_run_async_to_file()
/// @see image_util_encode_run_async_to_buffer()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_quality(
  image_util_encode_h handle,
  int quality,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_quality(
      handle,
      quality,
    );

/// @deprecated Deprecated since 5.5. Use image_util_create_image() instead.
/// @brief Sets the resolution of the encoded image.
/// @since_tizen 3.0
///
/// @remarks This should be called before calling image_util_encode_run().\n
/// While encoding animated GIF image, resolution should be set for each frame.
///
/// Parameter handle The handle of image util encoding
/// Parameter width Width of the original image
/// Parameter height Height of the original image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_set_input_buffer()
/// @see image_util_encode_set_output_path()
/// @see image_util_encode_set_output_buffer()
/// @see image_util_encode_run()
/// @see image_util_encode_run_async()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_resolution(
  image_util_encode_h handle,
  int width,
  int height,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_resolution(
      handle,
      width,
      height,
    );

/// @brief Sets lossless compression of WEBP images.
/// @since_tizen 6.0
///
/// @remarks If application does not set this, then the default value is false.
///
/// Parameter handle The handle of image util encoding
/// Parameter lossless The flag determining whether the compression is lossless or lossy: true for lossless, false for lossy
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_encode_create()
///
/// @post image_util_encode_run() / image_util_encode_run_async()
/// @post image_util_encode_destroy()
///
/// @see image_util_encode_create()
/// @see image_util_encode_run_to_file()
/// @see image_util_encode_run_to_buffer()
/// @see image_util_encode_run_async_to_file()
/// @see image_util_encode_run_async_to_buffer()
/// @see image_util_encode_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_encode_set_webp_lossless(
  image_util_encode_h handle,
  bool lossless,
) =>
    tizenCapiMediaImageUtil.image_util_encode_set_webp_lossless(
      handle,
      lossless,
    );

/// @brief Extracts representative color from an image buffer.
/// @since_tizen 3.0
/// @remarks @a image_buffer should be RGB888 colorspace.
///
/// Parameter image_buffer The original image buffer
/// Parameter width The image width
/// Parameter height The image height
/// Output parameter rgb_r The red color in RGB color space
/// Output parameter rgb_g The green color in RGB color space
/// Output parameter rgb_b The blue color in RGB color space
///
/// @return 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_extract_color_from_memory(
  ffi.Pointer<ffi.UnsignedChar> image_buffer,
  int width,
  int height,
  ffi.Pointer<ffi.UnsignedChar> rgb_r,
  ffi.Pointer<ffi.UnsignedChar> rgb_g,
  ffi.Pointer<ffi.UnsignedChar> rgb_b,
) =>
    tizenCapiMediaImageUtil.image_util_extract_color_from_memory(
      image_buffer,
      width,
      height,
      rgb_r,
      rgb_g,
      rgb_b,
    );

/// @brief Retrieves all supported image encoding/decoding colorspace by invoking a callback function once for each one.
/// @since_tizen 3.0
///
/// Parameter image_type The type of supported image for which to create encode/decode handle
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @post This function invokes image_util_supported_colorspace_cb() repeatedly to retrieve each supported image encoding/decoding colorspace.
///
/// @see image_util_supported_colorspace_cb()
/// @see image_util_encode_create()
/// @see image_util_decode_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_foreach_supported_colorspace(
  int image_type,
  image_util_supported_colorspace_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaImageUtil.image_util_foreach_supported_colorspace(
      image_type,
      callback,
      user_data,
    );

/// @brief Gets the information from the image.
/// @since_tizen 5.5
///
/// @remarks The @a data should be released using free() if that's not NULL. And if you don't want to get specific information, you can set parameters to NULL.
///
/// Parameter image		The handle of the image
/// Output parameter width		The width of image
/// Output parameter height		The height of image
/// Output parameter colorspace	The colorspace of image
/// Output parameter data		The data of image
/// Output parameter data_size	The size of data
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see image_util_create_image()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_get_image(
  image_util_image_h image,
  ffi.Pointer<ffi.UnsignedInt> width,
  ffi.Pointer<ffi.UnsignedInt> height,
  ffi.Pointer<ffi.Int32> colorspace,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> data,
  ffi.Pointer<ffi.Size> data_size,
) =>
    tizenCapiMediaImageUtil.image_util_get_image(
      image,
      width,
      height,
      colorspace,
      data,
      data_size,
    );

/// @brief Creates a handle of image util transform.
/// @details This function creates a handle of image util transform.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a handle should be released using image_util_transform_destroy().
///
/// Output parameter handle The handle for transforming an image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_create(
  ffi.Pointer<transformation_h> handle,
) =>
    tizenCapiMediaImageUtil.image_util_transform_create(
      handle,
    );

/// @brief Destroys a handle to image util.
/// @details The function frees all resources related to the image util handle. The image util
/// handle no longer can be used to perform any operations. A new image util handle
/// has to be created before the next usage.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter handle The handle for transforming an image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see image_util_transform_create()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_destroy(
  transformation_h handle,
) =>
    tizenCapiMediaImageUtil.image_util_transform_destroy(
      handle,
    );

/// @brief Gets the colorspace of the image buffer.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter handle The handle for transforming an image
/// Parameter colorspace The colorspace of the image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_transform_create().\n
/// image_util_transform_set_crop_area().
///
/// @see image_util_transform_create()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_get_colorspace(
  transformation_h handle,
  ffi.Pointer<ffi.Int32> colorspace,
) =>
    tizenCapiMediaImageUtil.image_util_transform_get_colorspace(
      handle,
      colorspace,
    );

/// @brief Gets the information of the cropping.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter handle The handle for transforming an image
/// Parameter start_x The start x position of cropped source image buffer
/// Parameter start_y The start y position of cropped source image buffer
/// Parameter end_x The end x position of cropped source image buffer
/// Parameter end_y The end y position of cropped source image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_transform_create().\n
/// image_util_transform_set_crop_area().
///
/// @see image_util_transform_create()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_get_crop_area(
  transformation_h handle,
  ffi.Pointer<ffi.UnsignedInt> start_x,
  ffi.Pointer<ffi.UnsignedInt> start_y,
  ffi.Pointer<ffi.UnsignedInt> end_x,
  ffi.Pointer<ffi.UnsignedInt> end_y,
) =>
    tizenCapiMediaImageUtil.image_util_transform_get_crop_area(
      handle,
      start_x,
      start_y,
      end_x,
      end_y,
    );

/// @brief Gets the resolution of the image buffer.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter handle The handle for transforming an image
/// Parameter width The width of source image buffer
/// Parameter height The height of source image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_transform_create().\n
/// image_util_transform_set_resolution().
///
/// @see image_util_transform_create()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_get_resolution(
  transformation_h handle,
  ffi.Pointer<ffi.UnsignedInt> width,
  ffi.Pointer<ffi.UnsignedInt> height,
) =>
    tizenCapiMediaImageUtil.image_util_transform_get_resolution(
      handle,
      width,
      height,
    );

/// @brief Gets the information of the rotating.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter handle The handle for transforming an image
/// Parameter rotation The rotation value of image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_transform_create().\n
/// image_util_transform_set_rotation().
///
/// @see image_util_transform_create()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_get_rotation(
  transformation_h handle,
  ffi.Pointer<ffi.Int32> rotation,
) =>
    tizenCapiMediaImageUtil.image_util_transform_get_rotation(
      handle,
      rotation,
    );

/// @brief Transforms the image for given image util handle.
/// @details The function execute asynchronously, which contains complete callback \n
/// If you set more than two transforming, the order of running is crop or resolution, colorspace converting, rotation. \n
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks If H/W acceleration is not set, transformation is done via S/W acceleration.
///
/// Parameter handle The handle for transforming an image
/// Parameter src The handle of source
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @see image_util_transform_create()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_run(
  transformation_h handle,
  media_packet_h src,
  image_util_transform_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaImageUtil.image_util_transform_run(
      handle,
      src,
      callback,
      user_data,
    );

/// @brief Synchronously transforms an image with the given transformation handle.
/// @details This function transforms an image synchronously using the @a src image handle, which has image information such as size, resolution.\n
/// A transformed image is stored into the @a dst image handle.\n
/// @since_tizen 5.5
///
/// @remarks If transforming is failed, the @a dst will be null.
/// The @a dst should be released using image_util_destroy_image().
///
/// Parameter handle The handle for transforming an image
/// Parameter src The handle of the src image
/// Output parameter dst The transformed image
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a transformation handle by calling image_util_transform_create().
/// @pre Set the transformation information by calling image_util_transform_set_colorspace(), image_util_transform_set_resolution(), \n
/// image_util_transform_set_rotation(), image_util_transform_set_crop_area().
/// @see image_util_transform_create()
/// @see image_util_transform_destroy()
/// @see image_util_transform_set_colorspace()
/// @see image_util_transform_set_resolution()
/// @see image_util_transform_set_rotation()
/// @see image_util_transform_set_crop_area()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_run2(
  transformation_h handle,
  image_util_image_h src,
  ffi.Pointer<image_util_image_h> dst,
) =>
    tizenCapiMediaImageUtil.image_util_transform_run2(
      handle,
      src,
      dst,
    );

/// @brief Synchronously transforms an image with the given transformation handle.
/// @details This function transforms an image asynchronously using the @a src image handle, which has image information such as size, resolution.\n
/// @a callback will be called after completing transform. \n
/// @since_tizen 5.5
///
/// @remarks If transforming is failed, the dst of callback parameter will be null.
///
/// Parameter handle The handle for transforming an image
/// Parameter src The handle of the src image
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a transformation handle by calling image_util_transform_create().
/// @pre Set the transformation information by calling image_util_transform_set_colorspace(), image_util_transform_set_resolution(), \n
/// image_util_transform_set_rotation(), image_util_transform_set_crop_area().
/// @see image_util_transform_create()
/// @see image_util_transform_destroy()
/// @see image_util_transform_set_colorspace()
/// @see image_util_transform_set_resolution()
/// @see image_util_transform_set_rotation()
/// @see image_util_transform_set_crop_area()
/// @see image_util_transform_completed2_cb()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_run2_async(
  transformation_h handle,
  image_util_image_h src,
  image_util_transform_completed2_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaImageUtil.image_util_transform_run2_async(
      handle,
      src,
      callback,
      user_data,
    );

/// @brief Sets the information of the converting.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter handle The handle for transforming an image
/// Parameter colorspace The colorspace of the image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED_FORMAT Not supported format
///
/// @pre image_util_transform_create().
///
/// @see image_util_transform_create()
/// @see image_util_transform_run()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_set_colorspace(
  transformation_h handle,
  int colorspace,
) =>
    tizenCapiMediaImageUtil.image_util_transform_set_colorspace(
      handle,
      colorspace,
    );

/// @brief Sets the information of the cropping.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks image_util_transform_set_resolution() and image_util_transform_set_crop_area() can't do that at the same time.
///
/// Parameter handle The handle for transforming an image
/// Parameter start_x The start x position of cropped image buffer
/// Parameter start_y The start y position of cropped image buffer
/// Parameter end_x The end x position of cropped image buffer
/// Parameter end_y The end y position of cropped image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_transform_create().
///
/// @see image_util_transform_create()
/// @see image_util_transform_run()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_set_crop_area(
  transformation_h handle,
  int start_x,
  int start_y,
  int end_x,
  int end_y,
) =>
    tizenCapiMediaImageUtil.image_util_transform_set_crop_area(
      handle,
      start_x,
      start_y,
      end_x,
      end_y,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Sets the image util's accurate mode.
/// @details This function set if you use hardware acceleration or not.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
///
/// @remarks The value returned will be #IMAGE_UTIL_ERROR_NOT_SUPPORTED, if H/W acceleration doesn't support on the device.
///
/// Parameter handle The handle for transforming an image
/// Parameter mode Set @c true, user can use the hardware acceleration\n
/// otherwise set @c false if user can only software image processing
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
/// @retval #IMAGE_UTIL_ERROR_NOT_SUPPORTED The application does not have the hardware acceleration
///
/// @pre image_util_transform_create().
///
/// @see image_util_transform_create()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_set_hardware_acceleration(
  transformation_h handle,
  bool mode,
) =>
    tizenCapiMediaImageUtil.image_util_transform_set_hardware_acceleration(
      handle,
      mode,
    );

/// @brief Sets the information of the resizing.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks image_util_transform_set_resolution() and image_util_transform_set_crop_area() can't do that at the same time.
///
/// Parameter handle The handle for transforming an image
/// Parameter width The width of image buffer
/// Parameter height The height of image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_transform_create().
///
/// @see image_util_transform_create()
/// @see image_util_transform_run()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_set_resolution(
  transformation_h handle,
  int width,
  int height,
) =>
    tizenCapiMediaImageUtil.image_util_transform_set_resolution(
      handle,
      width,
      height,
    );

/// @brief Sets the information of the rotating.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter handle The handle for transforming an image
/// Parameter rotation The rotation value of image buffer
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #IMAGE_UTIL_ERROR_NONE Successful
/// @retval #IMAGE_UTIL_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #IMAGE_UTIL_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre image_util_transform_create().
///
/// @see image_util_transform_create()
/// @see image_util_transform_run()
/// @see image_util_transform_destroy()
///
/// Module getter: `tizenCapiMediaImageUtil`.
int image_util_transform_set_rotation(
  transformation_h handle,
  int rotation,
) =>
    tizenCapiMediaImageUtil.image_util_transform_set_rotation(
      handle,
      rotation,
    );

