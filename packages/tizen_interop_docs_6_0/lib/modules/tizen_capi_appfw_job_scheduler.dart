// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwJobScheduler`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-job-scheduler.so.0`.
///
/// Application Framework / Application / Job scheduler.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_job_scheduler;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds the trigger event to the job info handle.
/// @since_tizen 4.0
/// @remarks The periodic interval of the job info handle must be 0.
/// If the interval of the job info handle is not 0, this function returns a negative error value.
/// Regarding the @a event, the application may require the following privilege:
/// http://tizen.org/privilege/network.get @n
/// If the application does not have the necessary privilege, this function returns #JOB_ERROR_PERMISSION_DENIED.
/// See #job_trigger_event_e to find the corresponding privilege of each event.
/// Parameter   job_info        The job info handle
/// Parameter   event           The job trigger event
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_NOT_SUPPORTED     Not supported
/// @retval #JOB_ERROR_ALREADY_EXIST     Already exist
/// @retval #JOB_ERROR_PERMISSION_DENIED Permission denied
/// @pre    job_scheduler_init() must be called.
/// @see    job_scheduler_init()
/// @see    job_info_remove_trigger_event()
/// @see    job_trigger_event_e
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_add_trigger_event(
  job_info_h job_info,
  int event,
) =>
    tizenCapiAppfwJobScheduler.job_info_add_trigger_event(
      job_info,
      event,
    );

/// @brief Clones the given job_info handle.
/// @since_tizen 4.0
/// @remarks The newly created job_info handle must be released by using job_info_destroy().
/// Parameter   job_info        The job info handle
/// Output parameter  clone           If successful, a newly created job info handle will be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_OUT_OF_MEMORY     Out of memory
/// @see    job_info_destroy()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_clone(
  job_info_h job_info,
  ffi.Pointer<job_info_h> clone,
) =>
    tizenCapiAppfwJobScheduler.job_info_clone(
      job_info,
      clone,
    );

/// @brief Creates the job info handle.
/// @since_tizen 4.0
/// @remarks The @a job_info must be released by using job_info_destroy().
/// The job will be started by the periodic interval or the trigger events.
/// Output parameter  job_info        The job info handle to be newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_OUT_OF_MEMORY     Out of memory
/// @see    job_info_destroy()
/// @see    job_info_set_periodic()
/// @see    job_info_add_trigger_event()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_create(
  ffi.Pointer<job_info_h> job_info,
) =>
    tizenCapiAppfwJobScheduler.job_info_create(
      job_info,
    );

/// @brief Destroys the job info handle and releases all its resources.
/// @since_tizen 4.0
/// Parameter   job_info        The job info handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @see    job_info_create()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_destroy(
  job_info_h job_info,
) =>
    tizenCapiAppfwJobScheduler.job_info_destroy(
      job_info,
    );

/// @brief Gets the ID of the job.
/// @since_tizen 4.0
/// @remarks The @a job_info must be scheduled by using job_scheduler_schedule().
/// If the job_info is not scheduled, this function returns a negative error value.
/// The @a job_id must be released by using free().
/// Parameter   job_info        The job info handle
/// Output parameter  job_id          The ID of the job
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_OUT_OF_MEMORY     Out of memory
/// @see    job_scheduler_schedule()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_get_job_id(
  job_info_h job_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> job_id,
) =>
    tizenCapiAppfwJobScheduler.job_info_get_job_id(
      job_info,
      job_id,
    );

/// @brief Removes the trigger event from the job info handle.
/// @since_tizen 4.0
/// @remarks The periodic interval of the job info handle must be 0.
/// If the interval of the job info handle is not 0, this function returns a negative error value.
/// Parameter   job_info        The job info handle
/// Parameter   event           The job trigger event
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @see    job_info_add_trigger_event()
/// @see    job_trigger_event_e
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_remove_trigger_event(
  job_info_h job_info,
  int event,
) =>
    tizenCapiAppfwJobScheduler.job_info_remove_trigger_event(
      job_info,
      event,
    );

/// @brief Sets the job not to be repeated.
/// @since_tizen 4.0
/// @remarks If it's a persistent job, setting it to a one-time job returns
/// a negative error value on scheduling by using job_scheduler_schedule().
/// Parameter   job_info        The job info handle
/// Parameter   once            @c true, if the job does not need to be repeated
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @see    job_info_set_persistent()
/// @see    job_scheduler_schedule()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_set_once(
  job_info_h job_info,
  bool once,
) =>
    tizenCapiAppfwJobScheduler.job_info_set_once(
      job_info,
      once,
    );

/// @brief Sets the periodic interval of the job.
/// @since_tizen 4.0
/// @remarks The platform does not guarantee the accuracy of the given interval for minimizing the wakeups of the device.
/// Thus you should not rely on it for timing.
/// If this function is called after adding the job trigger events by using job_info_add_trigger_event(),
/// the function returns a negative error value.
/// Parameter   job_info        The job info handle
/// Parameter   interval        The periodic interval (in minutes)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @see    job_info_destroy()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_set_periodic(
  job_info_h job_info,
  int interval,
) =>
    tizenCapiAppfwJobScheduler.job_info_set_periodic(
      job_info,
      interval,
    );

/// @brief Sets the job to be automatically scheduled after the device reboots.
/// @since_tizen 4.0
/// @remarks If it's a one-time job, setting it to a persistent job returns
/// a negative error value on scheduling by using job_scheduler_schedule().
/// Parameter   job_info        The job info handle
/// Parameter   persistent      @c true, if the job needs to be automatically scheduled
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @see    job_info_set_once()
/// @see    job_scheduler_schedule()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_set_persistent(
  job_info_h job_info,
  bool persistent,
) =>
    tizenCapiAppfwJobScheduler.job_info_set_persistent(
      job_info,
      persistent,
    );

/// @brief Sets the timeout interval of the requirements.
/// @since_tizen 4.0
/// @remarks If the requirements are not satisfied within the timeout value,
/// the job does not start.
/// Parameter   job_info        The job info handle
/// Parameter   timeout         The timeout interval (ms)
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_set_requirement_timeout(
  job_info_h job_info,
  int timeout,
) =>
    tizenCapiAppfwJobScheduler.job_info_set_requirement_timeout(
      job_info,
      timeout,
    );

/// @brief Sets that the battery level must not be low to run the job.
/// @since_tizen 4.0
/// Parameter   job_info        The job info handle
/// Parameter   battery_not_low @c true, the battery level must not be low.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_NOT_SUPPORTED     Not supported
/// @pre    job_scheduler_init() must be called.
/// @see    job_scheduler_init()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_set_requires_battery_not_low(
  job_info_h job_info,
  bool battery_not_low,
) =>
    tizenCapiAppfwJobScheduler.job_info_set_requires_battery_not_low(
      job_info,
      battery_not_low,
    );

/// @brief Sets that the battery must be charging to run the job.
/// @since_tizen 4.0
/// Parameter   job_info        The job info handle
/// Parameter   charging        @c true, the battery must be charging.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_NOT_SUPPORTED     Not supported
/// @pre    job_scheduler_init() must be called.
/// @see    job_scheduler_init()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_set_requires_charging(
  job_info_h job_info,
  bool charging,
) =>
    tizenCapiAppfwJobScheduler.job_info_set_requires_charging(
      job_info,
      charging,
    );

/// @brief Sets that the WiFi must be connected to run the job.
/// @since_tizen 4.0
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/network.get
/// Parameter   job_info        The job info handle
/// Parameter   wifi_connection @c true, the WiFi must be connected.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_NOT_SUPPORTED     Not supported
/// @retval #JOB_ERROR_PERMISSION_DENIED Permission denied
/// @pre    job_scheduler_init() must be called.
/// @see    job_scheduler_init()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_info_set_requires_wifi_connection(
  job_info_h job_info,
  bool wifi_connection,
) =>
    tizenCapiAppfwJobScheduler.job_info_set_requires_wifi_connection(
      job_info,
      wifi_connection,
    );

/// @brief Cancels the scheduled job.
/// @since_tizen 4.0
/// Parameter   job_id          The ID of the scheduled job
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @retval #JOB_ERROR_NO_SUCH_JOB       No such job
/// @pre    job_scheduler_init() MUST be called.
/// @see    job_scheduler_init()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_cancel(
  ffi.Pointer<ffi.Char> job_id,
) =>
    tizenCapiAppfwJobScheduler.job_scheduler_cancel(
      job_id,
    );

/// @brief Cancels all scheduled jobs.
/// @since_tizen 4.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @pre    job_scheduler_init() MUST be called.
/// @see    job_scheduler_init()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_cancel_all() =>
    tizenCapiAppfwJobScheduler.job_scheduler_cancel_all();

/// @brief Finalizes the job scheduler.
/// @since_tizen 4.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @see    job_scheduler_init()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_finish() =>
    tizenCapiAppfwJobScheduler.job_scheduler_finish();

/// @brief Retrieves all scheduled jobs.
/// @since_tizen 4.0
/// Parameter   callback        The iteration callback function
/// Parameter   user_data       The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_NO_SUCH_JOB       No scheduled jobs
/// @pre    job_scheduler_init() MUST be called.
/// @see    job_scheduler_init()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_foreach_job(
  job_scheduler_foreach_job_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwJobScheduler.job_scheduler_foreach_job(
      callback,
      user_data,
    );

/// @brief Initializes the job scheduler.
/// @since_tizen 4.0
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @retval #JOB_ERROR_OUT_OF_MEMORY     Out of memory
/// @see    job_scheduler_finish()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_init() =>
    tizenCapiAppfwJobScheduler.job_scheduler_init();

/// @brief Notifies that the job is finished.
/// @since_tizen 4.0
/// @remarks If the job has been launched, the system kept awake for a while.
/// It is highly recommended to notify that the job is done,
/// the system thus knows it does not need to be kept awake.
/// Parameter   job_id          The ID of the scheduled job
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_NO_SUCH_JOB       No such job
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @pre    job_scheduler_init() MUST be called.
/// @see    job_scheduler_init()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_notify_job_finished(
  ffi.Pointer<ffi.Char> job_id,
) =>
    tizenCapiAppfwJobScheduler.job_scheduler_notify_job_finished(
      job_id,
    );

/// @brief Schedules the job.
/// @since_tizen 4.0
/// @privlevel   public
/// @privilege   %http://tizen.org/privilege/appmanager.launch
/// Parameter   job_info        The job info handle
/// Parameter   job_id          The ID of the job
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_IO_ERROR          IO error
/// @retval #JOB_ERROR_ALREADY_EXIST     Already exist
/// @retval #JOB_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #JOB_ERROR_PERMISSION_DENIED Permission denied
/// @pre    job_scheduler_init() MUST be called.
/// @see    job_scheduler_init()
/// @see    job_info_create()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_schedule(
  job_info_h job_info,
  ffi.Pointer<ffi.Char> job_id,
) =>
    tizenCapiAppfwJobScheduler.job_scheduler_schedule(
      job_info,
      job_id,
    );

/// @brief Adds job service handler for receiving the information of the scheduled job.
/// @since_tizen 4.0
/// @remarks The @a job_service handle should be released using job_scheduler_service_remove().
/// Parameter   job_id          The ID of the job
/// Parameter   callback        The set of callback functions to handle jobs
/// Parameter   user_data       The user data to be passed to the callback function
/// Output parameter  job_service     The job service handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @retval #JOB_ERROR_OUT_OF_MEMORY     Out of memory
/// @pre    job_scheduler_init() MUST be called.
/// @see    job_scheduler_init()
/// @see    job_scheduler_service_remove()
/// @see    job_service_start_cb()
/// @see    job_service_stop_cb()
/// @see    job_scheduler_notify_job_finished()
/// @see    #job_service_callback_s
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_service_add(
  ffi.Pointer<ffi.Char> job_id,
  ffi.Pointer<job_service_callback_s> callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<job_service_h> job_service,
) =>
    tizenCapiAppfwJobScheduler.job_scheduler_service_add(
      job_id,
      callback,
      user_data,
      job_service,
    );

/// @brief Removes registered job service handler.
/// @since_tizen 4.0
/// Parameter   job_service     The job service handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #JOB_ERROR_NONE              Successful
/// @retval #JOB_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #JOB_ERROR_NOT_INITIALIZED   Not initialized
/// @pre    job_scheduler_init() MUST be called.
/// @see    job_scheduler_init()
/// @see    job_scheduler_service_add()
///
/// Module getter: `tizenCapiAppfwJobScheduler`.
int job_scheduler_service_remove(
  job_service_h job_service,
) =>
    tizenCapiAppfwJobScheduler.job_scheduler_service_remove(
      job_service,
    );

