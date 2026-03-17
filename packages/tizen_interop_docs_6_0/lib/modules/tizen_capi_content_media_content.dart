// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiContentMediaContent`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-content-media-content.so.0`.
///
/// Content / Media Content.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_content_media_content;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Clones the audio metadata.
/// @details This function copies the audio metadata handle from a source to destination.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using audio_meta_destroy().
///
/// Output parameter dst The destination handle to the audio metadata
/// Parameter src The source handle to the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see audio_meta_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_clone(
  ffi.Pointer<audio_meta_h> dst,
  audio_meta_h src,
) =>
    tizenCapiContentMediaContent.audio_meta_clone(
      dst,
      src,
    );

/// @brief Destroys the audio metadata.
/// @details This function frees all resources related to the audio metadata handle. This handle
/// no longer can be used to perform any operations. A new handle has to
/// be created before the next use.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter audio The handle to the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get a copy of audio metadata handle handle by calling audio_meta_clone().
///
/// @see audio_meta_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_destroy(
  audio_meta_h audio,
) =>
    tizenCapiContentMediaContent.audio_meta_destroy(
      audio,
    );

/// @brief Gets the album of the given audio metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no album info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a album should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter album The album of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_album(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> album,
) =>
    tizenCapiContentMediaContent.audio_meta_get_album(
      audio,
      album,
    );

/// @brief Gets the album artist of the given audio metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no album artist info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a album_artist should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter album_artist The album artist of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_album_artist(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> album_artist,
) =>
    tizenCapiContentMediaContent.audio_meta_get_album_artist(
      audio,
      album_artist,
    );

/// @brief Gets the artist of the given audio metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no artist info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a artist should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter artist The artist of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_artist(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> artist,
) =>
    tizenCapiContentMediaContent.audio_meta_get_artist(
      audio,
      artist,
    );

/// @brief Gets bit per sample of the given audio metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter audio The handle to the audio metadata
/// Output parameter bitpersample The audio bit per sample
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_bitpersample(
  audio_meta_h audio,
  ffi.Pointer<ffi.Int> bitpersample,
) =>
    tizenCapiContentMediaContent.audio_meta_get_bitpersample(
      audio,
      bitpersample,
    );

/// @brief Gets the bitrate of the given audio metadata in bitrate per second.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter audio The handle to the audio metadata
/// Output parameter bit_rate The audio bitrate in bit per second [bps]
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_bit_rate(
  audio_meta_h audio,
  ffi.Pointer<ffi.Int> bit_rate,
) =>
    tizenCapiContentMediaContent.audio_meta_get_bit_rate(
      audio,
      bit_rate,
    );

/// @brief Gets the channel of the given audio metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter audio The handle to the audio metadata
/// Output parameter channel The channel of the audio
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_channel(
  audio_meta_h audio,
  ffi.Pointer<ffi.Int> channel,
) =>
    tizenCapiContentMediaContent.audio_meta_get_channel(
      audio,
      channel,
    );

/// @brief Gets the composer of the given audio metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no composer info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a composer should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter composer The composer of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_composer(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> composer,
) =>
    tizenCapiContentMediaContent.audio_meta_get_composer(
      audio,
      composer,
    );

/// @brief Gets the copyright notice of the given audio metadata.
/// @details If the media content has no copyright info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a copyright should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter copyright The copyright of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_copyright(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> copyright,
) =>
    tizenCapiContentMediaContent.audio_meta_get_copyright(
      audio,
      copyright,
    );

/// @brief Gets the track duration of the given audio metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter audio The handle to the audio metadata
/// Output parameter duration The audio file duration
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_duration(
  audio_meta_h audio,
  ffi.Pointer<ffi.Int> duration,
) =>
    tizenCapiContentMediaContent.audio_meta_get_duration(
      audio,
      duration,
    );

/// @brief Gets the genre of the given audio metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no genre info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a genre should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter genre The genre of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_genre(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> genre,
) =>
    tizenCapiContentMediaContent.audio_meta_get_genre(
      audio,
      genre,
    );

/// @brief Gets the ID of the media of the given audio metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a media_id should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter media_id The media ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_media_id(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> media_id,
) =>
    tizenCapiContentMediaContent.audio_meta_get_media_id(
      audio,
      media_id,
    );

/// @brief Gets the recorded date of the given audio metadata.
/// @details The format of the recorded date may vary depending on the file format. \n
/// For more details on the recorded date format, refer to the file format specification.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a recorded_date should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter recorded_date The recorded date of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_recorded_date(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> recorded_date,
) =>
    tizenCapiContentMediaContent.audio_meta_get_recorded_date(
      audio,
      recorded_date,
    );

/// @brief Gets the sample rate of the given audio metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter audio The handle to the audio metadata
/// Output parameter sample_rate The audio sample rate[hz]
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_sample_rate(
  audio_meta_h audio,
  ffi.Pointer<ffi.Int> sample_rate,
) =>
    tizenCapiContentMediaContent.audio_meta_get_sample_rate(
      audio,
      sample_rate,
    );

/// @brief Gets the track number of the given audio metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no track info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a track_num should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter track_num The audio track number of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_track_num(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> track_num,
) =>
    tizenCapiContentMediaContent.audio_meta_get_track_num(
      audio,
      track_num,
    );

/// @brief Gets the year of the given audio metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no year info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a year should be released using free().
///
/// Parameter audio The handle to the audio metadata
/// Output parameter year The year of the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int audio_meta_get_year(
  audio_meta_h audio,
  ffi.Pointer<ffi.Pointer<ffi.Char>> year,
) =>
    tizenCapiContentMediaContent.audio_meta_get_year(
      audio,
      year,
    );

/// @brief Clones the image metadata.
/// @details The function copies the image metadata handle from a source to destination.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using image_meta_destroy().
///
/// Output parameter dst The destination handle to the image metadata
/// Parameter src The source handle to the image metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @see image_meta_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_clone(
  ffi.Pointer<image_meta_h> dst,
  image_meta_h src,
) =>
    tizenCapiContentMediaContent.image_meta_clone(
      dst,
      src,
    );

/// @brief Destroys the image metadata.
/// @details The function frees all resources related to the image metadata handle. This handle
/// no longer can be used to perform any operations. A new handle has to
/// be created before next usage.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter image The handle to the image metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get a copy of image_meta handle by calling image_meta_clone().
///
/// @see image_meta_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_destroy(
  image_meta_h image,
) =>
    tizenCapiContentMediaContent.image_meta_destroy(
      image,
    );

/// @brief Gets the image creation time.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a date_taken should be released using free().
///
/// Parameter image The handle to the image metadata
/// Output parameter date_taken The time, when image was taken (in seconds, since the Epoch)
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_date_taken(
  image_meta_h image,
  ffi.Pointer<ffi.Pointer<ffi.Char>> date_taken,
) =>
    tizenCapiContentMediaContent.image_meta_get_date_taken(
      image,
      date_taken,
    );

/// @brief Gets the exposure time from EXIF.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a exposure_time should be released using free().
///
/// Parameter image The handle to the image metadata
/// Output parameter exposure_time The value of exposure_time, getting from EXIF
///
/// @return 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_exposure_time(
  image_meta_h image,
  ffi.Pointer<ffi.Pointer<ffi.Char>> exposure_time,
) =>
    tizenCapiContentMediaContent.image_meta_get_exposure_time(
      image,
      exposure_time,
    );

/// @brief Gets the fnumber from EXIF.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter image The handle to the image metadata
/// Output parameter fnumber The value of fnumber, getting from EXIF
///
/// @return 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_fnumber(
  image_meta_h image,
  ffi.Pointer<ffi.Double> fnumber,
) =>
    tizenCapiContentMediaContent.image_meta_get_fnumber(
      image,
      fnumber,
    );

/// @brief Gets the image height in pixels.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter image The handle to the image metadata
/// Output parameter height The image height in pixels
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_height(
  image_meta_h image,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiContentMediaContent.image_meta_get_height(
      image,
      height,
    );

/// @brief Gets the iso from EXIF.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter image The handle to the image metadata
/// Output parameter iso The value of iso, getting from EXIF
///
/// @return 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_iso(
  image_meta_h image,
  ffi.Pointer<ffi.Int> iso,
) =>
    tizenCapiContentMediaContent.image_meta_get_iso(
      image,
      iso,
    );

/// @brief Gets the ID of an image.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a media_id should be released using free().
///
/// Parameter image The handle to the image metadata
/// Output parameter media_id The media ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_media_id(
  image_meta_h image,
  ffi.Pointer<ffi.Pointer<ffi.Char>> media_id,
) =>
    tizenCapiContentMediaContent.image_meta_get_media_id(
      image,
      media_id,
    );

/// @brief Gets the model from EXIF.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a model should be released using free().
///
/// Parameter image The handle to the image metadata
/// Output parameter model The value of model, getting from EXIF
///
/// @return 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_model(
  image_meta_h image,
  ffi.Pointer<ffi.Pointer<ffi.Char>> model,
) =>
    tizenCapiContentMediaContent.image_meta_get_model(
      image,
      model,
    );

/// @brief Gets the image orientation.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter image The handle to the image metadata
/// Output parameter orientation The image orientation
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_orientation(
  image_meta_h image,
  ffi.Pointer<ffi.Int32> orientation,
) =>
    tizenCapiContentMediaContent.image_meta_get_orientation(
      image,
      orientation,
    );

/// @brief Gets the image width in pixels.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter image The handle to the image metadata
/// Output parameter width The image width in pixels
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int image_meta_get_width(
  image_meta_h image,
  ffi.Pointer<ffi.Int> width,
) =>
    tizenCapiContentMediaContent.image_meta_get_width(
      image,
      width,
    );

/// @brief Clones a media album.
/// @details This function copies the media album handle from a source to
/// destination. There is no media_album_create() function. The media_album_h is created internally and available through
/// media album foreach function such as media_album_foreach_album_from_db(). To use this handle outside of these foreach functions,
/// use this function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using media_album_destroy().
///
/// Output parameter dst The destination handle to the media album
/// Parameter src The source handle to the media album
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @see media_album_destroy()
/// @see media_album_foreach_album_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_clone(
  ffi.Pointer<media_album_h> dst,
  media_album_h src,
) =>
    tizenCapiContentMediaContent.media_album_clone(
      dst,
      src,
    );

/// @brief Destroys the album handle.
/// @details This function frees all resources related to the album handle. This handle
/// can no longer be used to perform any operations. A new handle has to
/// be created before the next use.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter album The handle to the media album
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get copy of album handle by calling media_album_clone().
///
/// @see media_album_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_destroy(
  media_album_h album,
) =>
    tizenCapiContentMediaContent.media_album_destroy(
      album,
    );

/// @brief Iterates through the media album with optional @a filter from the media database.
/// @details This function gets all media album handles meeting the given filter.
/// The callback function will be invoked for every retrieved media album.
/// If @c NULL is passed to the filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_album_cb().
///
/// @see #media_album_cb
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_foreach_album_from_db(
  filter_h filter,
  media_album_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_album_foreach_album_from_db(
      filter,
      callback,
      user_data,
    );

/// @brief Iterates through the media files with an optional @a filter in the given media album from the media database.
/// @details This function gets all media files associated with the given media album and
/// meeting desired filter option and calls @a callback for
/// every retrieved media info. If @c NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter album_id The ID of the media album
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_info_cb().
///
/// @see #media_info_cb
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_foreach_media_from_db(
  int album_id,
  filter_h filter,
  media_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_album_foreach_media_from_db(
      album_id,
      filter,
      callback,
      user_data,
    );

/// @brief Gets the album art path from the album.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a album_art should be released using free().
///
/// Parameter album The handle to the media album
/// Output parameter album_art The path of the media album_art
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_get_album_art(
  media_album_h album,
  ffi.Pointer<ffi.Pointer<ffi.Char>> album_art,
) =>
    tizenCapiContentMediaContent.media_album_get_album_art(
      album,
      album_art,
    );

/// @brief Gets the number of the album for the passed @a filter from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Output parameter album_count The count of the media album
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_get_album_count_from_db(
  filter_h filter,
  ffi.Pointer<ffi.Int> album_count,
) =>
    tizenCapiContentMediaContent.media_album_get_album_count_from_db(
      filter,
      album_count,
    );

/// @brief Gets the media album from the media database.
///
/// @details This function creates a new media album handle from the media database by the given @a album_id.
/// Media album will be created and will be filled with the album information.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a album should be released using media_album_destroy().
///
/// Parameter album_id The ID of the media album
/// Output parameter album The handle to the media album
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_album_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_get_album_from_db(
  int album_id,
  ffi.Pointer<media_album_h> album,
) =>
    tizenCapiContentMediaContent.media_album_get_album_from_db(
      album_id,
      album,
    );

/// @brief Gets the ID of the album.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter album The handle to the media album
/// Output parameter album_id The ID of the media album
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_album_foreach_album_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_get_album_id(
  media_album_h album,
  ffi.Pointer<ffi.Int> album_id,
) =>
    tizenCapiContentMediaContent.media_album_get_album_id(
      album,
      album_id,
    );

/// @brief Gets the name of the artist from the given album.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a artist should be released using free().
///
/// Parameter album The handle to the media album
/// Output parameter artist The name of the media artist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_get_artist(
  media_album_h album,
  ffi.Pointer<ffi.Pointer<ffi.Char>> artist,
) =>
    tizenCapiContentMediaContent.media_album_get_artist(
      album,
      artist,
    );

/// @brief Gets the number of media info for the given album present in the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter album_id The ID of the media album
/// Parameter filter The handle to the media filter
/// Output parameter media_count The count of the media album
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_get_media_count_from_db(
  int album_id,
  filter_h filter,
  ffi.Pointer<ffi.Int> media_count,
) =>
    tizenCapiContentMediaContent.media_album_get_media_count_from_db(
      album_id,
      filter,
      media_count,
    );

/// @brief Gets the name of the album.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a album_name should be released using free().
///
/// Parameter album The handle to the media album
/// Output parameter album_name The name of the media album handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_album_get_name(
  media_album_h album,
  ffi.Pointer<ffi.Pointer<ffi.Char>> album_name,
) =>
    tizenCapiContentMediaContent.media_album_get_name(
      album,
      album_name,
    );

/// @brief Clones a media bookmark.
/// @details This function copies the media bookmark handle from a source to destination. There is no media_bookmark_create() function.
/// The media_bookmark_h is created internally and available through media bookmark foreach function such as media_info_foreach_bookmark_from_db().
/// To use this handle outside of these foreach functions, use this function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using media_bookmark_destroy().
///
/// Output parameter dst The destination handle to the media bookmark
/// Parameter src The source handle to the media bookmark
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @see media_bookmark_destroy()
/// @see media_info_foreach_bookmark_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_clone(
  ffi.Pointer<media_bookmark_h> dst,
  media_bookmark_h src,
) =>
    tizenCapiContentMediaContent.media_bookmark_clone(
      dst,
      src,
    );

/// @brief Removes a media bookmark from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter bookmark_id The ID of the media bookmark
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_bookmark_insert_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_delete_from_db(
  int bookmark_id,
) =>
    tizenCapiContentMediaContent.media_bookmark_delete_from_db(
      bookmark_id,
    );

/// @brief Destroys a media bookmark.
/// @details This function frees all the resources related to the bookmark handle. This handle
/// no longer can be used to perform any operations. A new handle has to
/// be created before the next use.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter bookmark The handle to the media bookmark
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get copy of bookmark handle by calling media_bookmark_clone().
///
/// @see media_bookmark_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_destroy(
  media_bookmark_h bookmark,
) =>
    tizenCapiContentMediaContent.media_bookmark_destroy(
      bookmark,
    );

/// @brief Iterates through the bookmarks with an optional filter from the media database.
/// @details This function gets all bookmarks associated with the given filter and calls @a callback for every retrieved media bookmark.
/// If @c NULL is passed to the @a filter, then no filtering is applied.
/// @since_tizen 4.0
///
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_bookmark_cb().
///
/// @see media_content_connect()
/// @see media_bookmark_cb()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_foreach_bookmark_from_db(
  filter_h filter,
  media_bookmark_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_bookmark_foreach_bookmark_from_db(
      filter,
      callback,
      user_data,
    );

/// @brief Gets the number of bookmarks with an optional filter from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Output parameter bookmark_count The count of the media bookmark
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_get_bookmark_count_from_db(
  filter_h filter,
  ffi.Pointer<ffi.Int> bookmark_count,
) =>
    tizenCapiContentMediaContent.media_bookmark_get_bookmark_count_from_db(
      filter,
      bookmark_count,
    );

/// @brief Gets the bookmark ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter bookmark The handle to the media bookmark
/// Output parameter bookmark_id The ID of the media bookmark
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_get_bookmark_id(
  media_bookmark_h bookmark,
  ffi.Pointer<ffi.Int> bookmark_id,
) =>
    tizenCapiContentMediaContent.media_bookmark_get_bookmark_id(
      bookmark,
      bookmark_id,
    );

/// @brief Gets the bookmark time marked parameter.
/// @details This function returns time offset in seconds from beginning of the movie on which bookmark
/// was placed.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter bookmark The handle to the media bookmark
/// Output parameter marked_time The bookmark time offset (in seconds)
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_get_marked_time(
  media_bookmark_h bookmark,
  ffi.Pointer<time_t> marked_time,
) =>
    tizenCapiContentMediaContent.media_bookmark_get_marked_time(
      bookmark,
      marked_time,
    );

/// @brief Gets the media bookmark name which user set.
/// @since_tizen 4.0
///
/// @remarks The @a name should be released using free().
///
/// Parameter bookmark The handle to the media bookmark
/// Output parameter name The name of media bookmark. If name was not set, empty string is returned.
/// If User set bookmark name to NULL, name will be empty string also.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_get_name(
  media_bookmark_h bookmark,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiContentMediaContent.media_bookmark_get_name(
      bookmark,
      name,
    );

/// @brief Gets the media bookmark thumbnail.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a path should be released using free().
///
/// Parameter bookmark The handle to the media bookmark
/// Output parameter path The thumbnail path of media bookmark
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_get_thumbnail_path(
  media_bookmark_h bookmark,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiContentMediaContent.media_bookmark_get_thumbnail_path(
      bookmark,
      path,
    );

/// @brief Inserts a new bookmark in media on the specified time offset to the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter media_id The media ID
/// Parameter time The bookmark time offset (in seconds)
/// Parameter thumbnail_path The thumbnail path of video bookmark\ n
/// If the media type is audio, then thumbnail is null.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_bookmark_delete_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_insert_to_db(
  ffi.Pointer<ffi.Char> media_id,
  int time,
  ffi.Pointer<ffi.Char> thumbnail_path,
) =>
    tizenCapiContentMediaContent.media_bookmark_insert_to_db(
      media_id,
      time,
      thumbnail_path,
    );

/// @brief Sets the media bookmark name.
/// @since_tizen 4.0
///
/// Parameter bookmark The handle to the media bookmark
/// Parameter name The name of media bookmark. Can be NULL, empty or non-empty string.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @post media_bookmark_update_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_set_name(
  media_bookmark_h bookmark,
  ffi.Pointer<ffi.Char> name,
) =>
    tizenCapiContentMediaContent.media_bookmark_set_name(
      bookmark,
      name,
    );

/// @brief Updates bookmark information to the media database.
/// @details The function updates the given bookmark meta in the media database. \n
/// The function should be called after any change in bookmark attributes, to be updated to the media database. \n
/// For example, after using media_bookmark_set_name() for setting the name of the bookmark, \n
/// the media_bookmark_update_to_db() function should be called so as to update the given bookmark attributes in the media database.
/// @since_tizen 4.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks Do not call this function in callback function of foreach function like media_info_foreach_bookmark_from_db().
/// Parameter bookmark The handle to the media bookmark
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied when Application has no privilege
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_bookmark_set_name()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_bookmark_update_to_db(
  media_bookmark_h bookmark,
) =>
    tizenCapiContentMediaContent.media_bookmark_update_to_db(
      bookmark,
    );

/// @brief Subscribes notifications of the media DB change.
/// @details This function subscribes notifications of the media DB change which are published by the media server or other apps. \n
/// media_content_db_update_cb() function will be called when notification of the media DB change is subscribed. \n
/// Using this function, multiple callback is possible to register in one process.
///
/// @since_tizen 3.0
///
/// @remarks The @a noti_handle should be released using media_content_remove_db_updated_cb(). \n
/// If you set the same callback that you previously added, this function returns MEDIA_CONTENT_ERROR_INVALID_OPERATION error. \n
///
/// Parameter callback The callback to be invoked when the scanning is finished
/// Parameter user_data The user data to be passed to the callback function
/// Output parameter noti_handle The handle to db updated notification
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @see media_content_db_update_cb()
/// @see media_content_remove_db_updated_cb()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_content_add_db_updated_cb(
  media_content_db_update_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<media_content_noti_h> noti_handle,
) =>
    tizenCapiContentMediaContent.media_content_add_db_updated_cb(
      callback,
      user_data,
      noti_handle,
    );

/// @brief Requests to cancel the media folder scanning.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter path The folder path
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre media_content_scan_folder()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_content_cancel_scan_folder(
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiContentMediaContent.media_content_cancel_scan_folder(
      path,
    );

/// @brief Connects to the media content service.
/// @details Any media content related function call should be invoked after this function call.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE      Successful
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED DB operation failed
///
/// @post media_content_disconnect()
///
/// @see media_content_disconnect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_content_connect() =>
    tizenCapiContentMediaContent.media_content_connect();

/// @brief Disconnects from the media content service.
/// @details This function closes connection to the media content service. Any further media content related operation
/// cannot be performed after this function is called.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE      Successful
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED DB operation failed
///
/// @pre media_content_connect()
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_content_disconnect() =>
    tizenCapiContentMediaContent.media_content_disconnect();

/// @brief Removes notifications of the media DB change.
/// @details This function unsubscribes notifications of the media DB change which are published by the media server or other apps.
///
/// @since_tizen 3.0
///
/// Parameter noti_handle The handle to db updated notification
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre media_content_add_db_updated_cb()
///
/// @see media_content_add_db_updated_cb()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_content_remove_db_updated_cb(
  media_content_noti_h noti_handle,
) =>
    tizenCapiContentMediaContent.media_content_remove_db_updated_cb(
      noti_handle,
    );

/// @brief Requests to scan a media file.
/// @details This function requests to scan a media file to the media server.
/// If media file is not registered to DB yet, that media file information will be added to the media DB. If it is already registered to the DB, then this tries to refresh information. \n
/// If requested file does not exist on file system, information of the media file will be removed from the media DB. \n
/// If file information does not exist in DB, this function will be return #MEDIA_CONTENT_ERROR_INVALID_PARAMETER.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write \n
/// %http://tizen.org/privilege/mediastorage \n
/// %http://tizen.org/privilege/externalstorage
///
/// @remarks You must add privilege %http://tizen.org/privilege/content.write. And You add more privilege depending on your choice of contents path. \n
/// If you want to access only internal storage by using this function, you should add privilege %http://tizen.org/privilege/mediastorage. \n
/// Or if you want to access only external storage by using this function, you should add privilege %http://tizen.org/privilege/externalstorage. \n
/// If you can access both storage, you must add all privilege. \n
/// Since 4.0, This function does not allow a symbolic link.\n
/// @remarks Since 4.0, this function is related to the following feature:\n
/// %http://tizen.org/feature/content.scanning.others\n
/// If this feature is not supported on the device, MEDIA_CONTENT_TYPE_OTHERS type file is not scanned.
///
/// Parameter path The file path
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED    DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY    DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre This function requires opened connection to content service by media_content_connect().
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_content_scan_file(
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiContentMediaContent.media_content_scan_file(
      path,
    );

/// @brief Requests to scan a media folder, asynchronously.
/// @details This function requests to scan a media folder to the media server with given completed callback function.
/// media_scan_completed_cb() function will be called when the scanning is finished.
/// The sub folders are also scanned, if there are sub folders in that folder. \n
/// If any folder must not be scanned, a blank file ".scan_ignore" has to be created in that folder.
/// After adding or removing a folder from the filesystem, call this function on its source location
/// (this will add or remove an entry from the database). \n
/// After moving or renaming a folder in the filesystem, call this function on its source location
/// (this will remove an entry from the database) and call this function again on its destination location
/// (this will add a new entry to the database).\n
/// Alternatively, you can call this function on any parent of source location and on any parent of destination location.\n
/// You can also call the function once, on a folder which is a parent of both source and destination.\n
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write \n
/// %http://tizen.org/privilege/mediastorage \n
/// %http://tizen.org/privilege/externalstorage
///
/// @remarks You must add privilege %http://tizen.org/privilege/content.write. And You add more privilege depending on your choice of contents path. \n
/// If you want to access only internal storage by using this function, you should add privilege %http://tizen.org/privilege/mediastorage. \n
/// Or if you want to access only external storage by using this function, you should add privilege %http://tizen.org/privilege/externalstorage. \n
/// If you can access both storage, you must add all privilege. \n
/// Since 4.0, This function does not allow a symbolic link.
///
/// Parameter path The folder path
/// Parameter is_recursive Set @c true to scan recursively subdirectories,
/// otherwise @c false to scan only the current directory
/// Parameter callback The callback to be invoked when the scanning is finished
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED    DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY    DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK   Network fail
///
/// @pre This function requires opened connection to content service by media_content_connect().
/// @see media_scan_completed_cb()
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_content_scan_folder(
  ffi.Pointer<ffi.Char> path,
  bool is_recursive,
  media_scan_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_content_scan_folder(
      path,
      is_recursive,
      callback,
      user_data,
    );

/// @brief Clones the media face handle.
/// @details This function copies the media face handle from a source to
/// destination. There is no media_face_create() function. The media_face_h is created internally and available through
/// media face foreach function such as media_face_foreach_face_from_db(). To use this handle outside of these foreach functions,
/// use this function.
///
/// @since_tizen 3.0
/// @remarks The @a dst should be released using media_face_destroy().
///
/// Output parameter dst The destination handle to the media face
/// Parameter src The source handle to the media face
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see media_face_destroy()
/// @see media_face_foreach_face_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_clone(
  ffi.Pointer<media_face_h> dst,
  media_face_h src,
) =>
    tizenCapiContentMediaContent.media_face_clone(
      dst,
      src,
    );

/// @brief Creates the media face handle.
///
/// @since_tizen 3.0
///
/// @remarks The @a face should be released using media_face_destroy(). \n
/// Since 5.5, this function supports only image type.
///
/// Parameter media_id The media ID
/// Output parameter face The media face handle
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_face_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_create(
  ffi.Pointer<ffi.Char> media_id,
  ffi.Pointer<media_face_h> face,
) =>
    tizenCapiContentMediaContent.media_face_create(
      media_id,
      face,
    );

/// @brief Deletes the face with given face id from the media database.
///
/// @since_tizen 3.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter face_id The ID of the media face
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
///
/// @pre This function requires opened connection to content service by media_content_connect().
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_delete_from_db(
  ffi.Pointer<ffi.Char> face_id,
) =>
    tizenCapiContentMediaContent.media_face_delete_from_db(
      face_id,
    );

/// @brief Destroys the media face handle.
/// @details Function frees all resources related to media face handle. This
/// handle no longer can be used to perform any operations. New handle has to
/// be created before next usage.
///
/// @since_tizen 3.0
///
/// Parameter face The media face handle
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get copy of media face handle by calling media_face_clone() or Get media face handle by calling media_info_foreach_face_from_db()
///
/// @see media_face_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_destroy(
  media_face_h face,
) =>
    tizenCapiContentMediaContent.media_face_destroy(
      face,
    );

/// @brief Iterates through the faces with an optional filter from the media database.
/// @details This function gets all faces associated with the given filter and calls @a callback for every retrieved media face.
/// If @c NULL is passed to the @a filter, then no filtering is applied.
/// @since_tizen 4.0
///
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_face_cb().
///
/// @see media_content_connect()
/// @see media_face_cb()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_foreach_face_from_db(
  filter_h filter,
  media_face_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_face_foreach_face_from_db(
      filter,
      callback,
      user_data,
    );

/// @brief Gets the number of media faces with an optional filter from the media database.
/// @since_tizen 4.0
///
/// Parameter filter The handle to the media filter
/// Output parameter face_count The count of the media faces
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_get_face_count_from_db(
  filter_h filter,
  ffi.Pointer<ffi.Int> face_count,
) =>
    tizenCapiContentMediaContent.media_face_get_face_count_from_db(
      filter,
      face_count,
    );

/// @brief Gets the face id from the media face handle.
///
/// @since_tizen 3.0
///
/// @remarks The @a face_id should be released using free().
///
/// Parameter face The media face handle
/// Output parameter face_id The ID of the media face
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_get_face_id(
  media_face_h face,
  ffi.Pointer<ffi.Pointer<ffi.Char>> face_id,
) =>
    tizenCapiContentMediaContent.media_face_get_face_id(
      face,
      face_id,
    );

/// @brief Gets the face's rectangle from the media face handle.
/// @details This function can get the face's rectangle information. returned rectangle information includes the orientation value.
///
/// @since_tizen 3.0
///
/// Parameter face The media face handle
/// Output parameter rect_x The x position of the media face
/// Output parameter rect_y The y position of the media face
/// Output parameter rect_w The width of the media face
/// Output parameter rect_h The height of the media face
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_get_face_rect(
  media_face_h face,
  ffi.Pointer<ffi.UnsignedInt> rect_x,
  ffi.Pointer<ffi.UnsignedInt> rect_y,
  ffi.Pointer<ffi.UnsignedInt> rect_w,
  ffi.Pointer<ffi.UnsignedInt> rect_h,
) =>
    tizenCapiContentMediaContent.media_face_get_face_rect(
      face,
      rect_x,
      rect_y,
      rect_w,
      rect_h,
    );

/// @brief Gets the media id from the media face handle.
///
/// @since_tizen 3.0
///
/// @remarks The @a media_id should be released using free().
///
/// Parameter face The media face handle
/// Output parameter media_id The media ID
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_get_media_id(
  media_face_h face,
  ffi.Pointer<ffi.Pointer<ffi.Char>> media_id,
) =>
    tizenCapiContentMediaContent.media_face_get_media_id(
      face,
      media_id,
    );

/// @brief Gets the orientation from the media face handle.
/// @details This function can get the orientation value from the original image.
///
/// @since_tizen 3.0
///
/// Parameter face The media face handle
/// Output parameter orientation The orientation of the media face
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_get_orientation(
  media_face_h face,
  ffi.Pointer<ffi.Int32> orientation,
) =>
    tizenCapiContentMediaContent.media_face_get_orientation(
      face,
      orientation,
    );

/// @brief Gets the tag from the media face handle.
///
/// @since_tizen 3.0
///
/// @remarks The @a tag should be released using free().
///
/// Parameter face The media face handle
/// Output parameter tag The tag of the media face
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_get_tag(
  media_face_h face,
  ffi.Pointer<ffi.Pointer<ffi.Char>> tag,
) =>
    tizenCapiContentMediaContent.media_face_get_tag(
      face,
      tag,
    );

/// @brief Inserts a new face in the media database.
/// @since_tizen 3.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks The @a face should be released using media_face_destroy().
///
/// Parameter face The media face handle
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
///
/// @see media_content_connect()
/// @see media_face_destroy()
/// @see media_face_set_face_rect()
/// @see media_face_set_orientation()
/// @see media_face_set_tag()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_insert_to_db(
  media_face_h face,
) =>
    tizenCapiContentMediaContent.media_face_insert_to_db(
      face,
    );

/// @brief Sets the face rectangle of the media face handle.
///
/// @since_tizen 3.0
///
/// Parameter face The media face handle
/// Parameter rect_x The integer to set as a position x of face rectangle
/// Parameter rect_y The integer to set as a position y of face rectangle
/// Parameter rect_w The integer to set as a width of face rectangle
/// Parameter rect_h The integer to set as a height of face rectangle
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @post media_face_insert_to_db()
/// @post media_face_update_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_set_face_rect(
  media_face_h face,
  int rect_x,
  int rect_y,
  int rect_w,
  int rect_h,
) =>
    tizenCapiContentMediaContent.media_face_set_face_rect(
      face,
      rect_x,
      rect_y,
      rect_w,
      rect_h,
    );

/// @brief Sets the orientation of the media face handle.
/// @details This function may set the value of the original image orientation.
///
/// @since_tizen 3.0
///
/// Parameter face The media face handle
/// Parameter orientation The integer to set as an orientation
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @post media_face_insert_to_db()
/// @post media_face_update_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_set_orientation(
  media_face_h face,
  int orientation,
) =>
    tizenCapiContentMediaContent.media_face_set_orientation(
      face,
      orientation,
    );

/// @brief Sets the tag of the media face handle.
///
/// @since_tizen 3.0
///
/// Parameter face The media face handle
/// Parameter tag The tag of the media face
///
/// @return 0 on success, otherwise a negative error value.
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
///
/// @post media_face_insert_to_db()
/// @post media_face_update_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_set_tag(
  media_face_h face,
  ffi.Pointer<ffi.Char> tag,
) =>
    tizenCapiContentMediaContent.media_face_set_tag(
      face,
      tag,
    );

/// @brief Updates the face details to the media database.
///
/// @details The function updates the given media face in the media database. The function should be called after any change in face, to be updated to the media
/// database. For example, after using media_face_set_orientation() for setting the orientation of the face, media_face_update_to_db() function should be called so as to update
/// the given face attributes in the media database.
/// @since_tizen 3.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter face The media face handle to update
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_face_destroy()
/// @see media_face_set_face_rect()
/// @see media_face_set_orientation()
/// @see media_face_set_tag()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_face_update_to_db(
  media_face_h face,
) =>
    tizenCapiContentMediaContent.media_face_update_to_db(
      face,
    );

/// @brief Creates a media filter handle.
/// @details This function creates a media filter handle. The handle can be
/// used to get the filtered information based on filter properties i.e. offset, count, condition for searching and order.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a filter should be released using media_info_filter_destroy().
///
/// Output parameter filter The handle to the media filter
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_create(
  ffi.Pointer<filter_h> filter,
) =>
    tizenCapiContentMediaContent.media_filter_create(
      filter,
    );

/// @brief Destroys a media filter handle.
/// @details The function frees all resources related to the media filter handle. The filter
/// handle no longer can be used to perform any operations. A new filter handle
/// has to be created before the next usage.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_destroy(
  filter_h filter,
) =>
    tizenCapiContentMediaContent.media_filter_destroy(
      filter,
    );

/// @brief Gets the @a condition for the given @a filter.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a condition should be released using free().
///
/// Parameter filter The handle to the media filter
/// Output parameter condition The condition which is used WHERE clause on a query
/// Output parameter collate_type The collate type for comparing two strings
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_get_condition(
  filter_h filter,
  ffi.Pointer<ffi.Pointer<ffi.Char>> condition,
  ffi.Pointer<ffi.Int32> collate_type,
) =>
    tizenCapiContentMediaContent.media_filter_get_condition(
      filter,
      condition,
      collate_type,
    );

/// @brief Gets the @a offset and @a count for the given @a filter used to limit the number of items returned.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Output parameter offset The start position of the given media filter (Starting from zero)
/// Output parameter count The number of items to be searched with respect to the offset
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_get_offset(
  filter_h filter,
  ffi.Pointer<ffi.Int> offset,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiContentMediaContent.media_filter_get_offset(
      filter,
      offset,
      count,
    );

/// @brief Gets the media filter's content @a order_type and @a order_keyword i.e. either descending or ascending.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a order_keyword should be released using free().
///
/// Parameter filter The handle to the media filter
/// Output parameter order_type The search order type
/// Output parameter order_keyword The search order keyword
/// Output parameter collate_type The collate type for comparing two strings
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_get_order(
  filter_h filter,
  ffi.Pointer<ffi.Int32> order_type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> order_keyword,
  ffi.Pointer<ffi.Int32> collate_type,
) =>
    tizenCapiContentMediaContent.media_filter_get_order(
      filter,
      order_type,
      order_keyword,
      collate_type,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Gets the @a storage_id for given @a filter.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a storage_id should be released using free().
///
/// Parameter filter The handle to the media filter
/// Output parameter storage_id The ID of the media storage
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_get_storage(
  filter_h filter,
  ffi.Pointer<ffi.Pointer<ffi.Char>> storage_id,
) =>
    tizenCapiContentMediaContent.media_filter_get_storage(
      filter,
      storage_id,
    );

/// @brief Sets the @a condition for the given @a filter.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter condition The condition which is used WHERE clause on a query
/// Parameter collate_type The collate type for comparing two strings
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_set_condition(
  filter_h filter,
  ffi.Pointer<ffi.Char> condition,
  int collate_type,
) =>
    tizenCapiContentMediaContent.media_filter_set_condition(
      filter,
      condition,
      collate_type,
    );

/// @brief Sets the media filter offset and count.
/// @details This function sets the @a offset and @a count for the given filter used to limit number of items returned.
/// For example, if you set the @a offset as @c 10 and @a count as @c 5, then only searched data from @c 10 to @c 14 will be returned when the filter is used with foreach functions.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter offset The start position of the given media filter (Starting from zero)
/// Parameter count The number of items to be searched with respect to the offset
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_set_offset(
  filter_h filter,
  int offset,
  int count,
) =>
    tizenCapiContentMediaContent.media_filter_set_offset(
      filter,
      offset,
      count,
    );

/// @brief Sets the media filter content @a order_type and @a order_keyword i.e. either descending or ascending.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks If @a order_type set to #MEDIA_CONTENT_ORDER_OTHER, media_filter sorts by referring only to the value of @a order_keyword. \n
/// Therefore, @a order_keyword must include collation type and order type. \n
/// e.g. MEDIA_DISPLAY_NAME COLLATE NOCASE DESC, MEDIA_MODIFIED_TIME DESC
///
/// Parameter filter The handle to the media filter
/// Parameter order_type The search order type
/// Parameter order_keyword The search order keyword
/// Parameter collate_type The collate type for comparing two strings
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_set_order(
  filter_h filter,
  int order_type,
  ffi.Pointer<ffi.Char> order_keyword,
  int collate_type,
) =>
    tizenCapiContentMediaContent.media_filter_set_order(
      filter,
      order_type,
      order_keyword,
      collate_type,
    );

/// @deprecated Deprecated since 5.0. Use media_filter_set_condition() with MEDIA_PATH keyword instead. \n
/// See @ref CAPI_SYSTEM_STORAGE_MODULE for information about file system paths.
///
/// @brief Sets the @a storage_id for the given @a filter.
/// @details You can use this function when you want to search items only in the specific storage
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter storage_id The ID of the media storage
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_filter_create()
/// @see media_filter_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_filter_set_storage(
  filter_h filter,
  ffi.Pointer<ffi.Char> storage_id,
) =>
    tizenCapiContentMediaContent.media_filter_set_storage(
      filter,
      storage_id,
    );

/// @brief Clones the media folder.
/// @details This function copies the media folder handle from a source to
/// destination. There is no media_folder_create() function. The media_folder_h is created internally and available through
/// media folder foreach function such as media_folder_foreach_folder_from_db(). To use this handle outside of these foreach functions,
/// use this function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using media_folder_destroy().
///
/// Output parameter dst The destination handle to the media folder
/// Parameter src The source handle to the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_folder_destroy()
/// @see media_folder_foreach_folder_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_clone(
  ffi.Pointer<media_folder_h> dst,
  media_folder_h src,
) =>
    tizenCapiContentMediaContent.media_folder_clone(
      dst,
      src,
    );

/// @brief Destroys the media folder.
/// @details The function frees all resources related to the folder handle. This handle
/// no longer can be used to perform any operations. A new handle has to
/// be created before the next use.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter folder The handle to the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre A copy of the media folder handle created by calling media_folder_clone().
///
/// @see media_folder_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_destroy(
  media_folder_h folder,
) =>
    tizenCapiContentMediaContent.media_folder_destroy(
      folder,
    );

/// @brief Iterates through available media folders with optional @a filter from the media database.
/// @details This function gets the media folder meeting the given @a filter.
/// The @a callback function will be invoked for every retrieved
/// folder. If @c NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks We do not recommend you call updating DB function in callback of foreach function.
///
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @pre  A filter handle has to be created by calling media_filter_create().
/// @post This function invokes media_folder_cb().
///
/// @see media_content_connect()
/// @see media_folder_cb()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_foreach_folder_from_db(
  filter_h filter,
  media_folder_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_folder_foreach_folder_from_db(
      filter,
      callback,
      user_data,
    );

/// @brief Iterates through the media files with an optional @a filter in the given @a folder_id from the media database.
/// @details This function gets all media files associated with the given folder and
/// meeting desired filter option and calls @a callback for
/// every retrieved media item. If @c NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks   Do not call updating DB function like media_info_update_to_db() in your callback function,
/// your callback function is invoked as inline function. \n
/// So, your callback function is in read state in SQLite. When you are in read state, sometimes you do not update DB. \n
/// We do not recommend you call updating DB function in callback of foreach function.
///
/// Parameter folder_id The ID of the media folder
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_info_cb().
///
/// @see #media_info_cb
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_foreach_media_from_db(
  ffi.Pointer<ffi.Char> folder_id,
  filter_h filter,
  media_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_folder_foreach_media_from_db(
      folder_id,
      filter,
      callback,
      user_data,
    );

/// @brief Gets the count of folder for the passed @a filter from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Output parameter folder_count The count of the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_get_folder_count_from_db(
  filter_h filter,
  ffi.Pointer<ffi.Int> folder_count,
) =>
    tizenCapiContentMediaContent.media_folder_get_folder_count_from_db(
      filter,
      folder_count,
    );

/// @brief Gets the media folder from the media database.
///
/// @details This function creates a new media folder handle from the media database by the given @a folder_id.
/// Media folder will be created, which is filled with folder information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a folder should be released using media_folder_destroy().
///
/// Parameter folder_id The ID of the media folder
/// Output parameter folder The handle to the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_folder_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_get_folder_from_db(
  ffi.Pointer<ffi.Char> folder_id,
  ffi.Pointer<media_folder_h> folder,
) =>
    tizenCapiContentMediaContent.media_folder_get_folder_from_db(
      folder_id,
      folder,
    );

/// @brief Gets the media folder ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a folder_id should be released using free().
///
/// Parameter folder The handle to the media folder
/// Output parameter folder_id The ID of the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_get_folder_id(
  media_folder_h folder,
  ffi.Pointer<ffi.Pointer<ffi.Char>> folder_id,
) =>
    tizenCapiContentMediaContent.media_folder_get_folder_id(
      folder,
      folder_id,
    );

/// @brief Gets the count of media files for the passed @a filter in the given @a folder_id from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter folder_id The ID of the media folder
/// Parameter filter The handle to the media filter
/// Output parameter media_count The count of media folder items
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_get_media_count_from_db(
  ffi.Pointer<ffi.Char> folder_id,
  filter_h filter,
  ffi.Pointer<ffi.Int> media_count,
) =>
    tizenCapiContentMediaContent.media_folder_get_media_count_from_db(
      folder_id,
      filter,
      media_count,
    );

/// @brief Gets the media folder name.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a folder_name should be released using free().
///
/// Parameter folder The handle to the media folder
/// Output parameter folder_name The name of the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_get_name(
  media_folder_h folder,
  ffi.Pointer<ffi.Pointer<ffi.Char>> folder_name,
) =>
    tizenCapiContentMediaContent.media_folder_get_name(
      folder,
      folder_name,
    );

/// @brief Gets the absolute path to the media folder.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a path should be released using free().
///
/// Parameter folder The handle to the media folder
/// Output parameter path The path of the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_get_path(
  media_folder_h folder,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiContentMediaContent.media_folder_get_path(
      folder,
      path,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Gets the storage id of the folder.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a storage_id should be released using free().
///
/// Parameter folder The handle to the media folder
/// Output parameter storage_id The storage id of the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_get_storage_id(
  media_folder_h folder,
  ffi.Pointer<ffi.Pointer<ffi.Char>> storage_id,
) =>
    tizenCapiContentMediaContent.media_folder_get_storage_id(
      folder,
      storage_id,
    );

/// @deprecated Deprecated since 5.0. Use storage_get_type_dev() instead.
/// @brief Gets the folder storage type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter folder The handle to the media folder
/// Output parameter storage_type The storage type of the media folder
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_folder_get_storage_type(
  media_folder_h folder,
  ffi.Pointer<ffi.Int32> storage_type,
) =>
    tizenCapiContentMediaContent.media_folder_get_storage_type(
      folder,
      storage_type,
    );

/// @brief Iterates through the media group with an optional @a filter from the media database.
/// @details This function gets names of media group meeting the given filter.
/// The callback function will be invoked for every retrieved media group.
/// If @c NULL is passed to the filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter group The type of the media group
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_group_cb().
///
/// @see #media_group_cb
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_group_foreach_group_from_db(
  filter_h filter,
  int group,
  media_group_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_group_foreach_group_from_db(
      filter,
      group,
      callback,
      user_data,
    );

/// @brief Iterates through the media files with an optional @a filter in the given @a group from the media database.
/// @details This function gets all media files associated with the given group and
/// meeting desired filter option and calls @a callback for
/// every retrieved media info. If @c NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter group_name The name of the media group
/// Parameter group The type of the media group
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_info_cb().
///
/// @see media_info_cb()
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_group_foreach_media_from_db(
  ffi.Pointer<ffi.Char> group_name,
  int group,
  filter_h filter,
  media_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_group_foreach_media_from_db(
      group_name,
      group,
      filter,
      callback,
      user_data,
    );

/// @brief Gets the number of the group for the passed @a filter from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter group The type of the media group
/// Output parameter group_count The count of the media group
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_group_get_group_count_from_db(
  filter_h filter,
  int group,
  ffi.Pointer<ffi.Int> group_count,
) =>
    tizenCapiContentMediaContent.media_group_get_group_count_from_db(
      filter,
      group,
      group_count,
    );

/// @brief Gets the count of the media info for the given media group present in the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter group_name The name of the media group
/// Parameter group The type of the media group
/// Parameter filter The handle to the media filter
/// Output parameter media_count The count of the media
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_group_get_media_count_from_db(
  ffi.Pointer<ffi.Char> group_name,
  int group,
  filter_h filter,
  ffi.Pointer<ffi.Int> media_count,
) =>
    tizenCapiContentMediaContent.media_group_get_media_count_from_db(
      group_name,
      group,
      filter,
      media_count,
    );

/// @ingroup CAPI_CONTENT_MEDIA_FACE_DETECTION_MODULE
/// @brief Cancels face detection of image for the given media.
/// @details This function cancels face detection for given media item. \n
/// If you cancel face detection request before callback is invoked, the callback registered by media_info_start_face_detection() function will not be invoked.
///
/// @since_tizen 3.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks If face detection is already done when you request the cancellation, this function returns #MEDIA_CONTENT_ERROR_INVALID_OPERATION
///
/// Parameter media The handle to the media info
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_info_start_face_detection()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_cancel_face_detection(
  media_info_h media,
) =>
    tizenCapiContentMediaContent.media_info_cancel_face_detection(
      media,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Cancels the creation of thumbnail file for the given media.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks If you request cancel for the already thumbnail created media, this function returns #MEDIA_CONTENT_ERROR_INVALID_OPERATION
///
/// Parameter media The handle to the media info
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre This function requires opened connection to content service by media_content_connect().
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_cancel_thumbnail(
  media_info_h media,
) =>
    tizenCapiContentMediaContent.media_info_cancel_thumbnail(
      media,
    );

/// @brief Clones the media info handle.
///
/// @details This function copies the media info handle from a source to the destination.
/// To use this handle outside of these foreach functions, use this function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using media_info_destroy().
///
/// Output parameter dst The destination handle to the media info
/// Parameter src The source handle to the media info
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_info_destroy()
/// @see media_album_foreach_media_from_db()
/// @see media_playlist_foreach_media_from_db()
/// @see media_group_foreach_media_from_db()
/// @see media_tag_foreach_media_from_db()
/// @see media_info_foreach_media_from_db()
/// @see media_info_insert_to_db()
/// @see media_folder_foreach_media_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_clone(
  ffi.Pointer<media_info_h> dst,
  media_info_h src,
) =>
    tizenCapiContentMediaContent.media_info_clone(
      dst,
      src,
    );

/// @deprecated Deprecated since 5.0. Use media_info_generate_thumbnail() instead.
/// @brief Creates a thumbnail file for the given media, asynchronously.
/// @details This function creates an thumbnail file for given media item and calls @a callback for completion of creating the thumbnail.
/// If a thumbnail already exists for the given media, then the path of thumbnail will be returned in callback function. \n
/// Since 3.0, a thumbnail is not automatically extracted during media scanning. \n
/// Therefore, if there exists no thumbnail for the given media, you MUST call this function to create a thumbnail.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write \n
/// %http://tizen.org/privilege/mediastorage \n
/// %http://tizen.org/privilege/externalstorage
///
/// @remarks If you want to destroy media handle before callback invoked, you must cancel thumbnail request by using media_info_cancel_thumbnail() \n
/// Since 3.0, if creation of a thumbnail is failed, empty string will be passed through media_thumbnail_completed_cb().
/// Items in external storage except MMC not supported.
///
/// Parameter media The handle to the media info
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_create_thumbnail(
  media_info_h media,
  media_thumbnail_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_info_create_thumbnail(
      media,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.0. Use media_content_scan_file() instead.
/// @brief Deletes the media information from the media database.
/// @details This function only remove media information in the media database. \n
/// You can use media_content_scan_file()/media_content_scan_folder() function instead of this function if a file is removed from the file system.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter media_id The media ID. It can get from media info handle.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_content_scan_file()
/// @see media_content_scan_folder()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_delete_from_db(
  ffi.Pointer<ffi.Char> media_id,
) =>
    tizenCapiContentMediaContent.media_info_delete_from_db(
      media_id,
    );

/// @brief Destroys media info.
/// @details The function frees all resources related to the media info handle. This handle
/// can no longer be used to perform any operations. New media info handle has to
/// be created before the next usage.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get copy of media_info handle by calling media_info_clone().
///
/// @see media_info_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_destroy(
  media_info_h media,
) =>
    tizenCapiContentMediaContent.media_info_destroy(
      media,
    );

/// @brief Iterates through the media bookmark in the given media info from the media database.
/// @details This function gets all media bookmarks associated with the given media and calls @a callback for every retrieved media bookmark.
/// If @c NULL is passed to the @a filter, then no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media_id The media ID
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_bookmark_cb().
///
/// @see media_content_connect()
/// @see media_bookmark_cb()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_foreach_bookmark_from_db(
  ffi.Pointer<ffi.Char> media_id,
  filter_h filter,
  media_bookmark_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_info_foreach_bookmark_from_db(
      media_id,
      filter,
      callback,
      user_data,
    );

/// @brief Iterates through the media files with optional @a filter in the given @a media_id from the media database.
/// @details This function gets all media face info associated with the given media id and
/// meeting desired filter option and calls @a callback for
/// every retrieved media face info. If NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen 3.0
///
/// Parameter media_id The media ID
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre This function requires opened connection to content service by media_content_connect().
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_foreach_face_from_db(
  ffi.Pointer<ffi.Char> media_id,
  filter_h filter,
  media_face_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_info_foreach_face_from_db(
      media_id,
      filter,
      callback,
      user_data,
    );

/// @brief Iterates through media info from the media database.
/// @details This function gets all media info handles meeting the given @a filter.
/// The @a callback function will be invoked for every retrieved media info.
/// If @c NULL is passed to the @a filter, then no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks Do not call updating DB function like media_info_update_to_db() in your callback function,
/// your callback function is invoked as inline function.
/// So, your callback function is in read state in SQLite. When you are in read state, sometimes you do not update DB.
/// We do not recommend you call updating DB function in callback of foreach function.
///
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_info_cb().
///
/// @see media_content_connect()
/// @see #media_info_cb
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_foreach_media_from_db(
  filter_h filter,
  media_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_info_foreach_media_from_db(
      filter,
      callback,
      user_data,
    );

/// @brief Iterates through the media tag in the given media info from the media database.
/// @details This function gets all the media tags associated with the given @a media_id and calls @a callback for every retrieved media tag. \n
/// If @c NULL is passed to the @a filter, then no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media_id The media ID
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_tag_cb().
///
/// @see media_content_connect()
/// @see #media_tag_cb
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_foreach_tag_from_db(
  ffi.Pointer<ffi.Char> media_id,
  filter_h filter,
  media_tag_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_info_foreach_tag_from_db(
      media_id,
      filter,
      callback,
      user_data,
    );

/// @brief Generates a thumbnail file for the given media, synchronously.
///
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage. \n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage. \n
/// Items in external storage are not supported, with the exception of MMC.
///
/// Parameter media The handle to the media info
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_info_get_thumbnail_path()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_generate_thumbnail(
  media_info_h media,
) =>
    tizenCapiContentMediaContent.media_info_generate_thumbnail(
      media,
    );

/// @brief Gets the added time of the content file.
/// @details The added time refers to the time that content file was first added to media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter added_time The added time to the media database
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_added_time(
  media_info_h media,
  ffi.Pointer<time_t> added_time,
) =>
    tizenCapiContentMediaContent.media_info_get_added_time(
      media,
      added_time,
    );

/// @brief Gets the altitude of content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter altitude The altitude of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_altitude(
  media_info_h media,
  ffi.Pointer<ffi.Double> altitude,
) =>
    tizenCapiContentMediaContent.media_info_get_altitude(
      media,
      altitude,
    );

/// @brief Gets an audio metadata handle for a given media info.
/// @details This function returns an audio metadata handle retrieved from the media info handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a audio should be released using audio_meta_destroy().
///
/// Parameter media The handle to the media info
/// Output parameter audio The handle to the audio metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see audio_meta_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_audio(
  media_info_h media,
  ffi.Pointer<audio_meta_h> audio,
) =>
    tizenCapiContentMediaContent.media_info_get_audio(
      media,
      audio,
    );

/// @brief Gets the number of bookmarks for the passed @a filter in the given media ID from the media database.
/// @details If @c NULL is passed to the @a filter, then no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media_id The media ID
/// Parameter filter The handle to the media filter
/// Output parameter bookmark_count The count of the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_bookmark_count_from_db(
  ffi.Pointer<ffi.Char> media_id,
  filter_h filter,
  ffi.Pointer<ffi.Int> bookmark_count,
) =>
    tizenCapiContentMediaContent.media_info_get_bookmark_count_from_db(
      media_id,
      filter,
      bookmark_count,
    );

/// @brief Gets the description of content file.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media info has no description, the method returns empty string.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a description should be released using free().
///
/// Parameter media The handle to the media info
/// Output parameter description The description of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_description(
  media_info_h media,
  ffi.Pointer<ffi.Pointer<ffi.Char>> description,
) =>
    tizenCapiContentMediaContent.media_info_get_description(
      media,
      description,
    );

/// @brief Gets the file name including the extension of the content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a name should be released using free().
///
/// Parameter media The handle to the media info
/// Output parameter name The file name including the extension of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_display_name(
  media_info_h media,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiContentMediaContent.media_info_get_display_name(
      media,
      name,
    );

/// @brief Gets the number of face for the passed @a media_id from the media database.
/// @details If @c NULL is passed to the @a filter, then no filtering is applied.
///
/// @since_tizen 3.0
///
/// Parameter media_id The media ID
/// Parameter filter The handle to the media filter
/// Output parameter face_count The count of media face
///
/// @return 0 on success, otherwise a negative error value.
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED DB operation failed
///
/// @pre This function requires opened connection to content service by media_content_connect().
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_face_count_from_db(
  ffi.Pointer<ffi.Char> media_id,
  filter_h filter,
  ffi.Pointer<ffi.Int> face_count,
) =>
    tizenCapiContentMediaContent.media_info_get_face_count_from_db(
      media_id,
      filter,
      face_count,
    );

/// @brief Gets the favorite status of content file which User set.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter favorite @c true if content file is set as favorite,
/// otherwise @c false if content file is not set as favorite
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_info_set_favorite()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_favorite(
  media_info_h media,
  ffi.Pointer<ffi.Bool> favorite,
) =>
    tizenCapiContentMediaContent.media_info_get_favorite(
      media,
      favorite,
    );

/// @brief Gets the full path of the content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a path should be released using free().
///
/// Parameter media The handle to the media info
/// Output parameter path The full path of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_file_path(
  media_info_h media,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiContentMediaContent.media_info_get_file_path(
      media,
      path,
    );

/// @brief Gets the image metadata handle for a given media info.
/// @details This function returns an image metadata handle retrieved from the media info.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a image should be released using image_meta_destroy().
///
/// Parameter media The handle to the media info
/// Output parameter image The handle to the image metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see image_meta_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_image(
  media_info_h media,
  ffi.Pointer<image_meta_h> image,
) =>
    tizenCapiContentMediaContent.media_info_get_image(
      media,
      image,
    );

/// @brief Gets the latitude of content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter latitude The latitude of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_latitude(
  media_info_h media,
  ffi.Pointer<ffi.Double> latitude,
) =>
    tizenCapiContentMediaContent.media_info_get_latitude(
      media,
      latitude,
    );

/// @brief Gets the longitude of content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter longitude The longitude of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_longitude(
  media_info_h media,
  ffi.Pointer<ffi.Double> longitude,
) =>
    tizenCapiContentMediaContent.media_info_get_longitude(
      media,
      longitude,
    );

/// @brief Gets the count of media info for the passed @a filter from the media database.
/// @details If @c NULL is passed to the @a filter, then no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
///
/// Parameter filter The handle to the media filter
/// Output parameter media_count The count of media
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_media_count_from_db(
  filter_h filter,
  ffi.Pointer<ffi.Int> media_count,
) =>
    tizenCapiContentMediaContent.media_info_get_media_count_from_db(
      filter,
      media_count,
    );

/// @brief Gets the media info from the media database.
///
/// @details This function creates a new media handle from the media database by the given @a media_id.
/// Media info will be created and filled with information.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a media should be released using media_info_destroy().
///
/// Parameter media_id The media ID
/// Output parameter media The handle to the media info
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_info_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_media_from_db(
  ffi.Pointer<ffi.Char> media_id,
  ffi.Pointer<media_info_h> media,
) =>
    tizenCapiContentMediaContent.media_info_get_media_from_db(
      media_id,
      media,
    );

/// @brief Gets the media ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The @a media_id should be released using free().
///
/// Parameter media The handle to the media info
/// Output parameter media_id The media ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_media_id(
  media_info_h media,
  ffi.Pointer<ffi.Pointer<ffi.Char>> media_id,
) =>
    tizenCapiContentMediaContent.media_info_get_media_id(
      media,
      media_id,
    );

/// @brief Gets the content type of the content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter type The content type of the content file (#media_content_type_e)
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see #media_content_type_e
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_media_type(
  media_info_h media,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiContentMediaContent.media_info_get_media_type(
      media,
      type,
    );

/// @brief Gets the MIME type of the content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a mime_type should be released using free().
///
/// Parameter media The handle to the media info
/// Output parameter mime_type The MIME type of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_mime_type(
  media_info_h media,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mime_type,
) =>
    tizenCapiContentMediaContent.media_info_get_mime_type(
      media,
      mime_type,
    );

/// @brief Gets the modified time of the content file.
/// @details The modified time refers to the last modification time provided by the file system.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter time The last modification time of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_modified_time(
  media_info_h media,
  ffi.Pointer<time_t> time,
) =>
    tizenCapiContentMediaContent.media_info_get_modified_time(
      media,
      time,
    );

/// @brief Gets the rating of content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter rating The rating of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_rating(
  media_info_h media,
  ffi.Pointer<ffi.Int> rating,
) =>
    tizenCapiContentMediaContent.media_info_get_rating(
      media,
      rating,
    );

/// @brief Gets the content file size.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter size The content file size
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_size(
  media_info_h media,
  ffi.Pointer<ffi.UnsignedLongLong> size,
) =>
    tizenCapiContentMediaContent.media_info_get_size(
      media,
      size,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Gets the storage id of content file.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a storage_id should be released using free().
///
/// Parameter media The handle to the media info
/// Output parameter storage_id The ID of the media storage
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_storage_id(
  media_info_h media,
  ffi.Pointer<ffi.Pointer<ffi.Char>> storage_id,
) =>
    tizenCapiContentMediaContent.media_info_get_storage_id(
      media,
      storage_id,
    );

/// @deprecated Deprecated since 5.0. Use storage_get_type_dev() instead.
/// @brief Gets the storage type of content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter storage_type The storage type of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_storage_type(
  media_info_h media,
  ffi.Pointer<ffi.Int32> storage_type,
) =>
    tizenCapiContentMediaContent.media_info_get_storage_type(
      media,
      storage_type,
    );

/// @brief Gets the count of media tags for the passed @a filter in the given @a media_id from the media database.
/// @details If @c NULL is passed to the @a filter, then no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media_id The media ID
/// Parameter filter The handle to the media filter
/// Output parameter tag_count The count of the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_tag_count_from_db(
  ffi.Pointer<ffi.Char> media_id,
  filter_h filter,
  ffi.Pointer<ffi.Int> tag_count,
) =>
    tizenCapiContentMediaContent.media_info_get_tag_count_from_db(
      media_id,
      filter,
      tag_count,
    );

/// @brief Gets the thumbnail path of content file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a path should be released using free(). \n
/// If the thumbnail extraction for the given media has not been requested yet, this function returns NULL. \n
/// To create a thumbnail, you should use media_info_generate_thumbnail() function. \n
/// This function returns an empty string if media_info_generate_thumbnail() has failed to create a thumbnail for the given media.
///
/// Parameter media The handle to the media info
/// Output parameter path The thumbnail path
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_thumbnail_path(
  media_info_h media,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiContentMediaContent.media_info_get_thumbnail_path(
      media,
      path,
    );

/// @brief Gets the timeline of content file.
/// @details If the content file has the creation time information (like Content recorded date or Image creation date), that value is timeline. \n
/// Otherwise, timeline value is the same as modified time.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter time The timeline of content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_timeline(
  media_info_h media,
  ffi.Pointer<time_t> time,
) =>
    tizenCapiContentMediaContent.media_info_get_timeline(
      media,
      time,
    );

/// @brief Gets the title of content file.
/// @details If the content file does not have a title, this method returns the filename without the extension.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a title should be released using free().
///
/// Parameter media The handle to the media info
/// Output parameter title The title of the content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_title(
  media_info_h media,
  ffi.Pointer<ffi.Pointer<ffi.Char>> title,
) =>
    tizenCapiContentMediaContent.media_info_get_title(
      media,
      title,
    );

/// @brief Gets a video metadata handle for a given media info.
/// @details This function returns a video metadata handle retrieved from the media info handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a video should be released using video_meta_destroy().
///
/// Parameter media The handle to the media info
/// Output parameter video The handle to the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see video_meta_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_get_video(
  media_info_h media,
  ffi.Pointer<video_meta_h> video,
) =>
    tizenCapiContentMediaContent.media_info_get_video(
      media,
      video,
    );

/// @brief Inserts content files into the media database, asynchronously.
/// @details This function can insert multiple content files into the media database.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write \n
/// %http://tizen.org/privilege/mediastorage \n
/// %http://tizen.org/privilege/externalstorage
///
/// @remarks You must add privilege %http://tizen.org/privilege/content.write. And You add more privilege depending on your choice of contents path. \n
/// If you want to access only internal storage by using this function, you should add privilege %http://tizen.org/privilege/mediastorage. \n
/// Or if you want to access only external storage by using this function, you should add privilege %http://tizen.org/privilege/externalstorage. \n
/// If you can access both storage, you must add all privilege. \n
/// Since 4.0, This function does not allow a symbolic link. \n
/// @remarks Since 4.0, this function is related to the following feature:\n
/// %http://tizen.org/feature/content.scanning.others\n
/// If this feature is not supported on the device, MEDIA_CONTENT_TYPE_OTHERS type file is not scanned.
///
/// Parameter path_array The path array of the content files to add
/// Parameter array_length The length of the array
/// Parameter callback The callback function to be invoked when media items inserted completely
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_insert_completed_cb()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_insert_batch_to_db(
  ffi.Pointer<ffi.Pointer<ffi.Char>> path_array,
  int array_length,
  media_insert_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_info_insert_batch_to_db(
      path_array,
      array_length,
      callback,
      user_data,
    );

/// @brief  Inserts the content file into the media database.
/// @details In general, you can use this function to insert content files into the media database. \n
/// You can use media_content_scan_file()/media_content_scan_folder() function instead of this function. \n
/// If media information exists in the media database, this function returns information stored in the database.\n
/// Since 5.5, if media information already exists in the media database,
/// this function returns the updated latest information. (Media database will be updated if necessary).
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write \n
/// %http://tizen.org/privilege/mediastorage \n
/// %http://tizen.org/privilege/externalstorage
///
/// @remarks The @a info should be released using media_info_destroy(). \n
/// You must add the privilege %http://tizen.org/privilege/content.write. You need to add more privileges depending on your choice of contents path. \n
/// If you want to access only internal storage by using this function, you should add privilege %http://tizen.org/privilege/mediastorage. \n
/// If you want to access only external storage by using this function, you should add privilege %http://tizen.org/privilege/externalstorage. \n
/// If you want to access storages of both types, you must add all privileges. \n
/// Since 4.0, this function does not accept symbolic links. \n
/// @remarks Since 4.0, this function is related to the following feature:\n
/// %http://tizen.org/feature/content.scanning.others\n
/// If this feature is not supported on the device, #MEDIA_CONTENT_TYPE_OTHERS type files are not scanned.
///
/// Parameter path The path of the content file to add
/// Output parameter info The handle of the inserted content file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_content_scan_file()
/// @see media_content_scan_folder()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_insert_to_db(
  ffi.Pointer<ffi.Char> path,
  ffi.Pointer<media_info_h> info,
) =>
    tizenCapiContentMediaContent.media_info_insert_to_db(
      path,
      info,
    );

/// @brief Checks whether the content file is 360 content.
/// @since_tizen 3.0
///
/// Parameter media The handle to the media info
/// Output parameter is_360 @c true if media is 360 content,
/// otherwise @c false if media is not 360 content
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_is_360_content(
  media_info_h media,
  ffi.Pointer<ffi.Bool> is_360,
) =>
    tizenCapiContentMediaContent.media_info_is_360_content(
      media,
      is_360,
    );

/// @brief Checks whether the media is protected via DRM.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Output parameter is_drm @c true if media is DRM media,
/// otherwise @c false if media is not DRM media
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_is_drm(
  media_info_h media,
  ffi.Pointer<ffi.Bool> is_drm,
) =>
    tizenCapiContentMediaContent.media_info_is_drm(
      media,
      is_drm,
    );

/// @brief Moves the media info to the given destination path in the media database.
/// @details After moving or renaming a file in the filesystem, call this function to update the database. \n
/// If the source path and destination path are the same, then this function does nothing.
/// If you want to refresh media information, you should use media_content_scan_file() function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write \n
/// %http://tizen.org/privilege/mediastorage \n
/// %http://tizen.org/privilege/externalstorage
///
/// @remarks You must add privilege %http://tizen.org/privilege/content.write. And You add more privilege depending on your choice of contents path. \n
/// If you want to access only internal storage by using this function, you should add privilege %http://tizen.org/privilege/mediastorage. \n
/// Or if you want to access only external storage by using this function, you should add privilege %http://tizen.org/privilege/externalstorage. \n
/// If you can access both storage, you should add all privilege. \n
/// Since 4.0, this function does not allow symbolic links. \n
/// This function does not support USB storage before 5.0. Since 5.0, USB storage is supported. \n
/// Since 5.0, the thumbnail is removed if it exists.
///
/// Parameter media The handle to the media info
/// Parameter dst_path The path of destination
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter (Especially, if the request is duplicated, this error returns.)
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_content_scan_folder()
/// @see media_info_generate_thumbnail()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_move_to_db(
  media_info_h media,
  ffi.Pointer<ffi.Char> dst_path,
) =>
    tizenCapiContentMediaContent.media_info_move_to_db(
      media,
      dst_path,
    );

/// @brief Sets the favorite of media info.
/// @details This function can mark favorite of the media. If set to @c true, this function record the time of the change moment. \n
/// So, If you use it in order parameter, you can sort the order of the time was a favorite. \n
/// Or, if you use it in condition parameter, you can get the result of the favorite media.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter media The handle to the media info
/// Parameter favorite Set @c true to set the media info as favorite,
/// otherwise set @c false to not set the media info as favorite
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_set_favorite(
  media_info_h media,
  bool favorite,
) =>
    tizenCapiContentMediaContent.media_info_set_favorite(
      media,
      favorite,
    );

/// @ingroup CAPI_CONTENT_MEDIA_FACE_DETECTION_MODULE
/// @brief Starts face detection for the given image, asynchronously.
/// @details This function detects faces for given image item and calls the given callback function when the detection is completed. \n
/// The given callback function is called when the detection is completed. \n
/// To obtain the detected faces, call the media_info_foreach_face_from_db() function. \n
/// Supported image formats are jpg, png, and bmp.
///
/// @since_tizen 3.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write \n
/// %http://tizen.org/privilege/mediastorage \n
/// %http://tizen.org/privilege/externalstorage
///
/// @remarks If you want to destroy the media handle before the callback invoked, you must cancel the face detection request using media_info_cancel_face_detection(). \n
/// If the face detection fails, the @a face_count argument in media_face_detection_completed_cb() will be set to 0. \n
/// The face detection of media items in external storage except MMC is not supported. \n
/// Since 5.5, if the format of media data is unsupported, this function returns an error and the callback will not be invoked.
///
/// Parameter media The handle to the media info
/// Parameter callback The callback function to be invoked when detection is completed
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTENT_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_info_cancel_face_detection()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_start_face_detection(
  media_info_h media,
  media_face_detection_completed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_info_start_face_detection(
      media,
      callback,
      user_data,
    );

/// @brief Updates the media info to the media database.
///
/// @details The function updates the given media info in the media database.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks The function should be called after any change in media, to be updated to the media
/// database. For example, after using media_info_set_favorite()
/// for setting the name of the media, the media_info_update_to_db() function should be called so as to update
/// the given media info attributes in the media database.
///
/// Parameter media The handle to the media info
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_info_set_favorite()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_info_update_to_db(
  media_info_h media,
) =>
    tizenCapiContentMediaContent.media_info_update_to_db(
      media,
    );

/// @brief Adds a new media info to the playlist.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist The handle to the media playlist
/// Parameter media_id The media ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post media_playlist_update_to_db()
///
/// @see media_content_connect()
/// @see media_playlist_remove_media()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_add_media(
  media_playlist_h playlist,
  ffi.Pointer<ffi.Char> media_id,
) =>
    tizenCapiContentMediaContent.media_playlist_add_media(
      playlist,
      media_id,
    );

/// @brief Clones a playlist handle.
/// @details This function copies the media playlist handle from a source to
/// destination. There is no media_playlist_create() function. The media_playlist_h is created internally and available through
/// media playlist foreach function such as media_playlist_foreach_playlist_from_db().
/// To use this handle outside of these foreach functions, use this function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using media_playlist_destroy().
///
/// Output parameter dst The destination handle to the media playlist
/// Parameter src The source handle to the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @see media_playlist_destroy()
/// @see media_playlist_foreach_playlist_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_clone(
  ffi.Pointer<media_playlist_h> dst,
  media_playlist_h src,
) =>
    tizenCapiContentMediaContent.media_playlist_clone(
      dst,
      src,
    );

/// @brief Deletes the given playlist from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter playlist_id The ID of media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_playlist_insert_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_delete_from_db(
  int playlist_id,
) =>
    tizenCapiContentMediaContent.media_playlist_delete_from_db(
      playlist_id,
    );

/// @brief Destroys a playlist handle.
/// @details This function frees all resources related to the playlist handle. This
/// handle no longer can be used to perform any operations. A new handle has to
/// be created before next usage.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist The handle to the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get a copy of playlist handle by calling media_playlist_clone() or media_playlist_insert_to_db().
///
/// @see media_playlist_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_destroy(
  media_playlist_h playlist,
) =>
    tizenCapiContentMediaContent.media_playlist_destroy(
      playlist,
    );

/// @brief Exports the playlist to m3u playlist file.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks   %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage. \n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage.
///
/// Parameter playlist The handle to the media playlist
/// Parameter path path The path to export the playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_export_to_file(
  media_playlist_h playlist,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiContentMediaContent.media_playlist_export_to_file(
      playlist,
      path,
    );

/// @brief Iterates through the media files with an optional @a filter in the given audio playlist from the media database.
/// @details This function gets all media files associated with the given media playlist and
/// meeting desired filter option and calls @a callback for
/// every retrieved media info. If @c NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist_id The ID of the media playlist
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_info_cb().
///
/// @see media_info_cb()
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_foreach_media_from_db(
  int playlist_id,
  filter_h filter,
  playlist_member_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_playlist_foreach_media_from_db(
      playlist_id,
      filter,
      callback,
      user_data,
    );

/// @brief Iterates through the media playlists with an optional @a filter from the media database.
/// @details This function gets all media playlists meeting the given filter.
/// The callback function will be invoked for every retrieved media playlist.
/// If @c NULL is passed to the filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_playlist_cb().
///
/// @see media_playlist_cb()
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_foreach_playlist_from_db(
  filter_h filter,
  media_playlist_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_playlist_foreach_playlist_from_db(
      filter,
      callback,
      user_data,
    );

/// @brief Gets the number of the media info for the given playlist present in the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist_id The ID of the media playlist
/// Parameter filter The handle to the media filter
/// Output parameter media_count The number of media items
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_get_media_count_from_db(
  int playlist_id,
  filter_h filter,
  ffi.Pointer<ffi.Int> media_count,
) =>
    tizenCapiContentMediaContent.media_playlist_get_media_count_from_db(
      playlist_id,
      filter,
      media_count,
    );

/// @brief Gets a name of the playlist.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a playlist_name should be released using free().
///
/// Parameter playlist The handle to the media playlist
/// Output parameter playlist_name The playlist name
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_get_name(
  media_playlist_h playlist,
  ffi.Pointer<ffi.Pointer<ffi.Char>> playlist_name,
) =>
    tizenCapiContentMediaContent.media_playlist_get_name(
      playlist,
      playlist_name,
    );

/// @brief Gets the number of playlists for the passed @a filter from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Output parameter playlist_count The count of the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_get_playlist_count_from_db(
  filter_h filter,
  ffi.Pointer<ffi.Int> playlist_count,
) =>
    tizenCapiContentMediaContent.media_playlist_get_playlist_count_from_db(
      filter,
      playlist_count,
    );

/// @brief Gets the media playlist from the media database.
///
/// @details This function creates a new media playlist handle from the media database by the given @a playlist_id.
/// The media playlist will be created and will be filled with the playlist information.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a playlist should be released using media_playlist_destroy().
///
/// Parameter playlist_id The ID of the media playlist
/// Output parameter playlist The handle to the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_playlist_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_get_playlist_from_db(
  int playlist_id,
  ffi.Pointer<media_playlist_h> playlist,
) =>
    tizenCapiContentMediaContent.media_playlist_get_playlist_from_db(
      playlist_id,
      playlist,
    );

/// @brief Gets the media playlist ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist The handle to the media playlist
/// Output parameter playlist_id The ID of the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_get_playlist_id(
  media_playlist_h playlist,
  ffi.Pointer<ffi.Int> playlist_id,
) =>
    tizenCapiContentMediaContent.media_playlist_get_playlist_id(
      playlist,
      playlist_id,
    );

/// @brief Gets the played order of the playlist.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist The handle to the media playlist
/// Parameter playlist_member_id The ID of the playlist member
/// Output parameter play_order The played order
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_get_play_order(
  media_playlist_h playlist,
  int playlist_member_id,
  ffi.Pointer<ffi.Int> play_order,
) =>
    tizenCapiContentMediaContent.media_playlist_get_play_order(
      playlist,
      playlist_member_id,
      play_order,
    );

/// @brief Gets a thumbnail path of the playlist.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a path should be released using free().
///
/// Parameter playlist The handle to the media playlist
/// Output parameter path The path of the thumbnail
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_get_thumbnail_path(
  media_playlist_h playlist,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiContentMediaContent.media_playlist_get_thumbnail_path(
      playlist,
      path,
    );

/// @brief Imports the playlist from m3u playlist file.
/// @details This function reads a playlist from the m3u playlist file and insert into the db.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks The @a playlist should be released using media_playlist_destroy().
/// @remarks   %http://tizen.org/privilege/mediastorage is needed if input or output path are relevant to media storage. \n
/// %http://tizen.org/privilege/externalstorage is needed if input or output path are relevant to external storage. \n
/// This function does not support the file of extended m3u playlist.
///
/// Parameter playlist_name The name of the media playlist to save
/// Parameter path The path to import the playlist file
/// Output parameter playlist The handle to the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_import_from_file(
  ffi.Pointer<ffi.Char> playlist_name,
  ffi.Pointer<ffi.Char> path,
  ffi.Pointer<media_playlist_h> playlist,
) =>
    tizenCapiContentMediaContent.media_playlist_import_from_file(
      playlist_name,
      path,
      playlist,
    );

/// @brief Inserts a new playlist with the given name into the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks The @a playlist should be released using media_playlist_destroy().
///
/// Parameter name The name of the inserted playlist
/// Output parameter playlist The handle to the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_playlist_delete_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_insert_to_db(
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<media_playlist_h> playlist,
) =>
    tizenCapiContentMediaContent.media_playlist_insert_to_db(
      name,
      playlist,
    );

/// @brief Removes the playlist members related with the media from the given playlist.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist The handle to the media playlist
/// Parameter playlist_member_id The ID of the playlist member
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post media_playlist_update_to_db()
///
/// @see media_content_connect()
/// @see media_playlist_add_media()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_remove_media(
  media_playlist_h playlist,
  int playlist_member_id,
) =>
    tizenCapiContentMediaContent.media_playlist_remove_media(
      playlist,
      playlist_member_id,
    );

/// @brief Sets the name of the playlist.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist The handle to the media playlist
/// Parameter playlist_name The name of the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @post media_playlist_update_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_set_name(
  media_playlist_h playlist,
  ffi.Pointer<ffi.Char> playlist_name,
) =>
    tizenCapiContentMediaContent.media_playlist_set_name(
      playlist,
      playlist_name,
    );

/// @brief Sets the playing order in the playlist.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist The handle to the media playlist
/// Parameter playlist_member_id The ID of the playlist member
/// Parameter play_order The playing order
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @post media_playlist_update_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_set_play_order(
  media_playlist_h playlist,
  int playlist_member_id,
  int play_order,
) =>
    tizenCapiContentMediaContent.media_playlist_set_play_order(
      playlist,
      playlist_member_id,
      play_order,
    );

/// @brief Sets the thumbnail path of the playlist.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter playlist The handle to the media playlist
/// Parameter path The path of the thumbnail
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @post media_playlist_update_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_set_thumbnail_path(
  media_playlist_h playlist,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiContentMediaContent.media_playlist_set_thumbnail_path(
      playlist,
      path,
    );

/// @brief Updates the media playlist to the media database.
///
/// @details The function updates the given media playlist in the media database.
/// The function should be called after any change in the playlist, to be updated to the media database.
/// For example, after using media_playlist_set_name() for setting the name of the playlist, the
/// media_playlist_update_to_db() function should be called so as to update
/// the given playlist attributes in the media database.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter playlist The handle to the media playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_playlist_destroy()
/// @see media_playlist_add_media()
/// @see media_playlist_remove_media()
/// @see media_playlist_set_name()
/// @see media_playlist_set_play_order()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_playlist_update_to_db(
  media_playlist_h playlist,
) =>
    tizenCapiContentMediaContent.media_playlist_update_to_db(
      playlist,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Clones the media storage handle.
///
/// @details This function copies the media storage handle from a source to the destination.
/// There is no media_storage_create() function. The media_storage_h is created internally and
/// available through media storage foreach function such as media_storage_foreach_storage_from_db().
/// To use this handle outside of these foreach functions, use this function.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a dst should be released using media_storage_destroy().
///
/// Output parameter dst The destination handle to the media storage
/// Parameter src The source handle to the media storage
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_storage_destroy()
/// @see media_storage_foreach_storage_from_db()
/// @see media_storage_get_storage_info_from_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_clone(
  ffi.Pointer<media_storage_h> dst,
  media_storage_h src,
) =>
    tizenCapiContentMediaContent.media_storage_clone(
      dst,
      src,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Destroys media storage handle.
/// @details The function frees all resources related to the media storage handle. This handle
/// can no longer be used to perform any operations. New media storage handle has to
/// be created before the next usage.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter storage The media storage handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get copy of media_storage_h handle by calling media_storage_clone().
///
/// @see media_storage_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_destroy(
  media_storage_h storage,
) =>
    tizenCapiContentMediaContent.media_storage_destroy(
      storage,
    );

/// @deprecated Deprecated since 5.0. Use media_info_foreach_media_from_db() instead.
/// @brief Iterates through the media files with an optional @a filter in the given @a storage_id from the media database.
/// @details This function gets all media files associated with the given storage and
/// meeting desired filter option and calls @a callback for
/// every retrieved media item. If @c NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks   Do not call updating DB function like media_info_update_to_db() in your callback function,
/// your callback function is invoked as inline function. \n
/// So, your callback function is in read state in SQLite. When you are in read state, sometimes you do not update DB. \n
/// We do not recommend you call updating DB function in callback of foreach function.\n
/// Use media_info_foreach_media_from_db() if you want to search for internal storage.
///
/// Parameter storage_id The ID of the media storage
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_info_cb().
///
/// @see #media_info_cb
/// @see media_content_connect()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_foreach_media_from_db(
  ffi.Pointer<ffi.Char> storage_id,
  filter_h filter,
  media_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_storage_foreach_media_from_db(
      storage_id,
      filter,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.0. Use @ref CAPI_SYSTEM_STORAGE_MODULE instead.
/// @brief Iterates through media storage from the media database.
/// @details This function gets all media storage handles meeting the given @a filter.
/// The @a callback function will be invoked for every retrieved media storage.
/// If @c NULL is passed to the @a filter, then no filtering is applied.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_storage_destroy().
///
/// @see media_content_connect()
/// @see media_storage_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_foreach_storage_from_db(
  filter_h filter,
  media_storage_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_storage_foreach_storage_from_db(
      filter,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Gets the storage id of media storage.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a storage_id should be released using free().
///
/// Parameter storage The media storage handle
/// Output parameter storage_id The ID of the media storage
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_get_id(
  media_storage_h storage,
  ffi.Pointer<ffi.Pointer<ffi.Char>> storage_id,
) =>
    tizenCapiContentMediaContent.media_storage_get_id(
      storage,
      storage_id,
    );

/// @deprecated Deprecated since 5.0. Use media_info_get_media_count_from_db() instead.
/// @brief Gets the count of media files for the passed @a filter in the given @a storage_id from the media database.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks Use media_info_get_media_count_from_db() if you want to search for internal storage.
///
/// Parameter storage_id The ID of the media storage
/// Parameter filter The handle to the media filter
/// Output parameter media_count The count of media storage items
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_get_media_count_from_db(
  ffi.Pointer<ffi.Char> storage_id,
  filter_h filter,
  ffi.Pointer<ffi.Int> media_count,
) =>
    tizenCapiContentMediaContent.media_storage_get_media_count_from_db(
      storage_id,
      filter,
      media_count,
    );

/// @deprecated Deprecated since 5.0. Use @ref CAPI_SYSTEM_STORAGE_MODULE instead.
/// @brief Gets the storage path of media storage.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a storage_path should be released using free().
///
/// Parameter storage The media storage handle
/// Output parameter storage_path The storage path of the media storage
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_get_path(
  media_storage_h storage,
  ffi.Pointer<ffi.Pointer<ffi.Char>> storage_path,
) =>
    tizenCapiContentMediaContent.media_storage_get_path(
      storage,
      storage_path,
    );

/// @deprecated Deprecated since 5.0. Use @ref CAPI_SYSTEM_STORAGE_MODULE instead.
/// @brief Gets the count of media storage for the passed @a filter from the media database.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter filter The handle to the media filter
/// Output parameter storage_count The count of storage
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_get_storage_count_from_db(
  filter_h filter,
  ffi.Pointer<ffi.Int> storage_count,
) =>
    tizenCapiContentMediaContent.media_storage_get_storage_count_from_db(
      filter,
      storage_count,
    );

/// @deprecated Deprecated since 5.0.
/// @brief Gets media storage from database.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks The @a storage should be released using media_storage_destroy().
///
/// Parameter storage_id The ID of the media storage
/// Output parameter storage The media storage handle
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED  DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_get_storage_info_from_db(
  ffi.Pointer<ffi.Char> storage_id,
  ffi.Pointer<media_storage_h> storage,
) =>
    tizenCapiContentMediaContent.media_storage_get_storage_info_from_db(
      storage_id,
      storage,
    );

/// @deprecated Deprecated since 5.0. Use storage_get_type_dev() instead.
/// @brief Gets the storage type of media storage.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter storage The media storage handle
/// Output parameter storage_type The storage type of the media storage
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_storage_get_type(
  media_storage_h storage,
  ffi.Pointer<ffi.Int32> storage_type,
) =>
    tizenCapiContentMediaContent.media_storage_get_type(
      storage,
      storage_type,
    );

/// @brief Adds a new media info to the tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter tag The handle to the media tag
/// Parameter media_id The media ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post media_tag_update_to_db()
///
/// @see media_content_connect()
/// @see media_tag_remove_media()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_add_media(
  media_tag_h tag,
  ffi.Pointer<ffi.Char> media_id,
) =>
    tizenCapiContentMediaContent.media_tag_add_media(
      tag,
      media_id,
    );

/// @brief Clones the media tag.
/// @details This function copies the media tag handle from a source to destination.
/// There is no media_tag_create() function. The #media_tag_h is created internally and available through media tag foreach function
/// such as media_tag_foreach_tag_from_db().
/// To use this handle outside of these foreach functions, use this function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using media_tag_destroy().
///
/// Output parameter dst The destination handle to the media tag
/// Parameter src The source handle to the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see media_tag_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_clone(
  ffi.Pointer<media_tag_h> dst,
  media_tag_h src,
) =>
    tizenCapiContentMediaContent.media_tag_clone(
      dst,
      src,
    );

/// @brief Deletes a given tag from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter tag_id The ID of the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_tag_insert_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_delete_from_db(
  int tag_id,
) =>
    tizenCapiContentMediaContent.media_tag_delete_from_db(
      tag_id,
    );

/// @brief Destroys the media tag.
/// @details This function frees all resources related to the tag handle. The tag handle can no longer
/// be used for any operations. A new tag handle has to be created before next usage.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter tag The handle to the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre A copy of the media tag handle created by calling media_tag_clone() or media_tag_insert_to_db().
///
/// @see media_tag_clone()
/// @see media_tag_insert_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_destroy(
  media_tag_h tag,
) =>
    tizenCapiContentMediaContent.media_tag_destroy(
      tag,
    );

/// @brief Iterates through media items for a given tag from the media database.
/// @details This function gets all media items associated with a given tag and
/// meeting a desired @a filter and calls a registered callback function for
/// every retrieved media item. If @c NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter tag_id The ID of the media tag
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_info_cb().
///
/// @see media_content_connect()
/// @see media_info_cb()
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_foreach_media_from_db(
  int tag_id,
  filter_h filter,
  media_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_tag_foreach_media_from_db(
      tag_id,
      filter,
      callback,
      user_data,
    );

/// @brief Iterates through tags from the media database.
/// @details This function gets all tags meeting a desired @a filter
/// and calls a registered callback function for every retrieved tag.
/// If @c NULL is passed to the @a filter, no filtering is applied.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post This function invokes media_tag_cb().
///
/// @see media_content_connect()
/// @see #media_tag_cb
/// @see media_filter_create()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_foreach_tag_from_db(
  filter_h filter,
  media_tag_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiContentMediaContent.media_tag_foreach_tag_from_db(
      filter,
      callback,
      user_data,
    );

/// @brief Gets the number of media files for the passed @a filter in the given @a tag_id from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter tag_id The ID of the media tag
/// Parameter filter The handle to the media filter
/// Output parameter media_count The count of media items
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_get_media_count_from_db(
  int tag_id,
  filter_h filter,
  ffi.Pointer<ffi.Int> media_count,
) =>
    tizenCapiContentMediaContent.media_tag_get_media_count_from_db(
      tag_id,
      filter,
      media_count,
    );

/// @brief Gets the tag name.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a tag_name should be released using free().
///
/// Parameter tag The handle to the media tag
/// Output parameter tag_name The name of the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_get_name(
  media_tag_h tag,
  ffi.Pointer<ffi.Pointer<ffi.Char>> tag_name,
) =>
    tizenCapiContentMediaContent.media_tag_get_name(
      tag,
      tag_name,
    );

/// @brief Gets the count of the tag for the passed @a filter from the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter filter The handle to the media filter
/// Output parameter tag_count The count of the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_get_tag_count_from_db(
  filter_h filter,
  ffi.Pointer<ffi.Int> tag_count,
) =>
    tizenCapiContentMediaContent.media_tag_get_tag_count_from_db(
      filter,
      tag_count,
    );

/// @brief Gets the media tag from the media database.
///
/// @details This function creates a new media tag handle from the media database by the given @a tag_id.
/// Media tag will be created and will be filled with tag information.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a tag should be released using media_tag_destroy().
///
/// Parameter tag_id The ID of the media tag
/// Output parameter tag The handle to the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_tag_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_get_tag_from_db(
  int tag_id,
  ffi.Pointer<media_tag_h> tag,
) =>
    tizenCapiContentMediaContent.media_tag_get_tag_from_db(
      tag_id,
      tag,
    );

/// @brief Gets the media tag ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter tag The handle to the media tag
/// Output parameter tag_id The ID of the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_get_tag_id(
  media_tag_h tag,
  ffi.Pointer<ffi.Int> tag_id,
) =>
    tizenCapiContentMediaContent.media_tag_get_tag_id(
      tag,
      tag_id,
    );

/// @brief Inserts a new tag in the media database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// @remarks The @a tag should be released using media_tag_destroy().
///
/// Parameter tag_name The tag name to be inserted
/// Output parameter tag The handle to the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_tag_delete_from_db()
/// @see media_tag_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_insert_to_db(
  ffi.Pointer<ffi.Char> tag_name,
  ffi.Pointer<media_tag_h> tag,
) =>
    tizenCapiContentMediaContent.media_tag_insert_to_db(
      tag_name,
      tag,
    );

/// @brief Removes the media info from the given tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter tag The handle to the media tag
/// Parameter media_id The media ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @pre  This function requires opened connection to content service by media_content_connect().
/// @post media_tag_update_to_db()
///
/// @see media_content_connect()
/// @see media_tag_add_media()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_remove_media(
  media_tag_h tag,
  ffi.Pointer<ffi.Char> media_id,
) =>
    tizenCapiContentMediaContent.media_tag_remove_media(
      tag,
      media_id,
    );

/// @brief Sets the name of the tag.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter tag The handle to the media tag
/// Parameter tag_name The name of the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// @post media_tag_update_to_db()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_set_name(
  media_tag_h tag,
  ffi.Pointer<ffi.Char> tag_name,
) =>
    tizenCapiContentMediaContent.media_tag_set_name(
      tag,
      tag_name,
    );

/// @brief Updates the media tag to the media database.
///
/// @details The function updates the given media tag in the media database. The function should be called after any change in tag attributes, to be updated to the media
/// database. For example, after using media_tag_set_name() for setting the name of the tag, the media_tag_update_to_db() function should be called so as to update
/// the given tag attributes in the media database.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/content.write
///
/// Parameter tag The handle to the media tag
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #MEDIA_CONTENT_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTENT_ERROR_DB_FAILED         DB Operation failed
/// @retval #MEDIA_CONTENT_ERROR_DB_BUSY           DB Operation busy
/// @retval #MEDIA_CONTENT_ERROR_NETWORK           Network fail
/// @retval #MEDIA_CONTENT_ERROR_PERMISSION_DENIED Permission denied
///
/// @pre This function requires opened connection to content service by media_content_connect().
///
/// @see media_content_connect()
/// @see media_tag_destroy()
/// @see media_tag_add_media()
/// @see media_tag_remove_media()
/// @see media_tag_set_name()
///
/// Module getter: `tizenCapiContentMediaContent`.
int media_tag_update_to_db(
  media_tag_h tag,
) =>
    tizenCapiContentMediaContent.media_tag_update_to_db(
      tag,
    );

/// @brief Clones the video metadata.
/// @details This function copies the video metadata handle from a source to destination.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a dst should be released using video_meta_destroy().
///
/// Output parameter dst The destination handle to the video metadata
/// Parameter src The source handle to the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see video_meta_destroy()
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_clone(
  ffi.Pointer<video_meta_h> dst,
  video_meta_h src,
) =>
    tizenCapiContentMediaContent.video_meta_clone(
      dst,
      src,
    );

/// @brief Destroys the video metadata.
/// @details This function frees all resources related to the video metadata handle. This handle
/// no longer can be used to perform any operations. A new handle has to
/// be created before the next use.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter video The handle to the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Get copy of video metadata handle by calling video_meta_clone().
///
/// @see video_meta_clone()
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_destroy(
  video_meta_h video,
) =>
    tizenCapiContentMediaContent.video_meta_destroy(
      video,
    );

/// @brief Gets the album of the given video metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no album info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a album should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter album The album of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_album(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> album,
) =>
    tizenCapiContentMediaContent.video_meta_get_album(
      video,
      album,
    );

/// @brief Gets the video album artist.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no album artist info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a album_artist should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter album_artist The album artist of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_album_artist(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> album_artist,
) =>
    tizenCapiContentMediaContent.video_meta_get_album_artist(
      video,
      album_artist,
    );

/// @brief Gets the artist of the given video metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no artist info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a artist should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter artist The artist of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_artist(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> artist,
) =>
    tizenCapiContentMediaContent.video_meta_get_artist(
      video,
      artist,
    );

/// @brief Gets the bitrate of the given video metadata in bitrate per second.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter video The handle to the video metadata
/// Output parameter bit_rate The video bit rate in bit per second [bps]
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_bit_rate(
  video_meta_h video,
  ffi.Pointer<ffi.Int> bit_rate,
) =>
    tizenCapiContentMediaContent.video_meta_get_bit_rate(
      video,
      bit_rate,
    );

/// @brief Gets the composer of the given video metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no composer info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a composer should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter composer The composer of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_composer(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> composer,
) =>
    tizenCapiContentMediaContent.video_meta_get_composer(
      video,
      composer,
    );

/// @brief Gets the copyright notice of the given video metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no copyright info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a copyright should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter copyright The copyright of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_copyright(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> copyright,
) =>
    tizenCapiContentMediaContent.video_meta_get_copyright(
      video,
      copyright,
    );

/// @brief Gets the track duration of the given video metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter video The handle to the video metadata
/// Output parameter duration The video duration in milliseconds
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_duration(
  video_meta_h video,
  ffi.Pointer<ffi.Int> duration,
) =>
    tizenCapiContentMediaContent.video_meta_get_duration(
      video,
      duration,
    );

/// @brief Gets the genre of the given video metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no genre info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a genre should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter genre The genre of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_genre(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> genre,
) =>
    tizenCapiContentMediaContent.video_meta_get_genre(
      video,
      genre,
    );

/// @brief Gets the height of the given video metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter video The handle to the video metadata
/// Output parameter height The video height in pixels
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_height(
  video_meta_h video,
  ffi.Pointer<ffi.Int> height,
) =>
    tizenCapiContentMediaContent.video_meta_get_height(
      video,
      height,
    );

/// @brief Gets the ID of the media of the given video metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a media_id should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter media_id The media ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_media_id(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> media_id,
) =>
    tizenCapiContentMediaContent.video_meta_get_media_id(
      video,
      media_id,
    );

/// @brief Gets the recorded date of the given video metadata.
/// @details The format of the recorded date may vary depending on the file format. \n
/// For more details on the recorded date format, refer to the file format specification.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a recorded_date should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter recorded_date The recorded date of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_recorded_date(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> recorded_date,
) =>
    tizenCapiContentMediaContent.video_meta_get_recorded_date(
      video,
      recorded_date,
    );

/// @brief Gets the rotation of the given video metadata.
/// @since_tizen 4.0
///
/// Parameter video The handle to the video metadata
/// Output parameter rotation The clockwise rotation angle of the video in degrees (can be returned from 0 to less than 360)
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_rotation(
  video_meta_h video,
  ffi.Pointer<ffi.Int> rotation,
) =>
    tizenCapiContentMediaContent.video_meta_get_rotation(
      video,
      rotation,
    );

/// @brief Gets the track number of the given video metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no track info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a track_num should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter track_num The track number of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_track_num(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> track_num,
) =>
    tizenCapiContentMediaContent.video_meta_get_track_num(
      video,
      track_num,
    );

/// @brief Gets the width of the given video metadata.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// Parameter video The handle to the video metadata
/// Output parameter width The video width in pixels
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_width(
  video_meta_h video,
  ffi.Pointer<ffi.Int> width,
) =>
    tizenCapiContentMediaContent.video_meta_get_width(
      video,
      width,
    );

/// @brief Gets the year of the given video metadata.
/// @details If the value is an empty string, the method returns "Unknown". \n
/// Since 3.0, if the media content has no year info, the method returns empty string.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
///
/// @remarks The @a year should be released using free().
///
/// Parameter video The handle to the video metadata
/// Output parameter year The year of the video metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTENT_ERROR_NONE              Successful
/// @retval #MEDIA_CONTENT_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTENT_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiContentMediaContent`.
int video_meta_get_year(
  video_meta_h video,
  ffi.Pointer<ffi.Pointer<ffi.Char>> year,
) =>
    tizenCapiContentMediaContent.video_meta_get_year(
      video,
      year,
    );

