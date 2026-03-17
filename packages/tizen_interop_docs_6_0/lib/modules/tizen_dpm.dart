// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenDpm`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libdpm.so.0`.
///
/// Security / Device Policy Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_dpm;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief       Adds policy change callback to the device policy
/// manager.
/// @details     This API can be used to subscribe policy change callback.
/// The callback specified to this API is asynchronously called when
/// policy is changed on runtime.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Parameter   name Policy name to subscribe(see @ref CAPI_SECURITY_DPM_MODULE_POLICY)
/// Parameter   callback The callback when policy is changed
/// Parameter   user_data User specified data passed to the callback
/// Output parameter  id Policy change callback identifier
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @remarks     See @ref CAPI_SECURITY_DPM_MODULE_POLICY section for available policy name
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_remove_policy_changed_cb()
///
/// Module getter: `tizenDpm`.
int dpm_add_policy_changed_cb(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> name,
  dpm_policy_changed_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenDpm.dpm_add_policy_changed_cb(
      handle,
      name,
      callback,
      user_data,
      id,
    );

/// @brief       Adds signal callback.
/// @details     This API can be used to receive signals raised by the device policy manager.
/// The callback specified to this function is automatically called when
/// the device policy manager raises signal.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Parameter   signal The signal name to receive(see @ref CAPI_DPM_SECURITY_MODULE_SIGNAL)
/// Parameter   callback The signal callback
/// Parameter   user_data The user data passed to the callback function
/// Output parameter  id Signal identifier
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @remarks     See @ref CAPI_DPM_SECURITY_MODULE_SIGNAL section for signals
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_manager_destroy()
/// @see         dpm_remove_signal_cb()
///
/// Module getter: `tizenDpm`.
int dpm_add_signal_cb(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> signal,
  dpm_signal_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenDpm.dpm_add_signal_cb(
      handle,
      signal,
      callback,
      user_data,
      id,
    );

/// @brief       Creates the device policy manager handle.
/// @details     This API creates device policy manager handle required to
/// the device policy APIs.
/// This API is also used to verify whether caller is authorized
/// or not.
/// @since_tizen 3.0
/// @return      Device policy manager handle on success, otherwise NULL
/// @remarks      The specific error code can be obtained by using the
/// get_last_result() method. Error codes are described in
/// exception section.
/// The returned handle should be released using dpm_manager_destroy().
/// @exception   #DPM_ERROR_NONE No error
/// @exception   #DPM_ERROR_CONNECTION_REFUSED Connection refused
/// @exception   #DPM_ERROR_OUT_OF_MEMORY Out of memory
/// @see         dpm_manager_destroy()
/// @see         get_last_result()
///
/// Module getter: `tizenDpm`.
device_policy_manager_h dpm_manager_create() =>
    tizenDpm.dpm_manager_create();

/// @brief       Releases the device policy manager handle.
/// @details     This API must be called if interaction with the device
/// policy manager is no longer required.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_manager_destroy(
  device_policy_manager_h handle,
) =>
    tizenDpm.dpm_manager_destroy(
      handle,
    );

/// @partner
/// @brief       Creates a password forbidden string list iterator.
/// @details     The password forbidden string list iterator can be used to get all forbidden strings.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// @return      A password forbidden string list iterator on success, otherwise
/// null value
/// @remarks     The specific error code can be obtained by using the
/// get_last_result() method. Error codes are described in
/// exception section.
/// The returned iterator should be released using dpm_password_destroy_iterator().
/// @exception   #DPM_ERROR_NONE No error
/// @exception   #DPM_ERROR_OUT_OF_MEMORY Out of memory
/// @exception   #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception   #DPM_ERROR_TIMED_OUT Time out
/// @exception   #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_password_iterator_next()
/// @see         dpm_password_destroy_iterator()
/// @see         get_last_result()
///
/// Module getter: `tizenDpm`.
dpm_password_iterator_h dpm_password_create_iterator(
  device_policy_manager_h handle,
) =>
    tizenDpm.dpm_password_create_iterator(
      handle,
    );

/// @partner
/// @brief       Removes all password patterns.
/// @details     An administrator can remove all password patterns.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_delete_pattern(
  device_policy_manager_h handle,
) =>
    tizenDpm.dpm_password_delete_pattern(
      handle,
    );

/// @partner
/// @brief       Frees the password forbidden string iterator.
/// @details     This API frees the password forbidden string iterator. This API must be called
/// if the iterator no longer used.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   iter The iterator to be removed
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The iter must be created by dpm_password_create_iterator()
/// @see         dpm_password_create_iterator()
/// @see         dpm_password_iterator_next()
///
/// Module getter: `tizenDpm`.
int dpm_password_destroy_iterator(
  dpm_password_iterator_h iter,
) =>
    tizenDpm.dpm_password_destroy_iterator(
      iter,
    );

/// @partner
/// @brief       Enforces password change.
/// @details     An administrator can enforce password change. PasswordPolicy
/// change setting is launched.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_enforce_change(
  device_policy_manager_h handle,
) =>
    tizenDpm.dpm_password_enforce_change(
      handle,
    );

/// @partner
/// @brief       Gets the number of days password expires.
/// @details     An administrator can get the password age to force
/// the user to enter a new password after every expiration period.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter   value Number of days after which the password expires.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_expires(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenDpm.dpm_password_get_expires(
      handle,
      value,
    );

/// @partner
/// @brief       Gets the number of min password history to avoid previous password.
/// @details     An administrator can get the number of previous
/// passwords which cannot be used when entering a new password.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter   value Number of previous passwords which cannot be used when
/// settings a new password.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_history(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenDpm.dpm_password_get_history(
      handle,
      value,
    );

/// @partner
/// @brief       Gets the maximum number of times a character can occur in
/// the device password.
/// @details     An administrator can retrieve the maximum number of times
/// a character can occur in the device password. If more than
/// one admin has set this value then the least value will take
/// preference.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter   value Pointer of Maximum Character Occurrences
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_maximum_character_occurrences(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenDpm.dpm_password_get_maximum_character_occurrences(
      handle,
      value,
    );

/// @partner
/// @brief       Gets maximum number of failed attempts before device is wiped.
/// @details     If user fails the last attempt, device will be wiped.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter   value Maximum count for failed passwords.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_maximum_failed_attempts_for_wipe(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenDpm.dpm_password_get_maximum_failed_attempts_for_wipe(
      handle,
      value,
    );

/// @partner
/// @brief       Gets the maximum numeric sequence length allowed in
/// the device password.
/// @details     An administrator can retrieve the length of numeric sequences
/// which are allowed in the device password.
/// For instance, if the return value is '3' then "123", "987",
/// "555" would all be numeric sequences of length '3' and will be
/// allowed in the device password.
/// If more than one admin has set this value then the least value
/// will take preference.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter  value Pointer of maximum numeric sequence length
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_maximum_numeric_sequence_length(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenDpm.dpm_password_get_maximum_numeric_sequence_length(
      handle,
      value,
    );

/// @partner
/// @brief       Gets the maximum number of seconds of inactivity time
/// before the screen timeout occurs.
/// @details     Called by an application that is managing the device to get
/// the value of timeout period.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter  value Pointer of Maximum inactivity time for device lock.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_max_inactivity_time_device_lock(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenDpm.dpm_password_get_max_inactivity_time_device_lock(
      handle,
      value,
    );

/// @partner
/// @brief       Gets minimum complex char in password.
/// @details     Complex characters are all non-alphabetic characters;
/// that is, numbers and symbols.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter   value Number of minimum complex char in password.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_min_complex_chars(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenDpm.dpm_password_get_min_complex_chars(
      handle,
      value,
    );

/// @partner
/// @brief       Gets password minimum length.
/// @details     Gets the minimum allowed password length.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter   value Allowed minimum password length
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_minimum_length(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenDpm.dpm_password_get_minimum_length(
      handle,
      value,
    );

/// @partner
/// @brief       Gets password pattern.
/// @details     This API can be used for applying complexity on new password value.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// @remarks     The @a pattern should be freed using free().
/// Parameter   handle Device policy manager handle
/// Output parameter  pattern Password pattern
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_OUT_OF_MEMORY Out of memory
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_pattern(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> pattern,
) =>
    tizenDpm.dpm_password_get_pattern(
      handle,
      pattern,
    );

/// @partner
/// @brief       Gets password quality.
/// @details     An administrator can get the password restrictions it is imposing.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Output parameter   quality Password quality type, values of #dpm_password_quality_e combined with bitwise 'or'
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_quality(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> quality,
) =>
    tizenDpm.dpm_password_get_quality(
      handle,
      quality,
    );

/// @partner
/// @brief       Gets password status
/// @details     An administrator can know password status for this API.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter   status Password status
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_get_status(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int32> status,
) =>
    tizenDpm.dpm_password_get_status(
      handle,
      status,
    );

/// @partner
/// @brief       Fetches a password forbidden string and forwards the iterator.
/// @details     This API returns a password forbidden string indicated by the iterator, and then
/// the iterator is moved to the next position. If the iterator reaches
/// the end of the list, null value will be returned.
/// @since_tizen 3.0
/// Parameter   iter The iterator to be controlled
/// Output parameter  forbidden_string The forbidden string got from the iterator
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @remarks     The @a forbidden_string should not be freed using free().
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The iter must be created by dpm_password_create_iterator().
/// @see         dpm_password_create_iterator()
/// @see         dpm_password_destroy_iterator()
///
/// Module getter: `tizenDpm`.
int dpm_password_iterator_next(
  dpm_password_iterator_h iter,
  ffi.Pointer<ffi.Pointer<ffi.Char>> forbidden_string,
) =>
    tizenDpm.dpm_password_iterator_next(
      iter,
      forbidden_string,
    );

/// @partner
/// @brief       Resets password.
/// @details     This takes effect immediately to the device password.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   password New password
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_reset(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> password,
) =>
    tizenDpm.dpm_password_reset(
      handle,
      password,
    );

/// @partner
/// @brief       Sets the number of days password expires.
/// @details     An administrator can configure the password age to force
/// the user to enter a new password after every expiration period.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   value Number of days after which the password expires.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_expires(
  device_policy_manager_h handle,
  int value,
) =>
    tizenDpm.dpm_password_set_expires(
      handle,
      value,
    );

/// @partner
/// @brief       Sets strings which are forbidden in the device password.
/// @details     Called by an admin that is managing the device to set strings that are forbidden to be used in the device password.
/// This specifies any strings which must not be present in the device password such as personal data (variations on the user's name, email address or X400 address), or any other strings.
/// If the parameter list has only one blank string(""), then the stored strings are cleared.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   strings The forbidden strings
/// Parameter   length The length of the strings
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_forbidden_strings(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Pointer<ffi.Char>> strings,
  int length,
) =>
    tizenDpm.dpm_password_set_forbidden_strings(
      handle,
      strings,
      length,
    );

/// @partner
/// @brief       Sets the number of min password history to avoid previous password.
/// @details     An administrator can configure the number of previous
/// passwords which cannot be used when entering a new password.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   value Number of previous passwords which cannot be used when
/// settings a new password.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_history(
  device_policy_manager_h handle,
  int value,
) =>
    tizenDpm.dpm_password_set_history(
      handle,
      value,
    );

/// @partner
/// @brief       Sets the maximum number of times a character can occur in
/// the device password.
/// @details     Called by an admin that is managing the device to specify that
/// any character in the device password cannot occur more than
/// the specified maximum number of times. Characters can be numeric
/// or alphabetic or symbolic. "aaabcde" has 'a' which occurs 3 times,
/// "1b1c1de" has '1' which occurs 3 times and "a@b@c@" has '@' which
/// occurs 3 times. A value of '0' specifies that no restrictions are
/// applied.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   value Maximum character occurrences
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_maximum_character_occurrences(
  device_policy_manager_h handle,
  int value,
) =>
    tizenDpm.dpm_password_set_maximum_character_occurrences(
      handle,
      value,
    );

/// @partner
/// @brief       Sets maximum number of failed attempts before device is wiped.
/// @details     If user fails the last attempt, device will be wiped.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   value Maximum count for failed passwords.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_maximum_failed_attempts_for_wipe(
  device_policy_manager_h handle,
  int value,
) =>
    tizenDpm.dpm_password_set_maximum_failed_attempts_for_wipe(
      handle,
      value,
    );

/// @partner
/// @brief       Sets the maximum length of the numeric sequence
/// which is allowed in the device password.
/// @details     Called by an administrator that is managing the device to set
/// the maximum numeric sequence length. This specifies that
/// the device password must not contain numeric sequences greater
/// than the given length.
/// Numeric sequences can be increasing successively by one like
/// "12345", or decreasing successively by one like "98765", or
/// repeating like "55555".
/// These are all numeric sequences of length '5'.
/// If maximum value is set to '5' then "123456" or "987654" or
/// "555555" are not allowed.
/// A value of '0' specifies that no such numeric sequence
/// restrictions are applied.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   value Maximum numeric sequence length
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_maximum_numeric_sequence_length(
  device_policy_manager_h handle,
  int value,
) =>
    tizenDpm.dpm_password_set_maximum_numeric_sequence_length(
      handle,
      value,
    );

/// @partner
/// @brief       Sets the maximum number of seconds of inactivity time
/// before the screen timeout occurs.
/// @details     An administrator sets the maximum number of seconds of inactivity
/// time before the screen timeout occurs and a device user must
/// type the password to unlock the device.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   value Maximum inactivity time for device lock. Specifies how soon
/// the device can be unlocked again after use, without reprompting for
/// the passcode.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_max_inactivity_time_device_lock(
  device_policy_manager_h handle,
  int value,
) =>
    tizenDpm.dpm_password_set_max_inactivity_time_device_lock(
      handle,
      value,
    );

/// @partner
/// @brief       Sets minimum complex char in password.
/// @details     Complex characters are all non-alphabetic characters;
/// that is, numbers and symbols. Admin can configure this
/// setting and make the password more secure.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   value Number of minimum complex char in password.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_min_complex_chars(
  device_policy_manager_h handle,
  int value,
) =>
    tizenDpm.dpm_password_set_min_complex_chars(
      handle,
      value,
    );

/// @partner
/// @brief       Sets password minimum length.
/// @details     Sets the minimum allowed password length. After setting this,
/// the user will not be able to enter a new password that is
/// shorter than the setting length.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   value Allowed minimum password length
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_minimum_length(
  device_policy_manager_h handle,
  int value,
) =>
    tizenDpm.dpm_password_set_minimum_length(
      handle,
      value,
    );

/// @partner
/// @brief       Sets the required password pattern.
/// @details     An administrator can force User to enter password based on
/// a regular expression.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   pattern Password pattern. If regular expression is
/// [a-zA-Z]{4}[0-9]{4}, we can force user to enter a 8 character
/// password with first 4 alphabetic characters and next 4
/// numeric characters. An administrator must take care when
/// setting this pattern.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_pattern(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> pattern,
) =>
    tizenDpm.dpm_password_set_pattern(
      handle,
      pattern,
    );

/// @partner
/// @brief       Sets password quality.
/// @details     An administrator can set the password restrictions it is imposing.
/// After setting this, the user will not be able to
/// enter a new password that is not at least as restrictive as what has been set.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   quality Password quality type, values of #dpm_password_quality_e combined with bitwise 'or'
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_quality(
  device_policy_manager_h handle,
  int quality,
) =>
    tizenDpm.dpm_password_set_quality(
      handle,
      quality,
    );

/// @partner
/// @brief       Sets password status
/// @details     An administrator can know password status for this API.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.password
/// Parameter   handle Device policy manager handle
/// Parameter   status Password status
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_password_set_status(
  device_policy_manager_h handle,
  int status,
) =>
    tizenDpm.dpm_password_set_status(
      handle,
      status,
    );

/// @brief       Removes policy change callback from the device policy
/// manager.
/// @details     This API should be called if policy change subscription is no longer
/// required.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Parameter   id Policy change callback identifier
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The handle must be created by dpm_manager_create().
/// @pre         The callback identifier must be created by dpm_add_policy_changed_cb().
/// @see         dpm_manager_create()
/// @see         dpm_add_policy_changed_cb()
///
/// Module getter: `tizenDpm`.
int dpm_remove_policy_changed_cb(
  device_policy_manager_h handle,
  int id,
) =>
    tizenDpm.dpm_remove_policy_changed_cb(
      handle,
      id,
    );

/// @brief       Removes signal callback.
/// @details     This API removes signal callback.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Parameter   id Signal identifier
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The context must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_manager_destroy()
/// @see         dpm_add_signal_cb()
///
/// Module getter: `tizenDpm`.
int dpm_remove_signal_cb(
  device_policy_manager_h handle,
  int id,
) =>
    tizenDpm.dpm_remove_signal_cb(
      handle,
      id,
    );

/// @brief       Checks whether the the Bluetooth desktop connectivity is allowed or not.
/// @details     An administrator can use this API to check whether the Bluetooth desktop
/// connectivity is allowed or not.
/// If the Bluetooth desktop connectivity is disallowed, the UI is grayed out
/// so user can not change its state.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the connectivity is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_bluetooth_desktop_connectivity_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_bluetooth_desktop_connectivity_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_bluetooth_desktop_connectivity_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the the bluetooth state change is allowed of not.
/// @details     An administrator can use this API to check whether the bluetooth state change
/// is allowed or not.
/// If the bluetooth state change is disallowed, the UI is grayed out
/// so user can not change its state.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the change is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_bluetooth_mode_change_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_bluetooth_mode_change_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_bluetooth_mode_change_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the the bluetooth pairing is allowed or not.
/// @details     An administrator can use this API to check whether the bluetooth
/// pairing is allowed or not.
/// If the bluetooth pairing is disallowed, the UI is grayed out
/// so user can not change its state.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the pairing is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_bluetooth_pairing_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_bluetooth_pairing_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_bluetooth_pairing_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the bluetooth tethering state change is allowed.
/// @details     An administrator can use this API to check whether user is allowed
/// to change bluetooth tethering state.
/// is allowed or not.
/// If the bluetooth tethering state change is disallowed, the UI is grayed out
/// so user can not change its state.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the change is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_bluetooth_tethering_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_bluetooth_tethering_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_bluetooth_tethering_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the use of web browser is allowed or not.
/// @details     An administrator can use this API to check whether the use of web browser
/// is allowed or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the use of web browser is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_restriction_set_browser_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_browser_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_browser_state(
      handle,
      is_allowed,
    );

/// @brief       Check whether the use of camera is allowed or not.
/// @details     An administrator can use this API to check whether the use of camera
/// is allowed or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the use of camera is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_camera_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_camera_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_camera_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the clipboard access is allowed or not.
/// @details     An administrator can use this API to check whether the clipboard access
/// is allowed or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the access is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_clipboard_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_clipboard_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_clipboard_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the use of external storage is allowed or not.
/// @details     An administrator can use this API to check whether the use of external storage is
/// allowed or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the use of external storage is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_external_storage_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_external_storage_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_external_storage_state(
      handle,
      is_allowed,
    );

/// @brief       Check whether user is allowed to change location state or not.
/// @details     An administrator can use this API to check whether user is allowed to change
/// the location state or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the location state change is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_location_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_location_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_location_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the text messaging is allowed or not.
/// @details     An administrator can use this API to check whether text messaging capability
/// is enabled or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Parameter   sim_id SIM identifier
/// Output parameter  is_allowed true if the messaging is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_restriction_set_messaging_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_messaging_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> sim_id,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_messaging_state(
      handle,
      sim_id,
      is_allowed,
    );

/// @brief       Checks whether the use of microphone is allowed or not.
/// @details     An administrator can use this API to check whether the use of microphone
/// is allowed of not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the use of microphone is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_microphone_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_microphone_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_microphone_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the access to POP or IMAP email is allowed or not.
/// @details     An administrator can use this API to check the access to POP or IMAP email
/// is allowed or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the POP or IMAP email is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_restriction_set_popimap_email_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_popimap_email_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_popimap_email_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the usb debugging is allowed or not.
/// @details     An administrator can use this API to check whether the usb debugging
/// is allowed or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter   is_allowed true if the usb debugging is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_usb_debugging_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_usb_debugging_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_usb_debugging_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the USB tethering state change is allowed.
/// @details     An administrator can use this API to check whether the USB tethering state change
/// is allowed or not.
/// If the USB tethering state change is disallowed, the UI is grayed out
/// so user can not change its state.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the change is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_usb_tethering_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_usb_tethering_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_usb_tethering_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the the Wi-Fi hotspot state change is allowed or not.
/// @details     An administrator can use this API to check whether user is allowed to change
/// Wi-Fi hotspot state or not.
/// If the Wi-Fi hotspot state change is disallowed, the UI is grayed out so user can not
/// change its state.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the state change is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_wifi_hotspot_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_wifi_hotspot_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_wifi_hotspot_state(
      handle,
      is_allowed,
    );

/// @brief       Checks whether the Wi-Fi state change is allowed or not.
/// @details     An administrator can use this API to check whether user is
/// allowed to change Wi-Fi state or not.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_allowed true if the change is allowed, false otherwise.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_set_wifi_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_get_wifi_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_allowed,
) =>
    tizenDpm.dpm_restriction_get_wifi_state(
      handle,
      is_allowed,
    );

/// @partner
/// @brief       Allows or disallows the bluetooth desktop connectivity.
/// @details     An administrator can use this API to allow or disallow the bluetooth
/// desktop connectivity.
/// If the bluetooth desktop connectivity is disallowed, the UI is grayed out
/// so user can not
/// change its state.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.bluetooth
/// Parameter   handle Device policy manager handle
/// Output parameter  allow If true, allow the bluetooth desktop connectivity,
/// if false, disallow the bluetooth desktop connectivity
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_bluetooth_desktop_connectivity_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_bluetooth_desktop_connectivity_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_bluetooth_desktop_connectivity_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to change the bluetooth state.
/// @details     An administrator can use this API to allow or disallow user
/// to change the bluetooth state.
/// When disallowed, the UI is grayed out so user cannot change the state.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.bluetooth
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow user to change bluetooth state,
/// if false, disallow user to change bluetooth state.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_bluetooth_mode_change_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_bluetooth_mode_change_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_bluetooth_mode_change_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to change the bluetooth pairing.
/// @details     An administrator can use this API to allow or disallow the bluetooth pairing.
/// If the bluetooth pairing is disallowed, the UI is grayed out
/// so user can not change its state.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.bluetooth
/// Parameter   handle Device policy manager handle
/// Output parameter  allow If true, allow the bluetooth pairing, if false, disallow the bluetooth pairing.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_bluetooth_pairing_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_bluetooth_pairing_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_bluetooth_pairing_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to change the bluetooth tethering state.
/// @details     An administrator can use this API to allow of disallow user
/// to change the bluetooth tethering state.
/// When disallowed, the UI is grayed out so user cannot change the state.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.bluetooth
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow user to change the bluetooth tethering state,
/// if false, disallow user to change the bluetooth tethering state.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_bluetooth_tethering_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_bluetooth_tethering_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_bluetooth_tethering_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows the use of web browser.
/// @details     An administrator can allows or disallow the use of web browser without
/// any user interaction
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.browser
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow the use of web browser,
/// if false, disallow the use of web browser.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_restriction_get_browser_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_browser_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_browser_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows the use of camera.
/// @details     An administrator can use this API to set whether the use of camera
/// is allowed or not.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.camera
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow the use of camera, if false, disallow the use of camera
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_camera_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_camera_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_camera_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to access the clipboard.
/// @details     An administrator can use this API to set whether the clipboard access.
/// is allowed or not
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.clipboard
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow the clipboard access, if false, disallow the clipboard access.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_clipboard_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_clipboard_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_clipboard_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to use usb mass storage.
/// @details     An administrator can use this API to set whether the usb mass
/// storage is allowed or not.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.storage
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow user to use the external storages, if false, disallow
/// the external storage
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_external_storage_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_external_storage_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_external_storage_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to change the location state.
/// @details     An administrator can use this API to allow or disallow user to change
/// the location state.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.location
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow user to change the location state, if false, disallow
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_location_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_location_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_location_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to use of SMS or text messaging.
/// @details     An administrator can disable the text messaging capability
/// without any user interaction
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.message
/// Parameter   handle Device policy manager handle
/// Parameter   sim_id SIM identifier
/// Parameter   allow If true, allow the use of SMS or text messaging,
/// if false, disallow the use of SMS or text messaging.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_restriction_get_messaging_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_messaging_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> sim_id,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_messaging_state(
      handle,
      sim_id,
      allow,
    );

/// @partner
/// @brief       Allows or disallows the use of microphone.
/// @details     An administrator can use this API to set whether the use of microphone
/// is allowed or not.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.microphone
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow the use of microphone,
/// if false, disallow the use of microphone
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_microphone_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_microphone_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_microphone_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows the access to POP or IMAP email.
/// @details     An administrator can disable the email capability without any user interaction
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.email
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow POP or IMAP email, if false, disallow POP or IMAP email.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_restriction_get_popimap_email_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_popimap_email_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_popimap_email_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows the usb debugging.
/// @details     An administrator can use this API to set whether the usb debugging
/// is allowed or not.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.debugging
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow the usb debugging, if false, disallow the usb
/// debugging
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_usb_debugging_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_usb_debugging_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_usb_debugging_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to change USB tethering settings.
/// @details     An administrator can use this API to allow or disallow user
/// to change USB tethering settings.
/// When disallowed, the UI is grayed out so user cannot change the state.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.usb
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow USB tethering state change,
/// if false, disallow USB tethering state change.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_usb_tethering_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_usb_tethering_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_usb_tethering_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to change Wi-Fi hotspot state change.
/// @details     An administrator can use this API to allow or disallow user to change Wi-Fi
/// hotspot state. When it is disallowed, the UI is grayed out so user cannot
/// change Wi-Fi hotspot state.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.wifi
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow user to change Wi-Fi hotspot state,
/// if false, disallow user to change Wi-Fi hotspot state.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_wifi_hotspot_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_wifi_hotspot_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_wifi_hotspot_state(
      handle,
      allow,
    );

/// @partner
/// @brief       Allows or disallows user to change the Wi-Fi state.
/// @details     An administrator can use this API to allow or disallow user to
/// change the Wi-Fi state. If it is disallowed, user does not have UI
/// access to change the state.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.wifi
/// Parameter   handle Device policy manager handle
/// Parameter   allow If true, allow user to change Wi-Fi state,
/// if false, disallow user to change Wi-Fi state.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_restriction_get_wifi_state()
///
/// Module getter: `tizenDpm`.
int dpm_restriction_set_wifi_state(
  device_policy_manager_h handle,
  int allow,
) =>
    tizenDpm.dpm_restriction_set_wifi_state(
      handle,
      allow,
    );

/// @brief       Checks the external storage encryption state.
/// @details     An administrator can use this API to check whether external
/// storage encryption is enabled.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter   is_encrypted true if external storage is encrypted or being encrypted,
/// else false
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_security_set_external_storage_encryption()
///
/// Module getter: `tizenDpm`.
int dpm_security_is_external_storage_encrypted(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_encrypted,
) =>
    tizenDpm.dpm_security_is_external_storage_encrypted(
      handle,
      is_encrypted,
    );

/// @brief       Checks the internal storage encryption state.
/// @details     An administrator can use this API to check whether internal
/// storage encryption is enabled.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Output parameter  is_encrypted true if internal storage is encrypted or being encrypted,
/// else false.
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_security_set_internal_storage_encryption()
///
/// Module getter: `tizenDpm`.
int dpm_security_is_internal_storage_encrypted(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Int> is_encrypted,
) =>
    tizenDpm.dpm_security_is_internal_storage_encrypted(
      handle,
      is_encrypted,
    );

/// @partner
/// @brief       Locks device screen immediately.
/// @details     An administrator can use this API to lock the device screen
/// immediately
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.lock
/// Parameter   handle Device policy manager handle
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_security_lockout_screen(
  device_policy_manager_h handle,
) =>
    tizenDpm.dpm_security_lockout_screen(
      handle,
    );

/// @partner
/// @brief       Encrypts or decrypts external storage.
/// @details     An administrator can use this API to enable external SD card
/// encryption. Before calling this API, administrator must
/// ensure that the device password is set to alphanumeric quality.
/// The administrator can set an alphanumeric password by using
/// dpm_set_password_quality() API
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.security
/// Parameter   handle Device policy manager handle
/// Parameter   encrypt true if encryption is required, false if decryption is
/// required
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_security_is_external_storage_encrypted()
///
/// Module getter: `tizenDpm`.
int dpm_security_set_external_storage_encryption(
  device_policy_manager_h handle,
  int encrypt,
) =>
    tizenDpm.dpm_security_set_external_storage_encryption(
      handle,
      encrypt,
    );

/// @partner
/// @brief       Encrypts or decrypts internal storage.
/// @details     An administrator can use this API to enable full device
/// encryption, which includes device memory and internal SD card.
/// Before calling this API, administrator must ensure that
/// the device password is set to alphanumeric quality.
/// The administrator can set an alphanumeric password by using
/// dpm_set_password_quality() API
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.security
/// Parameter   handle Device policy manager handle
/// Parameter   encrypt true if encryption is required, false if decryption is
/// required
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_security_is_internal_storage_encrypted()
///
/// Module getter: `tizenDpm`.
int dpm_security_set_internal_storage_encryption(
  device_policy_manager_h handle,
  int encrypt,
) =>
    tizenDpm.dpm_security_set_internal_storage_encryption(
      handle,
      encrypt,
    );

/// @partner
/// @brief       Wipes external memory, internal memory, or both selectively.
/// @details     Device Admin can use this API to wipe both SD card data
/// and application data.
/// Calling this API may require rebooting the device.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.wipe
/// Parameter   handle Device policy manager handle
/// Parameter   type The target storage for wipe
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
///
/// Module getter: `tizenDpm`.
int dpm_security_wipe_data(
  device_policy_manager_h handle,
  int type,
) =>
    tizenDpm.dpm_security_wipe_data(
      handle,
      type,
    );

/// @partner
/// @brief       Creates a new zone.
/// @details     An administrator can use this API to create a container. Once the container
/// is created, the admin package given to the parameter will be installed inside
/// the container. Then ownership of the container gets transferred to the admin
/// package from the client which triggered the container creation process.
/// @since_tizen 3.0
/// @privlevel   partner
/// @privilege   %http://tizen.org/privilege/dpm.zone
/// Parameter   handle Device policy manager handle
/// Parameter   name The zone name to be created
/// Parameter   pkgname Admin package container ownership will be transferred
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_NOT_PERMITTED Operation not permitted
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_zone_destroy()
///
/// Module getter: `tizenDpm`.
int dpm_zone_create(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Char> pkgname,
) =>
    tizenDpm.dpm_zone_create(
      handle,
      name,
      pkgname,
    );

/// @partner
/// @brief       Removes existing zone.
/// @details     Administrator can use this API to remove zone. All file system objects
/// created for the zone will be also erased.
/// @since_tizen 3.0
/// @privlevel	partner
/// @privilege	%http://tizen.org/privilege/dpm.zone
/// Parameter   handle Device policy manager handle
/// Parameter   name The zone name to be removed
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_PERMISSION_DENIED The application does not have
/// the privilege to call this API or the caller is not the owner
/// of the zone
/// @pre         The handle must be created by dpm_manager_create().
/// @pre         The zone corresponding to the given name must be
/// created before use of this API.
/// @see         dpm_manager_create()
/// @see         dpm_zone_create()
///
/// Module getter: `tizenDpm`.
int dpm_zone_destroy(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> name,
) =>
    tizenDpm.dpm_zone_destroy(
      handle,
      name,
    );

/// @brief       Retrieves all the name of created zones
/// @details     This API calls dpm_zone_foreach_cb() once for each zone name
/// with traversing the created zones list.
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Parameter   state a combination of the zone state to look
/// Parameter   callback The iteration callback function
/// Parameter   user_data The user data passed to the callback function
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_zone_create()
/// @see         dpm_zone_destroy()
///
/// Module getter: `tizenDpm`.
int dpm_zone_foreach_name(
  device_policy_manager_h handle,
  int state,
  dpm_zone_foreach_name_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenDpm.dpm_zone_foreach_name(
      handle,
      state,
      callback,
      user_data,
    );

/// @brief       Gets the zone state.
/// @details     This API can be used to get the state of the zone. The zone can
/// have one of the three states(running, locked).
/// @since_tizen 3.0
/// Parameter   handle Device policy manager handle
/// Parameter   name The zone name
/// Output parameter  state The zone state
/// @return      #DPM_ERROR_NONE on success, otherwise a negative value
/// @retval      #DPM_ERROR_NONE Successful
/// @retval      #DPM_ERROR_NO_DATA No such zone to get state
/// @retval      #DPM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval      #DPM_ERROR_TIMED_OUT Time out
/// @pre         The handle must be created by dpm_manager_create().
/// @see         dpm_manager_create()
/// @see         dpm_zone_create()
/// @see         dpm_zone_destroy()
///
/// Module getter: `tizenDpm`.
int dpm_zone_get_state(
  device_policy_manager_h handle,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenDpm.dpm_zone_get_state(
      handle,
      name,
      state,
    );

