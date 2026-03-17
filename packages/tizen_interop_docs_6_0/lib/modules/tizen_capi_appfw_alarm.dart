// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwAlarm`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-alarm.so.0`.
///
/// Application Framework / Application / Alarm.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_alarm;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Cancels the alarm with the specific alarm ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// Parameter alarm_id The alarm ID that is cancelled
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_schedule_once_at_date()
/// @see alarm_schedule_after_delay()
/// @see alarm_schedule_with_recurrence_week_flag()
/// @see alarm_cancel_all()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_cancel(
  int alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_cancel(
      alarm_id,
    );

/// @brief Cancels all scheduled alarms that are registered by the application that calls this function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_schedule_once_at_date()
/// @see alarm_schedule_after_delay()
/// @see alarm_schedule_with_recurrence_week_flag()
/// @see alarm_cancel()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_cancel_all() =>
    tizenCapiAppfwAlarm.alarm_cancel_all();

/// @brief Retrieves the IDs of all registered alarms by invoking a callback once for each scheduled alarm.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.get
/// Parameter callback The callback function to invoke
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @post This function invokes alarm_registered_alarm_cb() repeatedly for each registered alarm.
/// @see alarm_registered_alarm_cb()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_foreach_registered_alarm(
  alarm_registered_alarm_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwAlarm.alarm_foreach_registered_alarm(
      callback,
      user_data,
    );

/// @brief Gets the app_control to be invoked when the alarm is triggered.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.get
/// @remarks The @a app_control must be released using app_control_destroy().
/// Parameter alarm_id The alarm ID uniquely identifies an alarm
/// Output parameter app_control The app_control handle to launch when the alarm is triggered
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_OUT_OF_MEMORY Out of memory
/// @see alarm_schedule_once_at_date()
/// @see alarm_schedule_after_delay()
/// @see alarm_schedule_with_recurrence_week_flag()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_get_app_control(
  int alarm_id,
  ffi.Pointer<app_control_h> app_control,
) =>
    tizenCapiAppfwAlarm.alarm_get_app_control(
      alarm_id,
      app_control,
    );

/// @brief Gets the current system time using C standard time struct.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Output parameter date The current system time
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_get_current_time(
  ffi.Pointer<tm> date,
) =>
    tizenCapiAppfwAlarm.alarm_get_current_time(
      date,
    );

/// @brief Gets whether the alarm will launch global application or not.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.get
/// Parameter alarm_id The alarm ID uniquely identifies an alarm
/// Output parameter global Whether the alarm will launch global application or not
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @see alarm_set_global()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_get_global(
  int alarm_id,
  ffi.Pointer<ffi.Bool> global,
) =>
    tizenCapiAppfwAlarm.alarm_get_global(
      alarm_id,
      global,
    );

/// @brief Gets the notification to be posted when an alarm is triggered.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.get
/// @remarks @a noti must be released using notification_free().
///
/// Parameter alarm_id The ID which uniquely identifies a scheduled alarm
/// Output parameter noti The notification to be posted when the alarm is triggered
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_OUT_OF_MEMORY Out of memory
/// @see alarm_schedule_noti_once_at_date()
/// @see alarm_schedule_noti_after_delay()
/// @see alarm_schedule_noti_once_after_delay()
/// @see alarm_schedule_noti_with_recurrence_week_flag()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_get_notification(
  int alarm_id,
  ffi.Pointer<notification_h> noti,
) =>
    tizenCapiAppfwAlarm.alarm_get_notification(
      alarm_id,
      noti,
    );

/// @brief Gets the scheduled time from the given alarm ID in C standard time struct.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.get
/// @remarks @a date is not needed by the function after the call.
/// Parameter alarm_id The alarm ID returned when the alarm is scheduled
/// Output parameter date The time value of the next alarm event
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_schedule_once_at_date()
/// @see alarm_schedule_after_delay()
/// @see alarm_schedule_with_recurrence_week_flag()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_get_scheduled_date(
  int alarm_id,
  ffi.Pointer<tm> date,
) =>
    tizenCapiAppfwAlarm.alarm_get_scheduled_date(
      alarm_id,
      date,
    );

/// @brief Gets the period of time between the recurrent alarms.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.get
/// @remarks If the given @a alarm_id is not obtained by using the alarm_schedule_once_at_date() or alarm_schedule_after_delay() function,
/// an error (error code #ALARM_ERROR_INVALID_PARAMETER) will occur.
/// Parameter alarm_id The alarm ID returned when the alarm is scheduled
/// Output parameter period The period of time between recurrent alarms in seconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_schedule_once_at_date()
/// @see alarm_schedule_after_delay()
/// @see alarm_schedule_with_recurrence_week_flag()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_get_scheduled_period(
  int alarm_id,
  ffi.Pointer<ffi.Int> period,
) =>
    tizenCapiAppfwAlarm.alarm_get_scheduled_period(
      alarm_id,
      period,
    );

/// @brief Gets the recurrence days of the week.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.get
/// @remarks If the given @a alarm_id is not obtained by using the alarm_schedule_with_recurrence_week_flag() function,
/// an error (error code #ALARM_ERROR_INVALID_PARAMETER) will occur because this alarm is scheduled with no recurrence.
/// Parameter alarm_id The alarm ID returned when the alarm is scheduled
/// Output parameter week_flag The recurrence days of the week, @a week_flag may be a combination of days, like #ALARM_WEEK_FLAG_TUESDAY | #ALARM_WEEK_FLAG_FRIDAY
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @see alarm_schedule_with_recurrence_week_flag()
/// @see #alarm_week_flag_e
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_get_scheduled_recurrence_week_flag(
  int alarm_id,
  ffi.Pointer<ffi.Int> week_flag,
) =>
    tizenCapiAppfwAlarm.alarm_get_scheduled_recurrence_week_flag(
      alarm_id,
      week_flag,
    );

/// @brief Sets an alarm to be triggered after a specific time.
/// @details The alarm will first go off @a delay seconds later and then will go off every certain amount of time defined using @a period seconds. To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// @remarks If the application is uninstalled after setting an alarm, the alarm is cancelled automatically.
/// If the operation of @a app_control is not specified, #APP_CONTROL_OPERATION_DEFAULT is used for the launch request.
/// If the operation of @a app_control is #APP_CONTROL_OPERATION_DEFAULT, the package information is mandatory to explicitly launch the application.
/// Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, this function does not support exact period and delay for minimizing the wakeups of the device. The system can adjust when the alarm expires.
/// If you want to trigger an alarm exactly, see @see alarm_schedule_once_after_delay()
/// Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif If @a app_control is specified with service-application, the application is only allowed to run on which has Background Category.
/// Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif If the appid of @a app_control is not specified, this function is not allowed. In other words, the explicit @a app_control is only allowed.
/// Since 4.0, %http://tizen.org/privilege/appmanager.launch privilege is additionally required.
/// Since 6.0, You can use #alarm_standard_interval_e for @a period. If you use it, the period of alarm is guaranteed.
///
/// Parameter app_control The destination app_control to perform a specific task when the alarm is triggered
/// Parameter delay The amount of time before the first execution (in seconds). Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, Although this is inexact, the alarm will not fire before this time
/// Parameter period The amount of time between subsequent alarms (in seconds). Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, This value does not guarantee the accuracy. The actual interval is calculated by the OS.
/// Since 6.0 this can be one of the values of #alarm_standard_interval_e. If you uses raw integer value, the value will be phase-aligned with other period of alarm.
///
/// Output parameter alarm_id The alarm ID that uniquely identifies an alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_INVALID_TIME Triggered time is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @retval #ALARM_ERROR_NOT_PERMITTED_APP @a app_control is not permitted
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_date()
/// @see alarm_get_scheduled_period()
/// @see alarm_schedule_once_after_delay()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_after_delay(
  app_control_h app_control,
  int delay,
  int period,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_after_delay(
      app_control,
      delay,
      period,
      alarm_id,
    );

/// @deprecated Deprecated since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif. [Use alarm_schedule_once_at_date() instead]
/// @brief Sets an alarm to be triggered at a specific time.
/// @details The @a date describes the time of the first occurrence.
/// If @a period is bigger than @c 0, the alarm will be scheduled after the @a period time.
/// If @a period is set to @c 0, the alarm will go off just once without repetition.
/// To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @remarks If application is uninstalled after setting an alarm, the alarm is cancelled automatically.
/// If the operation of @a app_control is not specified, #APP_CONTROL_OPERATION_DEFAULT is used for the launch request.
/// If the operation of @a app_control is #APP_CONTROL_OPERATION_DEFAULT, the package information is mandatory to explicitly launch the application.
///
/// Parameter app_control The destination app_control to perform specific work when the alarm is triggered
/// Parameter date The first active alarm time
/// Parameter period The amount of time between subsequent alarms(in second)
/// Output parameter alarm_id The alarm ID that uniquely identifies an alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_INVALID_DATE Triggered date is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_date()
/// @see alarm_get_scheduled_period()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_at_date(
  app_control_h app_control,
  ffi.Pointer<tm> date,
  int period,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_at_date(
      app_control,
      date,
      period,
      alarm_id,
    );

/// @brief Sets a notification alarm to be triggered after a specific delay.
/// @details The alarm will first go off after @a delay seconds.
/// The alarm will then go off every period seconds until canceled.
/// To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @privilege %http://tizen.org/privilege/notification
/// @remarks If the application is uninstalled after setting an alarm, the alarm is cancelled automatically.
/// This function is a minimally intrusive way to trigger alarms when precision is not important.
/// The system will adjust the @a delay and @a period requests to suit internal needs; the requests
/// will be treated as minimum values. Note that @a period cannot be less than 600 seconds, if
/// a smaller request is supplied it will be silently adjusted to a request of 600.
/// When the alarm goes off, Alarm Manager will turn on LCD to prohibit background jobs.
/// Since 6.0, You can use #alarm_standard_interval_e for @a period. If you use it, the period of alarm is guaranteed.
/// Since 6.0, Note that @a period cannot be less than 900 seconds.
///
/// Parameter noti The notification to be posted when the alarm is triggered
/// Parameter delay The amount of time before the first execution (in seconds).
/// Parameter period The amount of time between subsequent alarms (in seconds).
/// Since 6.0 this can be one of the values of #alarm_standard_interval_e. If you uses raw integer value, the value will be phase-aligned with other period of alarm.
/// Output parameter alarm_id The ID which uniquely identifies the scheduled alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ALARM_ERROR_INVALID_TIME Triggered time is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_date()
/// @see alarm_get_scheduled_period()
/// @see alarm_schedule_noti_once_after_delay()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_noti_after_delay(
  notification_h noti,
  int delay,
  int period,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_noti_after_delay(
      noti,
      delay,
      period,
      alarm_id,
    );

/// @brief Sets a notification alarm to be triggered after a specific delay.
/// @details The alarm will go off @a delay seconds later.
/// To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @privilege %http://tizen.org/privilege/notification
/// @remarks If the application is uninstalled after setting an alarm, the alarm is cancelled automatically.
/// When the alarm goes off, Alarm Manager will turn on LCD to prohibit background jobs.
///
/// Parameter noti The notification to be posted when the alarm is triggered
/// Parameter delay The amount of time before the execution (in seconds)
/// Output parameter alarm_id The ID which uniquely identifies the scheduled alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ALARM_ERROR_INVALID_TIME Triggered time is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_date()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_noti_once_after_delay(
  notification_h noti,
  int delay,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_noti_once_after_delay(
      noti,
      delay,
      alarm_id,
    );

/// @brief Sets a notification alarm to be triggered at a specific time.
/// @details The @a date describes the time of the alarm occurrence.
/// To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @privilege %http://tizen.org/privilege/notification
/// @remarks If application is uninstalled after setting an alarm, the alarm is cancelled automatically.
/// When the alarm goes off, Alarm Manager will turn on LCD to prohibit background jobs.
///
/// Parameter noti The notification to be posted when the alarm is triggered
/// Parameter date The active alarm time
/// Output parameter alarm_id The ID which uniquely identifies the scheduled alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval  #ALARM_ERROR_NONE   Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval  #ALARM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval  #ALARM_ERROR_INVALID_DATE Triggered date is invalid
/// @retval  #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_date()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_noti_once_at_date(
  notification_h noti,
  ffi.Pointer<tm> date,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_noti_once_at_date(
      noti,
      date,
      alarm_id,
    );

/// @brief Sets a notification to be triggered periodically, starting at a specific time.
/// @details The @a date describes the time of the first occurrence.
/// @a week_flag describes the day(s) of the week when the notification recurs.
/// If @a week_flag is #ALARM_WEEK_FLAG_TUESDAY, the alarm will repeat every Tuesday at a specific time.
/// If @a week_flag is less than or equal to zero, the alarm is not repeated.
/// To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @privilege %http://tizen.org/privilege/notification
/// @remarks If the application is uninstalled after setting an alarm, the alarm is cancelled automatically.
///
/// Parameter noti The notification to be posted when the alarm is triggered
/// Parameter date The first active alarm time
/// Parameter week_flag The day of the week the notification recurs. @a week_flag may be a combination of days, like #ALARM_WEEK_FLAG_TUESDAY | #ALARM_WEEK_FLAG_FRIDAY
/// Output parameter alarm_id The ID which uniquely identifies the scheduled alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_INVALID_DATE Triggered date is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_recurrence_week_flag()
/// @see alarm_get_scheduled_date()
/// @see #alarm_week_flag_e
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_noti_with_recurrence_week_flag(
  notification_h noti,
  ffi.Pointer<tm> date,
  int week_flag,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_noti_with_recurrence_week_flag(
      noti,
      date,
      week_flag,
      alarm_id,
    );

/// @brief Sets an alarm to be triggered after a specific time.
/// @details The alarm will go off @a delay seconds later. To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// @remarks If the application is uninstalled after setting an alarm, the alarm is cancelled automatically.
/// If the operation of @a app_control is not specified, #APP_CONTROL_OPERATION_DEFAULT is used for the launch request.
/// If the operation of @a app_control is #APP_CONTROL_OPERATION_DEFAULT, the package information is mandatory to explicitly launch the application.
/// If the appid of @a app_control is not specified, this function is not allowed. In other words, the explicit @a app_control is only allowed.
/// The @a app_control only supports UI application with this function. If @a app_control is not UI application, #ALARM_ERROR_NOT_PERMITTED_APP returned.
/// When the alarm is expired, Alarm Manager will turn on LCD to prohibit background jobs.
/// Since 4.0, %http://tizen.org/privilege/appmanager.launch privilege is additionally required.
///
/// Parameter app_control The destination app_control to perform a specific task when the alarm is triggered
/// Parameter delay The amount of time before the execution (in seconds)
/// Output parameter alarm_id The alarm ID that uniquely identifies an alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_INVALID_TIME Triggered time is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @retval #ALARM_ERROR_NOT_PERMITTED_APP @a app_control is not permitted. @a app_control for UI application is only permitted.
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_date()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_once_after_delay(
  app_control_h app_control,
  int delay,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_once_after_delay(
      app_control,
      delay,
      alarm_id,
    );

/// @brief Sets an alarm to be triggered at a specific time.
/// @details The @a date describes the time of the first occurrence. To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// @remarks If application is uninstalled after setting an alarm, the alarm is cancelled automatically.
/// If the operation of @a app_control is not specified, #APP_CONTROL_OPERATION_DEFAULT is used for the launch request.
/// If the operation of @a app_control is #APP_CONTROL_OPERATION_DEFAULT, the package information is mandatory to explicitly launch the application.
/// If the appid of @a app_control is not specified, this function is not allowed. In other words, the explicit @a app_control is only allowed.
/// The @a app_control only supports UI application with this function. If @a app_control is not UI application, #ALARM_ERROR_NOT_PERMITTED_APP returned.
/// When the alarm is expired, Alarm Manager will turn on LCD to prohibit background jobs.
/// Since 4.0, %http://tizen.org/privilege/appmanager.launch privilege is additionally required.
///
/// Parameter app_control The destination app_control to perform specific work when the alarm is triggered
/// Parameter date The first active alarm time
/// Output parameter alarm_id The alarm ID that uniquely identifies an alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE   Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ALARM_ERROR_INVALID_DATE Triggered date is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @retval #ALARM_ERROR_NOT_PERMITTED_APP @a app_control is not permitted. @a app_control for UI application is only permitted.
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_date()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_once_at_date(
  app_control_h app_control,
  ffi.Pointer<tm> date,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_once_at_date(
      app_control,
      date,
      alarm_id,
    );

/// @brief Sets an alarm to be triggered periodically, starting at a specific time.
/// @details The @a date describes the time of the first occurrence.
/// @a week_flag is the repeat value of the days of the week.
/// If @a week_flag is #ALARM_WEEK_FLAG_TUESDAY, the alarm will repeat every Tuesday at a specific time.
/// To cancel the alarm, call alarm_cancel() with @a alarm_id.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @privilege %http://tizen.org/privilege/appmanager.launch
/// @remarks If the application is uninstalled after setting an alarm, the alarm is cancelled automatically.
/// If the operation of @a app_control is not specified, #APP_CONTROL_OPERATION_DEFAULT is used for the launch request.
/// If the operation of @a app_control is #APP_CONTROL_OPERATION_DEFAULT, the package information is mandatory to explicitly launch the application.
/// Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, The @a app_control only supports UI application with this function. If @a app_control is not UI application, #ALARM_ERROR_NOT_PERMITTED_APP returned.
/// When the alarm is expired, Alarm Manager will turn on LCD to prohibit background jobs.
/// Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, If the appid of @a app_control is not specified, this function is not allowed. In other words, the explicit @a app_control is only allowed.
/// Since 4.0, %http://tizen.org/privilege/appmanager.launch privilege is additionally required.
///
/// Parameter app_control The destination app_control to perform specific work when the alarm is triggered
/// Parameter date The first active alarm time
/// Parameter week_flag The day of the week, @a week_flag may be a combination of days, like #ALARM_WEEK_FLAG_TUESDAY | #ALARM_WEEK_FLAG_FRIDAY
/// Output parameter alarm_id The alarm ID that uniquely identifies an alarm
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_INVALID_DATE Triggered date is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL Failed to connect to an alarm server
/// @retval #ALARM_ERROR_NOT_PERMITTED_APP @a app_control is not permitted. @a app_control for UI application is only permitted.
/// @see alarm_cancel()
/// @see alarm_cancel_all()
/// @see alarm_get_scheduled_recurrence_week_flag()
/// @see alarm_get_scheduled_date()
/// @see #alarm_week_flag_e
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_schedule_with_recurrence_week_flag(
  app_control_h app_control,
  ffi.Pointer<tm> date,
  int week_flag,
  ffi.Pointer<ffi.Int> alarm_id,
) =>
    tizenCapiAppfwAlarm.alarm_schedule_with_recurrence_week_flag(
      app_control,
      date,
      week_flag,
      alarm_id,
    );

/// @brief Sets global flag in the alarm.
/// @details Sets @a global flag to set/unset alarm globally.
/// @since_tizen 3.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @remarks The @a alarm_id must be id of alarm which will launch global application.
/// The function returns an error (error code #ALARM_ERROR_NOT_PERMITTED_APP) if it is not.
/// Note that the application which is launched by global alarm runs in the user session that is logged in currently.
/// It doesn't run in the session for the user who registers the global alarm.
/// So, if the application uses application's private data for each user to handling the app_control for the alarm, it might not show proper data to the user.
/// Therefore, We recommend to contain all the data for the alarm to the app_control handle for the global alarm.
/// Then, the launched application would be able to use the data to show proper alarm UX to the user.
/// Parameter alarm_id The alarm ID uniquely identifies an alarm
/// Parameter global The global flag to set/unset alarm globally
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #ALARM_ERROR_NOT_PERMITTED_APP @a alarm_id is not permitted
/// @see alarm_schedule_once_at_date()
/// @see alarm_schedule_after_delay()
/// @see alarm_schedule_with_recurrence_week_flag()
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_set_global(
  int alarm_id,
  bool global,
) =>
    tizenCapiAppfwAlarm.alarm_set_global(
      alarm_id,
      global,
    );

/// @brief Updates the date of the registered alarm.
/// @details The @a date describes the date on which the alarm is set off for the first time.
/// This function can be called for any alarm.
/// If the date was set before, it will be overwritten. If it was not, it will be set.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @remarks This function can be called only for alarms whose app control launches an UI application.
/// If this condition is not met, #ALARM_ERROR_NOT_PERMITTED_APP is returned.
/// Parameter alarm_id  The ID which uniquely identifies the scheduled alarm
/// Parameter date      The time value of the next alarm event
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE               Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ALARM_ERROR_INVALID_TIME       Triggered time is invalid
/// @retval #ALARM_ERROR_INVALID_DATE       Triggered time is invalid
/// @retval #ALARM_ERROR_CONNECTION_FAIL    Failed to connect to an alarm server
/// @retval #ALARM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ALARM_ERROR_NOT_PERMITTED_APP  App control does not launch an UI application
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_update_date(
  int alarm_id,
  ffi.Pointer<tm> date,
) =>
    tizenCapiAppfwAlarm.alarm_update_date(
      alarm_id,
      date,
    );

/// @brief Updates the delay of the registered alarm.
/// @details The @a delay is the time (in seconds) before the alarm's first setting off.
/// The delay is an exact value, see alarm_schedule_once_after_delay() for details.
/// This function can be called for any alarm.
/// If the delay was set before, it will be overwritten. If it was not, it will be set.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @remarks This function can be called only for alarms whose app control launches an UI application.
/// If this condition is not met, #ALARM_ERROR_NOT_PERMITTED_APP is returned.
/// Parameter alarm_id  The ID which uniquely identifies the scheduled alarm
/// Parameter delay     The amount of time before the first execution (in seconds).
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE               Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ALARM_ERROR_CONNECTION_FAIL    Failed to connect to an alarm server
/// @retval #ALARM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ALARM_ERROR_NOT_PERMITTED_APP  App control does not launch an UI application
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_update_delay(
  int alarm_id,
  int delay,
) =>
    tizenCapiAppfwAlarm.alarm_update_delay(
      alarm_id,
      delay,
    );

/// @brief Updates the period of the registered alarm.
/// @details The alarm will then go off every @a period seconds until canceled.
/// This function can be called for any alarm.
/// If the week recurrence flag was set before, it will be removed and the period will be set.
/// If the period was set before, it will be overwritten. If it was not, it will be set.
/// If the @a period argument is 0 and the period was previously set,
/// the period attribute will be cleared and the alarm will be changed to one-time.
/// If the @a period argument is 0 and the period was not set,
/// or the week recurrence flag was set, the alarm will be unchanged.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// Parameter alarm_id  The ID which uniquely identifies the scheduled alarm
/// Parameter period    The amount of time between subsequent alarms (in seconds).
/// Since @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif, this
/// value does not guarantee the accuracy. The actual interval
/// is calculated by the OS. The minimum value is 600sec.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE               Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ALARM_ERROR_CONNECTION_FAIL    Failed to connect to an alarm server
/// @retval #ALARM_ERROR_OUT_OF_MEMORY      Out of memory
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_update_period(
  int alarm_id,
  int period,
) =>
    tizenCapiAppfwAlarm.alarm_update_period(
      alarm_id,
      period,
    );

/// @brief Updates the week recurrence flag of the registered alarm.
/// @details @a week_flag is the repeat value of the days of the week.
/// For example, if @a week_flag is #ALARM_WEEK_FLAG_TUESDAY, the alarm will repeat every
/// Tuesday at a specific time.
/// This function can be called for any alarm.
/// If the period was set before, it will be removed and the week recurrence flag will be set.
/// If the week recurrence flag was set before, it will be overwritten. If it was not, it will be set.
/// If the @a week_flag argument is 0 and the flag was previously set,
/// the flag attribute will be cleared and the alarm will be changed to one-time.
/// If the @a week_flag argument is 0 and the flag was not set,
/// or the period was set, the alarm will be unchanged.
/// @since_tizen 4.0
/// @privlevel public
/// @privilege %http://tizen.org/privilege/alarm.set
/// @remarks This function can be called only for alarms whose app control launches an UI application.
/// If this condition is not met, #ALARM_ERROR_NOT_PERMITTED_APP is returned.
/// Parameter alarm_id   The ID which uniquely identifies the scheduled alarm
/// Parameter week_flag  The day of the week, @a week_flag may be a combination
/// of days, like #ALARM_WEEK_FLAG_TUESDAY | #ALARM_WEEK_FLAG_FRIDAY
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #ALARM_ERROR_NONE               Successful
/// @retval #ALARM_ERROR_PERMISSION_DENIED  Permission denied
/// @retval #ALARM_ERROR_INVALID_PARAMETER  Invalid parameter
/// @retval #ALARM_ERROR_CONNECTION_FAIL    Failed to connect to an alarm server
/// @retval #ALARM_ERROR_OUT_OF_MEMORY      Out of memory
/// @retval #ALARM_ERROR_NOT_PERMITTED_APP  App control does not launch an UI application
///
/// Module getter: `tizenCapiAppfwAlarm`.
int alarm_update_week_flag(
  int alarm_id,
  int week_flag,
) =>
    tizenCapiAppfwAlarm.alarm_update_week_flag(
      alarm_id,
      week_flag,
    );

