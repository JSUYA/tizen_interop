// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiContext`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-context.so.1`.
///
/// Context / Contextual History, Contextual Trigger.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_context;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief		Creates a context history handle.
/// @since_tizen 2.4
/// @remarks		The @c handle must be released using context_history_destroy().
///
/// Output parameter handle    Handle to be initialized
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_HISTORY_ERROR_OUT_OF_MEMORY		Out of memory
///
/// @see context_history_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_history_create(
  ffi.Pointer<context_history_h> handle,
) =>
    tizenCapiContext.context_history_create(
      handle,
    );

/// @brief		Releases the resources occupied by a handle.
/// @details		This releases the memory allocated for the @c handle.
///
/// @since_tizen 2.4
///
/// Parameter  handle   Handle to be released
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
///
/// @pre	context_history_create()
///
/// Module getter: `tizenCapiContext`.
int context_history_destroy(
  context_history_h handle,
) =>
    tizenCapiContext.context_history_destroy(
      handle,
    );

/// @brief		Creates a history filter.
/// @since_tizen 2.4
/// @remarks		The @c filter must be released using context_history_filter_destroy().
///
/// Output parameter	filter		Filter handle to be initialized
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_HISTORY_ERROR_OUT_OF_MEMORY		Memory allocation failed
///
/// @see		context_history_filter_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_history_filter_create(
  ffi.Pointer<context_history_filter_h> filter,
) =>
    tizenCapiContext.context_history_filter_create(
      filter,
    );

/// @brief		Releases the resources occupied by a filter.
/// @details		This releases the memory allocated for the @c filter.
/// @since_tizen 2.4
///
/// Parameter	filter		Filter handle to be released
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre		context_history_filter_create()
///
/// Module getter: `tizenCapiContext`.
int context_history_filter_destroy(
  context_history_filter_h filter,
) =>
    tizenCapiContext.context_history_filter_destroy(
      filter,
    );

/// @brief		Sets an integer value to a filter.
/// @details		This sets the value to a filter.
/// @since_tizen 2.4
///
/// Parameter	filter		The filter handle
/// Parameter	filter_type	The filter type to set
/// Parameter	value		The value to be set
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre		context_history_filter_create()
///
/// Module getter: `tizenCapiContext`.
int context_history_filter_set_int(
  context_history_filter_h filter,
  int filter_type,
  int value,
) =>
    tizenCapiContext.context_history_filter_set_int(
      filter,
      filter_type,
      value,
    );

/// @deprecated	Deprecated since 4.0.
/// @brief		Sets a string to a filter.
/// @details		This sets the value to a filter.
/// @since_tizen 2.4
///
/// Parameter	filter		The filter handle
/// Parameter	filter_type	The filter type to set
/// Parameter	value		The value to be set
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre		context_history_filter_create()
/// @see		context_history_filter_set_int()
///
/// Module getter: `tizenCapiContext`.
int context_history_filter_set_string(
  context_history_filter_h filter,
  int filter_type,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiContext.context_history_filter_set_string(
      filter,
      filter_type,
      value,
    );

/// @brief		Reads context statistics or patterns.
/// @details		Retrieves a given type of context statistics or patterns list.
/// See the programming guide to find available filter type #context_history_filter_e@n
/// for each context data type #context_history_data_e.
/// @since_tizen 2.4
///
/// @remarks		The @c list must be released using context_history_list_destroy(). \n
/// %http://tizen.org/privilege/apphistory.read or %http://tizen.org/privilege/mediahistory.read
/// is needed to retrieve data. It depends on context data type #context_history_data_e.
///
/// Parameter	handle      Handle for controlling the context history data requests
/// Parameter	data_type	Type of the history data
/// Parameter	filter		Filter to be used to compute statistics or patterns. This can not be @c NULL
/// Output parameter	list   History data retrieved. This should be freed after use
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_PERMISSION_DENIED	Permission denied
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_HISTORY_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_HISTORY_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_HISTORY_ERROR_NO_DATA				Requested data does not exist
///
/// @pre context_history_create()
/// @post context_history_list_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_history_get_list(
  context_history_h handle,
  int data_type,
  context_history_filter_h filter,
  ffi.Pointer<context_history_list_h> list,
) =>
    tizenCapiContext.context_history_get_list(
      handle,
      data_type,
      filter,
      list,
    );

/// @brief		Checks whether a history data type is supported in the current device.
/// @since_tizen 4.0
///
/// Parameter	data_type		Type of history data
/// Output parameter	supported		If supported, @c true, otherwise @c false
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_HISTORY_ERROR_OPERATION_FAILED		Operation failed
///
/// Module getter: `tizenCapiContext`.
int context_history_is_supported(
  int data_type,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiContext.context_history_is_supported(
      data_type,
      supported,
    );

/// @brief		Destroys a history list handle and release all its resources.
/// @since_tizen 2.4
///
/// Parameter	list    The context history data handle
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre context_history_get_list()
///
/// Module getter: `tizenCapiContext`.
int context_history_list_destroy(
  context_history_list_h list,
) =>
    tizenCapiContext.context_history_list_destroy(
      list,
    );

/// @brief		Retrieves the number of records in a list.
/// @since_tizen 2.4
///
/// Parameter	list    The history data list handle
/// Output parameter	count   The count of the data list
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_HISTORY_ERROR_OPERATION_FAILED		Operation failed
///
/// @pre context_history_get_list()
/// @see context_history_list_move_first()
/// @see context_history_list_move_next()
///
/// Module getter: `tizenCapiContext`.
int context_history_list_get_count(
  context_history_list_h list,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiContext.context_history_list_get_count(
      list,
      count,
    );

/// @brief		Retrieves the current record from the history list.
/// @details		The default current record is the first record.
/// @since_tizen 2.4
/// @remarks		The @c record must be released using context_history_record_destroy().
///
/// Parameter	list      The context history list handle
/// Output parameter	record   History data record retrieved
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_HISTORY_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_HISTORY_ERROR_OUT_OF_MEMORY		Out of memory
///
/// @pre context_history_get_list()
/// @post context_history_record_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_history_list_get_current(
  context_history_list_h list,
  ffi.Pointer<context_history_record_h> record,
) =>
    tizenCapiContext.context_history_list_get_current(
      list,
      record,
    );

/// @brief		Moves a history data list to the first position.
/// @since_tizen 2.4
///
/// Parameter	list    The context history list handle
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre context_history_get_list()
/// @see context_history_list_get_count()
/// @see context_history_list_move_next()
///
/// Module getter: `tizenCapiContext`.
int context_history_list_move_first(
  context_history_list_h list,
) =>
    tizenCapiContext.context_history_list_move_first(
      list,
    );

/// @brief		Moves a history data list to the next position.
/// @since_tizen 2.4
///
/// Parameter	list    The context history list handle
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_HISTORY_ERROR_NO_DATA				Requested data does not exist
///
/// @pre context_history_get_list()
/// @see context_history_list_get_count()
/// @see context_history_list_move_first()
///
/// Module getter: `tizenCapiContext`.
int context_history_list_move_next(
  context_history_list_h list,
) =>
    tizenCapiContext.context_history_list_move_next(
      list,
    );

/// @brief		Destroys a record handle and releases all its resources.
/// @since_tizen 2.4
///
/// Parameter	record		The record handle
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre		context_history_list_get_current()
///
/// Module getter: `tizenCapiContext`.
int context_history_record_destroy(
  context_history_record_h record,
) =>
    tizenCapiContext.context_history_record_destroy(
      record,
    );

/// @brief		Gets a double-precision value from a record.
/// @details		See the programming guide to find available attribute keys@n
/// for each context data #context_history_data_e.
/// @since_tizen 3.0
///
/// Parameter	record		The record handle
/// Parameter	key			The key of the attribute to get
/// Output parameter	value		The result value
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre		context_history_list_get_current()
/// @see		context_history_record_get_int()
/// @see		context_history_record_get_string()
///
/// Module getter: `tizenCapiContext`.
int context_history_record_get_double(
  context_history_record_h record,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Double> value,
) =>
    tizenCapiContext.context_history_record_get_double(
      record,
      key,
      value,
    );

/// @brief		Gets an integer value from a record.
/// @details		See the programming guide to find available attribute keys@n
/// for each context data #context_history_data_e.
/// @since_tizen 2.4
///
/// Parameter	record		The record handle
/// Parameter	key			The key of attribute to get
/// Output parameter	value		The result value
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre		context_history_list_get_current()
/// @see		context_history_record_get_double()
/// @see		context_history_record_get_string()
///
/// Module getter: `tizenCapiContext`.
int context_history_record_get_int(
  context_history_record_h record,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> value,
) =>
    tizenCapiContext.context_history_record_get_int(
      record,
      key,
      value,
    );

/// @brief		Gets a string from a record.
/// @details		See the programming guide to find available attribute keys@n
/// for each context data #context_history_data_e.
/// @since_tizen 2.4
/// @remarks		@c value must be released using free().
///
/// Parameter	record		The record handle
/// Parameter	key			The key of attribute to get
/// Output parameter	value		The result value
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_HISTORY_ERROR_NONE					Successful
/// @retval		#CONTEXT_HISTORY_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_HISTORY_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre		context_history_list_get_current()
/// @see		context_history_record_get_int()
/// @see		context_history_record_get_double()
///
/// Module getter: `tizenCapiContext`.
int context_history_record_get_string(
  context_history_record_h record,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiContext.context_history_record_get_string(
      record,
      key,
      value,
    );

/// @brief		Registers a rule.
/// @details		Using this, applications can register a rule and get the ID of the registered rule.@n
/// A rule can only be enabled, disabled, or removed by the application that has registered the rule.
/// @since_tizen 2.4
///
/// @remarks		When registering a new rule, regarding the event and condition items used to compose the rule,
/// the application may require one or more privileges.
/// For details, see context_trigger_rule_event_create() and context_trigger_rule_condition_create().
///
/// Parameter	rule		The rule to register
/// Output parameter	rule_id		The ID assigned to the @a rule
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_PERMISSION_DENIED	Permission denied
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// @see			context_trigger_remove_rule()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_add_rule(
  context_trigger_rule_h rule,
  ffi.Pointer<ffi.Int> rule_id,
) =>
    tizenCapiContext.context_trigger_add_rule(
      rule,
      rule_id,
    );

/// @brief		Publishes an instance of a defined custom contextual data.
/// @details		Using this, an application can publish the latest value of a custom data defined by the same application.
/// The published data instance triggers the evaluation process of the trigger rules that use the data in their event part.
/// If a rule uses the custom data as a condition, the last known value is referenced.
/// See the programming guide to find the JSON format for the @a fact.
/// @since_tizen 3.0
///
/// @remarks		Corresponding contextual data can only be published by the application that registered it.
///
/// Parameter	name			The name of custom contextual data item
/// Parameter	fact			The contextual data to be provided in JSON format
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_DATA			Invalid data
///
/// Module getter: `tizenCapiContext`.
int context_trigger_custom_publish(
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Char> fact,
) =>
    tizenCapiContext.context_trigger_custom_publish(
      name,
      fact,
    );

/// @brief		Defines a custom contextual data item with its template.
/// @details		A contextual data item can be used as an event or a condition of other applications' trigger rules,
/// in addition to predefined #context_trigger_event_e and #context_trigger_condition_e.
/// See the programming guide to find the JSON format for the @a attr_template.
/// @since_tizen 3.0
///
/// Parameter	name			The name of a custom contextual data item
/// Parameter	attr_template	The attribute template which explains contextual data schema in JSON format
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_DATA_EXIST			Data exist
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_DATA			Invalid data
///
/// @see			context_trigger_custom_unregister()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_custom_register(
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Char> attr_template,
) =>
    tizenCapiContext.context_trigger_custom_register(
      name,
      attr_template,
    );

/// @brief		Removes a defined custom contextual data item.
/// @since_tizen 3.0
///
/// @remarks		A custom event/condition data item can only be removed by the application that registered it.
///
/// Parameter	name			The name of a custom contextual data item
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// @see			context_trigger_custom_register()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_custom_unregister(
  ffi.Pointer<ffi.Char> name,
) =>
    tizenCapiContext.context_trigger_custom_unregister(
      name,
    );

/// @brief		Disables a rule.
/// @details		This deactivates the rule designated by the @a rule_id, which is owned by the application.
/// @since_tizen 2.4
///
/// Parameter	rule_id		The ID of the rule to be disabled
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_RULE_NOT_ENABLED		Rule is not enabled
/// @retval		#CONTEXT_TRIGGER_ERROR_RULE_NOT_EXIST		Rule does not exist
///
/// @see			context_trigger_enable_rule()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_disable_rule(
  int rule_id,
) =>
    tizenCapiContext.context_trigger_disable_rule(
      rule_id,
    );

/// @brief		Enables a rule.
/// @details		This activates the rule designated by the @a rule_id, which is owned by the application.
/// @since_tizen 2.4
///
/// Parameter	rule_id		The ID of the rule to be enabled
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_RULE_ENABLED			Rule is enabled already
/// @retval		#CONTEXT_TRIGGER_ERROR_RULE_NOT_EXIST		Rule does not exist
///
/// @see			context_trigger_disable_rule()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_enable_rule(
  int rule_id,
) =>
    tizenCapiContext.context_trigger_enable_rule(
      rule_id,
    );

/// @brief		Gets the IDs of the rules owned by the current application.
/// @since_tizen 2.4
///
/// @remarks		The arrays @a enabled_rule_ids and @a disabled_rule_ids must be released using @c free().
///
/// Output parameter	enabled_rule_ids	The IDs of the active rules
/// Output parameter	enabled_rule_count	The number of the active rules
/// Output parameter	disabled_rule_ids	The IDs of the inactive rules
/// Output parameter	disabled_rule_count	The number of the inactive rules
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
///
/// Module getter: `tizenCapiContext`.
int context_trigger_get_own_rule_ids(
  ffi.Pointer<ffi.Pointer<ffi.Int>> enabled_rule_ids,
  ffi.Pointer<ffi.Int> enabled_rule_count,
  ffi.Pointer<ffi.Pointer<ffi.Int>> disabled_rule_ids,
  ffi.Pointer<ffi.Int> disabled_rule_count,
) =>
    tizenCapiContext.context_trigger_get_own_rule_ids(
      enabled_rule_ids,
      enabled_rule_count,
      disabled_rule_ids,
      disabled_rule_count,
    );

/// @brief		Gets a rule stored in the system by rule ID.
/// @since_tizen 2.4
///
/// @remarks		The @a rule must be released using context_trigger_rule_destroy().
///
/// Parameter	rule_id		The ID of the rule to be retrieved
/// Output parameter	rule		The rule retrieved
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_RULE_NOT_EXIST		Rule does not exist
///
/// Module getter: `tizenCapiContext`.
int context_trigger_get_rule_by_id(
  int rule_id,
  ffi.Pointer<context_trigger_rule_h> rule,
) =>
    tizenCapiContext.context_trigger_get_rule_by_id(
      rule_id,
      rule,
    );

/// @brief		Removes a rule.
/// @details		This removes the rule designated by the @a rule_id, which is owned by the application.
/// @since_tizen 2.4
///
/// @remarks		If the rule has been activated, it should be disabled through context_trigger_disable_rule() in advance.
///
/// Parameter	rule_id		The ID of the rule to be removed
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_RULE_ENABLED			Rule is enabled already
/// @retval		#CONTEXT_TRIGGER_ERROR_RULE_NOT_EXIST		Rule does not exist
///
/// @see			context_trigger_add_rule()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_remove_rule(
  int rule_id,
) =>
    tizenCapiContext.context_trigger_remove_rule(
      rule_id,
    );

/// @brief		Adds an event or a condition to a rule.
/// @since_tizen 2.4
///
/// Parameter	rule		The rule
/// Parameter	entry		The event or condition entry to be added to the rule
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_add_entry(
  context_trigger_rule_h rule,
  context_trigger_rule_entry_h entry,
) =>
    tizenCapiContext.context_trigger_rule_add_entry(
      rule,
      entry,
    );

/// @brief		Creates a condition entry.
/// @details		A condition of a contextual condition item is created.
/// @since_tizen 2.4
///
/// @remarks		Regarding the @a condition_item, the application may require one of the following privileges:@n
/// http://tizen.org/privilege/network.get @n
/// http://tizen.org/privilege/telephony @n
/// http://tizen.org/privilege/apphistory.read @n
/// http://tizen.org/privilege/callhistory.read @n
/// http://tizen.org/privilege/mediahistory.read @n
/// If the application does not have necessary privilege, when registering the corresponding rule,
/// context_trigger_add_rule() will return #CONTEXT_TRIGGER_ERROR_PERMISSION_DENIED.
/// See #context_trigger_condition_e to find the corresponding privilege of each condition item.@n
/// The @a entry must be released using context_trigger_rule_entry_destroy().
///
/// Parameter	condition_item	The contextual condition item
/// Parameter	logical_type	The logical operator
/// Output parameter	entry			The condition entry to be initialized
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Memory allocation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// @see			context_trigger_rule_entry_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_condition_create(
  int condition_item,
  int logical_type,
  ffi.Pointer<context_trigger_rule_entry_h> entry,
) =>
    tizenCapiContext.context_trigger_rule_condition_create(
      condition_item,
      logical_type,
      entry,
    );

/// @brief		Checks whether a contextual condition is supported in the current device.
/// @since_tizen 2.4
///
/// Parameter	condition_item	The contextual condition item
/// Output parameter	supported		If supported, @c true, otherwise @c false
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_condition_is_supported(
  int condition_item,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiContext.context_trigger_rule_condition_is_supported(
      condition_item,
      supported,
    );

/// @brief		Creates an empty rule.
/// @details		An empty rule container is created. When using this,
/// a logical operator, one of #context_trigger_logical_type_e, needs to be designated.@n
/// In case of #CONTEXT_TRIGGER_LOGICAL_CONJUNCTION,
/// the rule can be satisfied only if all conditions are true.
/// Otherwise, in case of #CONTEXT_TRIGGER_LOGICAL_DISJUNCTION,
/// the rule can be satisfied if at least one is true.
/// @since_tizen 2.4
///
/// @remarks		The @a rule must be released using context_trigger_rule_destroy().
///
/// Parameter	logical_type	The logical operator
/// Output parameter	rule			The rule handle to be initialized
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Memory allocation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// @see			context_trigger_rule_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_create(
  int logical_type,
  ffi.Pointer<context_trigger_rule_h> rule,
) =>
    tizenCapiContext.context_trigger_rule_create(
      logical_type,
      rule,
    );

/// @brief		Creates a condition entry with custom condition, instead of predefined condition item #context_trigger_condition_e.
/// @details		A condition of a custom contextual condition item, which is registered and will be provided by provider application/system, is created.
/// @since_tizen 3.0
///
/// @remarks		The @a entry must be released using context_trigger_rule_entry_destroy().
///
/// Parameter	condition_item	The custom contextual condition item
/// Parameter	provider		The id of the package which provides the condition item
/// Parameter	logical_type	The logical operator
/// Output parameter	entry			The condition entry to be initialized
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Memory allocation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// @see			context_trigger_rule_condition_create()
/// @see			context_trigger_rule_entry_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_custom_condition_create(
  ffi.Pointer<ffi.Char> condition_item,
  ffi.Pointer<ffi.Char> provider,
  int logical_type,
  ffi.Pointer<context_trigger_rule_entry_h> entry,
) =>
    tizenCapiContext.context_trigger_rule_custom_condition_create(
      condition_item,
      provider,
      logical_type,
      entry,
    );

/// @brief		Creates an event entry with custom event, instead of predefined event item #context_trigger_event_e.
/// @details		An event of a custom contextual event item, which is registered and will be provided by an application/system, is created.
/// @since_tizen 3.0
///
/// @remarks		The @a entry must be released using context_trigger_rule_entry_destroy().
///
/// Parameter	event_item		The custom contextual event item
/// Parameter	provider		The id of the package which provides the event item
/// Parameter	logical_type	The logical operator
/// Output parameter	entry			The event entry to be initialized
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Memory allocation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// @see			context_trigger_rule_event_create()
/// @see			context_trigger_rule_entry_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_custom_event_create(
  ffi.Pointer<ffi.Char> event_item,
  ffi.Pointer<ffi.Char> provider,
  int logical_type,
  ffi.Pointer<context_trigger_rule_entry_h> entry,
) =>
    tizenCapiContext.context_trigger_rule_custom_event_create(
      event_item,
      provider,
      logical_type,
      entry,
    );

/// @brief		Releases the resources occupied by a rule handle.
/// @since_tizen 2.4
///
/// Parameter	rule		The rule handle to be released
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre			context_trigger_rule_create()
/// @see			context_trigger_get_rule_by_id()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_destroy(
  context_trigger_rule_h rule,
) =>
    tizenCapiContext.context_trigger_rule_destroy(
      rule,
    );

/// @deprecated	Deprecated since 4.0.
/// @brief		Adds a comparison between an attribute of a condition and an attribute extracted from the event.
/// @details		The key needs to be registered in advance, via context_trigger_rule_entry_add_key().
/// @since_tizen 2.4
///
/// Parameter	entry			The condition entry
/// Parameter	key				The attribute key of the condition, which will be used as the left operand
/// Parameter	comp_operator	The comparison operator
/// Parameter	event_data_key	The event data key of which the corresponding data value will be used as the right operand
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_NO_DATA				The key was not added in the entry
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// @pre			context_trigger_rule_entry_add_key()
/// @see			context_trigger_rule_entry_add_comparison_int()
/// @see			context_trigger_rule_entry_add_comparison_string()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_entry_add_comparison(
  context_trigger_rule_entry_h entry,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> comp_operator,
  ffi.Pointer<ffi.Char> event_data_key,
) =>
    tizenCapiContext.context_trigger_rule_entry_add_comparison(
      entry,
      key,
      comp_operator,
      event_data_key,
    );

/// @brief		Adds a comparison between an attribute key and an integer.
/// @details		The key needs to be registered in advance, via context_trigger_rule_entry_add_key().
/// As the comparison operator, one of the following operators is allowed:
/// #CONTEXT_TRIGGER_EQUAL_TO, #CONTEXT_TRIGGER_NOT_EQUAL_TO, #CONTEXT_TRIGGER_LESS_THAN,
/// #CONTEXT_TRIGGER_GREATER_THAN, #CONTEXT_TRIGGER_LESS_THAN_OR_EQUAL_TO
/// and #CONTEXT_TRIGGER_GREATER_THAN_OR_EQUAL_TO.
/// @since_tizen 2.4
///
/// Parameter	entry			The event or condition entry
/// Parameter	key				The attribute key, which will be used as the left operand
/// Parameter	comp_operator	The comparison operator
/// Parameter	value			The right operand value
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_NO_DATA				The key was not added in the entry
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// @pre			context_trigger_rule_entry_add_key()
/// @see			context_trigger_rule_entry_add_comparison_string()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_entry_add_comparison_int(
  context_trigger_rule_entry_h entry,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> comp_operator,
  int value,
) =>
    tizenCapiContext.context_trigger_rule_entry_add_comparison_int(
      entry,
      key,
      comp_operator,
      value,
    );

/// @brief		Adds a comparison between an attribute key and a string.
/// @details		The key needs to be registered in advance, via context_trigger_rule_entry_add_key().
/// As the comparison operator, one of the following operators is allowed:
/// #CONTEXT_TRIGGER_EQUAL_TO and #CONTEXT_TRIGGER_NOT_EQUAL_TO.
/// @since_tizen 2.4
///
/// Parameter	entry			The event or condition entry
/// Parameter	key				The attribute key, which will be used as the left operand
/// Parameter	comp_operator	The comparison operator
/// Parameter	value			The right operand value
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_NO_DATA				The key was not added in the entry
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// @pre			context_trigger_rule_entry_add_key()
/// @see			context_trigger_rule_entry_add_comparison_int()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_entry_add_comparison_string(
  context_trigger_rule_entry_h entry,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> comp_operator,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiContext.context_trigger_rule_entry_add_comparison_string(
      entry,
      key,
      comp_operator,
      value,
    );

/// @brief		Adds an attribute key to an entry.
/// @details		The key will be used as the left operand of comparisons.
/// See the programming guide to find available attribute keys for each event/condition item.
/// @since_tizen 2.4
///
/// Parameter	entry			The event or condition entry
/// Parameter	logical_type	The logical operator
/// Parameter	key				The attribute key
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// @post		context_trigger_rule_entry_add_comparison_int()
/// @post		context_trigger_rule_entry_add_comparison_string()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_entry_add_key(
  context_trigger_rule_entry_h entry,
  int logical_type,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenCapiContext.context_trigger_rule_entry_add_key(
      entry,
      logical_type,
      key,
    );

/// @deprecated	Deprecated since 4.0.
/// @brief		Sets an option to a condition entry, which references an attribute that will be extracted from the event.
/// @details		See the programming guide to find available option keys for each condition item.
/// @since_tizen 2.4
///
/// Parameter	entry			The condition entry
/// Parameter	option_key		The option key
/// Parameter	event_data_key	The event data key of which the corresponding data value will be used as the option parameter
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// @see			context_trigger_rule_entry_add_option_int()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_entry_add_option(
  context_trigger_rule_entry_h entry,
  ffi.Pointer<ffi.Char> option_key,
  ffi.Pointer<ffi.Char> event_data_key,
) =>
    tizenCapiContext.context_trigger_rule_entry_add_option(
      entry,
      option_key,
      event_data_key,
    );

/// @brief		Sets an integer type option to an event or condition entry.
/// @details		See the programming guide to find available option keys for each event/condition item.
/// @since_tizen 2.4
///
/// Parameter	entry			The event or condition entry
/// Parameter	option_key		The option key
/// Parameter	value			The option value
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_entry_add_option_int(
  context_trigger_rule_entry_h entry,
  ffi.Pointer<ffi.Char> option_key,
  int value,
) =>
    tizenCapiContext.context_trigger_rule_entry_add_option_int(
      entry,
      option_key,
      value,
    );

/// @deprecated	Deprecated since 4.0.
/// @brief		Sets a string type option to an event or condition entry.
/// @details		See the programming guide to find available option keys for each event/condition item.
/// @since_tizen 2.4
///
/// Parameter	entry			The event or condition entry
/// Parameter	option_key		The option key
/// Parameter	value			The option value
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// @see			context_trigger_rule_entry_add_option_int()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_entry_add_option_string(
  context_trigger_rule_entry_h entry,
  ffi.Pointer<ffi.Char> option_key,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiContext.context_trigger_rule_entry_add_option_string(
      entry,
      option_key,
      value,
    );

/// @brief		Releases the resource occupied by an entry.
/// @since_tizen 2.4
///
/// Parameter	entry		The event or condition entry
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// @pre			context_trigger_rule_event_create()
/// @pre			context_trigger_rule_condition_create()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_entry_destroy(
  context_trigger_rule_entry_h entry,
) =>
    tizenCapiContext.context_trigger_rule_entry_destroy(
      entry,
    );

/// @brief		Creates an event entry.
/// @details		An event of a contextual event item, which will be monitored by the system, is created.
/// @since_tizen 2.4
///
/// @remarks		Regarding the @a event_item, the application may require one of the following privileges:@n
/// http://tizen.org/privilege/alarm.set @n
/// http://tizen.org/privilege/network.get @n
/// http://tizen.org/privilege/telephony @n
/// http://tizen.org/privilege/message.read @n
/// http://tizen.org/privilege/contact.read @n
/// http://tizen.org/privilege/location @n
/// If the application does not have necessary privilege, when registering the corresponding rule,
/// context_trigger_add_rule() will return #CONTEXT_TRIGGER_ERROR_PERMISSION_DENIED.
/// See #context_trigger_event_e to find the corresponding privilege of each event item.@n
/// The @a entry must be released using context_trigger_rule_entry_destroy().
///
/// Parameter	event_item		The contextual event item
/// Parameter	logical_type	The logical operator
/// Output parameter	entry			The event entry to be initialized
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Memory allocation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// @see			context_trigger_rule_entry_destroy()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_event_create(
  int event_item,
  int logical_type,
  ffi.Pointer<context_trigger_rule_entry_h> entry,
) =>
    tizenCapiContext.context_trigger_rule_event_create(
      event_item,
      logical_type,
      entry,
    );

/// @brief		Checks whether a contextual event is supported in the current device.
/// @since_tizen 2.4
///
/// Parameter	event_item		The contextual event item
/// Output parameter	supported		If supported, @c true, otherwise @c false
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_event_is_supported(
  int event_item,
  ffi.Pointer<ffi.Bool> supported,
) =>
    tizenCapiContext.context_trigger_rule_event_is_supported(
      event_item,
      supported,
    );

/// @brief		Gets the description of a rule.
/// @since_tizen 2.4
///
/// @remarks		The @a description must be released using @c free().
///
/// Parameter	rule			The rule
/// Output parameter	description		The description of the rule
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
///
/// @see			context_trigger_rule_set_description()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_get_description(
  context_trigger_rule_h rule,
  ffi.Pointer<ffi.Pointer<ffi.Char>> description,
) =>
    tizenCapiContext.context_trigger_rule_get_description(
      rule,
      description,
    );

/// @brief		Sets a app launching request as the action of a rule.
/// @details		Contextual Trigger accepts an App Control as the action of a rule,
/// an application thus can be launched when the rule is satisfied.@n
/// @since_tizen 2.4
///
/// @privlevel	public
/// @privilege	http://tizen.org/privilege/appmanager.launch
///
/// @remarks		In addition to the privilege <a href="http://tizen.org/privilege/appmanager.launch">http://tizen.org/privilege/appmanager.launch</a>,
/// if it is an App Control that makes a call to someone,
/// the privilege http://tizen.org/privilege/call is also required.
/// @remarks		The launch request of the service application is restricted.
/// The function will return #CONTEXT_TRIGGER_ERROR_INVALID_RULE,
/// if the launch request is for the service application.
///
/// Parameter	rule			The rule
/// Parameter	app_control		The App Control, which will be used to launch an application
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_PERMISSION_DENIED	Permission denied
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_set_action_app_control(
  context_trigger_rule_h rule,
  app_control_h app_control,
) =>
    tizenCapiContext.context_trigger_rule_set_action_app_control(
      rule,
      app_control,
    );

/// @brief		Sets a notification posting request as the action of a rule.
/// @details		A basic notification can be posted when the rule is satisfied,
/// which consists of the title, a content body text, an icon, and an App Control.
/// @since_tizen 2.4
///
/// @privlevel	public
/// @privilege	http://tizen.org/privilege/notification
///
/// @remarks		The @a app_control can be @c NULL. In that case, no application will be launched via the notification.
///
/// Parameter	rule			The rule
/// Parameter	title			The title text
/// Parameter	content			The content body text
/// Parameter	icon_path		The icon file path
/// Parameter	app_control		The app control
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_PERMISSION_DENIED	Permission denied
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_RULE			Invalid rule
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_set_action_notification(
  context_trigger_rule_h rule,
  ffi.Pointer<ffi.Char> title,
  ffi.Pointer<ffi.Char> content,
  ffi.Pointer<ffi.Char> icon_path,
  app_control_h app_control,
) =>
    tizenCapiContext.context_trigger_rule_set_action_notification(
      rule,
      title,
      content,
      icon_path,
      app_control,
    );

/// @brief		Sets the description of a rule.
/// @since_tizen 2.4
///
/// Parameter	rule			The rule
/// Parameter	description		The description to be set
///
/// @return		@c 0 on success, otherwise a negative error value
/// @retval		#CONTEXT_TRIGGER_ERROR_NONE					Successful
/// @retval		#CONTEXT_TRIGGER_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval		#CONTEXT_TRIGGER_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval		#CONTEXT_TRIGGER_ERROR_NOT_SUPPORTED		Not supported
/// @retval		#CONTEXT_TRIGGER_ERROR_OPERATION_FAILED		Operation failed
///
/// @see			context_trigger_rule_get_description()
///
/// Module getter: `tizenCapiContext`.
int context_trigger_rule_set_description(
  context_trigger_rule_h rule,
  ffi.Pointer<ffi.Char> description,
) =>
    tizenCapiContext.context_trigger_rule_set_description(
      rule,
      description,
    );

