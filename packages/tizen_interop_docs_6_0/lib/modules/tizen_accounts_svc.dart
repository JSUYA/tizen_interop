// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenAccountsSvc`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libaccounts-svc.so.0`.
///
/// Account / Account Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_accounts_svc;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @deprecated Deprecated since Tizen 2.4.\n
/// This API is not necessary to use since Tizen 2.4.
/// @brief      Connects to the account database by readwrite mode.
///
/// @since_tizen @if MOBILE 2.3 @endif
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks    This API need both privileges
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #ACCOUNT_ERROR_NONE               Successful
/// @retval     #ACCOUNT_ERROR_DB_NOT_OPENED      DB is not connected
/// @retval     #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
///
/// Module getter: `tizenAccountsSvc`.
int account_connect() =>
    tizenAccountsSvc.account_connect();

/// @deprecated Deprecated since Tizen 2.4.\n
/// This API is not necessary to use since Tizen 2.4.
/// @brief      Connects to the account database by readonly mode.
///
/// @since_tizen @if MOBILE 2.3 @endif
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #ACCOUNT_ERROR_NONE               Successful
/// @retval     #ACCOUNT_ERROR_DB_NOT_OPENED      DB is not connected
/// @retval     #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
///
/// Module getter: `tizenAccountsSvc`.
int account_connect_readonly() =>
    tizenAccountsSvc.account_connect_readonly();

/// @brief  Creates a handle to the account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    Release @a account using account_destroy().
/// @remarks    The created handle is not added to the account database until account_insert_to_db() is called.
///
/// Parameter  account  The account handle
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #ACCOUNT_ERROR_NONE               Successful
/// @retval     #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval     #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval     #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_destroy()
///
/// Module getter: `tizenAccountsSvc`.
int account_create(
  ffi.Pointer<account_h> account,
) =>
    tizenAccountsSvc.account_create(
      account,
    );

/// @brief  Deletes an account from the account database by account DB ID.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks    This API need both privileges \n
/// Only can delete an account which was added by same package applications
/// Parameter  account_db_id  The account ID to delete
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  The account owner is different from the caller or DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_insert_to_db()
/// @see account_delete_from_db_by_user_name()
/// @see account_delete_from_db_by_package_name()
/// @see account_update_to_db_by_id()
/// @see account_update_to_db_by_user_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_delete_from_db_by_id(
  int account_db_id,
) =>
    tizenAccountsSvc.account_delete_from_db_by_id(
      account_db_id,
    );

/// @brief  Deletes an account from the account database by package name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks    This API need both privileges \n
/// Only can delete accounts which was added by same package applications
/// Parameter  package_name  The package name of account(s) to delete
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_insert_to_db()
/// @see account_delete_from_db_by_id()
/// @see account_delete_from_db_by_user_name()
/// @see account_update_to_db_by_id()
/// @see account_update_to_db_by_user_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_delete_from_db_by_package_name(
  ffi.Pointer<ffi.Char> package_name,
) =>
    tizenAccountsSvc.account_delete_from_db_by_package_name(
      package_name,
    );

/// @brief  Deletes an account from the account database by user name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks    This API need both privileges \n
/// Only can delete accounts which were added by same package applications
/// Parameter  user_name     The user name of the account to delete
/// Parameter  package_name  The package name of the account to delete
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_insert_to_db()
/// @see account_delete_from_db_by_id()
/// @see account_delete_from_db_by_package_name()
/// @see account_update_to_db_by_id()
/// @see account_update_to_db_by_user_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_delete_from_db_by_user_name(
  ffi.Pointer<ffi.Char> user_name,
  ffi.Pointer<ffi.Char> package_name,
) =>
    tizenAccountsSvc.account_delete_from_db_by_user_name(
      user_name,
      package_name,
    );

/// @brief  Destroys the account handle and releases all its resources.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account  The account handle
///
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #ACCOUNT_ERROR_NONE               Successful
/// @retval     #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval     #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_create()
///
/// Module getter: `tizenAccountsSvc`.
int account_destroy(
  account_h account,
) =>
    tizenAccountsSvc.account_destroy(
      account,
    );

/// @deprecated Deprecated since Tizen 2.4.\n
/// This API is not necessary to use since Tizen 2.4.
/// @brief      Disconnects from the account database.
///
/// @since_tizen @if MOBILE 2.3 @endif
/// @return     @c 0 on success,
/// otherwise a negative error value
/// @retval     #ACCOUNT_ERROR_NONE               Successful
/// @retval     #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval     #ACCOUNT_ERROR_DATABASE_BUSY      SQLite busy handler expired
///
/// Module getter: `tizenAccountsSvc`.
int account_disconnect() =>
    tizenAccountsSvc.account_disconnect();

/// @brief  Retrieves all accounts details by invoking the given callback function iteratively.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback   The callback function to invoke
/// Parameter   user_data  The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   Related record does not exist
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre   This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
/// @post  This function invokes account_cb().
///
/// @see account_query_account_by_account_id()
/// @see account_query_account_by_user_name()
/// @see account_query_account_by_package_name()
/// @see account_query_account_by_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_foreach_account_from_db(
  account_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_foreach_account_from_db(
      callback,
      user_data,
    );

/// @brief  Gets the access token. Access token field is used to store account secrets (such as password or master token).
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a access_token using free().
/// @remarks    Access token field is used for storing account secret (password / master token etc)
///
/// Parameter   account       The account handle
/// Output parameter  access_token  The access token
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// Only account owner application can retrieve account password / access_token. For others this field will be null.
/// @see account_set_access_token()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_access_token(
  account_h account,
  ffi.Pointer<ffi.Pointer<ffi.Char>> access_token,
) =>
    tizenAccountsSvc.account_get_access_token(
      account,
      access_token,
    );

/// @brief  Gets the ID of an account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account     The account handle
/// Output parameter  account_id  The account ID
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenAccountsSvc`.
int account_get_account_id(
  account_h account,
  ffi.Pointer<ffi.Int> account_id,
) =>
    tizenAccountsSvc.account_get_account_id(
      account,
      account_id,
    );

/// @brief  Gets the authentication type.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account    The account handle
/// Output parameter  auth_type  The authentication type
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_auth_type()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_auth_type(
  account_h account,
  ffi.Pointer<ffi.Int32> auth_type,
) =>
    tizenAccountsSvc.account_get_auth_type(
      account,
      auth_type,
    );

/// @brief  Gets the capability detail of an account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account           The account handle
/// Parameter   capability_type   The capability type to get the capability value
/// Output parameter  capability_value  The capability value (on/off) of the specified capability_type
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   There is no given capability_type in the account
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_capability(
  account_h account,
  ffi.Pointer<ffi.Char> capability_type,
  ffi.Pointer<ffi.Int32> capability_value,
) =>
    tizenAccountsSvc.account_get_capability(
      account,
      capability_type,
      capability_value,
    );

/// @brief  Gets all the capabilities of an account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account    The account handle
/// Parameter  callback   The callback function
/// Parameter  user_data  The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_capability_all(
  account_h account,
  capability_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_get_capability_all(
      account,
      callback,
      user_data,
    );

/// @brief  Gets the user specific custom text of an account key.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a value using free().
///
/// Parameter   account   The account handle
/// Parameter   key       The key to retrieve custom text
/// Output parameter  value     The text of the given key
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   There is no given capability type in the account
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_custom()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_custom(
  account_h account,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenAccountsSvc.account_get_custom(
      account,
      key,
      value,
    );

/// @brief  Gets all the user custom texts of an account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account    The account handle
/// Parameter  callback   The callback function to retrieve all custom text \n
/// The callback function gives the key and value.
/// Parameter  user_data  The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_custom()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_custom_all(
  account_h account,
  account_custom_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_get_custom_all(
      account,
      callback,
      user_data,
    );

/// @brief  Gets the display name of an account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a display_name using free().
///
/// Parameter   account       The account handle
/// Output parameter  display_name  The display name of the account
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_display_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_display_name(
  account_h account,
  ffi.Pointer<ffi.Pointer<ffi.Char>> display_name,
) =>
    tizenAccountsSvc.account_get_display_name(
      account,
      display_name,
    );

/// @brief  Gets the domain name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a domain_name using free().
///
/// Parameter   account      The account handle
/// Output parameter  domain_name  The domain name
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_domain_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_domain_name(
  account_h account,
  ffi.Pointer<ffi.Pointer<ffi.Char>> domain_name,
) =>
    tizenAccountsSvc.account_get_domain_name(
      account,
      domain_name,
    );

/// @brief  Gets the email address.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a email_address using free().
///
/// Parameter   account        The account handle
/// Output parameter  email_address  The email address
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_email_address()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_email_address(
  account_h account,
  ffi.Pointer<ffi.Pointer<ffi.Char>> email_address,
) =>
    tizenAccountsSvc.account_get_email_address(
      account,
      email_address,
    );

/// @brief  Gets the icon path.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a icon_path using free().
///
/// Parameter   account    The account handle
/// Output parameter  icon_path  The icon path
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_icon_path()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_icon_path(
  account_h account,
  ffi.Pointer<ffi.Pointer<ffi.Char>> icon_path,
) =>
    tizenAccountsSvc.account_get_icon_path(
      account,
      icon_path,
    );

/// @brief  Gets the package name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a package_name using free().
///
/// Parameter   account       The account handle
/// Output parameter  package_name  The package name
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_package_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_package_name(
  account_h account,
  ffi.Pointer<ffi.Pointer<ffi.Char>> package_name,
) =>
    tizenAccountsSvc.account_get_package_name(
      account,
      package_name,
    );

/// @brief  Gets the secret.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account  The account handle
/// Output parameter  secret   The secret
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_secret()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_secret(
  account_h account,
  ffi.Pointer<ffi.Int32> secret,
) =>
    tizenAccountsSvc.account_get_secret(
      account,
      secret,
    );

/// @brief  Gets the source.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a source using free().
///
/// Parameter   account  The account handle
/// Output parameter  source   The source
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_source()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_source(
  account_h account,
  ffi.Pointer<ffi.Pointer<ffi.Char>> source,
) =>
    tizenAccountsSvc.account_get_source(
      account,
      source,
    );

/// @brief  Gets the sync support.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account       The account handle
/// Output parameter  sync_support  The sync support
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_sync_support()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_sync_support(
  account_h account,
  ffi.Pointer<ffi.Int32> sync_support,
) =>
    tizenAccountsSvc.account_get_sync_support(
      account,
      sync_support,
    );

/// @brief  Gets the count of accounts in the account database.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Output parameter  count  The out parameter for count of all accounts
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// Module getter: `tizenAccountsSvc`.
int account_get_total_count_from_db(
  ffi.Pointer<ffi.Int> count,
) =>
    tizenAccountsSvc.account_get_total_count_from_db(
      count,
    );

/// @brief  Gets the user integer.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account         The account handle
/// Parameter   user_int_index  The index of the user integer (must be in range from @c 0 to @c 4)
/// Output parameter  user_integer    The user integer
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_user_int()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_user_int(
  account_h account,
  int user_int_index,
  ffi.Pointer<ffi.Int> user_integer,
) =>
    tizenAccountsSvc.account_get_user_int(
      account,
      user_int_index,
      user_integer,
    );

/// @brief  Gets the user name of an account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a user_name using free().
///
/// Parameter   account    The account handle
/// Output parameter  user_name  The user name of the account
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_user_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_user_name(
  account_h account,
  ffi.Pointer<ffi.Pointer<ffi.Char>> user_name,
) =>
    tizenAccountsSvc.account_get_user_name(
      account,
      user_name,
    );

/// @brief  Gets the user text.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a user_text using free().
///
/// Parameter   account          The account handle
/// Parameter   user_text_index  The index of the user text (range: 0 ~ 4)
/// Output parameter  user_text        The user text
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_set_user_text()
///
/// Module getter: `tizenAccountsSvc`.
int account_get_user_text(
  account_h account,
  int user_text_index,
  ffi.Pointer<ffi.Pointer<ffi.Char>> user_text,
) =>
    tizenAccountsSvc.account_get_user_text(
      account,
      user_text_index,
      user_text,
    );

/// @brief  Inserts the account details to the account database.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks     This API need both privileges
/// Parameter   account        The account handle
/// Output parameter  account_db_id  The account ID to be assigned to an account
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER        Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY            Out of Memory
/// @retval  #ACCOUNT_ERROR_DB_FAILED                Database operation failed
/// @retval  #ACCOUNT_ERROR_DUPLICATED               Same user name exists in your application
/// @retval  #ACCOUNT_ERROR_NOT_ALLOW_MULTIPLE       Tried to add an account in spite of multiple false accounts
/// @retval  #ACCOUNT_ERROR_NOT_REGISTERED_PROVIDER  Tried to add an account though you did not register the account type in manifest
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED        DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY            SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED            Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED            Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_delete_from_db_by_id()
/// @see account_delete_from_db_by_user_name()
/// @see account_delete_from_db_by_package_name()
/// @see account_update_to_db_by_id()
/// @see account_update_to_db_by_user_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_insert_to_db(
  account_h account,
  ffi.Pointer<ffi.Int> account_db_id,
) =>
    tizenAccountsSvc.account_insert_to_db(
      account,
      account_db_id,
    );

/// @brief  Retrieves an account with the account ID.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// @remarks     You must allocate @a account using account_create() and release using account_destroy().
///
/// Parameter   account_db_id  The account database ID to search
/// Output parameter  account        The account handle \n
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_query_account_by_user_name()
/// @see account_query_account_by_package_name()
/// @see account_query_account_by_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_query_account_by_account_id(
  int account_db_id,
  ffi.Pointer<account_h> account,
) =>
    tizenAccountsSvc.account_query_account_by_account_id(
      account_db_id,
      account,
    );

/// @brief  Retrieves all accounts with the capability type and capability value.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback          The callback function to invoke
/// Parameter   capability_type   The capability type to search
/// Parameter   capability_value  The capability value to search
/// Parameter   user_data         The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre   This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
/// @post  This function invokes account_cb().
///
/// @see account_foreach_account_from_db()
/// @see account_query_account_by_account_id()
/// @see account_query_account_by_user_name()
/// @see account_query_account_by_package_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_query_account_by_capability(
  account_cb callback,
  ffi.Pointer<ffi.Char> capability_type,
  int capability_value,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_query_account_by_capability(
      callback,
      capability_type,
      capability_value,
      user_data,
    );

/// @brief  Retrieves all accounts with the capability type.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback         The callback function to invoke
/// Parameter   capability_type  The capability type to search
/// Parameter   user_data        The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre   This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
/// @post  This function invokes account_cb().
///
/// @see account_foreach_account_from_db()
/// @see account_query_account_by_account_id()
/// @see account_query_account_by_user_name()
/// @see account_query_account_by_package_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_query_account_by_capability_type(
  account_cb callback,
  ffi.Pointer<ffi.Char> capability_type,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_query_account_by_capability_type(
      callback,
      capability_type,
      user_data,
    );

/// @brief  Retrieves all accounts with the package name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/account.read
/// Parameter  callback      The callback function to invoke
/// Parameter  package_name  The package name to search
/// Parameter  user_data     The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre   This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
/// @post  This function invokes account_cb().
///
/// @see account_foreach_account_from_db()
/// @see account_query_account_by_account_id()
/// @see account_query_account_by_user_name()
/// @see account_query_account_by_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_query_account_by_package_name(
  account_cb callback,
  ffi.Pointer<ffi.Char> package_name,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_query_account_by_package_name(
      callback,
      package_name,
      user_data,
    );

/// @brief  Retrieves all accounts with the user name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback   The callback function to invoke
/// Parameter   user_name  The user name to search
/// Parameter   user_data  The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre   This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
/// @post  This function invokes account_cb().
///
/// @see account_foreach_account_from_db()
/// @see account_query_account_by_account_id()
/// @see account_query_account_by_package_name()
/// @see account_query_account_by_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_query_account_by_user_name(
  account_cb callback,
  ffi.Pointer<ffi.Char> user_name,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_query_account_by_user_name(
      callback,
      user_name,
      user_data,
    );

/// @brief  Retrieves all capabilities with the account database ID.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback       The callback function to invoke
/// Parameter   account_db_id  The account database ID to search
/// Parameter   user_data      The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre   This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
/// @post  This function invokes capability_cb().
///
/// @see account_get_capability()
/// @see account_set_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_query_capability_by_account_id(
  capability_cb callback,
  int account_db_id,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_query_capability_by_account_id(
      callback,
      account_db_id,
      user_data,
    );

/// @brief  Retrieves deleted account with the account ID.
///
/// @since_tizen 5.5
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// @remarks     The  @a account should be released using account_destroy().
///
/// Parameter   account_db_id  The id of the account to find in the database
/// Output parameter  account        The account handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
///
/// @see account_query_account_by_account_id()
/// @see account_query_account_by_user_name()
/// @see account_query_account_by_package_name()
/// @see account_query_account_by_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_query_deleted_account_info_by_account_id(
  int account_db_id,
  ffi.Pointer<account_h> account,
) =>
    tizenAccountsSvc.account_query_deleted_account_info_by_account_id(
      account_db_id,
      account,
    );

/// @brief  Sets the access token. Access token field is used to store account secrets (such as password or master token).
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    Only account owner application can retrieve account password / access_token. For others this field will be null.
///
/// Parameter  account       The account handle
/// Parameter  access_token  The text string to set as the access token
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
/// @see account_get_access_token()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_access_token(
  account_h account,
  ffi.Pointer<ffi.Char> access_token,
) =>
    tizenAccountsSvc.account_set_access_token(
      account,
      access_token,
    );

/// @brief  Sets the authentication type.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account    The account handle
/// Parameter  auth_type  The integer to be set as the authentication type
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_auth_type()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_auth_type(
  account_h account,
  int auth_type,
) =>
    tizenAccountsSvc.account_set_auth_type(
      account,
      auth_type,
    );

/// @brief  Sets the capability.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account           The account handle
/// Parameter  capability_type   The capability type
/// Parameter  capability_state  The capability state
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_capability()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_capability(
  account_h account,
  ffi.Pointer<ffi.Char> capability_type,
  int capability_state,
) =>
    tizenAccountsSvc.account_set_capability(
      account,
      capability_type,
      capability_state,
    );

/// @brief  Sets the custom.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account  The account handle
/// Parameter  key      The user custom key for the specific value
/// Parameter  value    The user custom value about the given key
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_custom()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_custom(
  account_h account,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenAccountsSvc.account_set_custom(
      account,
      key,
      value,
    );

/// @brief  Sets the display name of an account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account      The account handle
/// Parameter  display_name The text string to set as the display name
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// Module getter: `tizenAccountsSvc`.
int account_set_display_name(
  account_h account,
  ffi.Pointer<ffi.Char> display_name,
) =>
    tizenAccountsSvc.account_set_display_name(
      account,
      display_name,
    );

/// @brief  Sets the domain name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account      The account handle
/// Parameter  domain_name  The text string to set as the domain name
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_domain_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_domain_name(
  account_h account,
  ffi.Pointer<ffi.Char> domain_name,
) =>
    tizenAccountsSvc.account_set_domain_name(
      account,
      domain_name,
    );

/// @brief  Sets the email address.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account        The account handle
/// Parameter  email_address  The text string to set as the email address
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_email_address()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_email_address(
  account_h account,
  ffi.Pointer<ffi.Char> email_address,
) =>
    tizenAccountsSvc.account_set_email_address(
      account,
      email_address,
    );

/// @brief  Sets the icon path.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account    The account handle
/// Parameter  icon_path  The text string to set as the icon path
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_icon_path()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_icon_path(
  account_h account,
  ffi.Pointer<ffi.Char> icon_path,
) =>
    tizenAccountsSvc.account_set_icon_path(
      account,
      icon_path,
    );

/// @brief  Sets the package name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account       The account handle
/// Parameter  package_name  The text string to set as the package name
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_email_address()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_package_name(
  account_h account,
  ffi.Pointer<ffi.Char> package_name,
) =>
    tizenAccountsSvc.account_set_package_name(
      account,
      package_name,
    );

/// @brief  Sets the secret.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account  The account handle
/// Parameter  secret   The secrecy to be set
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_secret()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_secret(
  account_h account,
  int secret,
) =>
    tizenAccountsSvc.account_set_secret(
      account,
      secret,
    );

/// @brief  Sets the source.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account  The account handle
/// Parameter  source   The text string to set as the source
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_source()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_source(
  account_h account,
  ffi.Pointer<ffi.Char> source,
) =>
    tizenAccountsSvc.account_set_source(
      account,
      source,
    );

/// @brief  Sets the sync support.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account       The account handle
/// Parameter  sync_support  The sync state to be set
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_sync_support()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_sync_support(
  account_h account,
  int sync_support,
) =>
    tizenAccountsSvc.account_set_sync_support(
      account,
      sync_support,
    );

/// @brief  Sets the user integer.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account         The account handle
/// Parameter  user_int_index  The index of the user integer (must be in range from @c 0 to @c 4)
/// Parameter  user_integer    The integer to set as the user integer
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_user_int()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_user_int(
  account_h account,
  int user_int_index,
  int user_integer,
) =>
    tizenAccountsSvc.account_set_user_int(
      account,
      user_int_index,
      user_integer,
    );

/// @brief  Sets the user name of an account.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account    The account handle
/// Parameter  user_name  The string to set as user name
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_user_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_user_name(
  account_h account,
  ffi.Pointer<ffi.Char> user_name,
) =>
    tizenAccountsSvc.account_set_user_name(
      account,
      user_name,
    );

/// @brief  Sets the user text.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter  account          The account handle
/// Parameter  user_text_index  The index of the user text (must be in range from @c 0 to @c 4)
/// Parameter  user_text        The text string to set as the user text
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_get_user_text()
///
/// Module getter: `tizenAccountsSvc`.
int account_set_user_text(
  account_h account,
  int user_text_index,
  ffi.Pointer<ffi.Char> user_text,
) =>
    tizenAccountsSvc.account_set_user_text(
      account,
      user_text_index,
      user_text,
    );

/// @brief  Creates a handle for the account event subscription.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks     You must release @a account_subscribe handle using account_unsubscribe_notification().
///
/// Parameter   account_subscribe  The account subscription handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_unsubscribe_notification()
/// @see account_subscribe_notification()
///
/// Module getter: `tizenAccountsSvc`.
int account_subscribe_create(
  ffi.Pointer<account_subscribe_h> account_subscribe,
) =>
    tizenAccountsSvc.account_subscribe_create(
      account_subscribe,
    );

/// @brief  Starts to subscribe account event through the given callback function.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read \n
/// Parameter   account_subscribe  The account subscription handle
/// Parameter   callback           The callback function that is called when an account is removed and a data of account is updated from the account database \n
/// It will be called with event message and account ID.
/// Parameter   user_data          The user_data that is delivered to callback
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE                     Successful
/// @retval  #ACCOUNT_ERROR_EVENT_SUBSCRIPTION_FAIL  Subscription fail
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER        Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED            Not supported
///
/// @see account_unsubscribe_notification()
///
/// Module getter: `tizenAccountsSvc`.
int account_subscribe_notification(
  account_subscribe_h account_subscribe,
  account_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_subscribe_notification(
      account_subscribe,
      callback,
      user_data,
    );

/// @brief  Creates a handle to the account provider.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks     You must release @a account_type handle using account_type_destroy().\n
///
/// Parameter  account_type  The account provider handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_destroy()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_create(
  ffi.Pointer<account_type_h> account_type,
) =>
    tizenAccountsSvc.account_type_create(
      account_type,
    );

/// @brief  Destroys the account provider handle and releases all its resources.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
///
/// @remarks    When you get @a account_type using account_type_create(), you must release the handle using account_destroy() to avoid the memory leak.
///
/// Parameter  account_type  The account provider handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_create()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_destroy(
  account_type_h account_type,
) =>
    tizenAccountsSvc.account_type_destroy(
      account_type,
    );

/// @brief  Retrieves all account provider information.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback   The account provider information \n
/// You can get the account information through account_type_get_* with the carried account_type_handle.
/// Parameter   user_data  The user data \n
/// It will be carried through your callback function.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_type_create()
/// @see account_type_get_app_id()
/// @see account_type_get_service_provider_id()
/// @see account_type_get_icon_path()
/// @see account_type_get_small_icon_path()
/// @see account_type_get_multiple_account_support()
/// @see account_type_get_label()
/// @see account_type_destroy()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_foreach_account_type_from_db(
  account_type_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_type_foreach_account_type_from_db(
      callback,
      user_data,
    );

/// @brief  Gets the application ID of an account provider.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks     You must release @a app_id using free().
///
/// Parameter   account_type  The account provider handle \n
/// It should be given by account_type_query_* functions or account_type_foreach_account_type_from_db().
/// Output parameter  app_id        The application ID of an account provider item
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_foreach_account_type_from_db()
/// @see account_type_query_by_app_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_get_app_id(
  account_type_h account_type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> app_id,
) =>
    tizenAccountsSvc.account_type_get_app_id(
      account_type,
      app_id,
    );

/// @brief  Gets the icon path of an account provider.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks     You must release @a icon_path using free().
///
/// Parameter   account_type  The account provider handle \n
/// It should be given by account_type_query_* functions or account_type_foreach_account_type_from_db().
/// Output parameter  icon_path     The icon path of the account provider item
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_foreach_account_type_from_db()
/// @see account_type_query_by_app_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_get_icon_path(
  account_type_h account_type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> icon_path,
) =>
    tizenAccountsSvc.account_type_get_icon_path(
      account_type,
      icon_path,
    );

/// @brief  Gets the label information detail of an account provider.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account_type  The account provider handle\n
/// It should be given by account_type_query_* functions or account_type_foreach_account_type_from_db().
/// Parameter   callback      The callback function carrying the label information
/// Parameter   user_data     The user data to be passed to the callback function
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_foreach_account_type_from_db()
/// @see account_type_query_by_app_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_get_label(
  account_type_h account_type,
  account_label_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_type_get_label(
      account_type,
      callback,
      user_data,
    );

/// @brief  Gets the specific label information detail of an account provider.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a label using free().
///
/// Parameter   account_type The account provider handle\n
/// It should be given by account_type_query_* functions or account_type_foreach_account_type_from_db().
/// Parameter   locale       The locale is specified as an ISO 3166 alpha-2 two letter country-code followed by ISO 639-1 for the two-letter language code.\n
/// For example, "ko_KR" or "ko-kr" for Korean, "en_US" or "en-us" for American English.
/// Output parameter  label        The label text given for the locale
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   No label for the given locale
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_foreach_account_type_from_db()
/// @see account_type_query_by_app_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_get_label_by_locale(
  account_type_h account_type,
  ffi.Pointer<ffi.Char> locale,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenAccountsSvc.account_type_get_label_by_locale(
      account_type,
      locale,
      label,
    );

/// @brief  Checks whether the given account provider supports multiple accounts.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account_type              The account provider handle \n
/// It should be given by account_type_query_* functions or account_type_foreach_account_type_from_db().
/// Output parameter  multiple_account_support  The flag indicating support for multiple accounts accounts\n
/// TRUE or FALSE.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_foreach_account_type_from_db()
/// @see account_type_query_by_app_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_get_multiple_account_support(
  account_type_h account_type,
  ffi.Pointer<ffi.Int> multiple_account_support,
) =>
    tizenAccountsSvc.account_type_get_multiple_account_support(
      account_type,
      multiple_account_support,
    );

/// @brief  Gets capability information with the given account provider handle.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// Parameter   account_type  The account provider handle\n
/// It should be given by account_type_query_* functions or account_type_foreach_account_type_from_db().
/// Parameter   callback      The callback function that carries the capability name of the app ID
/// Parameter   user_data     The user data \n
/// If you have your private data to carry into callback function, then you can use it.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// Module getter: `tizenAccountsSvc`.
int account_type_get_provider_feature_all(
  account_type_h account_type,
  provider_feature_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_type_get_provider_feature_all(
      account_type,
      callback,
      user_data,
    );

/// @brief  Gets the service provider ID of an account provider.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks     You must release @a service_provider_id using free().
///
/// Parameter   account_type         The account provider handle \n
/// It should be given by account_type_query_* functions or account_type_foreach_account_type_from_db().
/// Output parameter  service_provider_id  The service provider text ID of an account provider item
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_foreach_account_type_from_db()
/// @see account_type_query_by_app_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_get_service_provider_id(
  account_type_h account_type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> service_provider_id,
) =>
    tizenAccountsSvc.account_type_get_service_provider_id(
      account_type,
      service_provider_id,
    );

/// @brief  Gets the small icon path of an account provider.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @remarks    You must release @a small_icon_path using free().
///
/// Parameter   account_type     The account provider handle\n
/// It should be given by account_type_query_* functions or account_type_foreach_account_type_from_db().
/// Output parameter  small_icon_path  The small icon path of the account provider item
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @see account_type_foreach_account_type_from_db()
/// @see account_type_query_by_app_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_get_small_icon_path(
  account_type_h account_type,
  ffi.Pointer<ffi.Pointer<ffi.Char>> small_icon_path,
) =>
    tizenAccountsSvc.account_type_get_small_icon_path(
      account_type,
      small_icon_path,
    );

/// @brief  Checks whether the given app_id exists in the account provider DB.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   app_id  The application ID to check
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   Record not found
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid app ID
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_type_query_by_app_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_query_app_id_exist(
  ffi.Pointer<ffi.Char> app_id,
) =>
    tizenAccountsSvc.account_type_query_app_id_exist(
      app_id,
    );

/// @brief  Retrieves the account provider information with your application ID.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel     public
/// @privilege     %http://tizen.org/privilege/account.read
/// Parameter     app_id        The application ID to search
/// Parameter account_type  The account handle which has to be created by account_type_create() before calling this function and released by account_type_destroy() after calling this function.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   Queried data does not exist
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_type_create()
/// @see account_type_get_app_id()
/// @see account_type_get_service_provider_id()
/// @see account_type_get_icon_path()
/// @see account_type_get_small_icon_path()
/// @see account_type_get_multiple_account_support()
/// @see account_type_get_label()
/// @see account_type_destroy()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_query_by_app_id(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<account_type_h> account_type,
) =>
    tizenAccountsSvc.account_type_query_by_app_id(
      app_id,
      account_type,
    );

/// @brief  Retrieves account provider information with the capability name.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback        The callback function to retrieve account provider information
/// Parameter   key             The capability value to search account provider \n
/// For example, ACCOUNT_SUPPORTS_CAPABILITY_CONTACT or "http://tizen.org/account/capability/contact"
/// Parameter  user_data        If you have your private data to carry into callback function, then you can use it
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   Record not found
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// Module getter: `tizenAccountsSvc`.
int account_type_query_by_provider_feature(
  account_type_cb callback,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_type_query_by_provider_feature(
      callback,
      key,
      user_data,
    );

/// @brief  Retrieves the label information with your application ID.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback    The callback function that carries label_h for label information \n
/// label_h contains label info as parameter.
/// Parameter   app_id     The application ID to search
/// Parameter   user_data  The user data \n
/// If you have your private data to carry into callback function, then you can use it.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_type_query_by_app_id()
/// @see account_type_foreach_account_type_from_db()
///
/// Module getter: `tizenAccountsSvc`.
int account_type_query_label_by_app_id(
  account_label_cb callback,
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_type_query_label_by_app_id(
      callback,
      app_id,
      user_data,
    );

/// @brief  Retrieves the label information with the given application ID and locale.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   app_id  The application ID
/// Parameter   locale  The locale is specified as an ISO 3166 alpha-2 two letter country-code followed by ISO 639-1 for the two-letter language code.\n
/// For example, "ko_KR" or "ko-kr" for Korean, "en_US" or "en-us" for American English.
/// Output parameter  label   The label text corresponding app_id and locale \n
/// It must be free text.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// Module getter: `tizenAccountsSvc`.
int account_type_query_label_by_locale(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Char> locale,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenAccountsSvc.account_type_query_label_by_locale(
      app_id,
      locale,
      label,
    );

/// @brief  Retrieves capability information with your application ID.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// Parameter   callback   The callback function carries the capability name of an app ID
/// Parameter   app_id     The application ID to search
/// Parameter   user_data  The user data \n
/// If you have your private data to carry into callback function, then you can use it.
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// Module getter: `tizenAccountsSvc`.
int account_type_query_provider_feature_by_app_id(
  provider_feature_cb callback,
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenAccountsSvc.account_type_query_provider_feature_by_app_id(
      callback,
      app_id,
      user_data,
    );

/// @brief   Checks whether the given application ID supports the capability.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read
/// @remarks     The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter   app_id      The application ID
/// Parameter   capability  The capability \n
/// For example, ACCOUNT_SUPPORTS_CAPABILITY_CONTACT or "http://tizen.org/account/capability/contact"
///
/// @return  @c TRUE if the application supports the given capability, \n
/// otherwise @c FALSE if the application does not support the given capability
/// @retval  @c TRUE means the application supports the given capability
/// @retval  @c FALSE means the application does not support the given capability
/// @exception #ACCOUNT_ERROR_NONE               Successful
/// @exception #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @exception #ACCOUNT_ERROR_RECORD_NOT_FOUND   Related record does not exist
/// @exception #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @exception #ACCOUNT_ERROR_PERMISSION_DENIED  DB access fail by permission
/// @exception #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @exception #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @exception #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// Module getter: `tizenAccountsSvc`.
bool account_type_query_supported_feature(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Char> capability,
) =>
    tizenAccountsSvc.account_type_query_supported_feature(
      app_id,
      capability,
    );

/// @brief  Destroys the account subscribe handle and releases all its resources.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read \n
/// @remarks     You must call account_unsubscribe_notification() when you do not need to subscribe account event.
///
/// Parameter   account_subscribe  The account subscription handle
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE                     Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER        Invalid parameter
/// @retval  #ACCOUNT_ERROR_EVENT_SUBSCRIPTION_FAIL  Unsubscription failed
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED            Not supported
///
/// @see account_create()
///
/// Module getter: `tizenAccountsSvc`.
int account_unsubscribe_notification(
  account_subscribe_h account_subscribe,
) =>
    tizenAccountsSvc.account_unsubscribe_notification(
      account_subscribe,
    );

/// @brief  Updates the sync status of an account with the given account ID.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks     This API need both privileges \n
/// Only can update an account which was added by same package applications
/// Parameter   account_db_id  The account ID for which sync status needs to be changed
/// Parameter   sync_status    The new sync status
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// Module getter: `tizenAccountsSvc`.
int account_update_sync_status_by_id(
  int account_db_id,
  int sync_status,
) =>
    tizenAccountsSvc.account_update_sync_status_by_id(
      account_db_id,
      sync_status,
    );

/// @brief  Updates the account details to the account database.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks    This API need both privileges \n
/// Only can update an account which was added by same package applications
/// Parameter  account     The account handle
/// Parameter  account_id  The account ID to update
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   The account to update does not exist
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_insert_to_db()
/// @see account_delete_from_db_by_id()
/// @see account_delete_from_db_by_user_name()
/// @see account_delete_from_db_by_package_name()
/// @see account_update_to_db_by_user_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_update_to_db_by_id(
  account_h account,
  int account_id,
) =>
    tizenAccountsSvc.account_update_to_db_by_id(
      account,
      account_id,
    );

/// @brief      Updates the account details to the account database.
/// The provider permission check has been added since tizen 2.4.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks    This API need both privileges \n
/// Only can update an account which was added by same package applications
/// Parameter  account     The account handle
/// Parameter  account_id  The account ID to update
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_OUT_OF_MEMORY      Out of Memory
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   The account to update does not exist
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_insert_to_db()
/// @see account_delete_from_db_by_id()
/// @see account_delete_from_db_by_user_name()
/// @see account_delete_from_db_by_package_name()
/// @see account_update_to_db_by_user_name()
///
/// Module getter: `tizenAccountsSvc`.
int account_update_to_db_by_id_ex(
  account_h account,
  int account_id,
) =>
    tizenAccountsSvc.account_update_to_db_by_id_ex(
      account,
      account_id,
    );

/// @brief  Updates the account details to the account database.
///
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 3.0 @endif
/// @privlevel  public
/// @privilege  %http://tizen.org/privilege/account.read \n
/// %http://tizen.org/privilege/account.write
/// @remarks    This API need both privileges \n
/// Only can update accounts which were added by same package applications
/// Parameter  account       The account handle
/// Parameter  user_name     The user name of the account to update
/// Parameter  package_name  The package name for the user name
///
/// @return  @c 0 on success,
/// otherwise a negative error value
/// @retval  #ACCOUNT_ERROR_NONE               Successful
/// @retval  #ACCOUNT_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ACCOUNT_ERROR_DB_FAILED          Database operation failed
/// @retval  #ACCOUNT_ERROR_RECORD_NOT_FOUND   The account to update does not exist
/// @retval  #ACCOUNT_ERROR_PERMISSION_DENIED  DB Access fail by permission
/// @retval  #ACCOUNT_ERROR_DATABASE_BUSY      SQLite handler is busy
/// @retval  #ACCOUNT_ERROR_DB_NOT_OPENED      Account database did not opened
/// @retval  #ACCOUNT_ERROR_NOT_SUPPORTED      Not supported
///
/// @pre  This function requires an open connection to an account service by account_connect() on tizen 2.3 (MOBILE).\n
/// But the account_connect() is not required to use this function since tizen 2.4.
///
/// @see account_insert_to_db()
/// @see account_delete_from_db_by_id()
/// @see account_delete_from_db_by_user_name()
/// @see account_delete_from_db_by_package_name()
/// @see account_update_to_db_by_id()
///
/// Module getter: `tizenAccountsSvc`.
int account_update_to_db_by_user_name(
  account_h account,
  ffi.Pointer<ffi.Char> user_name,
  ffi.Pointer<ffi.Char> package_name,
) =>
    tizenAccountsSvc.account_update_to_db_by_user_name(
      account,
      user_name,
      package_name,
    );

