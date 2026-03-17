// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenMvCommon`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libmv_common.so`.
///
/// Multimedia / Media Vision Common.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_mv_common;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates the handle to the configuration of engine.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @remarks Available engine configuration attributes can be get by using
/// mv_engine_config_foreach_supported_attribute().
/// The attributes can be changed by #mv_engine_config_h
/// related setters. Default values are used if the attributes
/// are not changed.
/// @param out engine_cfg    The handle to the engine to be created
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see #mv_engine_config_h
/// @see mv_destroy_engine_config()
/// @see mv_engine_config_set_double_attribute()
/// @see mv_engine_config_set_int_attribute()
/// @see mv_engine_config_set_bool_attribute()
/// @see mv_engine_config_set_string_attribute()
/// @see mv_engine_config_get_double_attribute()
/// @see mv_engine_config_get_int_attribute()
/// @see mv_engine_config_get_bool_attribute()
/// @see mv_engine_config_get_string_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_create_engine_config(
  ffi.Pointer<mv_engine_config_h> engine_cfg,
) =>
    tizenMvCommon.mv_create_engine_config(
      engine_cfg,
    );

/// @brief Creates a source handle.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @remarks You must release @a source by using mv_destroy_source().
/// @param out source    A new handle to the source
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_destroy_source()
///
/// Module getter: `tizenMvCommon`.
int mv_create_source(
  ffi.Pointer<mv_source_h> source,
) =>
    tizenMvCommon.mv_create_source(
      source,
    );

/// @brief Destroys the engine configuration handle and releases all its
/// resources.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in engine_cfg    The handle to the engine configuration
/// to be destroyed
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see #mv_engine_config_h
/// @see mv_create_engine_config()
///
/// Module getter: `tizenMvCommon`.
int mv_destroy_engine_config(
  mv_engine_config_h engine_cfg,
) =>
    tizenMvCommon.mv_destroy_engine_config(
      engine_cfg,
    );

/// @brief Destroys the source handle and releases all its resources.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in source    The handle to the source to be destroyed
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_create_source()
///
/// Module getter: `tizenMvCommon`.
int mv_destroy_source(
  mv_source_h source,
) =>
    tizenMvCommon.mv_destroy_source(
      source,
    );

/// @brief Traverses the list of supported attribute names and types.
/// @details Using this function names of supported attributes can be obtained.
/// Names of the attributes can be used with #mv_engine_config_h
/// related getters and setters to get/set appropriate attribute values.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @remarks If @a callback is called zero times after
/// mv_engine_config_foreach_supported_attribute() call, then
/// engine configuration is not supported and setting of attributes will
/// cause no effect. In this case for all Media Vision functions which
/// require #mv_engine_config_h handle as in parameter this
/// parameter can be set NULL.
/// @remarks If @a callback is called at least once, then attribute names and
/// types obtained in the mv_supported_attribute_cb() callback can be
/// changed after #mv_engine_config_h handle creation (with
/// mv_create_engine_config() function) by corresponding setters.
/// Although, if attributes aren't changed by setters, then default
/// values will be used.\n
/// Changing of attribute values will affect internal functionality
/// provided by concrete library underlying Media Vision API.
/// @param in callback     The iteration callback function
/// @param in user_data    The user data to be passed to the callback function
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NO_DATA Can't determine list of supported attributes
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_set_double_attribute()
/// @see mv_engine_config_set_int_attribute()
/// @see mv_engine_config_set_bool_attribute()
/// @see mv_engine_config_set_string_attribute()
/// @see mv_engine_config_get_double_attribute()
/// @see mv_engine_config_get_int_attribute()
/// @see mv_engine_config_get_bool_attribute()
/// @see mv_engine_config_get_string_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_foreach_supported_attribute(
  mv_supported_attribute_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenMvCommon.mv_engine_config_foreach_supported_attribute(
      callback,
      user_data,
    );

/// @brief Gets the array of string attribute from the configuration dictionary.
///
/// @since_tizen 5.5
/// @remarks Each element in the @a values array should be released using free(),
/// then the array itself should be released using free().
/// @param in engine_cfg        Engine configuration from which @a values
/// should be obtained.
/// @param in name              String key of the attribute which will be used
/// for getting the @a values from the
/// configuration dictionary
/// @param out values           The attribute to be filled with the array of
/// string value from dictionary
/// @param out size			 The number of elements in @a values
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
///
/// @see mv_engine_config_set_array_string_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_get_array_string_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> values,
  ffi.Pointer<ffi.Int> size,
) =>
    tizenMvCommon.mv_engine_config_get_array_string_attribute(
      engine_cfg,
      name,
      values,
      size,
    );

/// @brief Gets the boolean attribute from the configuration dictionary.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in engine_cfg        Engine configuration from which @a value
/// has to be gotten
/// @param in name              String key of the attribute will be used for
/// getting the @a value from the
/// configuration dictionary
/// @param out value            The attribute to be filled with boolean value
/// from dictionary
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_set_bool_attribute()
/// @see mv_engine_config_get_double_attribute()
/// @see mv_engine_config_get_int_attribute()
/// @see mv_engine_config_get_string_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_get_bool_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Bool> value,
) =>
    tizenMvCommon.mv_engine_config_get_bool_attribute(
      engine_cfg,
      name,
      value,
    );

/// @brief Gets the double attribute from the configuration dictionary.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in engine_cfg        Engine configuration from which @a value
/// has to be gotten
/// @param in name              String key of the attribute will be used for
/// getting the @a value from the
/// configuration dictionary
/// @param out value            The attribute to be filled with double value
/// from dictionary
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_set_double_attribute()
/// @see mv_engine_config_get_int_attribute()
/// @see mv_engine_config_get_bool_attribute()
/// @see mv_engine_config_get_string_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_get_double_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenMvCommon.mv_engine_config_get_double_attribute(
      engine_cfg,
      name,
      value,
    );

/// @brief Gets the integer attribute from the configuration dictionary.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in engine_cfg        Engine configuration from which @a value
/// has to be gotten
/// @param in name              String key of the attribute will be used for
/// getting the @a value from the
/// configuration dictionary
/// @param out value            The attribute to be filled with integer value
/// from dictionary
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_set_int_attribute()
/// @see mv_engine_config_get_double_attribute()
/// @see mv_engine_config_get_bool_attribute()
/// @see mv_engine_config_get_string_attribute()
/// @see mv_barcode_detect_attr_target_e
/// @see mv_barcode_generate_attr_text_e
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_get_int_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenMvCommon.mv_engine_config_get_int_attribute(
      engine_cfg,
      name,
      value,
    );

/// @brief Gets the string attribute from the configuration dictionary.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @remarks Function allocates memory required for output @a value, so
/// it has to be removed by the user himself.
/// @param in engine_cfg        Engine configuration from which @a value
/// has to be gotten
/// @param in name              String key of the attribute will be used for
/// getting the @a value from the
/// configuration dictionary
/// @param out value            The attribute to be filled with string value
/// from dictionary
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_set_string_attribute()
/// @see mv_engine_config_get_double_attribute()
/// @see mv_engine_config_get_int_attribute()
/// @see mv_engine_config_get_bool_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_get_string_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenMvCommon.mv_engine_config_get_string_attribute(
      engine_cfg,
      name,
      value,
    );

/// @brief Sets the array of string attribute to the configuration.
///
/// @since_tizen 5.5
/// @param in engine_cfg        Engine configuration for which @a values have
/// to be set
/// @param in name              String key of the attribute will be used for
/// storing the @a values into configuration
/// dictionary
/// @param in values            The string values of the attribute
/// @param in size              The number of string @a values
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
///
/// @see mv_engine_config_get_array_string_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_set_array_string_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Pointer<ffi.Char>> values,
  int size,
) =>
    tizenMvCommon.mv_engine_config_set_array_string_attribute(
      engine_cfg,
      name,
      values,
      size,
    );

/// @brief Sets the boolean attribute to the configuration.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in engine_cfg        Engine configuration for which @a value has
/// to be set
/// @param in name              String key of the attribute will be used for
/// storing the @a value into configuration
/// dictionary
/// @param in value             The boolean value of the attribute
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_get_bool_attribute()
/// @see mv_engine_config_set_double_attribute()
/// @see mv_engine_config_set_int_attribute()
/// @see mv_engine_config_set_string_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_set_bool_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  bool value,
) =>
    tizenMvCommon.mv_engine_config_set_bool_attribute(
      engine_cfg,
      name,
      value,
    );

/// @brief Sets the double attribute to the configuration.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in engine_cfg        Engine configuration for which @a value has
/// to be set
/// @param in name              String key of the attribute will be used for
/// storing the @a value into configuration
/// dictionary
/// @param in value             The double value of the attribute
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_get_double_attribute()
/// @see mv_engine_config_set_int_attribute()
/// @see mv_engine_config_set_bool_attribute()
/// @see mv_engine_config_set_string_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_set_double_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  double value,
) =>
    tizenMvCommon.mv_engine_config_set_double_attribute(
      engine_cfg,
      name,
      value,
    );

/// @brief Sets the integer attribute to the configuration.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in engine_cfg        Engine configuration for which @a value has
/// to be set
/// @param in name              String key of the attribute will be used for
/// storing the @a value into configuration
/// dictionary
/// @param in value             The integer value of the attribute
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_get_int_attribute()
/// @see mv_engine_config_set_double_attribute()
/// @see mv_engine_config_set_bool_attribute()
/// @see mv_engine_config_set_string_attribute()
/// @see mv_barcode_detect_attr_target_e
/// @see mv_barcode_generate_attr_text_e
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_set_int_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  int value,
) =>
    tizenMvCommon.mv_engine_config_set_int_attribute(
      engine_cfg,
      name,
      value,
    );

/// @brief Sets the string attribute to the configuration.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in engine_cfg        Engine configuration for which @a value has
/// to be set
/// @param in name              String key of the attribute will be used for
/// storing the @a value into configuration
/// dictionary
/// @param in value             The string value of the attribute
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_KEY_NOT_AVAILABLE Attribute key isn't available
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_engine_config_get_string_attribute()
/// @see mv_engine_config_set_double_attribute()
/// @see mv_engine_config_set_int_attribute()
/// @see mv_engine_config_set_bool_attribute()
///
/// Module getter: `tizenMvCommon`.
int mv_engine_config_set_string_attribute(
  mv_engine_config_h engine_cfg,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenMvCommon.mv_engine_config_set_string_attribute(
      engine_cfg,
      name,
      value,
    );

/// @brief Clears the buffer of the media source.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in,out source    The handle to the source
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_source_fill_by_buffer()
///
/// Module getter: `tizenMvCommon`.
int mv_source_clear(
  mv_source_h source,
) =>
    tizenMvCommon.mv_source_clear(
      source,
    );

/// @brief Fills the media source based on the buffer and metadata.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in,out source             The handle to the source
/// @param in     data_buffer        The buffer of image data
/// @param in     buffer_size        The buffer size
/// @param in     image_width        The width of image data
/// @param in     image_height       The height of image data
/// @param in     image_colorspace   The image colorspace
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create a source handle by calling mv_create_source()
///
/// @see mv_source_clear()
///
/// Module getter: `tizenMvCommon`.
int mv_source_fill_by_buffer(
  mv_source_h source,
  ffi.Pointer<ffi.UnsignedChar> data_buffer,
  int buffer_size,
  int image_width,
  int image_height,
  int image_colorspace,
) =>
    tizenMvCommon.mv_source_fill_by_buffer(
      source,
      data_buffer,
      buffer_size,
      image_width,
      image_height,
      image_colorspace,
    );

/// @brief Fills the media source based on the media packet.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in,out source          The handle to the source
/// @param in     media_packet    The handle to the media packet from which
/// will be filled the source
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED_FORMAT Not supported format
/// @retval #MEDIA_VISION_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @pre Create a source handle by calling mv_create_source()
///
/// @see mv_create_source()
/// @see mv_destroy_source()
///
/// Module getter: `tizenMvCommon`.
int mv_source_fill_by_media_packet(
  mv_source_h source,
  media_packet_h media_packet,
) =>
    tizenMvCommon.mv_source_fill_by_media_packet(
      source,
      media_packet,
    );

/// @brief Gets buffer of the media source.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @remarks Note that the retrieved buffer will be destroyed when
/// mv_destroy_source() or mv_source_clear() function
/// is called for the @a source.
///
/// @param in    source        The handle to the source
/// @param out   data_buffer   The buffer of the source
/// @param out   buffer_size   The size of buffer
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_source_get_width()
/// @see mv_source_get_height()
/// @see mv_source_get_colorspace()
///
/// Module getter: `tizenMvCommon`.
int mv_source_get_buffer(
  mv_source_h source,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> data_buffer,
  ffi.Pointer<ffi.UnsignedInt> buffer_size,
) =>
    tizenMvCommon.mv_source_get_buffer(
      source,
      data_buffer,
      buffer_size,
    );

/// @brief Gets colorspace of the media source.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in    source             The handle to the source
/// @param out   image_colorspace   The colorspace of an image in the source
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_source_get_width()
/// @see mv_source_get_height()
/// @see mv_source_get_buffer()
///
/// Module getter: `tizenMvCommon`.
int mv_source_get_colorspace(
  mv_source_h source,
  ffi.Pointer<ffi.Int32> image_colorspace,
) =>
    tizenMvCommon.mv_source_get_colorspace(
      source,
      image_colorspace,
    );

/// @brief Gets height of the media source.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in    source         The handle to the source
/// @param out   image_height   The height of an image in the source
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_source_get_width()
/// @see mv_source_get_colorspace()
/// @see mv_source_get_buffer()
///
/// Module getter: `tizenMvCommon`.
int mv_source_get_height(
  mv_source_h source,
  ffi.Pointer<ffi.UnsignedInt> image_height,
) =>
    tizenMvCommon.mv_source_get_height(
      source,
      image_height,
    );

/// @brief Gets width of the media source.
///
/// @since_tizen @if MOBILE 2.4 @else 3.0 @endif
/// @param in    source        The handle to the source
/// @param out   image_width   The width of an image in the source
/// @return @c 0 on success, otherwise a negative error value
/// @retval #MEDIA_VISION_ERROR_NONE Successful
/// @retval #MEDIA_VISION_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_VISION_ERROR_NOT_SUPPORTED Not supported
///
/// @see mv_source_get_height()
/// @see mv_source_get_colorspace()
/// @see mv_source_get_buffer()
///
/// Module getter: `tizenMvCommon`.
int mv_source_get_width(
  mv_source_h source,
  ffi.Pointer<ffi.UnsignedInt> image_width,
) =>
    tizenMvCommon.mv_source_get_width(
      source,
      image_width,
    );

