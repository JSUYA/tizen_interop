// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCalendarService2`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcalendar-service2.so.0`.
///
/// Social / Calendar.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_calendar_service2;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Connects to the calendar service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks Opening the connection is necessary to access the calendar database and perform operations such as fetching, inserting, or updating records.\n
/// The execution of calendar_connect() and calendar_disconnect() could slow down your application, so you are recommended not to call them frequently.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see  calendar_disconnect()
///
/// Module getter: `tizenCalendarService2`.
int calendar_connect() =>
    tizenCalendarService2.calendar_connect();

/// @brief Connects to the calendar service on a thread.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks Opening a connection is necessary to access the calendar database and perform operations such as fetching, inserting, or updating records.\n
/// On a thread environment with calendar_connect(), request in one thread could fail, while another request connection is working in the other thread.
/// To prevent request failure, calendar_connect_on_thread() is recommended.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see  calendar_disconnect_on_thread()
///
/// Module getter: `tizenCalendarService2`.
int calendar_connect_on_thread() =>
    tizenCalendarService2.calendar_connect_on_thread();

/// @brief Connects to the calendar service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks Opening a connection is necessary to access the calendar database and perform operations such as fetching, inserting, or updating records.\n
/// Before the calendar-service daemon is ready, if you call calendar_connect(), it could fail.
/// It is recommended to call this API with #CALENDAR_CONNECT_FLAG_RETRY flags in such a situation.
/// Parameter flags calendar_connect_flag
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see  calendar_disconnect(), CALENDAR_CONNECT_FLAG_RETRY
///
/// Module getter: `tizenCalendarService2`.
int calendar_connect_with_flags(
  int flags,
) =>
    tizenCalendarService2.calendar_connect_with_flags(
      flags,
    );

/// @brief Registers a callback function to be invoked when a record changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// @remarks If successive change notification produced on the view_uri are identical,
/// then they are coalesced into a single notification if the older notification has not yet been called
/// because default main loop is doing something.
/// But it means that a callback function is not called to reliably count of change.
/// This API supports only @ref CAPI_SOCIAL_CALENDAR_SVC_VIEW_MODULE_calendar_book view, @ref CAPI_SOCIAL_CALENDAR_SVC_VIEW_MODULE_calendar_event view,
/// @ref CAPI_SOCIAL_CALENDAR_SVC_VIEW_MODULE_calendar_todo view.
/// Parameter view_uri The view URI of the record to subscribe for change notifications
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre This function requires an open connection to the calendar service using calendar_connect().
/// @post calendar_db_changed_cb() will be invoked when the designated view changes.
/// @see calendar_connect()
/// @see calendar_db_changed_cb()
/// @see calendar_db_remove_changed_cb()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_add_changed_cb(
  ffi.Pointer<ffi.Char> view_uri,
  calendar_db_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCalendarService2.calendar_db_add_changed_cb(
      view_uri,
      callback,
      user_data,
    );

/// @brief Cleans the data after sync.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter calendar_book_id The calendar book ID
/// Parameter calendar_db_version The calendar database version
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_clean_after_sync(
  int calendar_book_id,
  int calendar_db_version,
) =>
    tizenCalendarService2.calendar_db_clean_after_sync(
      calendar_book_id,
      calendar_db_version,
    );

/// @brief Deletes a record from the calendar database with related child records.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter view_uri The view URI of a record
/// Parameter record_id The record ID to be deleted
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_DB_RECORD_NOT_FOUND Database not found
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_insert_record()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_delete_record(
  ffi.Pointer<ffi.Char> view_uri,
  int record_id,
) =>
    tizenCalendarService2.calendar_db_delete_record(
      view_uri,
      record_id,
    );

/// @brief Deletes multiple records with related child records from the calendar database as a batch operation.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter view_uri The view URI of the records to delete
/// Parameter record_id_array The record IDs to delete
/// Parameter count The number of records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_DB_RECORD_NOT_FOUND Database not found
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_insert_records()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_delete_records(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Int> record_id_array,
  int count,
) =>
    tizenCalendarService2.calendar_db_delete_records(
      view_uri,
      record_id_array,
      count,
    );

/// @brief Retrieves all records as a list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// @remarks You must release @a record_list using calendar_list_destroy().
/// Parameter view_uri The view URI to get records from
/// Parameter offset The index from which results are received
/// Parameter limit The maximum number of results(value 0 is used for all records)
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_list_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_all_records(
  ffi.Pointer<ffi.Char> view_uri,
  int offset,
  int limit,
  ffi.Pointer<calendar_list_h> record_list,
) =>
    tizenCalendarService2.calendar_db_get_all_records(
      view_uri,
      offset,
      limit,
      record_list,
    );

/// @brief Retrieves records with the given calendar database version.
/// @details This function finds all the changed records since the given @a calendar_db_version.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// @remarks You must release @a change_record_list using calendar_list_destroy().
/// Parameter view_uri The view URI to get records from
/// Parameter calendar_book_id The calendar book ID to filter
/// Parameter calendar_db_version The calendar database version
/// Output parameter record_list The record list
/// Output parameter current_calendar_db_version The current calendar database version
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_DB_RECORD_NOT_FOUND Database not found
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_list_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_changes_by_version(
  ffi.Pointer<ffi.Char> view_uri,
  int calendar_book_id,
  int calendar_db_version,
  ffi.Pointer<calendar_list_h> record_list,
  ffi.Pointer<ffi.Int> current_calendar_db_version,
) =>
    tizenCalendarService2.calendar_db_get_changes_by_version(
      view_uri,
      calendar_book_id,
      calendar_db_version,
      record_list,
      current_calendar_db_version,
    );

/// @brief Retrieves changed exception records since the given calendar database version.
/// Exceptions are the modified or deleted instances in a recurring event.
/// @details This function finds all the changed records since the given @a calendar_db_version.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// @remarks You must release @a change_record_list using calendar_list_destroy().
/// Parameter view_uri The view URI to get records from
/// Parameter original_event_id The original event ID
/// Parameter calendar_db_version The calendar database version starting from which to get records
/// Output parameter list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_list_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_changes_exception_by_version(
  ffi.Pointer<ffi.Char> view_uri,
  int original_event_id,
  int calendar_db_version,
  ffi.Pointer<calendar_list_h> list,
) =>
    tizenCalendarService2.calendar_db_get_changes_exception_by_version(
      view_uri,
      original_event_id,
      calendar_db_version,
      list,
    );

/// @brief Gets the record count of a specific view.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// Parameter view_uri The view URI to get records from
/// Output parameter count The number of records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre This function requires an open connection to the calendar service using calendar_connect().
/// @see calendar_connect()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_count(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCalendarService2.calendar_db_get_count(
      view_uri,
      count,
    );

/// @brief Gets the record count with a query handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// Parameter query The query handle used for filtering the results
/// Output parameter count The number of records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre This function requires an open connection to the calendar service using calendar_connect().
/// @see calendar_connect()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_count_with_query(
  calendar_query_h query,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCalendarService2.calendar_db_get_count_with_query(
      query,
      count,
    );

/// @brief Gets the current calendar database version.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// Output parameter calendar_db_version The calendar database version
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_DB_RECORD_NOT_FOUND Database not found
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre This function requires an open connection to the calendar service using calendar_connect().
/// @see calendar_connect()
/// @see calendar_db_get_changes_by_version()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_current_version(
  ffi.Pointer<ffi.Int> calendar_db_version,
) =>
    tizenCalendarService2.calendar_db_get_current_version(
      calendar_db_version,
    );

/// @brief Gets the last successful change version of the database on the current connection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// Output parameter last_change_version The calendar database version on the current connection
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre This function requires an open connection to the calendar service using calendar_connect().
/// @see calendar_connect()
/// @see calendar_db_get_current_version()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_last_change_version(
  ffi.Pointer<ffi.Int> last_change_version,
) =>
    tizenCalendarService2.calendar_db_get_last_change_version(
      last_change_version,
    );

/// @brief Gets a record from the calendar database.
/// @details This function creates a new record handle from the calendar database by the given @a record_id. \n
/// @a record will be created and filled with record information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// @remarks You must release @a record using calendar_record_destroy().
/// Parameter view_uri The view URI of a record
/// Parameter record_id The record ID
/// Output parameter record The record handle associated with the record ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_DB_RECORD_NOT_FOUND Database not found
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_record_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_record(
  ffi.Pointer<ffi.Char> view_uri,
  int record_id,
  ffi.Pointer<calendar_record_h> record,
) =>
    tizenCalendarService2.calendar_db_get_record(
      view_uri,
      record_id,
      record,
    );

/// @brief Retrieves records using a query handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// @remarks You must release @a record_list using calendar_list_destroy().
/// Parameter query The query handle used to filter results
/// Parameter offset The index from which results are received
/// Parameter limit The maximum number of results(value 0 is used for all records)
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_list_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_get_records_with_query(
  calendar_query_h query,
  int offset,
  int limit,
  ffi.Pointer<calendar_list_h> record_list,
) =>
    tizenCalendarService2.calendar_db_get_records_with_query(
      query,
      offset,
      limit,
      record_list,
    );

/// @brief Inserts a record into the calendar database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter record The record handle
/// Output parameter record_id The record ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_update_record()
/// @see calendar_db_delete_record()
/// @see calendar_db_get_record()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_insert_record(
  calendar_record_h record,
  ffi.Pointer<ffi.Int> record_id,
) =>
    tizenCalendarService2.calendar_db_insert_record(
      record,
      record_id,
    );

/// @brief Inserts multiple records into the calendar database as a batch operation.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter record_list The record list handle
/// Output parameter record_id_array The array of record IDs
/// Output parameter count The number of record IDs
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_update_records()
/// @see calendar_db_delete_records()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_insert_records(
  calendar_list_h record_list,
  ffi.Pointer<ffi.Pointer<ffi.Int>> record_id_array,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCalendarService2.calendar_db_insert_records(
      record_list,
      record_id_array,
      count,
    );

/// @brief Inserts a vcalendar stream into the calendar database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter vcalendar_stream The vcalendar stream
/// Output parameter record_id_array The record IDs to delete
/// Output parameter count The number of record ID arrays
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_replace_vcalendars()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_insert_vcalendars(
  ffi.Pointer<ffi.Char> vcalendar_stream,
  ffi.Pointer<ffi.Pointer<ffi.Int>> record_id_array,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCalendarService2.calendar_db_insert_vcalendars(
      vcalendar_stream,
      record_id_array,
      count,
    );

/// @brief Links a record to another record.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter base_id The base record ID
/// Parameter record_id The record ID to link to
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_link_record(
  int base_id,
  int record_id,
) =>
    tizenCalendarService2.calendar_db_link_record(
      base_id,
      record_id,
    );

/// @brief Unregisters a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// Parameter view_uri The view URI of the record to subscribe for change notifications
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre This function requires an open connection to the calendar service using calendar_connect().
/// @see calendar_connect()
/// @see calendar_db_changed_cb()
/// @see calendar_db_add_changed_cb()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_remove_changed_cb(
  ffi.Pointer<ffi.Char> view_uri,
  calendar_db_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCalendarService2.calendar_db_remove_changed_cb(
      view_uri,
      callback,
      user_data,
    );

/// @brief Replaces a record in the calendar database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter record The record handle
/// Parameter record_id The record ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_update_record()
/// @see calendar_db_delete_record()
/// @see calendar_db_get_record()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_replace_record(
  calendar_record_h record,
  int record_id,
) =>
    tizenCalendarService2.calendar_db_replace_record(
      record,
      record_id,
    );

/// @brief Replaces multiple records in the calendar database as a batch operation.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter record_list The record list handle
/// Parameter record_id_array The record IDs
/// Parameter count The number of record ID arrays
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_update_records()
/// @see calendar_db_delete_records()
/// @see calendar_db_replace_record()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_replace_records(
  calendar_list_h record_list,
  ffi.Pointer<ffi.Int> record_id_array,
  int count,
) =>
    tizenCalendarService2.calendar_db_replace_records(
      record_list,
      record_id_array,
      count,
    );

/// @brief Replaces a vcalendar stream in the calendar database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter vcalendar_stream The vcalendar stream
/// Parameter record_id_array The record IDs to replace
/// Parameter count The number of record ID arrays
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_DB_RECORD_NOT_FOUND Database not found
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre This function requires an open connection to the calendar service by calendar_connect().
/// @see calendar_connect()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_replace_vcalendars(
  ffi.Pointer<ffi.Char> vcalendar_stream,
  ffi.Pointer<ffi.Int> record_id_array,
  int count,
) =>
    tizenCalendarService2.calendar_db_replace_vcalendars(
      vcalendar_stream,
      record_id_array,
      count,
    );

/// @brief Unlinks a record from base record.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter record_id The record ID to unlink
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied
/// @retval #CALENDAR_ERROR_FILE_NO_SPACE File system is full
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_unlink_record(
  int record_id,
) =>
    tizenCalendarService2.calendar_db_unlink_record(
      record_id,
    );

/// @brief Updates a record in the calendar database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_DB_RECORD_NOT_FOUND Database not found
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_insert_record()
/// @see calendar_db_delete_record()
/// @see calendar_db_get_record()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_update_record(
  calendar_record_h record,
) =>
    tizenCalendarService2.calendar_db_update_record(
      record,
    );

/// @brief Updates multiple records into the calendar database as a batch operation.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.write
/// Parameter record_list The record list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_NO_DATA Data does not exist
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_DB_RECORD_NOT_FOUND Database not found
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to open a connection to the calendar service.
/// @see calendar_connect()
/// @see calendar_db_insert_records()
/// @see calendar_db_delete_records()
///
/// Module getter: `tizenCalendarService2`.
int calendar_db_update_records(
  calendar_list_h record_list,
) =>
    tizenCalendarService2.calendar_db_update_records(
      record_list,
    );

/// @brief Disconnects from the calendar service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks If there is no open connection, this function returns #CALENDAR_ERROR_DB_FAILED.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_connect()
///
/// Module getter: `tizenCalendarService2`.
int calendar_disconnect() =>
    tizenCalendarService2.calendar_disconnect();

/// @brief Disconnects from the calendar service on a thread.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks If there is no open connection, this function returns #CALENDAR_ERROR_DB_FAILED.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_connect_on_thread()
///
/// Module getter: `tizenCalendarService2`.
int calendar_disconnect_on_thread() =>
    tizenCalendarService2.calendar_disconnect_on_thread();

/// @brief Adds a condition for the calendar_time_s type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_filter_add_operator()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_add_caltime(
  calendar_filter_h filter,
  int property_id,
  int match,
  calendar_time_s match_value,
) =>
    tizenCalendarService2.calendar_filter_add_caltime(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Adds a condition for the double type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_filter_add_operator()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_add_double(
  calendar_filter_h filter,
  int property_id,
  int match,
  double match_value,
) =>
    tizenCalendarService2.calendar_filter_add_double(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Adds a child filter to a parent filter.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter parent_filter The parent filter handle
/// Parameter child_filter The child filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_filter_add_operator()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_add_filter(
  calendar_filter_h parent_filter,
  calendar_filter_h child_filter,
) =>
    tizenCalendarService2.calendar_filter_add_filter(
      parent_filter,
      child_filter,
    );

/// @brief Adds a condition for the integer type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_filter_add_operator()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_add_int(
  calendar_filter_h filter,
  int property_id,
  int match,
  int match_value,
) =>
    tizenCalendarService2.calendar_filter_add_int(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Adds a condition for the long long int type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_filter_add_operator()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_add_lli(
  calendar_filter_h filter,
  int property_id,
  int match,
  int match_value,
) =>
    tizenCalendarService2.calendar_filter_add_lli(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Adds an operator between conditions.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter filter The filter handle
/// Parameter operator_type The operator type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_filter_add_str()
/// @see calendar_filter_add_int()
/// @see calendar_filter_add_double()
/// @see calendar_filter_add_caltime()
/// @see calendar_filter_add_filter()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_add_operator(
  calendar_filter_h filter,
  int operator_type,
) =>
    tizenCalendarService2.calendar_filter_add_operator(
      filter,
      operator_type,
    );

/// @brief Adds a condition for the string type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_filter_add_operator()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_add_str(
  calendar_filter_h filter,
  int property_id,
  int match,
  ffi.Pointer<ffi.Char> match_value,
) =>
    tizenCalendarService2.calendar_filter_add_str(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Creates a filter handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You must release @a filter using calendar_filter_destroy().
/// Parameter view_uri The view URI of a filter
/// Output parameter filter The filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to initialize.
/// @see calendar_filter_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_create(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<calendar_filter_h> filter,
) =>
    tizenCalendarService2.calendar_filter_create(
      view_uri,
      filter,
    );

/// @brief Destroys a filter handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter filter The filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_filter_create()
///
/// Module getter: `tizenCalendarService2`.
int calendar_filter_destroy(
  calendar_filter_h filter,
) =>
    tizenCalendarService2.calendar_filter_destroy(
      filter,
    );

/// @brief Adds a record to the calendar list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter list The calendar list handle
/// Parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_remove()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_add(
  calendar_list_h list,
  calendar_record_h record,
) =>
    tizenCalendarService2.calendar_list_add(
      list,
      record,
    );

/// @brief Creates a calendar list handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You must release @a calendar_list using calendar_list_destroy().
/// Output parameter out_list The calendar list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_create(
  ffi.Pointer<calendar_list_h> out_list,
) =>
    tizenCalendarService2.calendar_list_create(
      out_list,
    );

/// @brief Destroys a calendar list handle and releases all its resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter list The calendar list handle
/// Parameter delete_record If @c true, child records are destroyed automatically,
/// otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_create()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_destroy(
  calendar_list_h list,
  bool delete_record,
) =>
    tizenCalendarService2.calendar_list_destroy(
      list,
      delete_record,
    );

/// @brief Moves a calendar list to the first position.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter list The calendar list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_last()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_first(
  calendar_list_h list,
) =>
    tizenCalendarService2.calendar_list_first(
      list,
    );

/// @brief Retrieves the number of calendar entities in a calendar list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter list The calendar list handle
/// Output parameter count The count of the calendar entity
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_add()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_get_count(
  calendar_list_h list,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCalendarService2.calendar_list_get_count(
      list,
      count,
    );

/// @brief Retrieves a record from the calendar list.
/// @details The default current record is the first record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You MUST NOT destroy the @a record handle.
/// It is destroyed automatically when the @a list is destroyed.
/// Parameter list The calendar list handle
/// Output parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NO_DATA Requested data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_get_current_record_p(
  calendar_list_h list,
  ffi.Pointer<calendar_record_h> record,
) =>
    tizenCalendarService2.calendar_list_get_current_record_p(
      list,
      record,
    );

/// @brief Moves a calendar list to the last position.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter list The calendar list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_first()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_last(
  calendar_list_h list,
) =>
    tizenCalendarService2.calendar_list_last(
      list,
    );

/// @brief Moves a calendar list to the next position.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter list The calendar list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NO_DATA Requested data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_prev()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_next(
  calendar_list_h list,
) =>
    tizenCalendarService2.calendar_list_next(
      list,
    );

/// @brief Moves a calendar list to the previous position.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter list The calendar list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NO_DATA Requested data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_next()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_prev(
  calendar_list_h list,
) =>
    tizenCalendarService2.calendar_list_prev(
      list,
    );

/// @brief Removes a record from the calendar list.
/// @details If the record is the current record, then the current record is changed to the next record.\n
/// If the record is the last record then the current record will be @c NULL.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter list The calendar list handle
/// Parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NO_DATA Requested data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_add()
///
/// Module getter: `tizenCalendarService2`.
int calendar_list_remove(
  calendar_list_h list,
  calendar_record_h record,
) =>
    tizenCalendarService2.calendar_list_remove(
      list,
      record,
    );

/// @brief Creates a query handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You must release @a query using calendar_query_destroy().
/// Parameter view_uri The view URI of a query
/// Output parameter query The filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to initialize.
/// @see calendar_query_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_query_create(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<calendar_query_h> query,
) =>
    tizenCalendarService2.calendar_query_create(
      view_uri,
      query,
    );

/// @brief Destroys a query handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter query The query handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_query_create()
///
/// Module getter: `tizenCalendarService2`.
int calendar_query_destroy(
  calendar_query_h query,
) =>
    tizenCalendarService2.calendar_query_destroy(
      query,
    );

/// @brief Sets the "distinct" option for projection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter query The query handle
/// Parameter set If @c true it is set,
/// otherwise if @c false it is unset
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCalendarService2`.
int calendar_query_set_distinct(
  calendar_query_h query,
  bool set1,
) =>
    tizenCalendarService2.calendar_query_set_distinct(
      query,
      set1,
    );

/// @brief Sets the filter for a query.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter query The query handle
/// Parameter filter The filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NO_DATA Requested data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCalendarService2`.
int calendar_query_set_filter(
  calendar_query_h query,
  calendar_filter_h filter,
) =>
    tizenCalendarService2.calendar_query_set_filter(
      query,
      filter,
    );

/// @brief Adds property IDs for projection.
/// @details Property IDs can be of one of the properties of view_uri which is used in calendar_query_create().
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter query The query handle
/// Parameter property_id_array The property ID array
/// Parameter count The number of property IDs
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCalendarService2`.
int calendar_query_set_projection(
  calendar_query_h query,
  ffi.Pointer<ffi.UnsignedInt> property_id_array,
  int count,
) =>
    tizenCalendarService2.calendar_query_set_projection(
      query,
      property_id_array,
      count,
    );

/// @brief Sets the sort mode for a query.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter query The query handle
/// Parameter property_id The property ID to sort
/// Parameter is_ascending If @c true it sorts in the ascending order,
/// otherwise if @c false it sorts in the descending order
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCalendarService2`.
int calendar_query_set_sort(
  calendar_query_h query,
  int property_id,
  bool is_ascending,
) =>
    tizenCalendarService2.calendar_query_set_sort(
      query,
      property_id,
      is_ascending,
    );

/// @brief Adds a child record to the parent record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The parent record handle
/// Parameter property_id The property ID
/// Parameter child_record The handle of the child record to be added to the parent record
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_remove_child_record()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_add_child_record(
  calendar_record_h record,
  int property_id,
  calendar_record_h child_record,
) =>
    tizenCalendarService2.calendar_record_add_child_record(
      record,
      property_id,
      child_record,
    );

/// @brief Makes a clone of a record handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You must release @a cloned_record using calendar_record_destroy().
/// Parameter record The record handle
/// Output parameter out_record The cloned record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_clone(
  calendar_record_h record,
  ffi.Pointer<calendar_record_h> out_record,
) =>
    tizenCalendarService2.calendar_record_clone(
      record,
      out_record,
    );

/// @brief Makes a clone of a given record's child record list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You must release @a out_list using calendar_list_destroy().
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter out_list The cloned list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_list_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_clone_child_record_list(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<calendar_list_h> out_list,
) =>
    tizenCalendarService2.calendar_record_clone_child_record_list(
      record,
      property_id,
      out_list,
    );

/// @brief Creates a record handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You must release @a record using calendar_record_destroy().
/// Parameter view_uri The view URI
/// Output parameter out_record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to initialize.
/// @see calendar_record_destroy()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_create(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<calendar_record_h> out_record,
) =>
    tizenCalendarService2.calendar_record_create(
      view_uri,
      out_record,
    );

/// @brief Destroys a record handle and releases all its resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter delete_child If @c true, child records are destroyed automatically,
/// otherwise @c false
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_create()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_destroy(
  calendar_record_h record,
  bool delete_child,
) =>
    tizenCalendarService2.calendar_record_destroy(
      record,
      delete_child,
    );

/// @brief Gets a calendar_caltime_s value from a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter out_value The result value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_set_caltime()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_caltime(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<calendar_time_s> out_value,
) =>
    tizenCalendarService2.calendar_record_get_caltime(
      record,
      property_id,
      out_value,
    );

/// @brief Gets a child record handle pointer from the parent record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You MUST NOT release @a child_record. \n
/// It is released when the parent record handle is destroyed.
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter index The index of the child record
/// Output parameter child_record The child record handle pointer
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_add_child_record()
/// @see calendar_record_remove_child_record()
/// @see calendar_record_get_child_record_count()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_child_record_at_p(
  calendar_record_h record,
  int property_id,
  int index,
  ffi.Pointer<calendar_record_h> child_record,
) =>
    tizenCalendarService2.calendar_record_get_child_record_at_p(
      record,
      property_id,
      index,
      child_record,
    );

/// @brief Gets the number of child records in a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The parent record handle
/// Parameter property_id The property ID
/// Output parameter count The child record count
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_add_child_record()
/// @see calendar_record_remove_child_record()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_child_record_count(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<ffi.UnsignedInt> count,
) =>
    tizenCalendarService2.calendar_record_get_child_record_count(
      record,
      property_id,
      count,
    );

/// @brief Gets a double value from a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter out_value The result value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_set_double()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_double(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<ffi.Double> out_value,
) =>
    tizenCalendarService2.calendar_record_get_double(
      record,
      property_id,
      out_value,
    );

/// @brief Gets an integer value from a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter out_value The result value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_set_int()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_int(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<ffi.Int> out_value,
) =>
    tizenCalendarService2.calendar_record_get_int(
      record,
      property_id,
      out_value,
    );

/// @brief Gets a long long integer value from a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter out_value The result value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_set_lli()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_lli(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<ffi.LongLong> out_value,
) =>
    tizenCalendarService2.calendar_record_get_lli(
      record,
      property_id,
      out_value,
    );

/// @brief Gets a string from a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You must release @a value using free().
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter out_str The result value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_get_str_p()
/// @see calendar_record_set_str()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_str(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> out_str,
) =>
    tizenCalendarService2.calendar_record_get_str(
      record,
      property_id,
      out_str,
    );

/// @brief Gets a string pointer from a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @remarks You MUST NOT release @a value.
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter out_str The result value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_get_str()
/// @see calendar_record_set_str()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_str_p(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> out_str,
) =>
    tizenCalendarService2.calendar_record_get_str_p(
      record,
      property_id,
      out_str,
    );

/// @brief Gets a URI string from a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Output parameter uri The URI of the record
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_get_uri_p(
  calendar_record_h record,
  ffi.Pointer<ffi.Pointer<ffi.Char>> uri,
) =>
    tizenCalendarService2.calendar_record_get_uri_p(
      record,
      uri,
    );

/// @brief Removes a child record from the parent record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The parent record handle
/// Parameter property_id The property ID
/// Parameter child_record The handle of the child record to be removed from the parent record
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_add_child_record()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_remove_child_record(
  calendar_record_h record,
  int property_id,
  calendar_record_h child_record,
) =>
    tizenCalendarService2.calendar_record_remove_child_record(
      record,
      property_id,
      child_record,
    );

/// @brief Sets a calendar_time_s value to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to be set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_get_caltime()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_set_caltime(
  calendar_record_h record,
  int property_id,
  calendar_time_s value,
) =>
    tizenCalendarService2.calendar_record_set_caltime(
      record,
      property_id,
      value,
    );

/// @brief Sets a double value to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to be set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_get_double()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_set_double(
  calendar_record_h record,
  int property_id,
  double value,
) =>
    tizenCalendarService2.calendar_record_set_double(
      record,
      property_id,
      value,
    );

/// @brief Sets an integer value to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to be set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_get_int()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_set_int(
  calendar_record_h record,
  int property_id,
  int value,
) =>
    tizenCalendarService2.calendar_record_set_int(
      record,
      property_id,
      value,
    );

/// @brief Sets a long long integer value to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to be set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_get_lli()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_set_lli(
  calendar_record_h record,
  int property_id,
  int value,
) =>
    tizenCalendarService2.calendar_record_set_lli(
      record,
      property_id,
      value,
    );

/// @brief Sets a string to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to be set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_record_get_str()
/// @see calendar_record_get_str_p()
///
/// Module getter: `tizenCalendarService2`.
int calendar_record_set_str(
  calendar_record_h record,
  int property_id,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCalendarService2.calendar_record_set_str(
      record,
      property_id,
      value,
    );

/// @brief Adds a callback to get a notification when an alarm gives an alert.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/calendar.read
/// Parameter callback The callback to be added
/// Parameter user_data The user data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_NOT_PERMITTED Operation not permitted
/// @retval #CALENDAR_ERROR_IPC Unknown IPC error
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_reminder_remove_cb()
///
/// Module getter: `tizenCalendarService2`.
int calendar_reminder_add_cb(
  calendar_reminder_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCalendarService2.calendar_reminder_add_cb(
      callback,
      user_data,
    );

/// @brief Removes a callback to get a notification when an alarm gives an alert.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter callback The callback to be removed
/// Parameter user_data The user data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_DB_FAILED Database operation failure
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @see calendar_reminder_add_cb()
///
/// Module getter: `tizenCalendarService2`.
int calendar_reminder_remove_cb(
  calendar_reminder_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCalendarService2.calendar_reminder_remove_cb(
      callback,
      user_data,
    );

/// @brief Retrieves a vcalendar stream from a calendar list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter calendar_list The calendar list handle
/// Output parameter vcalendar_stream The vcalendar stream
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NO_DATA Requested data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
///
/// Module getter: `tizenCalendarService2`.
int calendar_vcalendar_make_from_records(
  calendar_list_h calendar_list,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vcalendar_stream,
) =>
    tizenCalendarService2.calendar_vcalendar_make_from_records(
      calendar_list,
      vcalendar_stream,
    );

/// @brief Retrieves all calendars from a vcalendar stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter vcalendar_stream The vcalendar stream
/// Output parameter calendar_list The calendar list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_NO_DATA Requested data does not exist
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to initialize.
///
/// Module getter: `tizenCalendarService2`.
int calendar_vcalendar_parse_to_calendar(
  ffi.Pointer<ffi.Char> vcalendar_stream,
  ffi.Pointer<calendar_list_h> calendar_list,
) =>
    tizenCalendarService2.calendar_vcalendar_parse_to_calendar(
      vcalendar_stream,
      calendar_list,
    );

/// @brief Retrieves all events or to-dos
/// (\ref CAPI_SOCIAL_CALENDAR_SVC_VIEW_MODULE_calendar_event or \ref CAPI_SOCIAL_CALENDAR_SVC_VIEW_MODULE_calendar_todo) from a vCalendar file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @elseif TV 4.0 @endif
/// Parameter vcalendar_file_path The file path of the vCalendar stream file
/// Parameter callback The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CALENDAR_ERROR_NONE Successful
/// @retval #CALENDAR_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CALENDAR_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CALENDAR_ERROR_SYSTEM Internal system module error
/// @retval #CALENDAR_ERROR_NOT_SUPPORTED Not supported
/// @pre calendar_connect() should be called to initialize.
/// @post This function invokes calendar_vcalendar_parse_cb().
/// @see  calendar_vcalendar_parse_cb()
/// @see  calendar_record_get_uri_p()
///
/// Module getter: `tizenCalendarService2`.
int calendar_vcalendar_parse_to_calendar_foreach(
  ffi.Pointer<ffi.Char> vcalendar_file_path,
  calendar_vcalendar_parse_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCalendarService2.calendar_vcalendar_parse_to_calendar_foreach(
      vcalendar_file_path,
      callback,
      user_data,
    );

