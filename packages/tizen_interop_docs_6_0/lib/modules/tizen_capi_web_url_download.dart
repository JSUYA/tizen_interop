// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiWebUrlDownload`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-web-url-download.so.0`.
///
/// Content / Download.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_web_url_download;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a HTTP header field to the download request.
///
/// @details The given HTTP header field will be included with the HTTP request of the download request.
/// For more information, see <a href="HTTP://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2">HTTP/1.1: HTTP Message Headers</a>.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
/// This function replaces any existing value for the given key.
/// This function returns #DOWNLOAD_ERROR_INVALID_PARAMETER if @a field or @a value is a zero-length string.
///
/// Parameter download_id  The download ID
/// Parameter field        The name of the HTTP header field
/// Parameter value        The value associated with given field
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_IO_ERROR Internal I/O error
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_get_http_header_field()
/// @see download_remove_http_header_field()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_add_http_header_field(
  int download_id,
  ffi.Pointer<ffi.Char> field,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiWebUrlDownload.download_add_http_header_field(
      download_id,
      field,
      value,
    );

/// @brief Cancels the download, asynchronously.
///
/// @details This function cancels the running download and its state will be #DOWNLOAD_STATE_READY.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks The canceled download can be restarted with download_start().
///
/// Parameter download_id The download ID
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_IO_ERROR          Internal I/O error
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre  The download state must be #DOWNLOAD_STATE_QUEUED, #DOWNLOAD_STATE_DOWNLOADING, or #DOWNLOAD_STATE_PAUSED.
/// @post The download state will be #DOWNLOAD_STATE_CANCELED.
///
/// @see download_start()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_cancel(
  int download_id,
) =>
    tizenCapiWebUrlDownload.download_cancel(
      download_id,
    );

/// @brief Creates a new download request and return its download ID.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks The @a download_id is released with download_destroy() by client.
///
/// Output parameter download_id The download ID that is newly created on success
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_IO_ERROR          Internal I/O error
/// @retval #DOWNLOAD_ERROR_QUEUE_FULL        Download server queue is full
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @post The download state will be #DOWNLOAD_STATE_READY.
///
/// @see download_destroy()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_create(
  ffi.Pointer<ffi.Int> download_id,
) =>
    tizenCapiWebUrlDownload.download_create(
      download_id,
    );

/// @brief Unloads all data concerning a download ID from memory.
///
/// @details After calling this API, a download ID is existed at DB in certain time.
/// Within that time, it is able to use the other API with the download ID.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
///
/// @remarks If #DOWNLOAD_ERROR_ID_NOT_FOUND is returned, it means that the download ID is completely removed from DB.
///
/// Parameter download_id The download ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_create()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_destroy(
  int download_id,
) =>
    tizenCapiWebUrlDownload.download_destroy(
      download_id,
    );

/// @brief Checks whether auto download is enabled.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id The download ID
/// Output parameter enable      @c true if auto download is enabled,
/// otherwise @c false if auto download is disabled
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_auto_download()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_auto_download(
  int download_id,
  ffi.Pointer<ffi.Bool> enable,
) =>
    tizenCapiWebUrlDownload.download_get_auto_download(
      download_id,
      enable,
    );

/// @brief Gets the content name of downloaded file.
///
/// @details This can be defined with reference of HTTP response header data.
/// The content name can be received when HTTP response header is received.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id   The download ID
/// Output parameter content_name  The content name for displaying to user
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The download state must be one of the states after #DOWNLOAD_STATE_DOWNLOADING.
///
/// @see download_set_state_changed_cb()
/// @see download_unset_state_changed_cb()
/// @see download_start()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_content_name(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> content_name,
) =>
    tizenCapiWebUrlDownload.download_get_content_name(
      download_id,
      content_name,
    );

/// @brief Gets the total size of downloaded content.
///
/// @details This information is received from the server. If the server does not send the total size of the content, @a content_size is set to zero.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id  The download ID
/// Output parameter content_size The content size for displaying to user
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The download state must be one of the states after #DOWNLOAD_STATE_DOWNLOADING.
///
/// @see download_set_state_changed_cb()
/// @see download_unset_state_changed_cb()
/// @see download_start()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_content_size(
  int download_id,
  ffi.Pointer<ffi.UnsignedLongLong> content_size,
) =>
    tizenCapiWebUrlDownload.download_get_content_size(
      download_id,
      content_size,
    );

/// @brief Gets the destination path for the downloaded file.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks You must release @a path using free().
///
/// Parameter  download_id  The download ID
/// Output parameter path         The absolute path to the downloaded file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_destination()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_destination(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiWebUrlDownload.download_get_destination(
      download_id,
      path,
    );

/// @brief Gets the absolute path to save the downloaded file.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function returns #DOWNLOAD_ERROR_INVALID_STATE if the download is not completed.
/// You must release @a path using free().
///
/// Parameter  download_id  The download ID
/// Output parameter path         The absolute path to the downloaded file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE               Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND       No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The download state must be #DOWNLOAD_STATE_COMPLETED.
///
/// @see download_set_file_name()
/// @see download_set_destination()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_downloaded_file_path(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiWebUrlDownload.download_get_downloaded_file_path(
      download_id,
      path,
    );

/// @brief Gets an error value when the download fails.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id The download ID
/// Output parameter error       The error value
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The download state must be #DOWNLOAD_STATE_FAILED.
/// @pre The download state must be #DOWNLOAD_STATE_CANCELED.
///
/// @see download_set_state_changed_cb()
/// @see download_unset_state_changed_cb()
/// @see download_start()
/// @see download_error_e
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_error(
  int download_id,
  ffi.Pointer<ffi.Int32> error,
) =>
    tizenCapiWebUrlDownload.download_get_error(
      download_id,
      error,
    );

/// @brief Gets an etag value from the HTTP response header when making a HTTP request for resume.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks The etag value is available or not depending on the web server. \n
/// After download is started, it can get the etag value.
///
/// Parameter  download_id  The download ID
/// Output parameter etag         The etag value
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_temp_file_path()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_etag(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> etag,
) =>
    tizenCapiWebUrlDownload.download_get_etag(
      download_id,
      etag,
    );

/// @brief Gets the name of the downloaded file set previously by download_set_file_name().
///
/// @details If the name is not set, @c NULL is returned.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks You must release @a file_name using free().
///
/// Parameter  download_id  The download ID
/// Output parameter file_name    The file name which is set by user
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_file_name()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_file_name(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> file_name,
) =>
    tizenCapiWebUrlDownload.download_get_file_name(
      download_id,
      file_name,
    );

/// @brief Gets a value associated with a given HTTP header field from the download.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function returns #DOWNLOAD_ERROR_INVALID_PARAMETER if @a field is zero-length string.
/// You must release @a value using free().
///
/// Parameter  download_id  The download ID
/// Parameter  field        The name of the HTTP header field
/// Output parameter value        The value associated with given field
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_FIELD_NOT_FOUND   Specified field not found
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_add_http_header_field()
/// @see download_remove_http_header_field()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_http_header_field(
  int download_id,
  ffi.Pointer<ffi.Char> field,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiWebUrlDownload.download_get_http_header_field(
      download_id,
      field,
      value,
    );

/// @brief Gets all the HTTP header fields added to the download request.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks You must release @a value using free().
///
/// Parameter  download_id  The download ID
/// Output parameter fields       The array of the HTTP header fields
/// Output parameter length       The number of the HTTP header fields
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_add_http_header_field()
/// @see download_remove_http_header_field()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_http_header_field_list(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Char>>> fields,
  ffi.Pointer<ffi.Int> length,
) =>
    tizenCapiWebUrlDownload.download_get_http_header_field_list(
      download_id,
      fields,
      length,
    );

/// @brief Gets a HTTP status code when a download error occurs.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id  The download ID
/// Output parameter HTTP_status  The HTTP status code defined in RFC 2616
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The download state must be #DOWNLOAD_STATE_FAILED.
///
/// @see download_start()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_http_status(
  int download_id,
  ffi.Pointer<ffi.Int> HTTP_status,
) =>
    tizenCapiWebUrlDownload.download_get_http_status(
      download_id,
      HTTP_status,
    );

/// @brief Gets the MIME type of the downloaded content.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function returns #DOWNLOAD_ERROR_INVALID_STATE if the download has not been started.
/// You must release @a mime_type using free().
///
/// Parameter  download_id  The download ID
/// Output parameter mime_type    The MIME type of the downloaded file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_file_name()
/// @see download_set_destination()
/// @see download_get_downloaded_file_path()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_mime_type(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> mime_type,
) =>
    tizenCapiWebUrlDownload.download_get_mime_type(
      download_id,
      mime_type,
    );

/// @brief Gets the network type for the downloaded file.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter download_id  The download ID
/// Output parameter net_type    The network type that is defined by client
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_network_type()
/// @see #download_network_type_e
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_network_type(
  int download_id,
  ffi.Pointer<ffi.Int32> net_type,
) =>
    tizenCapiWebUrlDownload.download_get_network_type(
      download_id,
      net_type,
    );

/// @brief Gets the app control handle (used previously to register notification messages) which is set by download_set_notification_app_control().
///
/// @details When the notification message is clicked, the action is decided by the app control handle.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks The app control handle MUST BE FREED by the client when it is not used any more.
///
/// Parameter  download_id The download ID
/// Parameter  type        The enumeration type \n
/// See #download_notification_app_control_type_e.
/// Output parameter handle      The app control handle pointer value
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_NO_DATA           The app control handle has not been set
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_notification_app_control()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_notification_app_control(
  int download_id,
  int type,
  ffi.Pointer<app_control_h> handle,
) =>
    tizenCapiWebUrlDownload.download_get_notification_app_control(
      download_id,
      type,
      handle,
    );

/// @brief Gets the description of a notification set by download_set_notification_description().
///
/// @details When registering a notification, the description is displayed in the description area of the notification message.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id  The download ID
/// Output parameter description  The description for displaying to user
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_NO_DATA           The description has not been set
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre It can get the title value before calling this API.
///
/// @see download_set_notification_description()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_notification_description(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> description,
) =>
    tizenCapiWebUrlDownload.download_get_notification_description(
      download_id,
      description,
    );

/// @brief Gets the title of the notification set by download_set_notification_title().
///
/// @details When registering a notification, the title is displayed in the title area of the notification message.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id  The download ID
/// Output parameter title        The title for displaying to user
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_NO_DATA           The title has not been set
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre It can get the title value before calling this API.
///
/// @see download_set_notification_title()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_notification_title(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> title,
) =>
    tizenCapiWebUrlDownload.download_get_notification_title(
      download_id,
      title,
    );

/// @brief Gets an option value to register notification messages set by download_set_notification_type().
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks When the notification message is clicked, the action is decided by the app control from download_set_notification_app_control(). \n
/// The default type is #DOWNLOAD_NOTIFICATION_TYPE_NONE.
///
/// Parameter  download_id  The download ID
/// Output parameter type         The enumeration type \n
/// See #download_notification_type_e.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_notification_type()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_notification_type(
  int download_id,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiWebUrlDownload.download_get_notification_type(
      download_id,
      type,
    );

/// @brief Gets the current state of the download.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id  The download ID
/// Output parameter state        The current state of the download
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see #download_state_e
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_state(
  int download_id,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiWebUrlDownload.download_get_state(
      download_id,
      state,
    );

/// @brief Gets the full path of the temporary file to store downloaded content.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter  download_id  The download ID
/// Output parameter temp_path    The full path of temporary file
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The download state must be one of the states after #DOWNLOAD_STATE_DOWNLOADING.
///
/// @see download_set_state_changed_cb()
/// @see download_unset_state_changed_cb()
/// @see download_start()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_temp_path(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> temp_path,
) =>
    tizenCapiWebUrlDownload.download_get_temp_path(
      download_id,
      temp_path,
    );

/// @brief Gets the URL to download.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks You must release @a url using free().
///
/// Parameter  download_id  The download ID
/// Output parameter url          The URL to download
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_url()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_get_url(
  int download_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> url,
) =>
    tizenCapiWebUrlDownload.download_get_url(
      download_id,
      url,
    );

/// @brief Pauses the download, asynchronously.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks The paused download can be restarted with download_start() or cancelled with download_cancel().
///
/// Parameter download_id The download ID
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_IO_ERROR          Internal I/O error
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre  The download state must be #DOWNLOAD_STATE_DOWNLOADING.
/// @post The download state will be #DOWNLOAD_STATE_PAUSED.
///
/// @see download_start()
/// @see download_cancel()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_pause(
  int download_id,
) =>
    tizenCapiWebUrlDownload.download_pause(
      download_id,
    );

/// @brief Removes a given HTTP header field from the download.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
/// This function returns #DOWNLOAD_ERROR_INVALID_PARAMETER if field is zero-length string.
///
/// Parameter download_id  The download ID
/// Parameter field        The name of the HTTP header field
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_FIELD_NOT_FOUND   Specified field not found
/// @retval #DOWNLOAD_ERROR_IO_ERROR          Internal I/O error
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_add_http_header_field()
/// @see download_get_http_header_field()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_remove_http_header_field(
  int download_id,
  ffi.Pointer<ffi.Char> field,
) =>
    tizenCapiWebUrlDownload.download_remove_http_header_field(
      download_id,
      field,
    );

/// @brief Enables or disables auto download.
/// @details If this option is enabled,
/// the previous downloading item is restarted automatically as soon as the download daemon is restarted.
/// The download progress continues after the client process is terminated.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks The default value is @c false.
///
/// Parameter download_id The download ID
/// Parameter enable      Set @c true to enable auto download,
/// otherwise set @c false to disable auto download
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_get_auto_download()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_auto_download(
  int download_id,
  bool enable,
) =>
    tizenCapiWebUrlDownload.download_set_auto_download(
      download_id,
      enable,
    );

/// @brief Sets the destination for the downloaded file.
///
/// @details The file will be downloaded to the specified destination.
/// The downloaded file is saved to an auto-generated file name in the destination.
/// If the destination is not specified, the file will be downloaded to default storage (see the @ref CAPI_SYSTEM_STORAGE_MODULE API).
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()). \n
/// The mediastorage privilege http://tizen.org/privilege/mediastorage is needed if @a path is relevant to media storage.\n
/// The externalstorage privilege http://tizen.org/privilege/externalstorage is needed if @a path is relevant to external storage.
///
/// Parameter download_id  The download ID
/// Parameter path         The absolute path to the downloaded file \n
/// If @a path is @c NULL, it clears the previous value.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE                Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER   Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY       Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE       Invalid state
/// @retval #DOWNLOAD_ERROR_INVALID_DESTINATION Invalid destination
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND        No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED   Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED       Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_get_destination()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_destination(
  int download_id,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiWebUrlDownload.download_set_destination(
      download_id,
      path,
    );

/// @brief Sets the name for the downloaded file.
///
/// @details The file will be saved in the specified destination with the given file name.
/// If the file name is not specified, the downloaded file will be saved with an auto-generated file name in the destination.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
///
/// Parameter download_id  The download ID
/// Parameter file_name    The file name for the downloaded file \n
/// If @a name is @c NULL it clears the previous value.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_get_file_name()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_file_name(
  int download_id,
  ffi.Pointer<ffi.Char> file_name,
) =>
    tizenCapiWebUrlDownload.download_set_file_name(
      download_id,
      file_name,
    );

/// @brief Sets the allowed network type for the downloaded file.
///
/// @details The file can be downloaded only under the allowed network.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
///
/// Parameter download_id  The download ID
/// Parameter net_type     The network type that the client prefers
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_get_network_type()
/// @see #download_network_type_e
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_network_type(
  int download_id,
  int net_type,
) =>
    tizenCapiWebUrlDownload.download_set_network_type(
      download_id,
      net_type,
    );

/// @brief Sets an app control handle to register notification messages.
/// @details Three types of notification message can be posted: completion, failed and ongoing type.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks When the notification message is clicked, the action to take is decided by the app control handle. \n
/// If the app control handle is not set, the following default operation is executed when the notification message is clicked: \n
/// 1) download completed state - the viewer application is executed according to extension name of downloaded content, \n
/// 2) download failed state and ongoing state - the client application is executed. \n
/// This function should be called before starting the download. \n
/// The app control handle MUST BE FREED by the client when it is not used any more.
///
/// Parameter download_id The download ID
/// Parameter type        The enumeration type \n
/// See #download_notification_app_control_type_e.
/// Parameter handle      The app control handle pointer value
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_set_notification_type()
/// @see download_get_notification_app_control()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_notification_app_control(
  int download_id,
  int type,
  app_control_h handle,
) =>
    tizenCapiWebUrlDownload.download_set_notification_app_control(
      download_id,
      type,
      handle,
    );

/// @brief Sets the description of a notification.
///
/// @details When registering a notification, the description is displayed in the description area of the notification message.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter download_id  The download ID
/// Parameter description  The description for displaying to user
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre If the notification option is not enabled, this description is not shown to user.
///
/// @see download_set_notification_type()
/// @see download_get_notification_description()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_notification_description(
  int download_id,
  ffi.Pointer<ffi.Char> description,
) =>
    tizenCapiWebUrlDownload.download_set_notification_description(
      download_id,
      description,
    );

/// @brief Sets the title of a notification.
///
/// @details When registering a notification, the title is displayed in the title area of the notification message.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// Parameter download_id The download ID
/// Parameter title       The title for displaying to user
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre If a notification option is not enabled, this title is not shown to user.
///
/// @see download_set_notification_type()
/// @see download_get_notification_title()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_notification_title(
  int download_id,
  ffi.Pointer<ffi.Char> title,
) =>
    tizenCapiWebUrlDownload.download_set_notification_title(
      download_id,
      title,
    );

/// @brief Sets an option value to register notification messages.
/// @details Three types of notification message can be posted: completion, failed and ongoing type.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks When the notification message is clicked, the action to take is decided by the app control handle (set by download_set_notification_app_control()). \n
/// If the app control is not set, the following default operation is executed when the notification message is clicked: \n
/// 1) download completed state - the viewer application is executed according to extension name of downloaded content, \n
/// 2) download failed state and ongoing state - the client application is executed. \n
/// The default type is #DOWNLOAD_NOTIFICATION_TYPE_NONE. \n
/// This function should be called before starting the download.
///
/// Parameter download_id  The download ID
/// Parameter type         The enumeration type \n
/// See #download_notification_type_e.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_set_notification_app_control()
/// @see download_get_notification_type()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_notification_type(
  int download_id,
  int type,
) =>
    tizenCapiWebUrlDownload.download_set_notification_type(
      download_id,
      type,
    );

/// @brief Registers a callback function to be invoked when progress of the download changes.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
///
/// Parameter download_id  The download ID
/// Parameter callback     The callback function to register
/// Parameter user_data    The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @post download_progress_cb() will be invoked.
///
/// @see download_unset_progress_cb()
/// @see download_progress_cb()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_progress_cb(
  int download_id,
  download_progress_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiWebUrlDownload.download_set_progress_cb(
      download_id,
      callback,
      user_data,
    );

/// @brief Registers a callback function to be invoked when a download state is changed.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
///
/// Parameter download_id  The download ID
/// Parameter callback     The callback function to register
/// Parameter user_data    The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @post download_state_changed_cb() will be invoked.
///
/// @see download_unset_state_changed_cb()
/// @see download_state_changed_cb()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_state_changed_cb(
  int download_id,
  download_state_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiWebUrlDownload.download_set_state_changed_cb(
      download_id,
      callback,
      user_data,
    );

/// @brief Sets the directory path of the temporary file used in the previous download request.
/// @details This is only useful when resuming download to make HTTP request header at the client side.
/// Otherwise, the path should be ignored internally.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks If the etag value is not present in the download database, it is useless to set the temporary path. \n
/// When resuming download, the data is attached at the end of this temporary file. \n
/// The mediastorage privilege http://tizen.org/privilege/mediastorage is needed if @a path is relevant to media storage.\n
/// The externalstorage privilege http://tizen.org/privilege/externalstorage is needed if @a path is relevant to external storage.
///
///
/// Parameter  download_id  The download ID
/// Output parameter path         The full path of temporary file
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_INVALID_DESTINATION Invalid destination
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_get_etag()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_temp_file_path(
  int download_id,
  ffi.Pointer<ffi.Char> path,
) =>
    tizenCapiWebUrlDownload.download_set_temp_file_path(
      download_id,
      path,
    );

/// @brief Sets the URL to download.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
///
/// Parameter download_id  The download ID
/// Parameter url          The URL to download \n
/// If @a url is @c NULL, it clears the previous value.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre The state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_FAILED, or #DOWNLOAD_STATE_CANCELED.
///
/// @see download_get_url()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_set_url(
  int download_id,
  ffi.Pointer<ffi.Char> url,
) =>
    tizenCapiWebUrlDownload.download_set_url(
      download_id,
      url,
    );

/// @brief Starts or resumes the download, asynchronously.
///
/// @details This function starts to download the current URL, or resumes the download if paused.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks The URL is the mandatory information to start the download.
/// @remarks It should call download_set_progress_cb() and download_set_state_changed_cb() again
/// after the client process is restarted or download_destroy() is called.
///
/// Parameter download_id The download ID
///
/// @return  @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_IO_ERROR          Internal I/O error
/// @retval #DOWNLOAD_ERROR_INVALID_URL       Invalid URL
/// @retval #DOWNLOAD_ERROR_INVALID_DESTINATION Invalid destination
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_QUEUE_FULL        Download server queue is full
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @pre  The download state must be #DOWNLOAD_STATE_READY, #DOWNLOAD_STATE_PAUSED, #DOWNLOAD_STATE_CANCELED, or #DOWNLOAD_STATE_FAILED.
/// @post The download state will be #DOWNLOAD_STATE_QUEUED or #DOWNLOAD_STATE_DOWNLOADING.
///
/// @see download_set_url()
/// @see download_pause()
/// @see download_cancel()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_start(
  int download_id,
) =>
    tizenCapiWebUrlDownload.download_start(
      download_id,
    );

/// @brief Unregisters the download progress change callback function.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
///
/// Parameter download_id The download ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_INVALID_STATE     Invalid state
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_progress_cb()
/// @see download_progress_cb()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_unset_progress_cb(
  int download_id,
) =>
    tizenCapiWebUrlDownload.download_unset_progress_cb(
      download_id,
    );

/// @brief Unregisters the download state change callback function.
///
/// @since_tizen 2.3
/// @privlevel public
/// @privilege %http://tizen.org/privilege/download
///
/// @remarks This function should be called before downloading (see download_start()).
///
/// Parameter download_id The download ID
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #DOWNLOAD_ERROR_NONE              Successful
/// @retval #DOWNLOAD_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #DOWNLOAD_ERROR_ID_NOT_FOUND      No download ID
/// @retval #DOWNLOAD_ERROR_PERMISSION_DENIED Permission denied
/// @retval #DOWNLOAD_ERROR_NOT_SUPPORTED     Not supported
///
/// @see download_set_state_changed_cb()
/// @see download_state_changed_cb()
///
/// Module getter: `tizenCapiWebUrlDownload`.
int download_unset_state_changed_cb(
  int download_id,
) =>
    tizenCapiWebUrlDownload.download_unset_state_changed_cb(
      download_id,
    );

