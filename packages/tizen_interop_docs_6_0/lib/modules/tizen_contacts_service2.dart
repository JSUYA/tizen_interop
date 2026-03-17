// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenContactsService2`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcontacts-service2.so.0`.
///
/// Social / Contacts.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_contacts_service2;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Deletes an activity record from the contacts database by account ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter account_id The account ID to delete
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_activity_delete_by_account_id(
  int account_id,
) =>
    tizenContactsService2.contacts_activity_delete_by_account_id(
      account_id,
    );

/// @brief Deletes an activity record from the contacts database by contact ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter contact_id The contact ID to delete
/// @return @c 0 on success,
/// otherwise a negative error value (#contacts_error_e)
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_activity_delete_by_contact_id(
  int contact_id,
) =>
    tizenContactsService2.contacts_activity_delete_by_contact_id(
      contact_id,
    );

/// @brief Connects to the contacts service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks Connection opening is necessary to access the contacts server such as fetching, inserting, or updating records.\n
/// The execution of contacts_connect() and contacts_disconnect() could slow down your application. So it is not recommended to call them frequently.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM System error
/// @retval #CONTACTS_ERROR_INTERNAL Internal error
/// @see contacts_disconnect()
///
/// Module getter: `tizenContactsService2`.
int contacts_connect() =>
    tizenContactsService2.contacts_connect();

/// @brief Connects to the contacts service with a connection on another thread.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks Opening connection is necessary to access the contact server and to perform operations such as fetching, inserting, or updating records.\n
/// On multiple thread environment with contacts_connect(), request can be failed in one thread, while another request is working by the connection in the other thread.
/// To prevent request fail, contacts_connect_on_thread() is recommended. Then new connection is set for the thread.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM System error
/// @retval #CONTACTS_ERROR_INTERNAL Internal error
/// @see contacts_disconnect_on_thread()
///
/// Module getter: `tizenContactsService2`.
int contacts_connect_on_thread() =>
    tizenContactsService2.contacts_connect_on_thread();

/// @brief Connects to the contacts service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter flags	Connection flag
/// @remarks Connection opening is necessary to access the contacts server such as fetching, inserting, or updating records.\n
/// Before contacts-service daemon is ready, if you call contacts_connect(), it will fail.
/// To prevent it, if you call this API with @ref CONTACTS_CONNECT_FLAG_RETRY flags, it will retry several time.\n
/// To close the connection, contacts_disconnect() should be called.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM System error
/// @retval #CONTACTS_ERROR_INTERNAL Internal error
/// @see contacts_disconnect()
///
/// Module getter: `tizenContactsService2`.
int contacts_connect_with_flags(
  int flags,
) =>
    tizenContactsService2.contacts_connect_with_flags(
      flags,
    );

/// @brief Registers a callback function to be invoked when a record changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @privilege %http://tizen.org/privilege/callhistory.read
/// @remarks %http://tizen.org/privilege/contact.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_simple_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_sdn, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group_relation.\n
/// %http://tizen.org/privilege/callhistory.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log.
/// If successive change notification produced on the view_uri are identical,
/// then they are coalesced into a single notification if the older notification has not yet been called
/// because default main loop is doing something.
/// But, it means that a callback function is not called to reliably count of change.
/// Parameter view_uri The view URI of records whose changes are monitored
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM System error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() will be invoked when the designated view changes.
/// @see contacts_connect()
/// @see contacts_db_changed_cb()
/// @see contacts_db_remove_changed_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_add_changed_cb(
  ffi.Pointer<ffi.Char> view_uri,
  contacts_db_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_db_add_changed_cb(
      view_uri,
      callback,
      user_data,
    );

/// @brief Registers a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED       Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre This function requires an open connection to the contacts service by contacts_connect().
/// @see contacts_connect()
/// @see contacts_db_remove_status_changed_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_add_status_changed_cb(
  contacts_db_status_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_db_add_status_changed_cb(
      callback,
      user_data,
    );

/// @brief Deletes a record from the contacts database with related child records.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @privilege %http://tizen.org/privilege/callhistory.write
/// @remarks %http://tizen.org/privilege/contact.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, \n @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile,
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial. \n
/// %http://tizen.org/privilege/callhistory.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log.
/// Parameter view_uri The view URI of a record
/// Parameter record_id The record ID to delete
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() callback will be called upon success.
/// @see contacts_connect()
/// @see contacts_db_insert_record()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_delete_record(
  ffi.Pointer<ffi.Char> view_uri,
  int record_id,
) =>
    tizenContactsService2.contacts_db_delete_record(
      view_uri,
      record_id,
    );

/// @brief Deletes multiple records in the contacts database with related child records.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @privilege %http://tizen.org/privilege/callhistory.write
/// @remarks %http://tizen.org/privilege/contact.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, \n @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile,
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial. \n
/// %http://tizen.org/privilege/callhistory.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log.
/// Parameter view_uri The view URI of records
/// Parameter record_id_array The record IDs to delete
/// Parameter count The size of record ID array
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() callback will be called upon success.
/// @see contacts_connect()
/// @see contacts_db_insert_records()
/// @see contacts_db_update_records()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_delete_records(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Int> record_id_array,
  int count,
) =>
    tizenContactsService2.contacts_db_delete_records(
      view_uri,
      record_id_array,
      count,
    );

/// @brief Retrieves all records and returns the results list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @privilege %http://tizen.org/privilege/callhistory.read
/// @remarks You must release @a record_list using contacts_list_destroy(). \n
/// %http://tizen.org/privilege/contact.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_simple_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_sdn and all read-only views except views which are related to phone log. \n
/// %http://tizen.org/privilege/callhistory.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log_stat. \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_phone_log view is needed both privileges.
/// Parameter view_uri The view URI to get records
/// Parameter offset The index from which to get results
/// Parameter limit The number to limit results(value 0 is used for all records)
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_all_records(
  ffi.Pointer<ffi.Char> view_uri,
  int offset,
  int limit,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_db_get_all_records(
      view_uri,
      offset,
      limit,
      record_list,
    );

/// @brief Retrieves records changes since the given database version.
/// @details This function will find all changed records since the given @a contacts_db_version. \n
/// Now, support @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact_updated_info, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group_updated_info \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile_updated_info and @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_grouprel_updated_info.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks You must release @a record_list using contacts_list_destroy().
/// Parameter view_uri The view URI to get records
/// Parameter address_book_id The address book ID to filter
/// Parameter contacts_db_version The contacts database version
/// Output parameter change_record_list The record list
/// Output parameter current_contacts_db_version The current contacts database version
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_changes_by_version(
  ffi.Pointer<ffi.Char> view_uri,
  int address_book_id,
  int contacts_db_version,
  ffi.Pointer<contacts_list_h> change_record_list,
  ffi.Pointer<ffi.Int> current_contacts_db_version,
) =>
    tizenContactsService2.contacts_db_get_changes_by_version(
      view_uri,
      address_book_id,
      contacts_db_version,
      change_record_list,
      current_contacts_db_version,
    );

/// @brief Gets the number of records in a specific view.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @privilege %http://tizen.org/privilege/callhistory.read
/// @remarks %http://tizen.org/privilege/contact.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_simple_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_sdn and all read-only views except views which is related to phone log. \n
/// %http://tizen.org/privilege/callhistory.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log_stat. \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_phone_log view is needed both privilege.
/// Parameter view_uri The view URI
/// Output parameter count The count of records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_count(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenContactsService2.contacts_db_get_count(
      view_uri,
      count,
    );

/// @brief Gets the number of found records based on a given keyword.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks This function works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned \n
/// and @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned.
/// Parameter view_uri The view URI
/// Parameter keyword The keyword
/// Output parameter count The number of records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_count_for_search_records(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Char> keyword,
  ffi.Pointer<ffi.UnsignedInt> count,
) =>
    tizenContactsService2.contacts_db_get_count_for_search_records(
      view_uri,
      keyword,
      count,
    );

/// @brief Gets the number of found records based on a given keyword and query.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks This function works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned \n
/// and @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned.
/// Parameter query The query handle to filter
/// Parameter keyword The keyword
/// Output parameter count The number of records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_count_for_search_records_with_query(
  contacts_query_h query,
  ffi.Pointer<ffi.Char> keyword,
  ffi.Pointer<ffi.UnsignedInt> count,
) =>
    tizenContactsService2.contacts_db_get_count_for_search_records_with_query(
      query,
      keyword,
      count,
    );

/// @brief Gets the number of found records based on a given keyword and range.
/// @since_tizen 5.5
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks This function works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned. For these views the valid search ranges are: #CONTACTS_SEARCH_RANGE_NAME, #CONTACTS_SEARCH_RANGE_NUMBER, #CONTACTS_SEARCH_RANGE_DATA. \n
/// For @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_number the valid search ranges are #CONTACTS_SEARCH_RANGE_NAME and #CONTACTS_SEARCH_RANGE_NUMBER.\n
/// For @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_email the valid search ranges are #CONTACTS_SEARCH_RANGE_NAME and #CONTACTS_SEARCH_RANGE_EMAIL.
/// Parameter view_uri The view URI
/// Parameter keyword The keyword
/// Parameter range The search range
/// Output parameter count The number of records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_count_for_search_records_with_range(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Char> keyword,
  int range,
  ffi.Pointer<ffi.UnsignedInt> count,
) =>
    tizenContactsService2.contacts_db_get_count_for_search_records_with_range(
      view_uri,
      keyword,
      range,
      count,
    );

/// @brief Gets the number of records matching a query.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @privilege %http://tizen.org/privilege/callhistory.read
/// @remarks %http://tizen.org/privilege/contact.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_simple_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_sdn and all read-only views except views which is related to phone log. \n
/// %http://tizen.org/privilege/callhistory.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log_stat. \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_phone_log view is needed both privilege.
/// Parameter query The query handle
/// Output parameter count The count of records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_count_with_query(
  contacts_query_h query,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenContactsService2.contacts_db_get_count_with_query(
      query,
      count,
    );

/// @brief Gets the current contacts database version.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @privilege %http://tizen.org/privilege/callhistory.read
/// Output parameter contacts_db_version The contacts database version
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_db_get_changes_by_version()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_current_version(
  ffi.Pointer<ffi.Int> contacts_db_version,
) =>
    tizenContactsService2.contacts_db_get_current_version(
      contacts_db_version,
    );

/// @brief Gets the last successful changed contacts database version on the current connection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @privilege %http://tizen.org/privilege/callhistory.read
/// Output parameter last_change_version The database version
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_db_get_current_version()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_last_change_version(
  ffi.Pointer<ffi.Int> last_change_version,
) =>
    tizenContactsService2.contacts_db_get_last_change_version(
      last_change_version,
    );

/// @brief Gets a record from the contacts database.
/// @details This function creates a new contact handle from the contacts database by the given @a record_id. \n
/// @a record will be created, which is filled with contact information.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @privilege %http://tizen.org/privilege/callhistory.read
/// @remarks %http://tizen.org/privilege/contact.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_simple_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_sdn. \n
/// %http://tizen.org/privilege/callhistory.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log.
/// @remarks You must release @a record using contacts_record_destroy().
/// Parameter view_uri The view URI of a record
/// Parameter record_id The record ID to get from database
/// Output parameter record The record handle associated with the record ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_record_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_record(
  ffi.Pointer<ffi.Char> view_uri,
  int record_id,
  ffi.Pointer<contacts_record_h> record,
) =>
    tizenContactsService2.contacts_db_get_record(
      view_uri,
      record_id,
      record,
    );

/// @brief Uses a query to find records.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @privilege %http://tizen.org/privilege/callhistory.read
/// @remarks You must release @a record_list using contacts_list_destroy(). \n
/// %http://tizen.org/privilege/contact.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_simple_contact, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_sdn and all read-only views except views which are related to phone log. \n
/// %http://tizen.org/privilege/callhistory.read is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log_stat. \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_phone_log view is needed both privileges.
/// Parameter query The query to filter the results
/// Parameter offset The index from which to get results
/// Parameter limit The number to limit results(value 0 is used for get all records)
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_records_with_query(
  contacts_query_h query,
  int offset,
  int limit,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_db_get_records_with_query(
      query,
      offset,
      limit,
      record_list,
    );

/// @brief Gets the current status of server.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter status The current status of server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED       Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre This function requires an open connection to the contacts service by contacts_connect().
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_get_status(
  ffi.Pointer<ffi.Int32> status,
) =>
    tizenContactsService2.contacts_db_get_status(
      status,
    );

/// @brief Inserts a record to the contacts database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @privilege %http://tizen.org/privilege/callhistory.write
/// @remarks %http://tizen.org/privilege/contact.write is needed for record which is created with @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, \n @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile,
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial. \n
/// %http://tizen.org/privilege/callhistory.write is needed for record which is created with @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log.
/// Parameter record The record handle
/// Output parameter id The ID of inserted record
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() callback will be called upon success.
/// @see contacts_connect()
/// @see contacts_db_update_record()
/// @see contacts_db_delete_record()
/// @see contacts_db_get_record()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_insert_record(
  contacts_record_h record,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenContactsService2.contacts_db_insert_record(
      record,
      id,
    );

/// @brief Inserts multiple records to the contacts database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @privilege %http://tizen.org/privilege/callhistory.write
/// @remarks %http://tizen.org/privilege/contact.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, \n @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile,
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial. \n
/// %http://tizen.org/privilege/callhistory.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log.
/// Parameter record_list The record list handle
/// Output parameter ids The IDs of inserted records
/// Output parameter count The number of IDs
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() callback will be called upon success.
/// @see contacts_connect()
/// @see contacts_db_update_records()
/// @see contacts_db_delete_records()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_insert_records(
  contacts_list_h record_list,
  ffi.Pointer<ffi.Pointer<ffi.Int>> ids,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenContactsService2.contacts_db_insert_records(
      record_list,
      ids,
      count,
    );

/// @brief Unregisters a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter view_uri The view URI of records whose changes are monitored
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM System error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_db_changed_cb()
/// @see contacts_db_add_changed_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_remove_changed_cb(
  ffi.Pointer<ffi.Char> view_uri,
  contacts_db_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_db_remove_changed_cb(
      view_uri,
      callback,
      user_data,
    );

/// @brief Unregisters a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED       Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre This function requires an open connection to the contacts service by contacts_connect().
/// @see contacts_connect()
/// @see contacts_db_add_status_changed_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_remove_status_changed_cb(
  contacts_db_status_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_db_remove_status_changed_cb(
      callback,
      user_data,
    );

/// @brief Replaces an id-identified record with the given record.
/// @details Now, this API supports only _contacts_contact view_uri.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @remarks The write-once value of @a record is not replaced. \n
/// This API works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact.
/// Parameter record The new record handle to replace
/// Parameter id The DB record ID to be replaced
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() callback will be called upon success.
/// @see contacts_connect()
/// @see contacts_db_update_record()
/// @see contacts_db_delete_record()
/// @see contacts_db_get_record()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_replace_record(
  contacts_record_h record,
  int id,
) =>
    tizenContactsService2.contacts_db_replace_record(
      record,
      id,
    );

/// @brief Replaces database records identified by given ids with a given record list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @remarks The write-once value of record is not replaced. \n
/// This API works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact.
/// Parameter list The new record list handle to replace
/// Parameter record_id_array The record IDs to replace
/// Parameter count The size of record ID array
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() callback will be called upon success.
/// @see contacts_connect()
/// @see contacts_db_update_record()
/// @see contacts_db_delete_record()
/// @see contacts_db_get_record()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_replace_records(
  contacts_list_h list,
  ffi.Pointer<ffi.Int> record_id_array,
  int count,
) =>
    tizenContactsService2.contacts_db_replace_records(
      list,
      record_id_array,
      count,
    );

/// @brief Finds records based on a given keyword.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks You must release @a record_list using contacts_list_destroy(). \n
/// This API works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned \n
/// and @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned.
/// Parameter view_uri The view URI to get records
/// Parameter keyword The keyword
/// Parameter offset The index from which to get results
/// Parameter limit The number to limit results(value 0 is used for get all records)
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_search_records(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Char> keyword,
  int offset,
  int limit,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_db_search_records(
      view_uri,
      keyword,
      offset,
      limit,
      record_list,
    );

/// @brief Finds records based on a given keyword for snippet.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks You must release @a record_list using contacts_list_destroy(). \n
/// This API works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned \n
/// and @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned. \n
/// Because start match and end match is needed to be composed with keyword, this API performance is lower than contacts_db_search_records().
/// Parameter view_uri The view URI to get records
/// Parameter keyword The keyword
/// Parameter offset The index from which to get results
/// Parameter limit The number to limit results(value 0 used for get all records)
/// Parameter start_match The text which is inserted into the fragment before the keyword(If NULL, default is "[")
/// Parameter end_match The text which is inserted into the fragment after the keyword(If NULL, default is "]")
/// Parameter token_number The one side extra number of tokens near keyword(If negative value, full sentence is printed. e.g. if token number is 3 with 'abc' keyword, "my name is [abc]de and my home")
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_search_records_for_snippet(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Char> keyword,
  int offset,
  int limit,
  ffi.Pointer<ffi.Char> start_match,
  ffi.Pointer<ffi.Char> end_match,
  int token_number,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_db_search_records_for_snippet(
      view_uri,
      keyword,
      offset,
      limit,
      start_match,
      end_match,
      token_number,
      record_list,
    );

/// @brief Finds records based on given query and keyword.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks You must release @a record_list using contacts_list_destroy(). \n
/// This API works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned \n
/// and @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned.
/// Parameter query The query handle to filter
/// Parameter keyword The keyword
/// Parameter offset The index from which to get results
/// Parameter limit The number to limit results(value 0 used for get all records)
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_search_records_with_query(
  contacts_query_h query,
  ffi.Pointer<ffi.Char> keyword,
  int offset,
  int limit,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_db_search_records_with_query(
      query,
      keyword,
      offset,
      limit,
      record_list,
    );

/// @brief Finds records based on given query and keyword for snippet.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks You must release @a record_list using contacts_list_destroy(). \n
/// This API works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned \n
/// and @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned. \n
/// Because start match and end match is needed to be composed with keyword, this API performance is lower than contacts_db_search_records_with_query().
/// Parameter query The query handle to filter
/// Parameter keyword The keyword
/// Parameter offset The index from which to get results
/// Parameter limit The number to limit results(value 0 used for get all records)
/// Parameter start_match The text which is inserted into the fragment before the keyword(If NULL, default is "[")
/// Parameter end_match The text which is inserted into the fragment after the keyword(If NULL, default is "]")
/// Parameter token_number The one side extra number of tokens near keyword(If negative value, full sentence is printed. e.g. if token number is 3 with 'abc' keyword, "my name is [abc]de and my home")
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_search_records_with_query_for_snippet(
  contacts_query_h query,
  ffi.Pointer<ffi.Char> keyword,
  int offset,
  int limit,
  ffi.Pointer<ffi.Char> start_match,
  ffi.Pointer<ffi.Char> end_match,
  int token_number,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_db_search_records_with_query_for_snippet(
      query,
      keyword,
      offset,
      limit,
      start_match,
      end_match,
      token_number,
      record_list,
    );

/// @brief Finds records based on a keyword and range.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks You must release @a record_list using contacts_list_destroy(). \n
/// This API works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned. These views can search records with range @ref CONTACTS_SEARCH_RANGE_NAME, @ref CONTACTS_SEARCH_RANGE_NUMBER, @ref CONTACTS_SEARCH_RANGE_DATA. \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_number can search records with @ref CONTACTS_SEARCH_RANGE_NAME and @ref CONTACTS_SEARCH_RANGE_NUMBER.\n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_email can search records with @ref CONTACTS_SEARCH_RANGE_NAME and @ref CONTACTS_SEARCH_RANGE_EMAIL.
/// Parameter view_uri The view URI
/// Parameter keyword The keyword
/// Parameter offset The index from which to get results
/// Parameter limit The number to limit results(value 0 is used for get all records)
/// Parameter range The search range
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_search_records_with_range(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Char> keyword,
  int offset,
  int limit,
  int range,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_db_search_records_with_range(
      view_uri,
      keyword,
      offset,
      limit,
      range,
      record_list,
    );

/// @brief Finds records based on a keyword and range for snippet.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks You must release @a record_list using contacts_list_destroy(). \n
/// This API works only for @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_contact, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_grouprel, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_assigned, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_group_not_assigned. These views can search records with range @ref CONTACTS_SEARCH_RANGE_NAME, @ref CONTACTS_SEARCH_RANGE_NUMBER, @ref CONTACTS_SEARCH_RANGE_DATA. \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_number can search records with @ref CONTACTS_SEARCH_RANGE_NAME and @ref CONTACTS_SEARCH_RANGE_NUMBER.\n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_person_email can search records with @ref CONTACTS_SEARCH_RANGE_NAME and @ref CONTACTS_SEARCH_RANGE_EMAIL. \n
/// Because start match and end match is needed to be composed with keyword, this API performance is lower than contacts_db_search_records_with_range().
/// Parameter view_uri The view URI
/// Parameter keyword The keyword
/// Parameter offset The index from which to get results
/// Parameter limit The number to limit results(value 0 is used for get all records)
/// Parameter range The search range
/// Parameter start_match The text which is inserted into the fragment before the keyword(If NULL, default is "[")
/// Parameter end_match The text which is inserted into the fragment after the keyword(If NULL, default is "]")
/// Parameter token_number The one side extra number of tokens near keyword(If negative value, full sentence is printed. e.g. if token number is 3 with 'abc' keyword, "my name is [abc]de and my home")
/// Output parameter record_list The record list
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_search_records_with_range_for_snippet(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<ffi.Char> keyword,
  int offset,
  int limit,
  int range,
  ffi.Pointer<ffi.Char> start_match,
  ffi.Pointer<ffi.Char> end_match,
  int token_number,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_db_search_records_with_range_for_snippet(
      view_uri,
      keyword,
      offset,
      limit,
      range,
      start_match,
      end_match,
      token_number,
      record_list,
    );

/// @brief Updates a record in the contacts database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @privilege %http://tizen.org/privilege/callhistory.write
/// @remarks %http://tizen.org/privilege/contact.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, \n @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile,
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial. \n
/// %http://tizen.org/privilege/callhistory.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log.
/// Parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() callback will be called upon success.
/// @see contacts_connect()
/// @see contacts_db_insert_record()
/// @see contacts_db_delete_record()
/// @see contacts_db_get_record()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_update_record(
  contacts_record_h record,
) =>
    tizenContactsService2.contacts_db_update_record(
      record,
    );

/// @brief Updates multiple records in the contacts database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @privilege %http://tizen.org/privilege/callhistory.write
/// @remarks %http://tizen.org/privilege/contact.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address_book, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_contact, \n @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_group, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_my_profile,
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_name, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_number, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_email, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_address, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_note, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_url, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_event, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_image, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_company, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_nickname, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_messenger, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_extension, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_profile, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_relationship, \n
/// @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_activity_photo, @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_speeddial. \n
/// %http://tizen.org/privilege/callhistory.write is needed for record which is related to @ref CAPI_SOCIAL_CONTACTS_SVC_VIEW_MODULE_contacts_phone_log.
/// Parameter record_list The record list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_db_changed_cb() callback will be called upon success.
/// @see contacts_connect()
/// @see contacts_db_insert_records()
/// @see contacts_db_delete_records()
///
/// Module getter: `tizenContactsService2`.
int contacts_db_update_records(
  contacts_list_h record_list,
) =>
    tizenContactsService2.contacts_db_update_records(
      record_list,
    );

/// @brief Disconnects from the contacts service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks If there is no opened connection, this function returns #CONTACTS_ERROR_DB.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM System error
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_disconnect() =>
    tizenContactsService2.contacts_disconnect();

/// @brief Disconnects from the contacts service.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks If there is no opened connection, this function returns #CONTACTS_ERROR_DB.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM System error
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @see contacts_connect_on_thread()
///
/// Module getter: `tizenContactsService2`.
int contacts_disconnect_on_thread() =>
    tizenContactsService2.contacts_disconnect_on_thread();

/// @brief Adds a condition for a boolean type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_add_operator()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_add_bool(
  contacts_filter_h filter,
  int property_id,
  bool match_value,
) =>
    tizenContactsService2.contacts_filter_add_bool(
      filter,
      property_id,
      match_value,
    );

/// @brief Adds a condition for a double type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_add_operator()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_add_double(
  contacts_filter_h filter,
  int property_id,
  int match,
  double match_value,
) =>
    tizenContactsService2.contacts_filter_add_double(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Adds a filter to a given filter.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter parent_filter The parent filter handle
/// Parameter child_filter The child filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_add_operator()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_add_filter(
  contacts_filter_h parent_filter,
  contacts_filter_h child_filter,
) =>
    tizenContactsService2.contacts_filter_add_filter(
      parent_filter,
      child_filter,
    );

/// @brief Adds a condition for an integer type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_add_operator()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_add_int(
  contacts_filter_h filter,
  int property_id,
  int match,
  int match_value,
) =>
    tizenContactsService2.contacts_filter_add_int(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Adds a condition for a long int type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_add_operator()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_add_lli(
  contacts_filter_h filter,
  int property_id,
  int match,
  int match_value,
) =>
    tizenContactsService2.contacts_filter_add_lli(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Adds an operator between conditions.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter filter The filter handle
/// Parameter operator_type The operator type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_add_str()
/// @see contacts_filter_add_int()
/// @see contacts_filter_add_bool()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_add_operator(
  contacts_filter_h filter,
  int operator_type,
) =>
    tizenContactsService2.contacts_filter_add_operator(
      filter,
      operator_type,
    );

/// @brief Adds a condition for a string type property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter filter The filter handle
/// Parameter property_id The property ID to add a condition
/// Parameter match The match flag
/// Parameter match_value The match value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_add_operator()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_add_str(
  contacts_filter_h filter,
  int property_id,
  int match,
  ffi.Pointer<ffi.Char> match_value,
) =>
    tizenContactsService2.contacts_filter_add_str(
      filter,
      property_id,
      match,
      match_value,
    );

/// @brief Creates a filter.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a filter using contacts_filter_destroy().
/// Parameter view_uri The view URI of a filter
/// Output parameter filter The filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to initialize
/// @see contacts_filter_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_create(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<contacts_filter_h> filter,
) =>
    tizenContactsService2.contacts_filter_create(
      view_uri,
      filter,
    );

/// @brief Destroys a filter.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter filter The filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_create()
///
/// Module getter: `tizenContactsService2`.
int contacts_filter_destroy(
  contacts_filter_h filter,
) =>
    tizenContactsService2.contacts_filter_destroy(
      filter,
    );

/// @brief Adds a contact and a group relationship to the contacts database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter group_id The group ID
/// Parameter contact_id The contact ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_group_remove_contact()
///
/// Module getter: `tizenContactsService2`.
int contacts_group_add_contact(
  int group_id,
  int contact_id,
) =>
    tizenContactsService2.contacts_group_add_contact(
      group_id,
      contact_id,
    );

/// @brief Removes a contact and a group relationship from the contacts database.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter group_id The group ID
/// Parameter contact_id The contact ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_group_add_contact()
///
/// Module getter: `tizenContactsService2`.
int contacts_group_remove_contact(
  int group_id,
  int contact_id,
) =>
    tizenContactsService2.contacts_group_remove_contact(
      group_id,
      contact_id,
    );

/// @brief Sets a group between the previous group and the next group.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter group_id The group ID to move
/// Parameter previous_group_id The previous group ID
/// Parameter next_group_id The back group ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_group_set_group_order(
  int group_id,
  int previous_group_id,
  int next_group_id,
) =>
    tizenContactsService2.contacts_group_set_group_order(
      group_id,
      previous_group_id,
      next_group_id,
    );

/// @brief Adds a record to a contacts list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks Same kind of record can be added.
/// Parameter contacts_list The contacts list handle
/// Parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_remove()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_add(
  contacts_list_h contacts_list,
  contacts_record_h record,
) =>
    tizenContactsService2.contacts_list_add(
      contacts_list,
      record,
    );

/// @brief Creates a contacts list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a contacts_list using contacts_list_destroy().
/// Output parameter contacts_list The contacts list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_create(
  ffi.Pointer<contacts_list_h> contacts_list,
) =>
    tizenContactsService2.contacts_list_create(
      contacts_list,
    );

/// @brief Destroys a contacts list and releases its all resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter contacts_list The contacts list handle
/// Parameter delete_child Set @c true to destroy child records automatically,
/// otherwise set @c false to not destroy child records automatically
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_create()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_destroy(
  contacts_list_h contacts_list,
  bool delete_child,
) =>
    tizenContactsService2.contacts_list_destroy(
      contacts_list,
      delete_child,
    );

/// @brief Moves a contacts list to the first position.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter contacts_list The contacts list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_last()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_first(
  contacts_list_h contacts_list,
) =>
    tizenContactsService2.contacts_list_first(
      contacts_list,
    );

/// @brief Retrieves the number of contact entities from a contacts list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter contacts_list The contacts list handle
/// Output parameter count The count of contact entity
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_add()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_get_count(
  contacts_list_h contacts_list,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenContactsService2.contacts_list_get_count(
      contacts_list,
      count,
    );

/// @brief Retrieves a record from the contacts list.
/// @details The default current record is the first record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You MUST NOT destroy the @a record.
/// It is destroyed automatically when the @a contacts_list is destroyed.
/// Parameter contacts_list The contacts list handle
/// Output parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_list_get_current_record_p(
  contacts_list_h contacts_list,
  ffi.Pointer<contacts_record_h> record,
) =>
    tizenContactsService2.contacts_list_get_current_record_p(
      contacts_list,
      record,
    );

/// @brief Moves a contacts list to the last position.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter contacts_list The contacts list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_first()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_last(
  contacts_list_h contacts_list,
) =>
    tizenContactsService2.contacts_list_last(
      contacts_list,
    );

/// @brief Moves a contacts list to the next position.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter contacts_list The contacts list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_prev()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_next(
  contacts_list_h contacts_list,
) =>
    tizenContactsService2.contacts_list_next(
      contacts_list,
    );

/// @brief Moves a contacts list to the previous position.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter contacts_list The contacts list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_next()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_prev(
  contacts_list_h contacts_list,
) =>
    tizenContactsService2.contacts_list_prev(
      contacts_list,
    );

/// @brief Removes a record from the contacts list.
/// @details If the record is current record, then current record is changed the next record. \n
/// If the record is the last record, then current record will be @c NULL.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter contacts_list The contacts list handle
/// Parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_add()
///
/// Module getter: `tizenContactsService2`.
int contacts_list_remove(
  contacts_list_h contacts_list,
  contacts_record_h record,
) =>
    tizenContactsService2.contacts_list_remove(
      contacts_list,
      record,
    );

/// @brief Gets aggregation suggestions.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks You must release @a record_list using contacts_list_destroy().
/// @remarks This may take a long time. If you need to use it in bulk, make sure the user experience is acceptable while running it.
/// Parameter person_id The person ID
/// Parameter limit The number to limit results(value 0 is used for get all records)
/// Output parameter record_list The list of person records
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_person_get_aggregation_suggestions(
  int person_id,
  int limit,
  ffi.Pointer<contacts_list_h> record_list,
) =>
    tizenContactsService2.contacts_person_get_aggregation_suggestions(
      person_id,
      limit,
      record_list,
    );

/// @brief Gets a default property for a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// @remarks @a id can be contact_id, number_id, email_id, image_id.
/// Parameter property #contacts_person_property_e
/// Parameter person_id The person ID
/// Output parameter id The record ID of the property to be set as default
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_person_get_default_property(
  int property,
  int person_id,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenContactsService2.contacts_person_get_default_property(
      property,
      person_id,
      id,
    );

/// @brief Links a person to another person.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter base_person_id The base person ID
/// Parameter person_id The person ID to link to
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_person_link_person(
  int base_person_id,
  int person_id,
) =>
    tizenContactsService2.contacts_person_link_person(
      base_person_id,
      person_id,
    );

/// @brief Resets a person's usage count.
/// @details The person is no longer in the most frequently contacted person list.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter person_id The person ID
/// Parameter type The type to reset
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_person_reset_usage(
  int person_id,
  int type,
) =>
    tizenContactsService2.contacts_person_reset_usage(
      person_id,
      type,
    );

/// @brief Sets a record's default property.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @remarks @a id can be contact_id, number_id, email_id, image_id.
/// Parameter property #contacts_person_property_e
/// Parameter person_id The person ID
/// Parameter id The record ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_person_set_default_property(
  int property,
  int person_id,
  int id,
) =>
    tizenContactsService2.contacts_person_set_default_property(
      property,
      person_id,
      id,
    );

/// @brief Sets the order of a (favorite) contact.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter person_id The person ID to move
/// Parameter previous_person_id The previous person ID
/// Parameter next_person_id The back person ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_person_set_favorite_order(
  int person_id,
  int previous_person_id,
  int next_person_id,
) =>
    tizenContactsService2.contacts_person_set_favorite_order(
      person_id,
      previous_person_id,
      next_person_id,
    );

/// @brief Unlinks a contact from a person.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter person_id The person ID
/// Parameter contact_id The contact ID to unlink
/// Output parameter unlinked_person_id The person ID generated
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_person_unlink_contact(
  int person_id,
  int contact_id,
  ffi.Pointer<ffi.Int> unlinked_person_id,
) =>
    tizenContactsService2.contacts_person_unlink_contact(
      person_id,
      contact_id,
      unlinked_person_id,
    );

/// @brief Resets the phone log's count.
/// @details The number of all types in the phone log will be @c 0.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/callhistory.write
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_phone_log_reset_statistics() =>
    tizenContactsService2.contacts_phone_log_reset_statistics();

/// @brief Resets the phone log's count by sim slot no.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/callhistory.write
/// Parameter sim_slot_no It is related to the SIM slot number. sim_slot_no 0 means first SIM, sim_slot_no 1 means second SIM
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB Database operation failure
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_phone_log_reset_statistics_by_sim(
  int sim_slot_no,
) =>
    tizenContactsService2.contacts_phone_log_reset_statistics_by_sim(
      sim_slot_no,
    );

/// @brief Creates a query.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a query using contacts_query_destroy().
/// Parameter view_uri The view URI of a query
/// Output parameter query The filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to initialize
/// @see contacts_query_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_query_create(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<contacts_query_h> query,
) =>
    tizenContactsService2.contacts_query_create(
      view_uri,
      query,
    );

/// @brief Destroys a query.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter query The query handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_query_create()
///
/// Module getter: `tizenContactsService2`.
int contacts_query_destroy(
  contacts_query_h query,
) =>
    tizenContactsService2.contacts_query_destroy(
      query,
    );

/// @brief Sets the "distinct" option for projection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter query The query handle
/// Parameter set Set @c true to set the distinct option for projection,
/// otherwise @c false to unset the distinct option
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_query_set_distinct(
  contacts_query_h query,
  bool set1,
) =>
    tizenContactsService2.contacts_query_set_distinct(
      query,
      set1,
    );

/// @brief Sets a filter for query.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter query The query handle
/// Parameter filter The filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_filter_create()
///
/// Module getter: `tizenContactsService2`.
int contacts_query_set_filter(
  contacts_query_h query,
  contacts_filter_h filter,
) =>
    tizenContactsService2.contacts_query_set_filter(
      query,
      filter,
    );

/// @brief Adds property IDs for projection.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter query The query handle
/// Parameter property_id_array The property ID array
/// Parameter count The number of property IDs
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_query_set_projection(
  contacts_query_h query,
  ffi.Pointer<ffi.UnsignedInt> property_id_array,
  int count,
) =>
    tizenContactsService2.contacts_query_set_projection(
      query,
      property_id_array,
      count,
    );

/// @brief Sets a sort mode for query.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter query The query handle
/// Parameter property_id The property ID to sort
/// Parameter is_ascending Set @c true for ascending sort mode,
/// otherwise @c false for descending sort mode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_query_set_sort(
  contacts_query_h query,
  int property_id,
  bool is_ascending,
) =>
    tizenContactsService2.contacts_query_set_sort(
      query,
      property_id,
      is_ascending,
    );

/// @brief Adds a child record to the parent record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The parent record handle
/// Parameter property_id The property ID
/// Parameter child_record The child record handle to be added to parent record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_remove_child_record()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_add_child_record(
  contacts_record_h record,
  int property_id,
  contacts_record_h child_record,
) =>
    tizenContactsService2.contacts_record_add_child_record(
      record,
      property_id,
      child_record,
    );

/// @brief Makes a clone of a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a cloned_record using contacts_record_destroy().
/// Parameter record The record handle
/// Output parameter cloned_record The cloned record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_clone(
  contacts_record_h record,
  ffi.Pointer<contacts_record_h> cloned_record,
) =>
    tizenContactsService2.contacts_record_clone(
      record,
      cloned_record,
    );

/// @brief Clones a child record list of the given parent record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a cloned_list using contacts_list_destroy().
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter cloned_list The cloned list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_list_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_clone_child_record_list(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<contacts_list_h> cloned_list,
) =>
    tizenContactsService2.contacts_record_clone_child_record_list(
      record,
      property_id,
      cloned_list,
    );

/// @brief Creates a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a record using contacts_record_destroy().
/// Parameter view_uri The view URI
/// Output parameter record The record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to initialize.
/// @see contacts_record_destroy()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_create(
  ffi.Pointer<ffi.Char> view_uri,
  ffi.Pointer<contacts_record_h> record,
) =>
    tizenContactsService2.contacts_record_create(
      view_uri,
      record,
    );

/// @brief Destroys a record and releases its all resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter delete_child Set @c true to destroy child records automatically,
/// otherwise set @c false to not destroy child records automatically
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_create()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_destroy(
  contacts_record_h record,
  bool delete_child,
) =>
    tizenContactsService2.contacts_record_destroy(
      record,
      delete_child,
    );

/// @brief Gets a record's boolean value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter value The value to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_set_bool()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_bool(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<ffi.Bool> value,
) =>
    tizenContactsService2.contacts_record_get_bool(
      record,
      property_id,
      value,
    );

/// @brief Gets a child record handle pointer from the parent record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You MUST NOT release @a child_record. It is released when the parent record is destroyed.
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter index The index of child record
/// Output parameter child_record The child record handle pointer
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_add_child_record()
/// @see contacts_record_remove_child_record()
/// @see contacts_record_get_child_record_count()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_child_record_at_p(
  contacts_record_h record,
  int property_id,
  int index,
  ffi.Pointer<contacts_record_h> child_record,
) =>
    tizenContactsService2.contacts_record_get_child_record_at_p(
      record,
      property_id,
      index,
      child_record,
    );

/// @brief Gets the number of child records of a parent record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The parent record handle
/// Parameter property_id The property ID
/// Output parameter count The child record count
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_add_child_record()
/// @see contacts_record_remove_child_record()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_child_record_count(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenContactsService2.contacts_record_get_child_record_count(
      record,
      property_id,
      count,
    );

/// @brief Gets a record's double value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter value The value to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_set_double()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_double(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenContactsService2.contacts_record_get_double(
      record,
      property_id,
      value,
    );

/// @brief Gets a record's integer value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter value The value to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_set_int()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_int(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenContactsService2.contacts_record_get_int(
      record,
      property_id,
      value,
    );

/// @brief Gets a record's long integer value.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter value The value to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_set_lli()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_lli(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<ffi.LongLong> value,
) =>
    tizenContactsService2.contacts_record_get_lli(
      record,
      property_id,
      value,
    );

/// @brief Gets a string from the record handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You must release @a value using free().
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter value The value to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_get_str_p()
/// @see contacts_record_set_str()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_str(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenContactsService2.contacts_record_get_str(
      record,
      property_id,
      value,
    );

/// @brief Gets a string pointer from the record handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks You MUST NOT release @a value.
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Output parameter value The value to be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_get_str()
/// @see contacts_record_set_str()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_str_p(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenContactsService2.contacts_record_get_str_p(
      record,
      property_id,
      value,
    );

/// @brief Gets URI string from a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Output parameter view_uri The URI of record
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_record_get_uri_p(
  contacts_record_h record,
  ffi.Pointer<ffi.Pointer<ffi.Char>> view_uri,
) =>
    tizenContactsService2.contacts_record_get_uri_p(
      record,
      view_uri,
    );

/// @brief Removes a child record from the parent record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The parent record handle
/// Parameter property_id The property ID
/// Parameter child_record The child record handle to be removed from parent record handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_add_child_record()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_remove_child_record(
  contacts_record_h record,
  int property_id,
  contacts_record_h child_record,
) =>
    tizenContactsService2.contacts_record_remove_child_record(
      record,
      property_id,
      child_record,
    );

/// @brief Sets a boolean value to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_get_bool()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_set_bool(
  contacts_record_h record,
  int property_id,
  bool value,
) =>
    tizenContactsService2.contacts_record_set_bool(
      record,
      property_id,
      value,
    );

/// @brief Sets a double value to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_get_double()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_set_double(
  contacts_record_h record,
  int property_id,
  double value,
) =>
    tizenContactsService2.contacts_record_set_double(
      record,
      property_id,
      value,
    );

/// @brief Sets an integer value to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_get_int()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_set_int(
  contacts_record_h record,
  int property_id,
  int value,
) =>
    tizenContactsService2.contacts_record_set_int(
      record,
      property_id,
      value,
    );

/// @brief Sets a long long integer value to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_get_lli()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_set_lli(
  contacts_record_h record,
  int property_id,
  int value,
) =>
    tizenContactsService2.contacts_record_set_lli(
      record,
      property_id,
      value,
    );

/// @brief Sets a string to a record.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter record The record handle
/// Parameter property_id The property ID
/// Parameter value The value to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @see contacts_record_get_str()
/// @see contacts_record_get_str_p()
///
/// Module getter: `tizenContactsService2`.
int contacts_record_set_str(
  contacts_record_h record,
  int property_id,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenContactsService2.contacts_record_set_str(
      record,
      property_id,
      value,
    );

/// @brief Registers a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_INTERNAL Implementation Error, Temporary Use
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_setting_name_display_order_changed_cb() will be called under certain conditions, after calling contacts_setting_set_name_display_order().
/// @see contacts_connect()
/// @see contacts_setting_remove_name_display_order_changed_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_setting_add_name_display_order_changed_cb(
  contacts_setting_name_display_order_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_setting_add_name_display_order_changed_cb(
      callback,
      user_data,
    );

/// @brief Registers a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_INTERNAL Implementation Error, Temporary Use
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_setting_name_sorting_order_changed_cb() will be called under certain conditions, after calling contacts_setting_set_name_sorting_order().
/// @see contacts_connect()
/// @see contacts_setting_remove_name_sorting_order_changed_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_setting_add_name_sorting_order_changed_cb(
  contacts_setting_name_sorting_order_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_setting_add_name_sorting_order_changed_cb(
      callback,
      user_data,
    );

/// @brief Gets the contacts name display order.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// Output parameter name_display_order The name display order
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_setting_get_name_display_order(
  ffi.Pointer<ffi.Int32> name_display_order,
) =>
    tizenContactsService2.contacts_setting_get_name_display_order(
      name_display_order,
    );

/// @brief Gets the contacts name sorting order in which contacts are returned.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// Output parameter name_sorting_order The name sorting order
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_setting_get_name_sorting_order(
  ffi.Pointer<ffi.Int32> name_sorting_order,
) =>
    tizenContactsService2.contacts_setting_get_name_sorting_order(
      name_sorting_order,
    );

/// @brief Unregisters a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_INTERNAL Implementation Error, Temporary Use
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_setting_add_name_display_order_changed_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_setting_remove_name_display_order_changed_cb(
  contacts_setting_name_display_order_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_setting_remove_name_display_order_changed_cb(
      callback,
      user_data,
    );

/// @brief Unregisters a callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter callback The callback function to register
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_INTERNAL Implementation Error, Temporary Use
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_setting_add_name_sorting_order_changed_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_setting_remove_name_sorting_order_changed_cb(
  contacts_setting_name_sorting_order_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_setting_remove_name_sorting_order_changed_cb(
      callback,
      user_data,
    );

/// @brief Sets the contacts name display order.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter name_display_order The name display order
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_setting_name_display_order_changed_cb() callback will be called upon success.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_setting_set_name_display_order(
  int name_display_order,
) =>
    tizenContactsService2.contacts_setting_set_name_display_order(
      name_display_order,
    );

/// @brief Sets the contacts name sorting order in which contacts are returned.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter name_sorting_order The name sorting order
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @post contacts_setting_name_sorting_order_changed_cb() callback will be called upon success.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_setting_set_name_sorting_order(
  int name_sorting_order,
) =>
    tizenContactsService2.contacts_setting_set_name_sorting_order(
      name_sorting_order,
    );

/// @deprecated Deprecated since 3.0. Use contacts_sim_get_initialization_status_by_sim_slot_no() instead.
/// @brief Checks whether first SIM initialization is completed.
/// @since_tizen @if MOBILE 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// Output parameter completed @c true if SIM is initialized,
/// otherwise @c false if SIM is not initialized
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_sim_get_initialization_status(
  ffi.Pointer<ffi.Bool> completed,
) =>
    tizenContactsService2.contacts_sim_get_initialization_status(
      completed,
    );

/// @brief Checks whether SIM of the given SIM slot number is initialized.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// Parameter sim_slot_no The SIM slot number; 0 means first SIM, 1 means second SIM
/// Output parameter completed @c true if SIM is initialized,
/// otherwise @c false if SIM is not initialized
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_sim_get_initialization_status_by_sim_slot_no(
  int sim_slot_no,
  ffi.Pointer<ffi.Bool> completed,
) =>
    tizenContactsService2.contacts_sim_get_initialization_status_by_sim_slot_no(
      sim_slot_no,
      completed,
    );

/// @deprecated Deprecated since 3.0. Use contacts_sim_import_all_contacts_by_sim_slot_no() instead.
/// @brief Imports all contacts from first SIM to Contacts Database.
/// @since_tizen @if MOBILE 2.3 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method.
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @retval #CONTACTS_ERROR_INTERNAL Implementation Error, Temporary Use
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
///
/// Module getter: `tizenContactsService2`.
int contacts_sim_import_all_contacts() =>
    tizenContactsService2.contacts_sim_import_all_contacts();

/// @brief Imports all contacts from SIM of the given SIM slot number to the Contacts Database.
/// @details This function invokes contacts_sim_import_progress_cb() to indicate the progress of imports whenever a contact is imported.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// Parameter sim_slot_no The SIM slot number; 0 means first SIM, 1 means second SIM
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_IPC Unknown IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to open a connection to the contacts service.
/// @see contacts_connect()
/// @see contacts_sim_import_progress_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_sim_import_all_contacts_by_sim_slot_no(
  int sim_slot_no,
  contacts_sim_import_progress_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_sim_import_all_contacts_by_sim_slot_no(
      sim_slot_no,
      callback,
      user_data,
    );

/// @brief Retrieves the count of contact entities from a vCard file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter vcard_file_path The person record handle
/// Output parameter count The count of contact entity
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM System error
///
/// Module getter: `tizenContactsService2`.
int contacts_vcard_get_entity_count(
  ffi.Pointer<ffi.Char> vcard_file_path,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenContactsService2.contacts_vcard_get_entity_count(
      vcard_file_path,
      count,
    );

/// @brief Gets the limit size of width and height of photos to append in vCard streams.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// Output parameter limit_size The limit size of width and height of photos to append in vCard streams. It's in pixels
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_vcard_get_limit_size_of_photo(
  ffi.Pointer<ffi.UnsignedInt> limit_size,
) =>
    tizenContactsService2.contacts_vcard_get_limit_size_of_photo(
      limit_size,
    );

/// @brief Retrieves the vCard stream from a contact.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter contact The contact record handle
/// Output parameter vcard_stream The vCard stream
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_vcard_make_from_contact(
  contacts_record_h contact,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vcard_stream,
) =>
    tizenContactsService2.contacts_vcard_make_from_contact(
      contact,
      vcard_stream,
    );

/// @brief Retrieves the vCard stream from a contact.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter my_profile The my_profile record handle
/// Output parameter vcard_stream The vCard stream
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_vcard_make_from_my_profile(
  contacts_record_h my_profile,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vcard_stream,
) =>
    tizenContactsService2.contacts_vcard_make_from_my_profile(
      my_profile,
      vcard_stream,
    );

/// @brief Retrieves the vCard stream from a person.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.read
/// Parameter person The person record handle
/// Output parameter vcard_stream The vCard stream
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_FILE_NO_SPACE FS Full
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_DB DB error
/// @retval #CONTACTS_ERROR_IPC IPC error
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to initialize.
///
/// Module getter: `tizenContactsService2`.
int contacts_vcard_make_from_person(
  contacts_record_h person,
  ffi.Pointer<ffi.Pointer<ffi.Char>> vcard_stream,
) =>
    tizenContactsService2.contacts_vcard_make_from_person(
      person,
      vcard_stream,
    );

/// @brief Retrieves all contacts with a record handle (_contacts_contact) from a vCard file.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter vcard_file_path The file path of vCard stream file
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_NO_DATA Requested data does not exist
/// @retval #CONTACTS_ERROR_SYSTEM System error
/// @pre contacts_connect() should be called to initialize.
/// @post This function invokes contacts_vcard_parse_cb().
/// @see contacts_vcard_parse_cb()
///
/// Module getter: `tizenContactsService2`.
int contacts_vcard_parse_to_contact_foreach(
  ffi.Pointer<ffi.Char> vcard_file_path,
  contacts_vcard_parse_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenContactsService2.contacts_vcard_parse_to_contact_foreach(
      vcard_file_path,
      callback,
      user_data,
    );

/// @brief Retrieves all contacts with a contacts list from a vCard stream.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter vcard_stream The vCard stream
/// Output parameter contacts_list The contacts list handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
/// @pre contacts_connect() should be called to initialize.
///
/// Module getter: `tizenContactsService2`.
int contacts_vcard_parse_to_contacts(
  ffi.Pointer<ffi.Char> vcard_stream,
  ffi.Pointer<contacts_list_h> contacts_list,
) =>
    tizenContactsService2.contacts_vcard_parse_to_contacts(
      vcard_stream,
      contacts_list,
    );

/// @brief Sets the limit size of width and height of photos to append to vCard streams.
/// @details This function can be used for getting reduced vCard stream. \n
/// When making vCard stream by using contacts_vcard_make_from_person(), contacts_vcard_make_from_my_profile(), contacts_vcard_make_from_contact(), \n
/// if width or height of the photo to append is bigger than the limit size, it is reduced to the limit size while maintaining original aspect ratio, \n
/// so that vCard stream size can be reduced.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/contact.write
/// @remarks The limit_size should be bigger than or equal to 8 and smaller than 1080.
/// Parameter limit_size The limit size of width and height of photos to append in vCard streams. It's in pixels
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #CONTACTS_ERROR_NONE Successful
/// @retval #CONTACTS_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #CONTACTS_ERROR_PERMISSION_DENIED Permission denied. This application does not have the privilege to call this method
/// @retval #CONTACTS_ERROR_NOT_SUPPORTED Not supported
/// @retval #CONTACTS_ERROR_SYSTEM Internal system module error
///
/// Module getter: `tizenContactsService2`.
int contacts_vcard_set_limit_size_of_photo(
  int limit_size,
) =>
    tizenContactsService2.contacts_vcard_set_limit_size_of_photo(
      limit_size,
    );

