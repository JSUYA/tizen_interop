// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCoreSyncClient`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcore-sync-client.so.1`.
///
/// Account / Sync Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_core_sync_client;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Sets client (Sync Adapter) callback functions
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks	This API only can be called by a service application. And it can be set by only one service application per a package.
///
/// Parameter on_start_cb       A callback function to be called by Sync Manager for performing sync operation
/// Parameter on_cancel_cb      A callback function to be called by Sync Manager for cancelling sync operation
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #SYNC_ERROR_NONE					Successful
/// @retval #SYNC_ERROR_NOT_SUPPORTED		Not supported
/// @retval #SYNC_ERROR_OUT_OF_MEMORY		Out of memory
/// @retval #SYNC_ERROR_IO_ERROR				I/O error
/// @retval #SYNC_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #SYNC_ERROR_QUOTA_EXCEEDED		Quota exceeded
/// @retval #SYNC_ERROR_SYSTEM				System error
///
/// @see sync_adapter_start_sync_cb()
/// @see sync_adapter_cancel_sync_cb()
/// @see sync_adapter_unset_callbacks()
///
/// Module getter: `tizenCoreSyncClient`.
int sync_adapter_set_callbacks(
  sync_adapter_start_sync_cb on_start_cb,
  sync_adapter_cancel_sync_cb on_cancel_cb,
) =>
    tizenCoreSyncClient.sync_adapter_set_callbacks(
      on_start_cb,
      on_cancel_cb,
    );

/// @brief Unsets client (Sync Adapter) callback functions
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #SYNC_ERROR_NONE					Successful
/// @retval #SYNC_ERROR_NOT_SUPPORTED		Not supported
/// @retval #SYNC_ERROR_SYSTEM				System error
///
/// @pre Call sync_adapter_set_callbacks() before calling this function.
///
/// @see sync_adapter_start_sync_cb()
/// @see sync_adapter_cancel_sync_cb()
/// @see sync_adapter_set_callbacks()
///
/// Module getter: `tizenCoreSyncClient`.
int sync_adapter_unset_callbacks() =>
    tizenCoreSyncClient.sync_adapter_unset_callbacks();

/// @brief Requests Sync Manager to perform sync operations whenever corresponding DB changed.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel	public
/// @privilege	%http://tizen.org/privilege/calendar.read since @if MOBILE 2.4 @endif
/// @privilege	%http://tizen.org/privilege/contact.read
///
/// @remarks Data change sync job can be added by using its capability. In the case of adding a sync job with same capability, it will replace previous setting with new one. \n\n
/// %http://tizen.org/privilege/calendar.read is needed to add data change sync job for receiving notification with @ref SYNC_SUPPORTS_CAPABILITY_CALENDAR. This capability is supported on Mobile profile only. \n\n since @if MOBILE 2.4 @endif
/// %http://tizen.org/privilege/contact.read is needed to add data change sync job for receiving notification with @ref SYNC_SUPPORTS_CAPABILITY_CONTACT.
///
/// Parameter account				An account handle on which sync operation was requested or @c NULL in the case of accountless sync operation
/// Parameter sync_capability		A string representing a sync job which will be operated whenever data change of this capability
/// Parameter sync_option			sync options determine an way to operate sync job and can be used as ORing.
/// Parameter sync_job_user_data	User data which contains additional information related registered sync job or it can be @c NULL in the case of requesting without sync_job_user_data
/// Output parameter sync_job_id			A unique value which can manage sync jobs. The number of sync job id is limited as less than a hundred.
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYNC_ERROR_NONE							Successful
/// @retval #SYNC_ERROR_NOT_SUPPORTED				Not supported
/// @retval #SYNC_ERROR_INVALID_PARAMETER			Invalid parameter
/// @retval #SYNC_ERROR_QUOTA_EXCEEDED				Quota exceeded
/// @retval #SYNC_ERROR_SYSTEM						Internal system error
/// @retval #SYNC_ERROR_SYNC_ADAPTER_NOT_FOUND		Sync adapter is not registered
///
/// @pre This function requires calling below Sync Adapter's APIs by a service application before it is called.
/// @pre Call sync_adapter_set_callbacks() before calling this function.
///
/// @see sync_manager_remove_sync_job()
/// @see sync_option_e
///
/// Module getter: `tizenCoreSyncClient`.
int sync_manager_add_data_change_sync_job(
  account_h account,
  ffi.Pointer<ffi.Char> sync_capability,
  int sync_option,
  ffi.Pointer<bundle> sync_job_user_data,
  ffi.Pointer<ffi.Int> sync_job_id,
) =>
    tizenCoreSyncClient.sync_manager_add_data_change_sync_job(
      account,
      sync_capability,
      sync_option,
      sync_job_user_data,
      sync_job_id,
    );

/// @brief Requests Sync Manager to perform periodic sync operations.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel	public
/// @privilege	%http://tizen.org/privilege/alarm.set
///
/// @remarks Sync job can be added with its name. In the case of adding periodic sync job with same sync job, it will replace previous setting with new one.
///
/// Parameter account				An account handle on which sync operation was requested or @c NULL in the case of accountless sync operation
/// Parameter sync_job_name			A string representing a sync job which will be operated with period interval
/// Parameter sync_period			Determines time interval of periodic sync. The periodic sync operation can be triggered in that interval, but it does not guarantee exact time. The minimum value is 30 minutes.
/// Parameter sync_option			sync options determine an way to operate sync job and can be used as ORing.
/// Parameter sync_job_user_data	User data which contains additional information related registered sync job or it can be @c NULL in the case of requesting without sync_job_user_data
/// Output parameter sync_job_id			A unique value which can manage sync jobs. The number of sync job id is limited as less than a hundred.
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYNC_ERROR_NONE								Successful
/// @retval #SYNC_ERROR_NOT_SUPPORTED					Not supported
/// @retval #SYNC_ERROR_INVALID_PARAMETER				Invalid parameter
/// @retval #SYNC_ERROR_QUOTA_EXCEEDED					Quota exceeded
/// @retval #SYNC_ERROR_SYSTEM							Internal system error
/// @retval #SYNC_ERROR_SYNC_ADAPTER_NOT_FOUND			Sync adapter is not registered
///
/// @pre This function requires calling below Sync Adapter's APIs by a service application before it is called.
/// @pre Call sync_adapter_set_callbacks() before calling this function.
///
/// @see sync_manager_remove_sync_job()
/// @see sync_option_e
/// @see sync_period_e
///
/// Module getter: `tizenCoreSyncClient`.
int sync_manager_add_periodic_sync_job(
  account_h account,
  ffi.Pointer<ffi.Char> sync_job_name,
  int sync_period,
  int sync_option,
  ffi.Pointer<bundle> sync_job_user_data,
  ffi.Pointer<ffi.Int> sync_job_id,
) =>
    tizenCoreSyncClient.sync_manager_add_periodic_sync_job(
      account,
      sync_job_name,
      sync_period,
      sync_option,
      sync_job_user_data,
      sync_job_id,
    );

/// @brief Requests Sync Manager to query corresponding sync request.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter sync_job_cb			A callback function for receiving the result of this API
/// Parameter user_data				User data which contains additional information related foreach job or @c NULL if do not want to transfer user data
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYNC_ERROR_NONE					Successful
/// @retval #SYNC_ERROR_NOT_SUPPORTED		Not supported
/// @retval #SYNC_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #SYNC_ERROR_SYSTEM				Internal system error
///
/// @pre This function requires calling at least one of the below Sync Manager's APIs before it is called.
/// @pre sync_manager_on_demand_sync_job()
/// @pre sync_manager_add_periodic_sync_job()
/// @pre sync_manager_add_data_change_sync_job()
///
/// @see sync_manager_sync_job_cb()
/// @see sync_manager_on_demand_sync_job()
/// @see sync_manager_add_periodic_sync_job()
/// @see sync_manager_add_data_change_sync_job()
///
/// Module getter: `tizenCoreSyncClient`.
int sync_manager_foreach_sync_job(
  sync_manager_sync_job_cb sync_job_cb,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCoreSyncClient.sync_manager_foreach_sync_job(
      sync_job_cb,
      user_data,
    );

/// @brief Requests Sync Manager to perform one time sync operation.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter account				An account handle on which sync operation was requested or @c NULL in the case of accountless sync operation
/// Parameter sync_job_name			A string representing a sync job which will be operated just one time
/// Parameter sync_option			sync options determine an way to operate sync job and can be used as ORing.
/// Parameter sync_job_user_data	User data which contains additional information related registered sync job or it can be @c NULL in the case of requesting without sync_job_user_data
/// Output parameter sync_job_id			A unique value which can manage sync jobs. The number of sync job id is limited as less than a hundred.
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYNC_ERROR_NONE									Successful
/// @retval #SYNC_ERROR_NOT_SUPPORTED						Not supported
/// @retval #SYNC_ERROR_INVALID_PARAMETER					Invalid parameter
/// @retval #SYNC_ERROR_QUOTA_EXCEEDED						Quota exceeded
/// @retval #SYNC_ERROR_SYSTEM								Internal system error
/// @retval #SYNC_ERROR_SYNC_ADAPTER_NOT_FOUND				Sync adapter is not registered
///
/// @pre This function requires calling below Sync Adapter's APIs by a service application before it is called.
/// @pre Call sync_adapter_set_callbacks() before calling this function.
///
/// @see sync_manager_remove_sync_job()
/// @see sync_option_e
///
/// Module getter: `tizenCoreSyncClient`.
int sync_manager_on_demand_sync_job(
  account_h account,
  ffi.Pointer<ffi.Char> sync_job_name,
  int sync_option,
  ffi.Pointer<bundle> sync_job_user_data,
  ffi.Pointer<ffi.Int> sync_job_id,
) =>
    tizenCoreSyncClient.sync_manager_on_demand_sync_job(
      account,
      sync_job_name,
      sync_option,
      sync_job_user_data,
      sync_job_id,
    );

/// @brief Requests Sync Manager to remove corresponding sync job id.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks			sync_job_id can not be @c NULL.
///
/// Parameter sync_job_id			A unique value of each sync job, it can be used to search specific sync job and remove it
///
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #SYNC_ERROR_NONE					Successful
/// @retval #SYNC_ERROR_NOT_SUPPORTED		Not supported
/// @retval #SYNC_ERROR_INVALID_PARAMETER	Invalid parameter
/// @retval #SYNC_ERROR_SYSTEM				Internal system error
///
/// @pre This function requires calling at least one of the below Sync Manager's APIs before it is called.
/// @pre sync_manager_on_demand_sync_job()
/// @pre sync_manager_add_periodic_sync_job()
/// @pre sync_manager_add_data_change_sync_job()
///
/// @see sync_manager_on_demand_sync_job()
/// @see sync_manager_add_periodic_sync_job()
/// @see sync_manager_add_data_change_sync_job()
///
/// Module getter: `tizenCoreSyncClient`.
int sync_manager_remove_sync_job(
  int sync_job_id,
) =>
    tizenCoreSyncClient.sync_manager_remove_sync_job(
      sync_job_id,
    );

