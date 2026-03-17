// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCsrClient`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcsr-client.so.2`.
///
/// Security / CSR.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_csr_client;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @partner
/// @brief Cancels a running scanning task, asynchronously.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Only for asynchronous scan functions.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_NO_TASK No task to cancel
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_scan_files_async()
/// @see csr_cs_scan_dir_async()
/// @see csr_cs_scan_dirs_async()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_cancel_scanning(
  csr_cs_context_h handle,
) =>
    tizenCsrClient.csr_cs_cancel_scanning(
      handle,
    );

/// @partner
/// @brief Initializes and returns a Content Screening API handle.
/// @details A Content Screening API handle (or CSR CS handle) is obtained by this method.
/// The handle is required for subsequent CSR CS API calls.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a handle should be released using csr_cs_context_destroy().
/// @remarks Multiple handles can be obtained.
/// Output parameter handle A pointer of CSR CS context handle
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE @a handle may be null
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_context_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_context_create(
  ffi.Pointer<csr_cs_context_h> handle,
) =>
    tizenCsrClient.csr_cs_context_create(
      handle,
    );

/// @partner
/// @brief Releases all system resources associated with a Content Screening API handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_context_create()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_context_destroy(
  csr_cs_context_h handle,
) =>
    tizenCsrClient.csr_cs_context_destroy(
      handle,
    );

/// @partner
/// @brief Gets information on a detected malware file specified by file path.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a malware will be released when @a handle is destroyed.
/// @remarks @a file_path will be null if it's result of csr_cs_scan_data().
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter file_path A path of a detected malware file
/// Output parameter malware A pointer of the detected malware handle. It can be null when no malware file
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a file_path or @a malware is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED No permission to remove
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST No malware file
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_scan_data()
/// @see csr_cs_scan_file()
/// @see csr_cs_detected_cb
///
/// Module getter: `tizenCsrClient`.
int csr_cs_get_detected_malware(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Char> file_path,
  ffi.Pointer<csr_cs_malware_h> malware,
) =>
    tizenCsrClient.csr_cs_get_detected_malware(
      handle,
      file_path,
      malware,
    );

/// @partner
/// @brief Gets information on a detected malware files specified by directory path.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a list will be released when @a handle is destroyed.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter dir_paths A directory path where detected malware files exists
/// Parameter count Count of array element of @a dir_paths
/// Output parameter list A pointer of the detected malware list handle. It can be null when there is no malware file
/// Output parameter list_count Count of detected malware files which existed in the specified directory
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a dir_paths, @a list, or @a count is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED No permission to remove
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST No malware file
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_get_detected_malwares(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dir_paths,
  int count,
  ffi.Pointer<csr_cs_malware_list_h> list,
  ffi.Pointer<ffi.Size> list_count,
) =>
    tizenCsrClient.csr_cs_get_detected_malwares(
      handle,
      dir_paths,
      count,
      list,
      list_count,
    );

/// @partner
/// @brief Gets information on a ignored malware file specified by file path.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a malware will be released when @a handle is destroyed.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter file_path A path of a ignored malware file
/// Output parameter malware A pointer of the detected malware handle. It can be null when no ignored file
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a file_path or @a malware is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED No permission to remove
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST No ignored file
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_get_ignored_malware(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Char> file_path,
  ffi.Pointer<csr_cs_malware_h> malware,
) =>
    tizenCsrClient.csr_cs_get_ignored_malware(
      handle,
      file_path,
      malware,
    );

/// @partner
/// @brief Gets information on ignored malware files specified by directory path.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a list will be released when @a handle is destroyed.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter dir_paths A directory path where ignored malware files exists
/// Parameter count Count of array element of @a dir_paths
/// Output parameter list A pointer of the detected malware list handle. It can be null when no ignored file
/// Output parameter list_count Count of ignored malware files which existed in the specified directory
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a dir_paths, @a list, or @a count is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED No permission to remove
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST No ignored file
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_get_ignored_malwares(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dir_paths,
  int count,
  ffi.Pointer<csr_cs_malware_list_h> list,
  ffi.Pointer<ffi.Size> list_count,
) =>
    tizenCsrClient.csr_cs_get_ignored_malwares(
      handle,
      dir_paths,
      count,
      list,
      list_count,
    );

/// @platform
/// @brief Judges how a detected malware file is handled.
/// @details Detected malware will be removed by #CSR_CS_ACTION_REMOVE action.
/// File or application which contains malware will be removed.
/// Detected malware will be ignored by #CSR_CS_ACTION_IGNORE action.
/// File or application which contains malware will be ignored and will not be treated
/// as malware until this API is called with #CSR_CS_ACTION_UNIGNORE action.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// @remarks Detected malware can be removed or ignored.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter malware A handle of a detected malware
/// Parameter action An action to be taken
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a malware or @a action is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED No permission to remove
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST File to take action on not found
/// @retval #CSR_ERROR_FILE_CHANGED File to take action on changed after detection
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_REMOVE_FAILED Removing file or application is failed
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_judge_detected_malware(
  csr_cs_context_h handle,
  csr_cs_malware_h malware,
  int action,
) =>
    tizenCsrClient.csr_cs_judge_detected_malware(
      handle,
      malware,
      action,
    );

/// @partner
/// @brief Extracts an url that contains detailed information on vendor's web site from the detected malware handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a detailed_url must be released using free().
/// Parameter malware A detected malware handle
/// Output parameter detailed_url A pointer of an url that contains detailed information on
/// vendor's web site. It can be null if a vendor doesn't provide this information
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid detected malware handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a detailed_url is invalid.
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_get_detailed_url(
  csr_cs_malware_h malware,
  ffi.Pointer<ffi.Pointer<ffi.Char>> detailed_url,
) =>
    tizenCsrClient.csr_cs_malware_get_detailed_url(
      malware,
      detailed_url,
    );

/// @partner
/// @brief Extracts the file name where a malware is detected from the detected malware handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a file_name must be released using free().
/// Parameter malware A detected malware handle
/// Output parameter file_name A pointer of the file name where a malware is detected. The file name is null for csr_cs_scan_data()
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid detected malware handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a file_name is invalid
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_get_file_name(
  csr_cs_malware_h malware,
  ffi.Pointer<ffi.Pointer<ffi.Char>> file_name,
) =>
    tizenCsrClient.csr_cs_malware_get_file_name(
      malware,
      file_name,
    );

/// @partner
/// @brief Extracts the name of a detected malware from the detected malware handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a name must be released using free().
/// Parameter malware A detected malware handle
/// Output parameter name A pointer of the name of a detected malware
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid detected malware handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a name is invalid
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_get_name(
  csr_cs_malware_h malware,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCsrClient.csr_cs_malware_get_name(
      malware,
      name,
    );

/// @partner
/// @brief Extracts the package id of an application where a malware is detected from detected malware handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a pkg_id must be released using free().
/// Parameter malware A detected malware handle
/// Output parameter pkg_id A pointer of the package id where a malware is detected.
/// It is null when a malware was not detected in an application
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid detected malware handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a pkg_id is invalid
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_get_pkg_id(
  csr_cs_malware_h malware,
  ffi.Pointer<ffi.Pointer<ffi.Char>> pkg_id,
) =>
    tizenCsrClient.csr_cs_malware_get_pkg_id(
      malware,
      pkg_id,
    );

/// @partner
/// @brief Extracts the severity of a detected malware from the detected malware handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// Parameter malware A detected malware handle returned by csr_cs_scan_data(),
/// csr_cs_scan_file() or csr_cs_malware_list_get_malware()
/// Output parameter severity A pointer of the severity of a detected malware
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid detected malware handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a severity is invalid
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_get_severity(
  csr_cs_malware_h malware,
  ffi.Pointer<ffi.Int32> severity,
) =>
    tizenCsrClient.csr_cs_malware_get_severity(
      malware,
      severity,
    );

/// @partner
/// @brief Extracts the time stamp when a malware is detected from the detected malware handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// Parameter malware A detected malware handle
/// Output parameter timestamp A pointer of the time stamp in milli second when a malware is detected
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid detected malware handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a timestamp is invalid
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_get_timestamp(
  csr_cs_malware_h malware,
  ffi.Pointer<time_t> timestamp,
) =>
    tizenCsrClient.csr_cs_malware_get_timestamp(
      malware,
      timestamp,
    );

/// @partner
/// @brief Extracts a user response of a popup from the detected malware handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// Parameter malware A detected malware handle
/// Output parameter response A pointer of the user response
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid result handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a response is invalid
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_get_user_response(
  csr_cs_malware_h malware,
  ffi.Pointer<ffi.Int32> response,
) =>
    tizenCsrClient.csr_cs_malware_get_user_response(
      malware,
      response,
    );

/// @partner
/// @brief Checks if a malware was detected in an application or in a file.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// Parameter malware A detected malware handle
/// Output parameter is_app A pointer of a flag indicating the position where a malware was detected.
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid result handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a is_app is invalid
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_is_app(
  csr_cs_malware_h malware,
  ffi.Pointer<ffi.Bool> is_app,
) =>
    tizenCsrClient.csr_cs_malware_is_app(
      malware,
      is_app,
    );

/// @partner
/// @brief Extracts the detected malware handle from the detected malware list handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks @a malware will be released when a context is released using csr_cs_context_destroy().
/// Parameter list A detected malware list handle returned by csr_cs_get_detected_malwares() or csr_cs_get_ignored_malwares()
/// Parameter index An index of a target detected malware handle to get
/// Output parameter malware A pointer of the detected malware handle. It can be null when index is invalid
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid list
/// @retval #CSR_ERROR_INVALID_PARAMETER @a index or @a malware is invalid
/// @retval #CSR_ERROR_SYSTEM System error
///
/// Module getter: `tizenCsrClient`.
int csr_cs_malware_list_get_malware(
  csr_cs_malware_list_h list,
  int index,
  ffi.Pointer<csr_cs_malware_h> malware,
) =>
    tizenCsrClient.csr_cs_malware_list_get_malware(
      list,
      index,
      malware,
    );

/// @partner
/// @brief Scans a data buffer for malware.
/// @details @a malware result of this method is not available for being judged by
/// csr_cs_judge_detected_malware() because it's data and not a file, so it cannot be removed or ignored.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Scan data synchronously.
/// @remarks @a malware will be released when @a handle is released using csr_cs_context_destroy().
/// @remarks If multiple malwares exists in @a data, the malware with the highest severity will be returned.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter data A scan target data
/// Parameter length A size of a scan target data
/// Output parameter malware A pointer of the detected malware handle. It can be null when no malware detected
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a data or @a malware is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED No privilege to call
/// @retval #CSR_ERROR_NOT_SUPPORTED Device needed to run API is not supported
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_USER_RESPONSE_FAILED Getting user response is failed.
/// @a malware will be allocated on this error
/// @retval #CSR_ERROR_ENGINE_NOT_EXIST No engine exists
/// @retval #CSR_ERROR_ENGINE_DISABLED Engine is in disabled state
/// @retval #CSR_ERROR_ENGINE_NOT_ACTIVATED Engine is not activated
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_context_create()
/// @see csr_cs_context_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_scan_data(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.UnsignedChar> data,
  int length,
  ffi.Pointer<csr_cs_malware_h> malware,
) =>
    tizenCsrClient.csr_cs_scan_data(
      handle,
      data,
      length,
      malware,
    );

/// @partner
/// @brief Scans a directory specified by directory path for malware.
/// @details If scanning of the single file is done without detected malware,
/// csr_cs_file_scanned_cb() is called and else if malware detected
/// csr_cs_detected_cb() is called. If scanning is cancelled by
/// csr_cs_cancel_scanning(), csr_cs_cancelled_cb() is called. If scanning is failed
/// with error, csr_cs_error_cb() is called. If scanning is completed without
/// error, csr_cs_completed_cb(). Every callbacks are registered by callback
/// setter methods to @a handle and if callback is not registered, it will be just skipped to be called.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Asynchronous function.
/// @remarks The caller should set callback functions before calling this method.
/// @remarks Detected malware which is provided to the callback will be released when
/// @a handle is released using csr_cs_context_destroy().
/// @remarks If multiple malwares exists in a file, the malware with the highest
/// severity will be returned for the file via csr_cs_set_detected_cb().
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter dir_path A path of scan target directory
/// Parameter user_data The pointer of a user data. It can be null.
/// It is used on the callback functions which are registered to @a handle
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a dir_path is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Access denied
/// @retval #CSR_ERROR_NOT_SUPPORTED Device needed to run API is not supported
/// @retval #CSR_ERROR_BUSY Busy for processing another request
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST File not found
/// @retval #CSR_ERROR_FILE_SYSTEM File type is invalid. It should be directory
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_ENGINE_PERMISSION Insufficient permission of engine
/// @retval #CSR_ERROR_ENGINE_NOT_EXIST No engine exists
/// @retval #CSR_ERROR_ENGINE_DISABLED Engine is in disabled state
/// @retval #CSR_ERROR_ENGINE_NOT_ACTIVATED Engine is not activated
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @pre It is required to set callbacks, csr_cs_completed_cb, csr_cs_error_cb(),
/// csr_cs_cancel_scanning(), csr_cs_detected_cb(), and/or csr_cs_file_scanned_cb().
/// @see csr_cs_set_file_scanned_cb()
/// @see csr_cs_set_detected_cb()
/// @see csr_cs_set_completed_cb()
/// @see csr_cs_set_cancelled_cb()
/// @see csr_cs_set_error_cb()
/// @see csr_cs_cancel_scanning()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_scan_dir_async(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Char> dir_path,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCsrClient.csr_cs_scan_dir_async(
      handle,
      dir_path,
      user_data,
    );

/// @partner
/// @brief Scan directories specified by an array of directory paths for malware.
/// @details If scanning of the single file is done without detected malware,
/// csr_cs_file_scanned_cb() is called and else if malware detected
/// csr_cs_detected_cb() is called. If scanning is cancelled by
/// csr_cs_cancel_scanning(), csr_cs_cancelled_cb() is called. If scanning is failed
/// with error, csr_cs_error_cb() is called. If scanning is completed without
/// error, csr_cs_completed_cb(). Every callbacks are registered by callback
/// setter methods to @a handle and if callback is not registered, it will just be skipped to be called.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Asynchronous function.
/// @remarks The caller should set callback functions before calls this method.
/// @remarks Detected malware which is provided to the callback will be released when
/// @a handle is released using csr_cs_context_destroy().
/// @remarks If multiple malwares exists in a file, the malware with the highest
/// severity will be returned for the file via csr_cs_set_detected_cb().
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter dir_paths An array of scan target directories
/// Parameter count A number of scan target directories
/// Parameter user_data The pointer of a user data. It can be null. It is used on
/// the callback functions which are registered to @a handle
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a dir_paths is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Access denied
/// @retval #CSR_ERROR_NOT_SUPPORTED Device needed to run API is not supported
/// @retval #CSR_ERROR_BUSY Busy for processing another request
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST File not found
/// @retval #CSR_ERROR_FILE_SYSTEM File type is invalid. It should be directory
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_ENGINE_PERMISSION Insufficient permission of engine
/// @retval #CSR_ERROR_ENGINE_NOT_EXIST No engine exists
/// @retval #CSR_ERROR_ENGINE_DISABLED Engine is in disabled state
/// @retval #CSR_ERROR_ENGINE_NOT_ACTIVATED Engine is not activated
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @pre It is required to set callbacks, csr_cs_completed_cb, csr_cs_error_cb(),
/// csr_cs_cancel_scanning(), csr_cs_detected_cb(), and/or csr_cs_file_scanned_cb().
/// @see csr_cs_set_file_scanned_cb()
/// @see csr_cs_set_detected_cb()
/// @see csr_cs_set_completed_cb()
/// @see csr_cs_set_cancelled_cb()
/// @see csr_cs_set_error_cb()
/// @see csr_cs_cancel_scanning()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_scan_dirs_async(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> dir_paths,
  int count,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCsrClient.csr_cs_scan_dirs_async(
      handle,
      dir_paths,
      count,
      user_data,
    );

/// @partner
/// @brief Scans a file specified by file path for malware.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Scan file synchronously.
/// @remarks @a malware will be released when @a handle is released using csr_cs_context_destroy().
/// @remarks If multiple malwares exists in a file, the malware with the highest severity will be returned.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter file_path A path of scan target file
/// Output parameter malware A pointer of the detected malware handle. It can be null when no malware detected
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a file_path or @a malware is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Access denied
/// @retval #CSR_ERROR_NOT_SUPPORTED Device needed to run API is not supported
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_REMOVE_FAILED Removing file or application is failed when malware exist and user select to remove by popup.
/// @a malware will be allocated on this error
/// @retval #CSR_ERROR_USER_RESPONSE_FAILED Getting user response is failed
/// @a malware will be allocated on this error
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST File not found
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_ENGINE_NOT_EXIST No engine exists
/// @retval #CSR_ERROR_ENGINE_DISABLED Engine is in disabled state
/// @retval #CSR_ERROR_ENGINE_NOT_ACTIVATED Engine is not activated
/// @retval #CSR_ERROR_ENGINE_PERMISSION Insufficient permission of engine
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_context_create()
/// @see csr_cs_context_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_scan_file(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Char> file_path,
  ffi.Pointer<csr_cs_malware_h> malware,
) =>
    tizenCsrClient.csr_cs_scan_file(
      handle,
      file_path,
      malware,
    );

/// @partner
/// @brief Scan files specified by an array of file paths for malware.
/// @details If scanning of the single file is done without detected malware,
/// csr_cs_file_scanned_cb() is called and else if malware detected
/// csr_cs_detected_cb() is called. If scanning is cancelled by
/// csr_cs_cancel_scanning(), csr_cs_cancelled_cb() is called. If scanning is failed
/// with error, csr_cs_error_cb() is called. If scanning is completed without
/// error, csr_cs_completed_cb(). Every callbacks are registered by callback
/// setter methods to @a handle and if callback is not registered, it will be just skipped to be called.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Asynchronous function.
/// @remarks The caller should set callback functions before calling this method.
/// @remarks Detected malware which is provided to the callback will be released when
/// @a handle is released using csr_cs_context_destroy().
/// @remarks If multiple malwares exists in a file, the malware with the highest
/// severity will be returned for the file via csr_cs_set_detected_cb().
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter file_paths An array of scan target files
/// Parameter count A number of scan target files
/// Parameter user_data The pointer of a user data. It can be null.
/// It is delivered back to the client when a callback function is called
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a file_paths is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Access denied
/// @retval #CSR_ERROR_NOT_SUPPORTED Device needed to run API is not supported
/// @retval #CSR_ERROR_BUSY Busy for processing another request
/// @retval #CSR_ERROR_FILE_DO_NOT_EXIST File not found
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_DB DB transaction error
/// @retval #CSR_ERROR_ENGINE_PERMISSION Insufficient permission of engine
/// @retval #CSR_ERROR_ENGINE_NOT_EXIST No engine exists
/// @retval #CSR_ERROR_ENGINE_DISABLED Engine is in disabled state
/// @retval #CSR_ERROR_ENGINE_NOT_ACTIVATED Engine is not activated
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @pre It is required to set callbacks, csr_cs_completed_cb, csr_cs_error_cb(),
/// csr_cs_cancel_scanning(), csr_cs_detected_cb(), and/or csr_cs_file_scanned_cb().
/// @see csr_cs_set_file_scanned_cb()
/// @see csr_cs_set_detected_cb()
/// @see csr_cs_set_completed_cb()
/// @see csr_cs_set_cancelled_cb()
/// @see csr_cs_set_error_cb()
/// @see csr_cs_cancel_scanning()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_scan_files_async(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> file_paths,
  int count,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCsrClient.csr_cs_scan_files_async(
      handle,
      file_paths,
      count,
      user_data,
    );

/// @partner
/// @brief Sets a popup option for malware detected.
/// @details If #CSR_CS_ASK_USER_YES is set, a popup will be prompted to a user when a malware is detected.
/// If #CSR_CS_ASK_USER_NO is set which is default value, no popup will be prompted even if a malware is detected.
/// User can allow, disallow, and remove detected malware by popup.
/// Selection can be different between malware's severity.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks This option is disabled(#CSR_CS_ASK_USER_NO) as a default.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter ask_user Popup option to set or unset
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a ask_user is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_context_create()
/// @see csr_cs_context_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_ask_user(
  csr_cs_context_h handle,
  int ask_user,
) =>
    tizenCsrClient.csr_cs_set_ask_user(
      handle,
      ask_user,
    );

/// @partner
/// @brief Sets a callback function for scanning cancelled.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Callback for asynchronous scan functions.
/// @remarks Client can cancel asynchronous scanning by csr_cs_cancel_scanning().
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter callback A callback function for scanning cancelled
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a callback is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_scan_files_async()
/// @see csr_cs_scan_dir_async()
/// @see csr_cs_scan_dirs_async()
/// @see csr_cs_cancel_scanning()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_cancelled_cb(
  csr_cs_context_h handle,
  csr_cs_cancelled_cb callback,
) =>
    tizenCsrClient.csr_cs_set_cancelled_cb(
      handle,
      callback,
    );

/// @partner
/// @brief Sets a callback function for scanning completed without an error.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Callback for asynchronous scan functions.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter callback A callback function for scanning completed successfully
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a callback is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_scan_files_async()
/// @see csr_cs_scan_dir_async()
/// @see csr_cs_scan_dirs_async()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_completed_cb(
  csr_cs_context_h handle,
  csr_cs_completed_cb callback,
) =>
    tizenCsrClient.csr_cs_set_completed_cb(
      handle,
      callback,
    );

/// @partner
/// @brief Sets a maximum core usage during scanning.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks If a core usage is not set, #CSR_CS_CORE_USAGE_DEFAULT will be used.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter usage A maximum core usage during scanning
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a usage is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_context_create()
/// @see csr_cs_context_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_core_usage(
  csr_cs_context_h handle,
  int usage,
) =>
    tizenCsrClient.csr_cs_set_core_usage(
      handle,
      usage,
    );

/// @partner
/// @brief Sets a callback function for detection of a malware.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Callback for asynchronous scan functions.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter callback A callback function for each file or application scanning done with malware detected
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a callback is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_scan_files_async()
/// @see csr_cs_scan_dir_async()
/// @see csr_cs_scan_dirs_async()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_detected_cb(
  csr_cs_context_h handle,
  csr_cs_detected_cb callback,
) =>
    tizenCsrClient.csr_cs_set_detected_cb(
      handle,
      callback,
    );

/// @partner
/// @brief Sets a callback function for scanning stopped with an error.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Callback for asynchronous scan functions.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter callback A callback function for scanning stopped due to an error
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a callback is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_scan_files_async()
/// @see csr_cs_scan_dir_async()
/// @see csr_cs_scan_dirs_async()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_error_cb(
  csr_cs_context_h handle,
  csr_cs_error_cb callback,
) =>
    tizenCsrClient.csr_cs_set_error_cb(
      handle,
      callback,
    );

/// @partner
/// @brief Sets a callback function for the case that a file scan is completed.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Callback for asynchronous scan functions.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter callback A callback function for each file or application scanning done without any malware.
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a callback is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_scan_files_async()
/// @see csr_cs_scan_dir_async()
/// @see csr_cs_scan_dirs_async()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_file_scanned_cb(
  csr_cs_context_h handle,
  csr_cs_file_scanned_cb callback,
) =>
    tizenCsrClient.csr_cs_set_file_scanned_cb(
      handle,
      callback,
    );

/// @partner
/// @brief Sets a popup message of a client in case that a malware is detected.
/// @details Default message is "Malware which may harm your device is detected."
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Meaningful only when ask user option is set by csr_cs_set_ask_user().
/// @remarks The message will be printed on popup for user.
/// @remarks Default popup message will be used if it isn't set.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter message A message to print on a popup
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a message is too long or empty. Max size is 64 bytes
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_context_create()
/// @see csr_cs_context_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_popup_message(
  csr_cs_context_h handle,
  ffi.Pointer<ffi.Char> message,
) =>
    tizenCsrClient.csr_cs_set_popup_message(
      handle,
      message,
    );

/// @partner
/// @brief Sets a scan on cloud option.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.scan
/// @remarks Scan on cloud option is turned off as a default.
/// @remarks If an engine does not support "scanning on cloud", this option is silently ignored.
/// Parameter handle CSR CS context handle returned by csr_cs_context_create()
/// Parameter scan_on_cloud Flag of scanning on cloud option
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_cs_context_create()
/// @see csr_cs_context_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_cs_set_scan_on_cloud(
  csr_cs_context_h handle,
  bool scan_on_cloud,
) =>
    tizenCsrClient.csr_cs_set_scan_on_cloud(
      handle,
      scan_on_cloud,
    );

/// @platform
/// @brief Releases all system resources associated with a engine information handle.
/// @since_tizen 3.0
/// Parameter engine The engine information handle
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
///
/// Module getter: `tizenCsrClient`.
int csr_engine_destroy(
  csr_engine_h engine,
) =>
    tizenCsrClient.csr_engine_destroy(
      engine,
    );

/// @platform
/// @brief Extracts the state of engine activation from the engine information handle.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// Parameter engine The engine information handle
/// Output parameter activated A pointer of the engine activation state
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a activated is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_get_current_engine()
///
/// Module getter: `tizenCsrClient`.
int csr_engine_get_activated(
  csr_engine_h engine,
  ffi.Pointer<ffi.Int32> activated,
) =>
    tizenCsrClient.csr_engine_get_activated(
      engine,
      activated,
    );

/// @platform
/// @brief Extracts an engine's data version from the engine information handle.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// @remarks @a version must be released using free().
/// Parameter engine The engine information handle
/// Output parameter version A pointer of the data version. It can be null
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a version is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_get_current_engine()
///
/// Module getter: `tizenCsrClient`.
int csr_engine_get_data_version(
  csr_engine_h engine,
  ffi.Pointer<ffi.Pointer<ffi.Char>> version,
) =>
    tizenCsrClient.csr_engine_get_data_version(
      engine,
      version,
    );

/// @platform
/// @brief Extracts the latest update time of an engine from the engine information handle.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// Parameter engine The engine information handle
/// Output parameter time A pointer of lasted update time
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a time is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_get_current_engine()
///
/// Module getter: `tizenCsrClient`.
int csr_engine_get_latest_update_time(
  csr_engine_h engine,
  ffi.Pointer<time_t> time,
) =>
    tizenCsrClient.csr_engine_get_latest_update_time(
      engine,
      time,
    );

/// @platform
/// @brief Extracts an engine name from the engine information handle.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// @remarks @a name must be released using free().
/// Parameter engine The engine information handle
/// Output parameter name A pointer of the engine's name
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a name is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_get_current_engine()
///
/// Module getter: `tizenCsrClient`.
int csr_engine_get_name(
  csr_engine_h engine,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCsrClient.csr_engine_get_name(
      engine,
      name,
    );

/// @platform
/// @brief Gets the engine state.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// Parameter engine The engine information handle
/// Output parameter state A pointer of the engine state
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a state is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_get_current_engine()
///
/// Module getter: `tizenCsrClient`.
int csr_engine_get_state(
  csr_engine_h engine,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCsrClient.csr_engine_get_state(
      engine,
      state,
    );

/// @platform
/// @brief Extracts a vendor name from the engine information handle.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// @remarks @a vendor must be released using free().
/// Parameter engine The engine information handle
/// Output parameter vendor A pointer of the engine's vendor name
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a vendor is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_get_current_engine()
///
/// Module getter: `tizenCsrClient`.
int csr_engine_get_vendor(
  csr_engine_h engine,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vendor,
) =>
    tizenCsrClient.csr_engine_get_vendor(
      engine,
      vendor,
    );

/// @platform
/// @brief Extracts an engine version from the engine information handle.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// @remarks @a version must be released using free().
/// Parameter engine An engine information handle
/// Output parameter version A pointer of the engine's version
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a version is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_get_current_engine()
///
/// Module getter: `tizenCsrClient`.
int csr_engine_get_version(
  csr_engine_h engine,
  ffi.Pointer<ffi.Pointer<ffi.Char>> version,
) =>
    tizenCsrClient.csr_engine_get_version(
      engine,
      version,
    );

/// @platform
/// @brief Enable or disable an engine.
/// @since_tizen 3.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/antivirus.admin
/// @remarks If an engine is disabled, all major operations would be failed with #CSR_ERROR_ENGINE_DISABLED error code.
/// Parameter engine The engine information handle
/// Parameter state The engine state
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid engine information handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a state is invalid
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_get_current_engine()
///
/// Module getter: `tizenCsrClient`.
int csr_engine_set_state(
  csr_engine_h engine,
  int state,
) =>
    tizenCsrClient.csr_engine_set_state(
      engine,
      state,
    );

/// @platform
/// @brief Gets the handle of a current engine information.
/// @since_tizen 3.0
/// @remarks @a engine should be released using csr_engine_destroy().
/// Parameter id Engine identifier to get handle
/// Output parameter engine A pointer of the engine information handle
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_PARAMETER @a engine is invalid
/// @retval #CSR_ERROR_ENGINE_NOT_EXIST No engine exists
/// @retval #CSR_ERROR_ENGINE_NOT_ACTIVATED Engine is not activated
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_engine_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_get_current_engine(
  int id,
  ffi.Pointer<csr_engine_h> engine,
) =>
    tizenCsrClient.csr_get_current_engine(
      id,
      engine,
    );

/// @partner
/// @brief Checks URL reputation against the engine vendor's database.
/// @details Checks whether accessing the URL is risky or not and returns a result handle with the risk level for the URL.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.webprotect
/// @remarks @a result will be released when @a handle is released using csr_wp_context_destroy().
/// Parameter handle CSR WP context handle returned by csr_wp_context_create()
/// Parameter url URL to check
/// Output parameter result A pointer of the result handle with the Risk level for the URL
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CSR_ERROR_NOT_SUPPORTED Device needed to run API is not supported
/// @retval #CSR_ERROR_INVALID_PARAMETER @a url or @a result is invalid
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_USER_RESPONSE_FAILED Getting user response is failed.
/// @a result will be allocated on this error
/// @retval #CSR_ERROR_ENGINE_NOT_EXIST No engine exists
/// @retval #CSR_ERROR_ENGINE_DISABLED Engine is in disabled state
/// @retval #CSR_ERROR_ENGINE_NOT_ACTIVATED Engine is not activated
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_wp_context_create()
/// @see csr_wp_set_ask_user()
/// @see csr_wp_set_popup_message()
///
/// Module getter: `tizenCsrClient`.
int csr_wp_check_url(
  csr_wp_context_h handle,
  ffi.Pointer<ffi.Char> url,
  ffi.Pointer<csr_wp_check_result_h> result,
) =>
    tizenCsrClient.csr_wp_check_url(
      handle,
      url,
      result,
    );

/// @partner
/// @brief Initializes and returns a CSR Web Protection API handle.
/// @details A Web Protection API handle (or CSR WP handle) is obtained by this method.
/// The handle is required for subsequent CSR WP API calls.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.webprotect
/// @remarks @a handle should be released using csr_wp_context_destroy().
/// @remarks Multiple handles can be obtained.
/// Output parameter handle A pointer of CSR WP context handle
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_OUT_OF_MEMORY Not enough memory
/// @retval #CSR_ERROR_INVALID_PARAMETER @a handle is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_wp_context_destroy()
///
/// Module getter: `tizenCsrClient`.
int csr_wp_context_create(
  ffi.Pointer<csr_wp_context_h> handle,
) =>
    tizenCsrClient.csr_wp_context_create(
      handle,
    );

/// @partner
/// @brief Releases all system resources associated with a Web Protection API handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.webprotect
/// Parameter handle CSR WP context handle returned by csr_wp_context_create()
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_SOCKET Socket error between client and server
/// @retval #CSR_ERROR_SERVER Server has been failed for some reason
/// @retval #CSR_ERROR_ENGINE_INTERNAL Engine Internal error
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_wp_context_create()
///
/// Module getter: `tizenCsrClient`.
int csr_wp_context_destroy(
  csr_wp_context_h handle,
) =>
    tizenCsrClient.csr_wp_context_destroy(
      handle,
    );

/// @partner
/// @brief Extracts an url of vendor's web site that contains detailed information about the risk from the result handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.webprotect
/// @remarks @a detailed_url must be released using free().
/// Parameter result A result handle returned by csr_wp_check_url()
/// Output parameter detailed_url A pointer of an url that contains detailed information about the risk
/// If the risk level is #CSR_WP_RISK_MEDIUM or #CSR_WP_RISK_HIGH,
/// this url should be provided by the engine
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid result handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a detailed_url is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_wp_check_url()
///
/// Module getter: `tizenCsrClient`.
int csr_wp_result_get_detailed_url(
  csr_wp_check_result_h result,
  ffi.Pointer<ffi.Pointer<ffi.Char>> detailed_url,
) =>
    tizenCsrClient.csr_wp_result_get_detailed_url(
      result,
      detailed_url,
    );

/// @partner
/// @brief Extracts a risk level of the url from the result handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.webprotect
/// Parameter result A result handle returned by csr_wp_check_url()
/// Output parameter level A pointer of the risk level for the given URL
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid result handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a level is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_wp_check_url()
///
/// Module getter: `tizenCsrClient`.
int csr_wp_result_get_risk_level(
  csr_wp_check_result_h result,
  ffi.Pointer<ffi.Int32> level,
) =>
    tizenCsrClient.csr_wp_result_get_risk_level(
      result,
      level,
    );

/// @partner
/// @brief Extracts a user response of a popup from the result handle.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.webprotect
/// Parameter result A result handle returned by csr_wp_check_url()
/// Output parameter response A pointer of the user response
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid result handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a response is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_wp_check_url()
/// @see #csr_wp_user_response_e
///
/// Module getter: `tizenCsrClient`.
int csr_wp_result_get_user_response(
  csr_wp_check_result_h result,
  ffi.Pointer<ffi.Int32> response,
) =>
    tizenCsrClient.csr_wp_result_get_user_response(
      result,
      response,
    );

/// @partner
/// @brief Sets a popup option for risky URL checked.
/// @details If #CSR_WP_ASK_USER_YES is set, a popup will be prompted to a user when a URL turns out risky.
/// If #CSR_WP_ASK_USER_NO is set, no popup will be prompted even when a URL turns out risky.
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.webprotect
/// @remarks This option is disabled(#CSR_WP_ASK_USER_NO) as a default.
/// Parameter handle CSR WP context handle returned by csr_wp_context_create()
/// Parameter ask_user A popup option in case for a risky URL
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a ask_user is invalid
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_wp_context_create()
///
/// Module getter: `tizenCsrClient`.
int csr_wp_set_ask_user(
  csr_wp_context_h handle,
  int ask_user,
) =>
    tizenCsrClient.csr_wp_set_ask_user(
      handle,
      ask_user,
    );

/// @partner
/// @brief Sets a popup message of a client in case for a risky URL.
/// @details Default message is "Risky URL which may harm your device is detected".
/// @since_tizen 3.0
/// @privlevel partner
/// @privilege %http://tizen.org/privilege/antivirus.webprotect
/// @remarks Meaningful only when ask user option is set by csr_wp_set_ask_user().
/// @remarks The message will be printed on popup for user.
/// @remarks Default popup message will be used if it isn't set.
/// Parameter handle CSR WP context handle returned by csr_wp_context_create()
/// Parameter message A message to print on a popup
/// @return #CSR_ERROR_NONE on success,
/// otherwise a negative error value
/// @retval #CSR_ERROR_NONE Successful
/// @retval #CSR_ERROR_INVALID_HANDLE Invalid handle
/// @retval #CSR_ERROR_INVALID_PARAMETER @a message is too long or empty. Max size is 64 bytes
/// @retval #CSR_ERROR_SYSTEM System error
/// @see csr_wp_context_create()
///
/// Module getter: `tizenCsrClient`.
int csr_wp_set_popup_message(
  csr_wp_context_h handle,
  ffi.Pointer<ffi.Char> message,
) =>
    tizenCsrClient.csr_wp_set_popup_message(
      handle,
      message,
    );

